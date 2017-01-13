; ModuleID = './gdevpbm.bc'
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gx_device_pbm_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }

@pbm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_pbm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pbm_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pbm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 49, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"pbmraw\00", align 1
@gs_pbmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pbm_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pbm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 52, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@pgm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ppm_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @pgm_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @pgm_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@gs_pgm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pgm_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pgm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 50, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"pgmraw\00", align 1
@gs_pgmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pgm_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pgm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 53, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"pgnm\00", align 1
@gs_pgnm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pgm_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pgm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 50, [71 x i8] zeroinitializer, i8 0, i8 1, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"pgnmraw\00", align 1
@gs_pgnmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pgm_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pgm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 53, [71 x i8] zeroinitializer, i8 1, i8 1, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@ppm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ppm_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @ppm_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_ppm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @ppm_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ppm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"ppmraw\00", align 1
@gs_ppmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @ppm_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ppm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@pnm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ppm_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @ppm_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @ppm_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@gs_pnm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pnm_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ppm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 1, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"pnmraw\00", align 1
@gs_pnmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pnm_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ppm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 1, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@pkm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ppm_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_1bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_1bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"pkm\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_pkm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pkm_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pkm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"pkmraw\00", align 1
@gs_pkmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pkm_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pkm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"pksm\00", align 1
@gs_pksm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pkm_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @psm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 49, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"pksmraw\00", align 1
@gs_pksmraw_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pkm_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @psm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 52, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@pam_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @ppm_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"pamcmyk32\00", align 1
@gs_pamcmyk32_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pam_procs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pam_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 55, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@pnmcmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pnmcmyk_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @ppm_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @ppm_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"pnmcmyk\00", align 1
@gs_pnmcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pnmcmyk_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pnmcmyk_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 55, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"pamcmyk4\00", align 1
@gs_pamcmyk4_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pam_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pam4_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 55, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"pam\00", align 1
@gs_pam_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pam_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pam_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 55, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"plan9bm\00", align 1
@gs_plan9bm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* } { i32 18568, %struct.gx_device_procs_s* @pbm_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 850, i32 1100, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pbm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i8 57, [71 x i8] zeroinitializer, i8 1, i8 1, i8 0, i32 0, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null }, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c"OutputIntent\00", align 1
@ppm_put_params.debug_print_OutputIntent = internal constant i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"GrayValues\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"RedValues\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"GreenValues\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@ppm_put_params.depths = internal constant [4 x [16 x i8]] [[16 x i8] c"\01\02\00\04\00\00\00\08\00\00\00\00\00\00\00\10", [16 x i8] zeroinitializer, [16 x i8] c"\04\08\00\10\10\00\00\18\00\00\00\00\00\00\00\00", [16 x i8] c"\04\08\00\10\00\00\00 \00\00\00\00\00\00\00\00"], align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"pbm_print_page_loop\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"nul:\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"%11d %11d %11d %11d %11d \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"P%c\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"WIDTH %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"HEIGHT %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"DEPTH %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"MAXVAL %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"TUPLTYPE %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"# Image generated by %s\0A\00", align 1
@gs_product = external constant i8*, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"ENDHDR\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"# Image generated by %s (device=%s)\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"%d %d %d%c\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"pksm_print_page\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pbm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %4, i32 0, i32 68
  %5 = load i8, i8* %magic, align 1, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %3, i8 signext %5, %struct._IO_FILE* %6, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pbm_print_row) #5
  %7 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
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
define internal i32 @pgm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %3, i32 0, i32 72
  %4 = load i8, i8* %uses_color, align 1, !tbaa !22
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %optimize = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %5, i32 0, i32 71
  %6 = load i8, i8* %optimize, align 1, !tbaa !23
  %conv2 = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %8, i32 0, i32 68
  %9 = load i8, i8* %magic, align 1, !tbaa !5
  %conv3 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv3, 1
  %conv4 = trunc i32 %sub to i8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %7, i8 signext %conv4, %struct._IO_FILE* %10, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pxm_pbm_print_row) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic5 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %12, i32 0, i32 68
  %13 = load i8, i8* %magic5, align 1, !tbaa !5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call6 = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %11, i8 signext %13, %struct._IO_FILE* %14, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pgm_print_row) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call6, %cond.false ]
  %15 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %3, i32 0, i32 72
  %4 = load i8, i8* %uses_color, align 1, !tbaa !22
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %optimize = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %5, i32 0, i32 71
  %6 = load i8, i8* %optimize, align 1, !tbaa !23
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %8, i32 0, i32 68
  %9 = load i8, i8* %magic, align 1, !tbaa !5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %7, i8 signext %9, %struct._IO_FILE* %10, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @ppm_print_row) #5
  br label %cond.end.17

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color2 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %11, i32 0, i32 72
  %12 = load i8, i8* %uses_color2, align 1, !tbaa !22
  %conv3 = zext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %cond.true.6, label %cond.false.11

cond.true.6:                                      ; preds = %cond.false
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic7 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %14, i32 0, i32 68
  %15 = load i8, i8* %magic7, align 1, !tbaa !5
  %conv8 = sext i8 %15 to i32
  %sub = sub nsw i32 %conv8, 1
  %conv9 = trunc i32 %sub to i8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call10 = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %13, i8 signext %conv9, %struct._IO_FILE* %16, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @ppm_pgm_print_row) #5
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic12 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %18, i32 0, i32 68
  %19 = load i8, i8* %magic12, align 1, !tbaa !5
  %conv13 = sext i8 %19 to i32
  %sub14 = sub nsw i32 %conv13, 2
  %conv15 = trunc i32 %sub14 to i8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call16 = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %17, i8 signext %conv15, %struct._IO_FILE* %20, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pxm_pbm_print_row) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.6
  %cond = phi i32 [ %call10, %cond.true.6 ], [ %call16, %cond.false.11 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i32 [ %call, %cond.true ], [ %cond, %cond.end ]
  %21 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret i32 %cond18
}

; Function Attrs: nounwind uwtable
define internal i32 @pkm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %4, i32 0, i32 68
  %5 = load i8, i8* %magic, align 1, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %8 = load i16, i16* %depth, align 2, !tbaa !24
  %conv = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv, 8
  %cond = select i1 %cmp, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pkm_print_row_4, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pkm_print_row
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %3, i8 signext %5, %struct._IO_FILE* %6, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* %cond) #5
  %9 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @psm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %max_raster = alloca i32, align 4
  %data = alloca i8*, align 8
  %code = alloca i32, align 4
  %plane = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lnum = alloca i32, align 4
  %band_end = alloca i32, align 4
  %marked = alloca i64, align 8
  %render_plane = alloca %struct.gx_render_plane_s, align 4
  %plane_depth = alloca i32, align 4
  %plane_shift = alloca i32, align 4
  %plane_mask = alloca i64, align 8
  %raster = alloca i32, align 4
  %row = alloca i8*, align 8
  %color_usage = alloca %struct.gx_colors_usage_s, align 8
  %band_start = alloca i32, align 4
  %band_height = alloca i32, align 4
  %render_plane72 = alloca %struct.gx_render_plane_s, align 4
  %actual_raster = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %max_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !26
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth, align 2, !tbaa !24
  %conv = zext i16 %7 to i32
  %mul = mul nsw i32 %5, %conv
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %max_raster, align 4, !tbaa !27
  %8 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !29
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !28
  %14 = load i32, i32* %max_raster, align 4, !tbaa !27
  %call = call i8* %11(%struct.gs_memory_s* %13, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0)) #5
  store i8* %call, i8** %data, align 8, !tbaa !1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %code, align 4, !tbaa !27
  %16 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end:                                           ; preds = %entry
  store i32 0, i32* %plane, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.end
  %18 = load i32, i32* %plane, align 4, !tbaa !27
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %20 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp4 = icmp slt i32 %18, %20
  br i1 %cmp4, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %21 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %band_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i64* %marked to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  store i64 0, i64* %marked, align 8, !tbaa !33
  %24 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.start(i64 12, i8* %24) #2
  %25 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %plane_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_printer_s* %29 to %struct.gx_device_s*
  %31 = load i32, i32* %plane, align 4, !tbaa !27
  %call6 = call i32 @gx_render_plane_init(%struct.gx_render_plane_s* %render_plane, %struct.gx_device_s* %30, i32 %31) #5
  %depth7 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %render_plane, i32 0, i32 0
  %32 = load i32, i32* %depth7, align 4, !tbaa !34
  store i32 %32, i32* %plane_depth, align 4, !tbaa !27
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %render_plane, i32 0, i32 1
  %33 = load i32, i32* %shift, align 4, !tbaa !36
  store i32 %33, i32* %plane_shift, align 4, !tbaa !27
  %34 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %shl8 = shl i32 1, %34
  %sub = sub nsw i32 %shl8, 1
  %conv9 = sext i32 %sub to i64
  store i64 %conv9, i64* %plane_mask, align 8, !tbaa !33
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 13
  %36 = load i32, i32* %width10, align 4, !tbaa !26
  %37 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %mul11 = mul nsw i32 %36, %37
  %add12 = add nsw i32 %mul11, 63
  %shr13 = ashr i32 %add12, 6
  %shl14 = shl i32 %shr13, 3
  store i32 %shl14, i32* %raster, align 4, !tbaa !27
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %39, i32 0, i32 68
  %40 = load i8, i8* %magic, align 1, !tbaa !5
  %conv15 = sext i8 %40 to i32
  %41 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %cmp16 = icmp sgt i32 %41, 1
  %conv17 = zext i1 %cmp16 to i32
  %add18 = add nsw i32 %conv15, %conv17
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %add18) #5
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.23:                                        ; preds = %for.body
  %42 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %42, i32 0, i32 69
  %arrayidx = getelementptr inbounds [71 x i8], [71 x i8]* %comment, i32 0, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %tobool = icmp ne i8 %43, 0
  br i1 %tobool, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.23
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment25 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %45, i32 0, i32 69
  %arraydecay = getelementptr inbounds [71 x i8], [71 x i8]* %comment25, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay) #5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.30:                                        ; preds = %if.then.24
  br label %if.end.36

if.else:                                          ; preds = %if.end.23
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %47 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 2
  %49 = load i8*, i8** %dname, align 8, !tbaa !38
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i8* %47, i8* %49) #5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.30
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width37 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 13
  %52 = load i32, i32* %width37, align 4, !tbaa !26
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 14
  %54 = load i32, i32* %height, align 4, !tbaa !39
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %52, i32 %54) #5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.42:                                        ; preds = %if.end.36
  %55 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %cmp43 = icmp sgt i32 %55, 1
  br i1 %cmp43, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.42
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info46, i32 0, i32 5
  %58 = load i32, i32* %max_gray, align 4, !tbaa !40
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 %58) #5
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.42
  store i32 0, i32* %band_end, align 4, !tbaa !27
  store i32 0, i32* %lnum, align 4, !tbaa !27
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.end.52
  %59 = load i32, i32* %lnum, align 4, !tbaa !27
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 14
  %61 = load i32, i32* %height54, align 4, !tbaa !39
  %cmp55 = icmp slt i32 %59, %61
  br i1 %cmp55, label %for.body.57, label %for.end

for.body.57:                                      ; preds = %for.cond.53
  %62 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load i32, i32* %lnum, align 4, !tbaa !27
  %64 = load i32, i32* %band_end, align 4, !tbaa !27
  %cmp58 = icmp eq i32 %63, %64
  br i1 %cmp58, label %if.then.60, label %if.end.69

if.then.60:                                       ; preds = %for.body.57
  %65 = bitcast %struct.gx_colors_usage_s* %color_usage to i8*
  call void @llvm.lifetime.start(i64 32, i8* %65) #2
  %66 = bitcast i32* %band_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gx_device_printer_s* %68 to %struct.gx_device_s*
  %70 = load i32, i32* %lnum, align 4, !tbaa !27
  %call61 = call i32 @gdev_prn_color_usage(%struct.gx_device_s* %69, i32 %70, i32 1, %struct.gx_colors_usage_s* %color_usage, i32* %band_start) #5
  store i32 %call61, i32* %band_height, align 4, !tbaa !27
  %71 = load i32, i32* %band_start, align 4, !tbaa !27
  %72 = load i32, i32* %band_height, align 4, !tbaa !27
  %add62 = add nsw i32 %71, %72
  store i32 %add62, i32* %band_end, align 4, !tbaa !27
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %73 = load i64, i64* %or, align 8, !tbaa !41
  %74 = load i64, i64* %plane_mask, align 8, !tbaa !33
  %75 = load i32, i32* %plane_shift, align 4, !tbaa !27
  %sh_prom = zext i32 %75 to i64
  %shl63 = shl i64 %74, %sh_prom
  %and = and i64 %73, %shl63
  store i64 %and, i64* %marked, align 8, !tbaa !33
  %76 = load i64, i64* %marked, align 8, !tbaa !33
  %tobool64 = icmp ne i64 %76, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %if.then.60
  %77 = load i8*, i8** %data, align 8, !tbaa !1
  %78 = load i32, i32* %raster, align 4, !tbaa !27
  %conv66 = sext i32 %78 to i64
  %call67 = call i8* @memset(i8* %77, i32 0, i64 %conv66) #6
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.then.60
  %79 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %band_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.gx_colors_usage_s* %color_usage to i8*
  call void @llvm.lifetime.end(i64 32, i8* %81) #2
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.body.57
  %82 = load i64, i64* %marked, align 8, !tbaa !33
  %tobool70 = icmp ne i64 %82, 0
  br i1 %tobool70, label %if.then.71, label %if.else.79

if.then.71:                                       ; preds = %if.end.69
  %83 = bitcast %struct.gx_render_plane_s* %render_plane72 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %83) #2
  %84 = bitcast i32* %actual_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %85 = load i32, i32* %plane, align 4, !tbaa !27
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %render_plane72, i32 0, i32 2
  store i32 %85, i32* %index, align 4, !tbaa !45
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %87 = load i32, i32* %lnum, align 4, !tbaa !27
  %88 = load i8*, i8** %data, align 8, !tbaa !1
  %89 = load i32, i32* %raster, align 4, !tbaa !27
  %call73 = call i32 @gdev_prn_get_lines(%struct.gx_device_printer_s* %86, i32 %87, i32 1, i8* %88, i32 %89, i8** %row, i32* %actual_raster, %struct.gx_render_plane_s* %render_plane72) #5
  store i32 %call73, i32* %code, align 4, !tbaa !27
  %90 = load i32, i32* %code, align 4, !tbaa !27
  %cmp74 = icmp slt i32 %90, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.71
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.then.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.76
  %91 = bitcast i32* %actual_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast %struct.gx_render_plane_s* %render_plane72 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %92) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.89 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.69
  %93 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %93, i8** %row, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %cleanup.cont
  %94 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %cmp81 = icmp eq i32 %94, 1
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %96 = load i8*, i8** %row, align 8, !tbaa !1
  %97 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call83 = call i32 @pbm_print_row(%struct.gx_device_printer_s* %95, i8* %96, i32 %97, %struct._IO_FILE* %98) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.80
  %99 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %100 = load i8*, i8** %row, align 8, !tbaa !1
  %101 = load i32, i32* %plane_depth, align 4, !tbaa !27
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call84 = call i32 @pgm_print_row(%struct.gx_device_printer_s* %99, i8* %100, i32 %101, %struct._IO_FILE* %102) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call83, %cond.true ], [ %call84, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !27
  %103 = load i32, i32* %code, align 4, !tbaa !27
  %cmp85 = icmp slt i32 %103, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %cond.end
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.88:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.88, %if.then.87, %cleanup
  %104 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %cleanup.dest.90 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.90, label %unreachable [
    i32 0, label %cleanup.cont.91
    i32 6, label %for.end
  ]

cleanup.cont.91:                                  ; preds = %cleanup.89
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.91
  %105 = load i32, i32* %lnum, align 4, !tbaa !27
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !27
  br label %for.cond.53

for.end:                                          ; preds = %cleanup.89, %for.cond.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.then.50, %if.then.41, %if.then.34, %if.then.29, %if.then.22, %for.end
  %106 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast i32* %plane_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.end(i64 12, i8* %110) #2
  %111 = bitcast i64* %marked to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast i32* %band_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %cleanup.dest.100 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.100, label %cleanup.114 [
    i32 0, label %cleanup.cont.101
    i32 5, label %punt
  ]

cleanup.cont.101:                                 ; preds = %cleanup.92
  br label %for.inc.102

for.inc.102:                                      ; preds = %cleanup.cont.101
  %114 = load i32, i32* %plane, align 4, !tbaa !27
  %inc103 = add nsw i32 %114, 1
  store i32 %inc103, i32* %plane, align 4, !tbaa !27
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  br label %punt

punt:                                             ; preds = %for.end.104, %cleanup.92
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory105, align 8, !tbaa !28
  %procs106 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs106, i32 0, i32 2
  %117 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %118 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !28
  %120 = load i8*, i8** %data, align 8, !tbaa !1
  call void %117(%struct.gs_memory_s* %119, i8* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0)) #5
  %121 = load i32, i32* %code, align 4, !tbaa !27
  %cmp108 = icmp slt i32 %121, 0
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %punt
  %122 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end.112

cond.false.111:                                   ; preds = %punt
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.110
  %cond113 = phi i32 [ %122, %cond.true.110 ], [ 0, %cond.false.111 ]
  store i32 %cond113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %cond.end.112, %cleanup.92, %if.then
  %123 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = bitcast i32* %max_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = load i32, i32* %retval
  ret i32 %128

unreachable:                                      ; preds = %cleanup.89
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pam_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %4, i32 0, i32 68
  %5 = load i8, i8* %magic, align 1, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %3, i8 signext %5, %struct._IO_FILE* %6, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pam_print_row) #5
  %7 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pnmcmyk_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %raster = alloca i32, align 4
  %data = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %code = alloca i32, align 4
  %output_is_nul = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %row_proc = alloca i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)*, align 8
  %row = alloca i8*, align 8
  %row_end = alloca i8*, align 8
  %pcmyk = alloca i8*, align 8
  %pgray = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %cmy = alloca i32, align 4
  %k = alloca i8, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i32 0, i32 39
  %1 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !47
  %graydetection = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %1, i32 0, i32 6
  %2 = load i32, i32* %graydetection, align 4, !tbaa !48
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.201

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 39
  %4 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct1, align 8, !tbaa !47
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %4, i32 0, i32 7
  %5 = load i32, i32* %pageneutralcolor, align 4, !tbaa !50
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then, label %if.end.201

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %8, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %9 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster_chunky(%struct.gx_device_s* %11, i32 0) #5
  store i32 %call, i32* %raster, align 4, !tbaa !27
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !29
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !28
  %18 = load i32, i32* %raster, align 4, !tbaa !27
  %call4 = call i8* %15(%struct.gs_memory_s* %17, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  store i8* %call4, i8** %data, align 8, !tbaa !1
  %19 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %lnum, align 4, !tbaa !27
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  store i32 0, i32* %code, align 4, !tbaa !27
  %21 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  br i1 false, label %land.lhs.true.5, label %cond.false.62

land.lhs.true.5:                                  ; preds = %if.then
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #7
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay) #7
  %cmp8 = icmp ult i64 %call7, 4
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.5
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 45
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname9, i32 0, i32 0
  %call11 = call i64 @strlen(i8* %arraydecay10) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ 4, %cond.false ]
  %cmp12 = icmp ult i64 %call6, %cond
  br i1 %cmp12, label %cond.true.13, label %cond.false.62

cond.true.13:                                     ; preds = %cond.end
  %24 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.28 to i64)), i64 1), label %land.lhs.true.14, label %cond.false.56

land.lhs.true.14:                                 ; preds = %cond.true.13
  %call15 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #7
  store i64 %call15, i64* %__s2_len, align 8, !tbaa !33
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp16 = icmp ult i64 %26, 4
  br i1 %cmp16, label %cond.true.17, label %cond.false.56

cond.true.17:                                     ; preds = %land.lhs.true.14
  %27 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 45
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname19, i32 0, i32 0
  store i8* %arraydecay20, i8** %__s1, align 8, !tbaa !1
  %29 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %conv = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), align 1, !tbaa !37
  %conv22 = zext i8 %32 to i32
  %sub = sub nsw i32 %conv, %conv22
  store i32 %sub, i32* %__result, align 4, !tbaa !27
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp23 = icmp ugt i64 %33, 0
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.54

land.lhs.true.25:                                 ; preds = %cond.true.17
  %34 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp26 = icmp eq i32 %34, 0
  br i1 %cmp26, label %if.then.28, label %if.end.54

if.then.28:                                       ; preds = %land.lhs.true.25
  %35 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx29, align 1, !tbaa !37
  %conv30 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 1), align 1, !tbaa !37
  %conv31 = zext i8 %37 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !27
  %38 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp33 = icmp ugt i64 %38, 1
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.53

land.lhs.true.35:                                 ; preds = %if.then.28
  %39 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp36 = icmp eq i32 %39, 0
  br i1 %cmp36, label %if.then.38, label %if.end.53

if.then.38:                                       ; preds = %land.lhs.true.35
  %40 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx39, align 1, !tbaa !37
  %conv40 = zext i8 %41 to i32
  %42 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 2), align 1, !tbaa !37
  %conv41 = zext i8 %42 to i32
  %sub42 = sub nsw i32 %conv40, %conv41
  store i32 %sub42, i32* %__result, align 4, !tbaa !27
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp43 = icmp ugt i64 %43, 2
  br i1 %cmp43, label %land.lhs.true.45, label %if.end

land.lhs.true.45:                                 ; preds = %if.then.38
  %44 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp46 = icmp eq i32 %44, 0
  br i1 %cmp46, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %land.lhs.true.45
  %45 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx49, align 1, !tbaa !37
  %conv50 = zext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 3), align 1, !tbaa !37
  %conv51 = zext i8 %47 to i32
  %sub52 = sub nsw i32 %conv50, %conv51
  store i32 %sub52, i32* %__result, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.48, %land.lhs.true.45, %if.then.38
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %land.lhs.true.35, %if.then.28
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.25, %cond.true.17
  %48 = load i32, i32* %__result, align 4, !tbaa !27
  store i32 %48, i32* %tmp55, !tbaa !27
  %49 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %tmp55, !tbaa !27
  br label %cond.end.60

cond.false.56:                                    ; preds = %land.lhs.true.14, %cond.true.13
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 45
  %arraydecay58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname57, i32 0, i32 0
  %call59 = call i32 @strcmp(i8* %arraydecay58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.56, %if.end.54
  %cond61 = phi i32 [ %51, %if.end.54 ], [ %call59, %cond.false.56 ]
  store i32 %cond61, i32* %tmp, !tbaa !27
  %53 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = load i32, i32* %tmp, !tbaa !27
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

cond.false.62:                                    ; preds = %cond.end, %if.then
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 45
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname63, i32 0, i32 0
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 45
  %arraydecay66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname65, i32 0, i32 0
  %call67 = call i64 @strlen(i8* %arraydecay66) #7
  %cmp68 = icmp ult i64 %call67, 4
  br i1 %cmp68, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %cond.false.62
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname71 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 45
  %arraydecay72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname71, i32 0, i32 0
  %call73 = call i64 @strlen(i8* %arraydecay72) #7
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.false.62
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.70
  %cond76 = phi i64 [ %call73, %cond.true.70 ], [ 4, %cond.false.74 ]
  %call77 = call i32 @strncmp(i8* %arraydecay64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 %cond76) #7
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end.75, %cond.end.60
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 45
  %arraydecay80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname79, i32 0, i32 0
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname81 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 45
  %arraydecay82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname81, i32 0, i32 0
  %call83 = call i64 @strlen(i8* %arraydecay82) #7
  %cmp84 = icmp ult i64 %call83, 9
  br i1 %cmp84, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %lor.rhs
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname87 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 45
  %arraydecay88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname87, i32 0, i32 0
  %call89 = call i64 @strlen(i8* %arraydecay88) #7
  br label %cond.end.91

cond.false.90:                                    ; preds = %lor.rhs
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.86
  %cond92 = phi i64 [ %call89, %cond.true.86 ], [ 9, %cond.false.90 ]
  %call93 = call i32 @strncmp(i8* %arraydecay80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i64 %cond92) #7
  %tobool94 = icmp ne i32 %call93, 0
  %lnot = xor i1 %tobool94, true
  br label %lor.end

lor.end:                                          ; preds = %cond.end.91, %cond.end.75, %cond.end.60
  %62 = phi i1 [ true, %cond.end.75 ], [ true, %cond.end.60 ], [ %lnot, %cond.end.91 ]
  %lor.ext = zext i1 %62 to i32
  store i32 %lor.ext, i32* %output_is_nul, align 4, !tbaa !27
  %63 = bitcast i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load i32, i32* %output_is_nul, align 4, !tbaa !27
  %tobool96 = icmp ne i32 %64, 0
  br i1 %tobool96, label %if.else.129, label %if.then.97

if.then.97:                                       ; preds = %lor.end
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.102:                                       ; preds = %if.then.97
  %66 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %66, i32 0, i32 69
  %arrayidx103 = getelementptr inbounds [71 x i8], [71 x i8]* %comment, i32 0, i64 0
  %67 = load i8, i8* %arrayidx103, align 1, !tbaa !37
  %tobool104 = icmp ne i8 %67, 0
  br i1 %tobool104, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %if.end.102
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment106 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %69, i32 0, i32 69
  %arraydecay107 = getelementptr inbounds [71 x i8], [71 x i8]* %comment106, i32 0, i32 0
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay107) #5
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.105
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.112:                                       ; preds = %if.then.105
  br label %if.end.118

if.else:                                          ; preds = %if.end.102
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %71 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 2
  %73 = load i8*, i8** %dname, align 8, !tbaa !38
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i8* %71, i8* %73) #5
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.else
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.117:                                       ; preds = %if.else
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.112
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 13
  %76 = load i32, i32* %width, align 4, !tbaa !26
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height, align 4, !tbaa !39
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %76, i32 %78) #5
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.118
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.123:                                       ; preds = %if.end.118
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)) #5
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.123
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.128:                                       ; preds = %if.end.123
  store i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pgm_print_row, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.130

if.else.129:                                      ; preds = %lor.end
  store i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @nop_row_proc, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.end.128
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.130
  %80 = load i32, i32* %lnum, align 4, !tbaa !27
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height131, align 4, !tbaa !39
  %cmp132 = icmp slt i32 %80, %82
  br i1 %cmp132, label %for.body, label %for.end.184

for.body:                                         ; preds = %for.cond
  %83 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = bitcast i8** %row_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = bitcast i8** %pcmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = bitcast i8** %pgray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = load i32, i32* %lnum, align 4, !tbaa !27
  %89 = load i8*, i8** %data, align 8, !tbaa !1
  %call138 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %87, i32 %88, i8* %89, i8** %row) #5
  store i32 %call138, i32* %code, align 4, !tbaa !27
  %90 = load i32, i32* %code, align 4, !tbaa !27
  %cmp139 = icmp slt i32 %90, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.142:                                       ; preds = %for.body
  %91 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %91, i8** %pgray, align 8, !tbaa !1
  %92 = load i8*, i8** %row, align 8, !tbaa !1
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width143 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %93, i32 0, i32 13
  %94 = load i32, i32* %width143, align 4, !tbaa !26
  %mul = mul nsw i32 4, %94
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %92, i64 %idx.ext
  store i8* %add.ptr, i8** %row_end, align 8, !tbaa !1
  %95 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %95, i8** %pcmyk, align 8, !tbaa !1
  br label %for.cond.144

for.cond.144:                                     ; preds = %if.end.172, %if.end.142
  %96 = load i8*, i8** %pcmyk, align 8, !tbaa !1
  %97 = load i8*, i8** %row_end, align 8, !tbaa !1
  %cmp145 = icmp ult i8* %96, %97
  br i1 %cmp145, label %for.body.147, label %for.end

for.body.147:                                     ; preds = %for.cond.144
  %98 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  call void @llvm.lifetime.start(i64 1, i8* %k) #2
  %99 = load i8*, i8** %pcmyk, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr, i8** %pcmyk, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !37
  %conv150 = zext i8 %100 to i32
  %sub151 = sub nsw i32 255, %conv150
  %mul152 = mul nsw i32 %sub151, 30
  store i32 %mul152, i32* %cmy, align 4, !tbaa !27
  %101 = load i8*, i8** %pcmyk, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr153, i8** %pcmyk, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !37
  %conv154 = zext i8 %102 to i32
  %sub155 = sub nsw i32 255, %conv154
  %mul156 = mul nsw i32 %sub155, 59
  %103 = load i32, i32* %cmy, align 4, !tbaa !27
  %add = add nsw i32 %103, %mul156
  store i32 %add, i32* %cmy, align 4, !tbaa !27
  %104 = load i8*, i8** %pcmyk, align 8, !tbaa !1
  %incdec.ptr157 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr157, i8** %pcmyk, align 8, !tbaa !1
  %105 = load i8, i8* %104, align 1, !tbaa !37
  %conv158 = zext i8 %105 to i32
  %sub159 = sub nsw i32 255, %conv158
  %mul160 = mul nsw i32 %sub159, 11
  %106 = load i32, i32* %cmy, align 4, !tbaa !27
  %add161 = add nsw i32 %106, %mul160
  store i32 %add161, i32* %cmy, align 4, !tbaa !27
  %107 = load i32, i32* %cmy, align 4, !tbaa !27
  %add162 = add nsw i32 %107, 50
  store i32 %add162, i32* %cmy, align 4, !tbaa !27
  %108 = load i32, i32* %cmy, align 4, !tbaa !27
  %div = sdiv i32 %108, 100
  store i32 %div, i32* %cmy, align 4, !tbaa !27
  %109 = load i8*, i8** %pcmyk, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr163, i8** %pcmyk, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !37
  store i8 %110, i8* %k, align 1, !tbaa !37
  %111 = load i8, i8* %k, align 1, !tbaa !37
  %conv164 = zext i8 %111 to i32
  %112 = load i32, i32* %cmy, align 4, !tbaa !27
  %cmp165 = icmp sgt i32 %conv164, %112
  br i1 %cmp165, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %for.body.147
  store i8 0, i8* %k, align 1, !tbaa !37
  br label %if.end.172

if.else.168:                                      ; preds = %for.body.147
  %113 = load i32, i32* %cmy, align 4, !tbaa !27
  %114 = load i8, i8* %k, align 1, !tbaa !37
  %conv169 = zext i8 %114 to i32
  %sub170 = sub nsw i32 %113, %conv169
  %conv171 = trunc i32 %sub170 to i8
  store i8 %conv171, i8* %k, align 1, !tbaa !37
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.168, %if.then.167
  %115 = load i8, i8* %k, align 1, !tbaa !37
  %116 = load i8*, i8** %pgray, align 8, !tbaa !1
  %incdec.ptr173 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr173, i8** %pgray, align 8, !tbaa !1
  store i8 %115, i8* %116, align 1, !tbaa !37
  call void @llvm.lifetime.end(i64 1, i8* %k) #2
  %117 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  br label %for.cond.144

for.end:                                          ; preds = %for.cond.144
  %118 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %118, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  store i32 1, i32* %polarity, align 4, !tbaa !51
  %119 = load i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %121 = load i8*, i8** %row, align 8, !tbaa !1
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call174 = call i32 %119(%struct.gx_device_printer_s* %120, i8* %121, i32 8, %struct._IO_FILE* %122) #5
  store i32 %call174, i32* %code, align 4, !tbaa !27
  %123 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info175 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %123, i32 0, i32 11
  %polarity176 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info175, i32 0, i32 2
  store i32 0, i32* %polarity176, align 4, !tbaa !51
  %124 = load i32, i32* %code, align 4, !tbaa !27
  %cmp177 = icmp slt i32 %124, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %for.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.180:                                       ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.180, %if.then.179, %if.then.141
  %125 = bitcast i8** %pgray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = bitcast i8** %pcmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast i8** %row_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end.184
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %129 = load i32, i32* %lnum, align 4, !tbaa !27
  %inc = add nsw i32 %129, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !27
  br label %for.cond

for.end.184:                                      ; preds = %cleanup, %for.cond
  br label %punt

punt:                                             ; preds = %for.end.184, %if.then.127, %if.then.122, %if.then.116, %if.then.111, %if.then.101
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory185 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory185, align 8, !tbaa !28
  %procs186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs186, i32 0, i32 2
  %132 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %133 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory187 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory187, align 8, !tbaa !28
  %135 = load i8*, i8** %data, align 8, !tbaa !1
  call void %132(%struct.gs_memory_s* %134, i8* %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  %136 = load i32, i32* %code, align 4, !tbaa !27
  %cmp188 = icmp slt i32 %136, 0
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %punt
  %137 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end.192

cond.false.191:                                   ; preds = %punt
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.190
  %cond193 = phi i32 [ %137, %cond.true.190 ], [ 0, %cond.false.191 ]
  store i32 %cond193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %138 = bitcast i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  br label %return

if.end.201:                                       ; preds = %land.lhs.true, %entry
  %145 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call202 = call i32 @pam_print_page(%struct.gx_device_printer_s* %145, %struct._IO_FILE* %146) #5
  store i32 %call202, i32* %retval
  br label %return

return:                                           ; preds = %if.end.201, %cond.end.192
  %147 = load i32, i32* %retval
  ret i32 %147

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pam4_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %4, i32 0, i32 68
  %5 = load i8, i8* %magic, align 1, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %3, i8 signext %5, %struct._IO_FILE* %6, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @pam4_print_row) #5
  %7 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ppm_output_page(%struct.gx_device_s* %pdev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !27
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !27
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_copies.addr, align 4, !tbaa !27
  %3 = load i32, i32* %flush.addr, align 4, !tbaa !27
  %call = call i32 @gdev_prn_bg_output_page(%struct.gx_device_s* %1, i32 %2, i32 %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %4 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %6, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %flush.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %10, i32 0, i32 72
  store i8 0, i8* %uses_color, align 1, !tbaa !22
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then
  %12 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ppm_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %ncomps = alloca i32, align 4
  %bpc = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %v = alloca i64, align 8
  %intent = alloca %struct.gs_param_string_array_s, align 8
  %vname = alloca i8*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %3) #2
  %4 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !52
  store i32 %6, i32* %ncomps, align 4, !tbaa !27
  %7 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %ncomps, align 4, !tbaa !27
  %div = sdiv i32 %conv, %10
  store i32 %div, i32* %bpc, align 4, !tbaa !27
  %11 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %ecode, align 4, !tbaa !27
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.gs_param_string_array_s* %intent to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast i8** %vname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string_array(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %struct.gs_param_string_array_s* %intent) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %18 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %19 = bitcast %struct.gx_device_color_info_s* %color_info3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 720, i32 8, i1 false), !tbaa.struct !55
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call4 = call i32 @param_read_long(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64* %v) #5
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %cmp5 = icmp ne i32 %call4, 1
  br i1 %cmp5, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call7 = call i32 @param_read_long(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64* %v) #5
  store i32 %call7, i32* %code, align 4, !tbaa !27
  %cmp8 = icmp ne i32 %call7, 1
  br i1 %cmp8, label %if.then.18, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call11 = call i32 @param_read_long(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i64* %v) #5
  store i32 %call11, i32* %code, align 4, !tbaa !27
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call15 = call i32 @param_read_long(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i64* %v) #5
  store i32 %call15, i32* %code, align 4, !tbaa !27
  %cmp16 = icmp ne i32 %call15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.78

if.then.18:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %24, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  %25 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %25, i32* %ecode, align 4, !tbaa !27
  br label %if.end.61

if.else:                                          ; preds = %if.then.18
  %26 = load i64, i64* %v, align 8, !tbaa !33
  %cmp22 = icmp slt i64 %26, 2
  br i1 %cmp22, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.else
  %27 = load i64, i64* %v, align 8, !tbaa !33
  %28 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %28, i32 0, i32 70
  %29 = load i8, i8* %is_raw, align 1, !tbaa !57
  %conv25 = zext i8 %29 to i32
  %tobool = icmp ne i32 %conv25, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.24
  %30 = load i32, i32* %ncomps, align 4, !tbaa !27
  %cmp26 = icmp sgt i32 %30, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.24
  %31 = phi i1 [ true, %lor.lhs.false.24 ], [ %cmp26, %lor.rhs ]
  %cond = select i1 %31, i64 256, i64 65536
  %cmp28 = icmp sgt i64 %27, %cond
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %lor.end, %if.else
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %32, i32 0, i32 0
  %33 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !58
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %33, i32 0, i32 7
  %34 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !60
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %vname, align 8, !tbaa !1
  store i32 -15, i32* %ecode, align 4, !tbaa !27
  %call31 = call i32 %34(%struct.gs_param_list_s* %35, i8* %36, i32 -15) #5
  br label %if.end.60

if.else.32:                                       ; preds = %lor.end
  %37 = load i64, i64* %v, align 8, !tbaa !33
  %cmp33 = icmp eq i64 %37, 2
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 1, i32* %bpc, align 4, !tbaa !27
  br label %if.end.59

if.else.36:                                       ; preds = %if.else.32
  %38 = load i64, i64* %v, align 8, !tbaa !33
  %cmp37 = icmp sle i64 %38, 4
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  store i32 2, i32* %bpc, align 4, !tbaa !27
  br label %if.end.58

if.else.40:                                       ; preds = %if.else.36
  %39 = load i64, i64* %v, align 8, !tbaa !33
  %cmp41 = icmp sle i64 %39, 16
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 4, i32* %bpc, align 4, !tbaa !27
  br label %if.end.57

if.else.44:                                       ; preds = %if.else.40
  %40 = load i64, i64* %v, align 8, !tbaa !33
  %cmp45 = icmp sle i64 %40, 32
  br i1 %cmp45, label %land.lhs.true, label %if.else.50

land.lhs.true:                                    ; preds = %if.else.44
  %41 = load i32, i32* %ncomps, align 4, !tbaa !27
  %cmp47 = icmp eq i32 %41, 3
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %land.lhs.true
  store i32 5, i32* %bpc, align 4, !tbaa !27
  br label %if.end.56

if.else.50:                                       ; preds = %land.lhs.true, %if.else.44
  %42 = load i64, i64* %v, align 8, !tbaa !33
  %cmp51 = icmp sle i64 %42, 256
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.50
  store i32 8, i32* %bpc, align 4, !tbaa !27
  br label %if.end.55

if.else.54:                                       ; preds = %if.else.50
  store i32 16, i32* %bpc, align 4, !tbaa !27
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.43
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.39
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.35
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.30
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.21
  %43 = load i32, i32* %ecode, align 4, !tbaa !27
  %cmp62 = icmp sge i32 %43, 0
  br i1 %cmp62, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %if.end.61
  %44 = load i32, i32* %bpc, align 4, !tbaa !27
  %sub = sub nsw i32 %44, 1
  %idxprom = sext i32 %sub to i64
  %45 = load i32, i32* %ncomps, align 4, !tbaa !27
  %sub65 = sub nsw i32 %45, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* @ppm_put_params.depths, i32 0, i64 %idxprom66
  %arrayidx67 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i32 0, i64 %idxprom
  %46 = load i8, i8* %arrayidx67, align 1, !tbaa !37
  %conv68 = zext i8 %46 to i16
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info69 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 11
  %depth70 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info69, i32 0, i32 3
  store i16 %conv68, i16* %depth70, align 2, !tbaa !54
  %48 = load i64, i64* %v, align 8, !tbaa !33
  %conv71 = trunc i64 %48 to i32
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info72, i32 0, i32 8
  store i32 %conv71, i32* %dither_colors, align 4, !tbaa !62
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info73 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info73, i32 0, i32 7
  store i32 %conv71, i32* %dither_grays, align 4, !tbaa !63
  %sub74 = sub i32 %conv71, 1
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info75, i32 0, i32 6
  store i32 %sub74, i32* %max_color, align 4, !tbaa !64
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info76 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info76, i32 0, i32 5
  store i32 %sub74, i32* %max_gray, align 4, !tbaa !65
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.64, %if.end.61
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %lor.lhs.false.14
  %53 = load i32, i32* %ecode, align 4, !tbaa !27
  store i32 %53, i32* %code, align 4, !tbaa !27
  %cmp79 = icmp slt i32 %53, 0
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.78
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %56 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %UsePlanarBuffer = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %56, i32 0, i32 73
  %call82 = call i32 @gdev_prn_put_params_planar(%struct.gx_device_s* %54, %struct.gs_param_list_s* %55, i32* %UsePlanarBuffer) #5
  store i32 %call82, i32* %code, align 4, !tbaa !27
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.end.78
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info86 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 11
  %58 = bitcast %struct.gx_device_color_info_s* %color_info86 to i8*
  %59 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 720, i32 8, i1 false), !tbaa.struct !55
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false.81
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @ppm_set_dev_procs(%struct.gx_device_s* %60) #5
  %61 = load i32, i32* %code, align 4, !tbaa !27
  %62 = bitcast i8** %vname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gs_param_string_array_s* %intent to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #2
  %64 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %69) #2
  %70 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  ret i32 %61
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @param_read_string_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #0

declare i32 @gdev_prn_put_params_planar(%struct.gx_device_s*, %struct.gs_param_list_s*, i32*) #0

; Function Attrs: nounwind uwtable
define internal void @ppm_set_dev_procs(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %4 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !66
  %cmp = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %4, @pnm_copy_alpha
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %copy_alpha2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 21
  %6 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha2, align 8, !tbaa !66
  %7 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %save_copy_alpha = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %7, i32 0, i32 74
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %6, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %save_copy_alpha, align 8, !tbaa !67
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %9 to i32
  %cmp3 = icmp sgt i32 %conv, 4
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %copy_alpha7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @pnm_copy_alpha, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha7, align 8, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 37
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !68
  %cmp10 = icmp ne i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %12, @pnm_begin_typed_image
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.8
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %begin_typed_image14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 37
  %14 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image14, align 8, !tbaa !68
  %15 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %save_begin_typed_image = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %15, i32 0, i32 75
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %14, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_typed_image, align 8, !tbaa !69
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %begin_typed_image16 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 37
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @pnm_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image16, align 8, !tbaa !68
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.8
  %17 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %17, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 1
  %18 = load i32, i32* %num_components, align 4, !tbaa !70
  %cmp19 = icmp eq i32 %18, 4
  br i1 %cmp19, label %if.then.21, label %if.end.45

if.then.21:                                       ; preds = %if.end.17
  %19 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %color_info22 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %19, i32 0, i32 11
  %depth23 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info22, i32 0, i32 3
  %20 = load i16, i16* %depth23, align 2, !tbaa !71
  %conv24 = zext i16 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 4
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.21
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_1bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !72
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs29, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @cmyk_1bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !73
  br label %if.end.44

if.else:                                          ; preds = %if.then.21
  %23 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %23, i32 0, i32 68
  %24 = load i8, i8* %magic, align 1, !tbaa !5
  %conv30 = sext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv30, 7
  br i1 %cmp31, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %if.else
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %map_color_rgb35 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs34, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb35, align 8, !tbaa !72
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %map_cmyk_color37 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs36, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color37, align 8, !tbaa !73
  br label %if.end.43

if.else.38:                                       ; preds = %if.else
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 42
  %map_color_rgb40 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @pkm_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb40, align 8, !tbaa !72
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 42
  %map_cmyk_color42 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs41, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @pkm_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color42, align 8, !tbaa !73
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.38, %if.then.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.27
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.17
  %29 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pnm_copy_alpha(%struct.gx_device_s* %pdev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !27
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !27
  store i64 %id, i64* %id.addr, align 8, !tbaa !33
  store i32 %x, i32* %x.addr, align 4, !tbaa !27
  store i32 %y, i32* %y.addr, align 4, !tbaa !27
  store i32 %width, i32* %width.addr, align 4, !tbaa !27
  store i32 %height, i32* %height.addr, align 4, !tbaa !27
  store i64 %color, i64* %color.addr, align 8, !tbaa !33
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth1, align 2, !tbaa !54
  %conv = zext i16 %4 to i32
  %cmp = icmp slt i32 %conv, 24
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %color.addr, align 8, !tbaa !33
  %shr = lshr i64 %5, 8
  %6 = load i64, i64* %color.addr, align 8, !tbaa !33
  %and = and i64 %6, 65535
  %cmp3 = icmp eq i64 %shr, %and
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %7, i32 0, i32 72
  %8 = load i8, i8* %uses_color, align 1, !tbaa !22
  %conv5 = zext i8 %8 to i32
  %or = or i32 %conv5, 1
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %uses_color, align 1, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color7 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %9, i32 0, i32 72
  %10 = load i8, i8* %uses_color7, align 1, !tbaa !22
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %conv8, 2
  %conv10 = trunc i32 %or9 to i8
  store i8 %conv10, i8* %uses_color7, align 1, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %save_copy_alpha = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %11, i32 0, i32 74
  %12 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %save_copy_alpha, align 8, !tbaa !67
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %data_x.addr, align 4, !tbaa !27
  %16 = load i32, i32* %raster.addr, align 4, !tbaa !27
  %17 = load i64, i64* %id.addr, align 8, !tbaa !33
  %18 = load i32, i32* %x.addr, align 4, !tbaa !27
  %19 = load i32, i32* %y.addr, align 4, !tbaa !27
  %20 = load i32, i32* %width.addr, align 4, !tbaa !27
  %21 = load i32, i32* %height.addr, align 4, !tbaa !27
  %22 = load i64, i64* %color.addr, align 8, !tbaa !33
  %23 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %call = call i32 %12(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i64 %17, i32 %18, i32 %19, i32 %20, i32 %21, i64 %22, i32 %23) #5
  %24 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pnm_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pim, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pim.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %has_gray_icc = alloca i32, align 4
  %pim1 = alloca %struct.gs_pixel_image_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pim, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %has_gray_icc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_image_common_s* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %5, i32 0, i32 0
  %6 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !74
  %tobool1 = icmp ne %struct.gx_image_type_s* %6, null
  br i1 %tobool1, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %7, i32 0, i32 0
  %8 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type2, align 8, !tbaa !74
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %8, i32 0, i32 6
  %9 = load i32, i32* %index, align 4, !tbaa !78
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %10 = bitcast %struct.gs_pixel_image_s** %pim1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_image_common_s* %11 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %12, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %13 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %13, i32 0, i32 9
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !80
  %tobool3 = icmp ne %struct.gs_color_space_s* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.26

if.then.4:                                        ; preds = %sw.bb
  store i32 0, i32* %has_gray_icc, align 4, !tbaa !27
  %15 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %ColorSpace5 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %15, i32 0, i32 9
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace5, align 8, !tbaa !80
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 6
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !82
  %tobool6 = icmp ne %struct.cmm_profile_s* %17, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.4
  %18 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %ColorSpace8 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %18, i32 0, i32 9
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace8, align 8, !tbaa !80
  %cmm_icc_profile_data9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 6
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data9, align 8, !tbaa !82
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_comps, align 1, !tbaa !84
  %conv = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  store i32 1, i32* %has_gray_icc, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  %22 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %ColorSpace13 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %22, i32 0, i32 9
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace13, align 8, !tbaa !80
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %23) #5
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %24 = load i32, i32* %has_gray_icc, align 4, !tbaa !27
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %25 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim1, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %25, i32 0, i32 4
  %26 = load i32, i32* %BitsPerComponent, align 4, !tbaa !88
  %cmp18 = icmp sgt i32 %26, 1
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.17
  %27 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %27, i32 0, i32 72
  %28 = load i8, i8* %uses_color, align 1, !tbaa !22
  %conv21 = zext i8 %28 to i32
  %or = or i32 %conv21, 1
  %conv22 = trunc i32 %or to i8
  store i8 %conv22, i8* %uses_color, align 1, !tbaa !22
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color24 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %29, i32 0, i32 72
  store i8 2, i8* %uses_color24, align 1, !tbaa !22
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %sw.bb
  %30 = bitcast %struct.gs_pixel_image_s** %pim1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %31 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color27 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %31, i32 0, i32 72
  store i8 2, i8* %uses_color27, align 1, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %sw.epilog, %land.lhs.true, %entry
  %32 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %save_begin_typed_image = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %32, i32 0, i32 75
  %33 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_typed_image, align 8, !tbaa !69
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %37 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %38 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %40 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %42 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call29 = call i32 %33(%struct.gx_device_s* %34, %struct.gs_imager_state_s* %35, %struct.gs_matrix_s* %36, %struct.gs_image_common_s* %37, %struct.gs_int_rect_s* %38, %struct.gx_device_color_s* %39, %struct.gx_clip_path_s* %40, %struct.gs_memory_s* %41, %struct.gx_image_enum_common_s** %42) #5
  %43 = bitcast i32* %has_gray_icc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  ret i32 %call29
}

declare i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pkm_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %cshift = alloca i64, align 8
  %mask = alloca i32, align 4
  %k = alloca i32, align 4
  %y = alloca i32, align 4
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %max_value = alloca i32, align 4
  %not_k = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !33
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  store i32 %shr, i32* %bpc, align 4, !tbaa !27
  %3 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !33
  store i64 %4, i64* %cshift, align 8, !tbaa !33
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl = shl i32 1, %6
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !27
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i64, i64* %cshift, align 8, !tbaa !33
  %9 = load i32, i32* %mask, align 4, !tbaa !27
  %conv1 = zext i32 %9 to i64
  %and = and i64 %8, %conv1
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %k, align 4, !tbaa !27
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %bpc, align 4, !tbaa !27
  %12 = load i64, i64* %cshift, align 8, !tbaa !33
  %sh_prom = zext i32 %11 to i64
  %shr3 = lshr i64 %12, %sh_prom
  store i64 %shr3, i64* %cshift, align 8, !tbaa !33
  %13 = load i32, i32* %mask, align 4, !tbaa !27
  %conv4 = zext i32 %13 to i64
  %and5 = and i64 %shr3, %conv4
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %y, align 4, !tbaa !27
  %14 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %bpc, align 4, !tbaa !27
  %16 = load i64, i64* %cshift, align 8, !tbaa !33
  %sh_prom7 = zext i32 %15 to i64
  %shr8 = lshr i64 %16, %sh_prom7
  store i64 %shr8, i64* %cshift, align 8, !tbaa !33
  %17 = load i32, i32* %mask, align 4, !tbaa !27
  %conv9 = zext i32 %17 to i64
  %and10 = and i64 %shr8, %conv9
  %conv11 = trunc i64 %and10 to i32
  store i32 %conv11, i32* %m, align 4, !tbaa !27
  %18 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i64, i64* %cshift, align 8, !tbaa !33
  %20 = load i32, i32* %bpc, align 4, !tbaa !27
  %sh_prom12 = zext i32 %20 to i64
  %shr13 = lshr i64 %19, %sh_prom12
  %conv14 = trunc i64 %shr13 to i32
  store i32 %conv14, i32* %c, align 4, !tbaa !27
  %21 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info15, i32 0, i32 6
  %23 = load i32, i32* %max_color, align 4, !tbaa !64
  store i32 %23, i32* %max_value, align 4, !tbaa !27
  %24 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %max_value, align 4, !tbaa !27
  %26 = load i32, i32* %k, align 4, !tbaa !27
  %sub16 = sub i32 %25, %26
  store i32 %sub16, i32* %not_k, align 4, !tbaa !27
  %27 = load i32, i32* %max_value, align 4, !tbaa !27
  %28 = load i32, i32* %c, align 4, !tbaa !27
  %sub17 = sub i32 %27, %28
  %29 = load i32, i32* %not_k, align 4, !tbaa !27
  %mul = mul i32 %sub17, %29
  %30 = load i32, i32* %max_value, align 4, !tbaa !27
  %div = udiv i32 %mul, %30
  %conv18 = zext i32 %div to i64
  %mul19 = mul i64 %conv18, 65535
  %31 = load i32, i32* %max_value, align 4, !tbaa !27
  %conv20 = zext i32 %31 to i64
  %div21 = udiv i64 %mul19, %conv20
  %conv22 = trunc i64 %div21 to i16
  %32 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %32, i64 0
  store i16 %conv22, i16* %arrayidx, align 2, !tbaa !56
  %33 = load i32, i32* %max_value, align 4, !tbaa !27
  %34 = load i32, i32* %m, align 4, !tbaa !27
  %sub23 = sub i32 %33, %34
  %35 = load i32, i32* %not_k, align 4, !tbaa !27
  %mul24 = mul i32 %sub23, %35
  %36 = load i32, i32* %max_value, align 4, !tbaa !27
  %div25 = udiv i32 %mul24, %36
  %conv26 = zext i32 %div25 to i64
  %mul27 = mul i64 %conv26, 65535
  %37 = load i32, i32* %max_value, align 4, !tbaa !27
  %conv28 = zext i32 %37 to i64
  %div29 = udiv i64 %mul27, %conv28
  %conv30 = trunc i64 %div29 to i16
  %38 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %38, i64 1
  store i16 %conv30, i16* %arrayidx31, align 2, !tbaa !56
  %39 = load i32, i32* %max_value, align 4, !tbaa !27
  %40 = load i32, i32* %y, align 4, !tbaa !27
  %sub32 = sub i32 %39, %40
  %41 = load i32, i32* %not_k, align 4, !tbaa !27
  %mul33 = mul i32 %sub32, %41
  %42 = load i32, i32* %max_value, align 4, !tbaa !27
  %div34 = udiv i32 %mul33, %42
  %conv35 = zext i32 %div34 to i64
  %mul36 = mul i64 %conv35, 65535
  %43 = load i32, i32* %max_value, align 4, !tbaa !27
  %conv37 = zext i32 %43 to i64
  %div38 = udiv i64 %mul36, %conv37
  %conv39 = trunc i64 %div38 to i16
  %44 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %44, i64 2
  store i16 %conv39, i16* %arrayidx40, align 2, !tbaa !56
  %45 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @pkm_map_cmyk_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %max_value = alloca i32, align 4
  %cc = alloca i32, align 4
  %mc = alloca i32, align 4
  %yc = alloca i32, align 4
  %kc = alloca i32, align 4
  %color = alloca i64, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  store i32 %shr, i32* %bpc, align 4, !tbaa !27
  %3 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 6
  %5 = load i32, i32* %max_color, align 4, !tbaa !64
  store i32 %5, i32* %max_value, align 4, !tbaa !27
  %6 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !56
  %conv2 = zext i16 %8 to i32
  %9 = load i32, i32* %max_value, align 4, !tbaa !27
  %mul = mul i32 %conv2, %9
  %div = udiv i32 %mul, 65535
  store i32 %div, i32* %cc, align 4, !tbaa !27
  %10 = bitcast i32* %mc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 1
  %12 = load i16, i16* %arrayidx3, align 2, !tbaa !56
  %conv4 = zext i16 %12 to i32
  %13 = load i32, i32* %max_value, align 4, !tbaa !27
  %mul5 = mul i32 %conv4, %13
  %div6 = udiv i32 %mul5, 65535
  store i32 %div6, i32* %mc, align 4, !tbaa !27
  %14 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %15, i64 2
  %16 = load i16, i16* %arrayidx7, align 2, !tbaa !56
  %conv8 = zext i16 %16 to i32
  %17 = load i32, i32* %max_value, align 4, !tbaa !27
  %mul9 = mul i32 %conv8, %17
  %div10 = udiv i32 %mul9, 65535
  store i32 %div10, i32* %yc, align 4, !tbaa !27
  %18 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %19, i64 3
  %20 = load i16, i16* %arrayidx11, align 2, !tbaa !56
  %conv12 = zext i16 %20 to i32
  %21 = load i32, i32* %max_value, align 4, !tbaa !27
  %mul13 = mul i32 %conv12, %21
  %div14 = udiv i32 %mul13, 65535
  store i32 %div14, i32* %kc, align 4, !tbaa !27
  %22 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load i32, i32* %cc, align 4, !tbaa !27
  %24 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl = shl i32 %23, %24
  %25 = load i32, i32* %mc, align 4, !tbaa !27
  %add = add i32 %shl, %25
  %26 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl15 = shl i32 %add, %26
  %27 = load i32, i32* %yc, align 4, !tbaa !27
  %add16 = add i32 %shl15, %27
  %28 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl17 = shl i32 %add16, %28
  %29 = load i32, i32* %kc, align 4, !tbaa !27
  %add18 = add i32 %shl17, %29
  %conv19 = zext i32 %add18 to i64
  store i64 %conv19, i64* %color, align 8, !tbaa !33
  %30 = load i64, i64* %color, align 8, !tbaa !33
  %cmp = icmp eq i64 %30, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %31 = load i64, i64* %color, align 8, !tbaa !33
  %xor = xor i64 %31, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %32 = load i64, i64* %color, align 8, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %32, %cond.false ]
  %33 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %mc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  ret i64 %cond
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ppm_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %UsePlanarBuffer = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %5, i32 0, i32 73
  %6 = load i32, i32* %UsePlanarBuffer, align 4, !tbaa !89
  %call = call i32 @gdev_prn_open_planar(%struct.gx_device_s* %4, i32 %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !90
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %10) #5
  %11 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %11, i32 0, i32 72
  store i8 0, i8* %uses_color, align 1, !tbaa !22
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @ppm_set_dev_procs(%struct.gx_device_s* %12) #5
  %13 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i64 @pgm_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !56
  store i16 %5, i16* %r, align 2, !tbaa !56
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx1, align 2, !tbaa !56
  store i16 %7, i16* %g, align 2, !tbaa !56
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx2, align 2, !tbaa !56
  store i16 %9, i16* %b, align 2, !tbaa !56
  %10 = load i16, i16* %r, align 2, !tbaa !56
  %conv = zext i16 %10 to i64
  %mul = mul i64 %conv, 30
  %11 = load i16, i16* %g, align 2, !tbaa !56
  %conv3 = zext i16 %11 to i64
  %mul4 = mul i64 %conv3, 59
  %add = add i64 %mul, %mul4
  %12 = load i16, i16* %b, align 2, !tbaa !56
  %conv5 = zext i16 %12 to i64
  %mul6 = mul i64 %conv5, 11
  %add7 = add i64 %add, %mul6
  %add8 = add i64 %add7, 50
  %div = udiv i64 %add8, 100
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %14 = load i32, i32* %max_gray, align 4, !tbaa !65
  %conv9 = zext i32 %14 to i64
  %mul10 = mul i64 %div, %conv9
  %div11 = udiv i64 %mul10, 65535
  %conv12 = trunc i64 %div11 to i16
  store i16 %conv12, i16* %gray, align 2, !tbaa !56
  %15 = load i16, i16* %gray, align 2, !tbaa !56
  %conv13 = zext i16 %15 to i32
  %cmp = icmp eq i32 %conv13, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i16, i16* %gray, align 2, !tbaa !56
  %conv15 = zext i16 %16 to i32
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %max_gray17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 5
  %18 = load i32, i32* %max_gray17, align 4, !tbaa !65
  %cmp18 = icmp eq i32 %conv15, %18
  br i1 %cmp18, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %19 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %21, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %22 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %22, i32 0, i32 72
  store i8 1, i8* %uses_color, align 1, !tbaa !22
  %23 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %24 = load i16, i16* %gray, align 2, !tbaa !56
  %conv20 = zext i16 %24 to i64
  %25 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #2
  %26 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #2
  %27 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #2
  %28 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #2
  ret i64 %conv20
}

; Function Attrs: nounwind uwtable
define internal i32 @pgm_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !33
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !33
  %mul = mul i64 %1, 65535
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %3 = load i32, i32* %max_gray, align 4, !tbaa !65
  %conv = zext i32 %3 to i64
  %div = udiv i64 %mul, %conv
  %conv1 = trunc i64 %div to i16
  store i16 %conv1, i16* %gray, align 2, !tbaa !56
  %4 = load i16, i16* %gray, align 2, !tbaa !56
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !56
  %6 = load i16, i16* %gray, align 2, !tbaa !56
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx2, align 2, !tbaa !56
  %8 = load i16, i16* %gray, align 2, !tbaa !56
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx3, align 2, !tbaa !56
  %10 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #2
  ret i32 0
}

declare i32 @gdev_prn_open_planar(%struct.gx_device_s*, i32) #0

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ppm_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i32, align 4
  %colormask = alloca i32, align 4
  %max_rgb = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !33
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 3
  store i32 %div, i32* %bitspercolor, align 4, !tbaa !27
  %3 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bitspercolor, align 4, !tbaa !27
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %colormask, align 4, !tbaa !27
  %5 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 6
  %7 = load i32, i32* %max_color, align 4, !tbaa !64
  store i32 %7, i32* %max_rgb, align 4, !tbaa !27
  %8 = load i64, i64* %color.addr, align 8, !tbaa !33
  %9 = load i32, i32* %bitspercolor, align 4, !tbaa !27
  %mul = mul i32 %9, 2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %8, %sh_prom
  %10 = load i32, i32* %colormask, align 4, !tbaa !27
  %conv2 = zext i32 %10 to i64
  %and = and i64 %shr, %conv2
  %mul3 = mul i64 %and, 65535
  %11 = load i32, i32* %max_rgb, align 4, !tbaa !27
  %conv4 = zext i32 %11 to i64
  %div5 = udiv i64 %mul3, %conv4
  %conv6 = trunc i64 %div5 to i16
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  store i16 %conv6, i16* %arrayidx, align 2, !tbaa !56
  %13 = load i64, i64* %color.addr, align 8, !tbaa !33
  %14 = load i32, i32* %bitspercolor, align 4, !tbaa !27
  %sh_prom7 = zext i32 %14 to i64
  %shr8 = lshr i64 %13, %sh_prom7
  %15 = load i32, i32* %colormask, align 4, !tbaa !27
  %conv9 = zext i32 %15 to i64
  %and10 = and i64 %shr8, %conv9
  %mul11 = mul i64 %and10, 65535
  %16 = load i32, i32* %max_rgb, align 4, !tbaa !27
  %conv12 = zext i32 %16 to i64
  %div13 = udiv i64 %mul11, %conv12
  %conv14 = trunc i64 %div13 to i16
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %17, i64 1
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !56
  %18 = load i64, i64* %color.addr, align 8, !tbaa !33
  %19 = load i32, i32* %colormask, align 4, !tbaa !27
  %conv16 = zext i32 %19 to i64
  %and17 = and i64 %18, %conv16
  %mul18 = mul i64 %and17, 65535
  %20 = load i32, i32* %max_rgb, align 4, !tbaa !27
  %conv19 = zext i32 %20 to i64
  %div20 = udiv i64 %mul18, %conv19
  %conv21 = trunc i64 %div20 to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv21, i16* %arrayidx22, align 2, !tbaa !56
  %22 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %UsePlanarBuffer = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %6, i32 0, i32 73
  %call = call i32 @gdev_prn_get_params_planar(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5, i32* %UsePlanarBuffer) #5
  store i32 %call, i32* %code, align 4, !tbaa !27
  %7 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @param_write_null(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)) #5
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %10 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gdev_prn_get_params_planar(%struct.gx_device_s*, %struct.gs_param_list_s*, i32*) #0

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i64 @ppm_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %color = alloca i64, align 8
  %bpc = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !56
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !56
  %9 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx2, align 2, !tbaa !56
  %call = call i64 @gx_old_default_rgb_map_rgb_color(%struct.gx_device_s* %4, i16 zeroext %6, i16 zeroext %8, i16 zeroext %10) #5
  store i64 %call, i64* %color, align 8, !tbaa !33
  %11 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %13 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %13 to i32
  %div = sdiv i32 %conv, 3
  store i32 %div, i32* %bpc, align 4, !tbaa !27
  %14 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %depth4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 3
  %16 = load i16, i16* %depth4, align 2, !tbaa !54
  %conv5 = zext i16 %16 to i32
  %17 = load i32, i32* %bpc, align 4, !tbaa !27
  %sub = sub i32 %conv5, %17
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %sub6 = sub i64 %shl, 1
  store i64 %sub6, i64* %mask, align 8, !tbaa !33
  %18 = load i64, i64* %color, align 8, !tbaa !33
  %19 = load i32, i32* %bpc, align 4, !tbaa !27
  %sh_prom7 = zext i32 %19 to i64
  %shr = lshr i64 %18, %sh_prom7
  %20 = load i64, i64* %color, align 8, !tbaa !33
  %xor = xor i64 %shr, %20
  %21 = load i64, i64* %mask, align 8, !tbaa !33
  %and = and i64 %xor, %21
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %22 = load i64, i64* %color, align 8, !tbaa !33
  %cmp = icmp ne i64 %22, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %23 = load i64, i64* %color, align 8, !tbaa !33
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %mask, align 8, !tbaa !33
  %and9 = and i64 %neg, %24
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %25 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %25, i32 0, i32 72
  %26 = load i8, i8* %uses_color, align 1, !tbaa !22
  %conv12 = zext i8 %26 to i32
  %or = or i32 %conv12, 1
  %conv13 = trunc i32 %or to i8
  store i8 %conv13, i8* %uses_color, align 1, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then
  br label %if.end.15

if.else:                                          ; preds = %entry
  %27 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %uses_color14 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %27, i32 0, i32 72
  store i8 2, i8* %uses_color14, align 1, !tbaa !22
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %28 = load i64, i64* %color, align 8, !tbaa !33
  %29 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define internal i64 @gx_old_default_rgb_map_rgb_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b) #1 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %bpc = alloca i32, align 4
  %drop = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !56
  store i16 %g, i16* %g.addr, align 2, !tbaa !56
  store i16 %b, i16* %b.addr, align 2, !tbaa !56
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !54
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %b.addr, align 2, !tbaa !56
  %conv2 = zext i16 %2 to i32
  %mul = mul i32 %conv2, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i32
  %3 = load i16, i16* %g.addr, align 2, !tbaa !56
  %conv5 = zext i16 %3 to i32
  %mul6 = mul i32 %conv5, 65281
  %add7 = add i32 %mul6, 8388608
  %shr8 = lshr i32 %add7, 24
  %conv9 = trunc i32 %shr8 to i16
  %conv10 = zext i16 %conv9 to i32
  %shl = shl i32 %conv10, 8
  %add11 = add i32 %conv4, %shl
  %conv12 = zext i32 %add11 to i64
  %4 = load i16, i16* %r.addr, align 2, !tbaa !56
  %conv13 = zext i16 %4 to i32
  %mul14 = mul i32 %conv13, 65281
  %add15 = add i32 %mul14, 8388608
  %shr16 = lshr i32 %add15, 24
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = zext i16 %conv17 to i64
  %shl19 = shl i64 %conv18, 16
  %add20 = add i64 %conv12, %shl19
  store i64 %add20, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 3
  %7 = load i16, i16* %depth22, align 2, !tbaa !54
  %conv23 = zext i16 %7 to i32
  %div = sdiv i32 %conv23, 3
  store i32 %div, i32* %bpc, align 4, !tbaa !27
  %8 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %bpc, align 4, !tbaa !27
  %conv24 = sext i32 %9 to i64
  %sub = sub i64 16, %conv24
  %conv25 = trunc i64 %sub to i32
  store i32 %conv25, i32* %drop, align 4, !tbaa !27
  %10 = load i16, i16* %r.addr, align 2, !tbaa !56
  %conv26 = zext i16 %10 to i32
  %11 = load i32, i32* %drop, align 4, !tbaa !27
  %shr27 = ashr i32 %conv26, %11
  %12 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl28 = shl i32 %shr27, %12
  %13 = load i16, i16* %g.addr, align 2, !tbaa !56
  %conv29 = zext i16 %13 to i32
  %14 = load i32, i32* %drop, align 4, !tbaa !27
  %shr30 = ashr i32 %conv29, %14
  %add31 = add nsw i32 %shl28, %shr30
  %15 = load i32, i32* %bpc, align 4, !tbaa !27
  %shl32 = shl i32 %add31, %15
  %16 = load i16, i16* %b.addr, align 2, !tbaa !56
  %conv33 = zext i16 %16 to i32
  %17 = load i32, i32* %drop, align 4, !tbaa !27
  %shr34 = ashr i32 %conv33, %17
  %add35 = add nsw i32 %shl32, %shr34
  %conv36 = sext i32 %add35 to i64
  store i64 %conv36, i64* %retval
  %18 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @pnmcmyk_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 39
  %1 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !91
  %graydetection = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %1, i32 0, i32 6
  store i32 1, i32* %graydetection, align 4, !tbaa !48
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 39
  %3 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct1, align 8, !tbaa !91
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %3, i32 0, i32 7
  store i32 1, i32* %pageneutralcolor, align 4, !tbaa !50
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @ppm_open(%struct.gx_device_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pbm_print_page_loop(%struct.gx_device_printer_s* %pdev, i8 signext %magic, %struct._IO_FILE* %pstream, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* %row_proc) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %magic.addr = alloca i8, align 1
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %row_proc.addr = alloca i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %raster = alloca i32, align 4
  %data = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %code = alloca i32, align 4
  %output_is_nul = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ncomps = alloca i32, align 4
  %row = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8 %magic, i8* %magic.addr, align 1, !tbaa !37
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* %row_proc, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster_chunky(%struct.gx_device_s* %5, i32 0) #5
  store i32 %call, i32* %raster, align 4, !tbaa !27
  %6 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !29
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !28
  %12 = load i32, i32* %raster, align 4, !tbaa !27
  %call2 = call i8* %9(%struct.gs_memory_s* %11, i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  store i8* %call2, i8** %data, align 8, !tbaa !1
  %13 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %lnum, align 4, !tbaa !27
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %code, align 4, !tbaa !27
  %15 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  br i1 false, label %land.lhs.true, label %cond.false.57

land.lhs.true:                                    ; preds = %entry
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #7
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay) #7
  %cmp = icmp ult i64 %call4, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 45
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname5, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ 4, %cond.false ]
  %cmp8 = icmp ult i64 %call3, %cond
  br i1 %cmp8, label %cond.true.9, label %cond.false.57

cond.true.9:                                      ; preds = %cond.end
  %18 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.28 to i64)), i64 1), label %land.lhs.true.10, label %cond.false.51

land.lhs.true.10:                                 ; preds = %cond.true.9
  %call11 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #7
  store i64 %call11, i64* %__s2_len, align 8, !tbaa !33
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp12 = icmp ult i64 %20, 4
  br i1 %cmp12, label %cond.true.13, label %cond.false.51

cond.true.13:                                     ; preds = %land.lhs.true.10
  %21 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 45
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname15, i32 0, i32 0
  store i8* %arraydecay16, i8** %__s1, align 8, !tbaa !1
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %conv = zext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), align 1, !tbaa !37
  %conv18 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv, %conv18
  store i32 %sub, i32* %__result, align 4, !tbaa !27
  %27 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp19 = icmp ugt i64 %27, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.49

land.lhs.true.21:                                 ; preds = %cond.true.13
  %28 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp22 = icmp eq i32 %28, 0
  br i1 %cmp22, label %if.then, label %if.end.49

if.then:                                          ; preds = %land.lhs.true.21
  %29 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx24, align 1, !tbaa !37
  %conv25 = zext i8 %30 to i32
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 1), align 1, !tbaa !37
  %conv26 = zext i8 %31 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  store i32 %sub27, i32* %__result, align 4, !tbaa !27
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp28 = icmp ugt i64 %32, 1
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.48

land.lhs.true.30:                                 ; preds = %if.then
  %33 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp31 = icmp eq i32 %33, 0
  br i1 %cmp31, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %land.lhs.true.30
  %34 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx34, align 1, !tbaa !37
  %conv35 = zext i8 %35 to i32
  %36 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 2), align 1, !tbaa !37
  %conv36 = zext i8 %36 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !27
  %37 = load i64, i64* %__s2_len, align 8, !tbaa !33
  %cmp38 = icmp ugt i64 %37, 2
  br i1 %cmp38, label %land.lhs.true.40, label %if.end

land.lhs.true.40:                                 ; preds = %if.then.33
  %38 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp41 = icmp eq i32 %38, 0
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %land.lhs.true.40
  %39 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx44, align 1, !tbaa !37
  %conv45 = zext i8 %40 to i32
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i64 3), align 1, !tbaa !37
  %conv46 = zext i8 %41 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.43, %land.lhs.true.40, %if.then.33
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %land.lhs.true.30, %if.then
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.21, %cond.true.13
  %42 = load i32, i32* %__result, align 4, !tbaa !27
  store i32 %42, i32* %tmp50, !tbaa !27
  %43 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %tmp50, !tbaa !27
  br label %cond.end.55

cond.false.51:                                    ; preds = %land.lhs.true.10, %cond.true.9
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname52 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 45
  %arraydecay53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname52, i32 0, i32 0
  %call54 = call i32 @strcmp(i8* %arraydecay53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.51, %if.end.49
  %cond56 = phi i32 [ %45, %if.end.49 ], [ %call54, %cond.false.51 ]
  store i32 %cond56, i32* %tmp, !tbaa !27
  %47 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %tmp, !tbaa !27
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

cond.false.57:                                    ; preds = %cond.end, %entry
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname58 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 45
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname58, i32 0, i32 0
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 45
  %arraydecay61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname60, i32 0, i32 0
  %call62 = call i64 @strlen(i8* %arraydecay61) #7
  %cmp63 = icmp ult i64 %call62, 4
  br i1 %cmp63, label %cond.true.65, label %cond.false.69

cond.true.65:                                     ; preds = %cond.false.57
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname66 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 45
  %arraydecay67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname66, i32 0, i32 0
  %call68 = call i64 @strlen(i8* %arraydecay67) #7
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.false.57
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.65
  %cond71 = phi i64 [ %call68, %cond.true.65 ], [ 4, %cond.false.69 ]
  %call72 = call i32 @strncmp(i8* %arraydecay59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 %cond71) #7
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end.70, %cond.end.55
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname74 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 45
  %arraydecay75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname74, i32 0, i32 0
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname76 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 45
  %arraydecay77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname76, i32 0, i32 0
  %call78 = call i64 @strlen(i8* %arraydecay77) #7
  %cmp79 = icmp ult i64 %call78, 9
  br i1 %cmp79, label %cond.true.81, label %cond.false.85

cond.true.81:                                     ; preds = %lor.rhs
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname82 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 45
  %arraydecay83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname82, i32 0, i32 0
  %call84 = call i64 @strlen(i8* %arraydecay83) #7
  br label %cond.end.86

cond.false.85:                                    ; preds = %lor.rhs
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.81
  %cond87 = phi i64 [ %call84, %cond.true.81 ], [ 9, %cond.false.85 ]
  %call88 = call i32 @strncmp(i8* %arraydecay75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i64 %cond87) #7
  %tobool89 = icmp ne i32 %call88, 0
  %lnot = xor i1 %tobool89, true
  br label %lor.end

lor.end:                                          ; preds = %cond.end.86, %cond.end.70, %cond.end.55
  %56 = phi i1 [ true, %cond.end.70 ], [ true, %cond.end.55 ], [ %lnot, %cond.end.86 ]
  %lor.ext = zext i1 %56 to i32
  store i32 %lor.ext, i32* %output_is_nul, align 4, !tbaa !27
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp90 = icmp eq i8* %57, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.253

if.end.93:                                        ; preds = %lor.end
  %58 = load i32, i32* %output_is_nul, align 4, !tbaa !27
  %tobool94 = icmp ne i32 %58, 0
  br i1 %tobool94, label %if.end.221, label %if.then.95

if.then.95:                                       ; preds = %if.end.93
  %59 = load i8, i8* %magic.addr, align 1, !tbaa !37
  %conv96 = sext i8 %59 to i32
  %cmp97 = icmp eq i32 %conv96, 57
  br i1 %cmp97, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %if.then.95
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 13
  %62 = load i32, i32* %width, align 4, !tbaa !26
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 14
  %64 = load i32, i32* %height, align 4, !tbaa !39
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 0, i32 %62, i32 %64) #5
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.104:                                       ; preds = %if.then.99
  br label %if.end.207

if.else:                                          ; preds = %if.then.95
  %65 = load i8, i8* %magic.addr, align 1, !tbaa !37
  %conv105 = sext i8 %65 to i32
  %cmp106 = icmp eq i32 %conv105, 55
  br i1 %cmp106, label %if.then.108, label %if.else.174

if.then.108:                                      ; preds = %if.else
  %66 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %68 = load i32, i32* %num_components, align 4, !tbaa !32
  store i32 %68, i32* %ncomps, align 4, !tbaa !27
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %70 = load i8, i8* %magic.addr, align 1, !tbaa !37
  %conv110 = sext i8 %70 to i32
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %conv110) #5
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.108
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.then.108
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width116 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 13
  %73 = load i32, i32* %width116, align 4, !tbaa !26
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 %73) #5
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.115
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %if.end.115
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height122 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 14
  %76 = load i32, i32* %height122, align 4, !tbaa !39
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 %76) #5
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %if.end.121
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %78 = load i32, i32* %ncomps, align 4, !tbaa !27
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 %78) #5
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.127
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.end.127
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 255) #5
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.132
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.end.132
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %81 = load i32, i32* %ncomps, align 4, !tbaa !27
  %cmp138 = icmp eq i32 %81, 4
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %if.end.137
  br label %cond.end.145

cond.false.141:                                   ; preds = %if.end.137
  %82 = load i32, i32* %ncomps, align 4, !tbaa !27
  %cmp142 = icmp eq i32 %82, 3
  %cond144 = select i1 %cmp142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.141, %cond.true.140
  %cond146 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %cond.true.140 ], [ %cond144, %cond.false.141 ]
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* %cond146) #5
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %cond.end.145
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %cond.end.145
  %83 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %83, i32 0, i32 69
  %arrayidx152 = getelementptr inbounds [71 x i8], [71 x i8]* %comment, i32 0, i64 0
  %84 = load i8, i8* %arrayidx152, align 1, !tbaa !37
  %tobool153 = icmp ne i8 %84, 0
  br i1 %tobool153, label %if.then.154, label %if.else.162

if.then.154:                                      ; preds = %if.end.151
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %86 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment155 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %86, i32 0, i32 69
  %arraydecay156 = getelementptr inbounds [71 x i8], [71 x i8]* %comment155, i32 0, i32 0
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay156) #5
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.154
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %if.then.154
  br label %if.end.168

if.else.162:                                      ; preds = %if.end.151
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %88 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* %88) #5
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.else.162
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %if.else.162
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.161
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #5
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.168
  store i32 -12, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %if.end.168
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.172, %if.then.166, %if.then.160, %if.then.150, %if.then.136, %if.then.131, %if.then.126, %if.then.120, %if.then.114, %if.end.173
  %90 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.253 [
    i32 0, label %cleanup.cont
    i32 2, label %punt
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.206

if.else.174:                                      ; preds = %if.else
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %92 = load i8, i8* %magic.addr, align 1, !tbaa !37
  %conv175 = sext i8 %92 to i32
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %conv175) #5
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.else.174
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.180:                                       ; preds = %if.else.174
  %93 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment181 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %93, i32 0, i32 69
  %arrayidx182 = getelementptr inbounds [71 x i8], [71 x i8]* %comment181, i32 0, i64 0
  %94 = load i8, i8* %arrayidx182, align 1, !tbaa !37
  %tobool183 = icmp ne i8 %94, 0
  br i1 %tobool183, label %if.then.184, label %if.else.192

if.then.184:                                      ; preds = %if.end.180
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %96 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %comment185 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %96, i32 0, i32 69
  %arraydecay186 = getelementptr inbounds [71 x i8], [71 x i8]* %comment185, i32 0, i32 0
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay186) #5
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.184
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.191:                                       ; preds = %if.then.184
  br label %if.end.198

if.else.192:                                      ; preds = %if.end.180
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %98 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %99 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %99, i32 0, i32 2
  %100 = load i8*, i8** %dname, align 8, !tbaa !38
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i8* %98, i8* %100) #5
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.else.192
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.197:                                       ; preds = %if.else.192
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.191
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width199 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %102, i32 0, i32 13
  %103 = load i32, i32* %width199, align 4, !tbaa !26
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height200 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %104, i32 0, i32 14
  %105 = load i32, i32* %height200, align 4, !tbaa !39
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %103, i32 %105) #5
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.end.198
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.205:                                       ; preds = %if.end.198
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %cleanup.cont
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.104
  %106 = load i8, i8* %magic.addr, align 1, !tbaa !37
  %conv208 = sext i8 %106 to i32
  switch i32 %conv208, label %sw.default [
    i32 49, label %sw.bb
    i32 52, label %sw.bb
    i32 55, label %sw.bb
    i32 57, label %sw.bb
    i32 51, label %sw.bb.209
    i32 54, label %sw.bb.209
  ]

sw.bb:                                            ; preds = %if.end.207, %if.end.207, %if.end.207, %if.end.207
  br label %sw.epilog

sw.bb.209:                                        ; preds = %if.end.207, %if.end.207
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 255) #5
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %sw.bb.209
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.214:                                       ; preds = %sw.bb.209
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.207
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info215 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %109, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info215, i32 0, i32 5
  %110 = load i32, i32* %max_gray, align 4, !tbaa !40
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 %110) #5
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %sw.default
  store i32 -12, i32* %code, align 4, !tbaa !27
  br label %punt

if.end.220:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.220, %if.end.214, %sw.bb
  br label %if.end.221

if.end.221:                                       ; preds = %sw.epilog, %if.end.93
  %111 = load i32, i32* %output_is_nul, align 4, !tbaa !27
  %tobool222 = icmp ne i32 %111, 0
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.221
  store i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)* @nop_row_proc, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc.addr, align 8, !tbaa !1
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.end.221
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.224
  %112 = load i32, i32* %lnum, align 4, !tbaa !27
  %113 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height225 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %113, i32 0, i32 14
  %114 = load i32, i32* %height225, align 4, !tbaa !39
  %cmp226 = icmp slt i32 %112, %114
  br i1 %cmp226, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #2
  %116 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %117 = load i32, i32* %lnum, align 4, !tbaa !27
  %118 = load i8*, i8** %data, align 8, !tbaa !1
  %call229 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %116, i32 %117, i8* %118, i8** %row) #5
  store i32 %call229, i32* %code, align 4, !tbaa !27
  %119 = load i32, i32* %code, align 4, !tbaa !27
  %cmp230 = icmp slt i32 %119, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.241

if.end.233:                                       ; preds = %for.body
  %120 = load i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, i8*, i32, %struct._IO_FILE*)** %row_proc.addr, align 8, !tbaa !1
  %121 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %122 = load i8*, i8** %row, align 8, !tbaa !1
  %123 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info234 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %123, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info234, i32 0, i32 3
  %124 = load i16, i16* %depth, align 2, !tbaa !24
  %conv235 = zext i16 %124 to i32
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call236 = call i32 %120(%struct.gx_device_printer_s* %121, i8* %122, i32 %conv235, %struct._IO_FILE* %125) #5
  store i32 %call236, i32* %code, align 4, !tbaa !27
  %126 = load i32, i32* %code, align 4, !tbaa !27
  %cmp237 = icmp slt i32 %126, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.233
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.241

if.end.240:                                       ; preds = %if.end.233
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.241

cleanup.241:                                      ; preds = %if.end.240, %if.then.239, %if.then.232
  %127 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %cleanup.dest.242 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.242, label %unreachable [
    i32 0, label %cleanup.cont.243
    i32 4, label %for.end
  ]

cleanup.cont.243:                                 ; preds = %cleanup.241
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.243
  %128 = load i32, i32* %lnum, align 4, !tbaa !27
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup.241, %for.cond
  br label %punt

punt:                                             ; preds = %for.end, %cleanup, %if.then.219, %if.then.213, %if.then.204, %if.then.196, %if.then.190, %if.then.179, %if.then.103
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory244 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory244, align 8, !tbaa !28
  %procs245 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs245, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %132 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory246 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory246, align 8, !tbaa !28
  %134 = load i8*, i8** %data, align 8, !tbaa !1
  call void %131(%struct.gs_memory_s* %133, i8* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  %135 = load i32, i32* %code, align 4, !tbaa !27
  %cmp247 = icmp slt i32 %135, 0
  br i1 %cmp247, label %cond.true.249, label %cond.false.250

cond.true.249:                                    ; preds = %punt
  %136 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end.251

cond.false.250:                                   ; preds = %punt
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.249
  %cond252 = phi i32 [ %136, %cond.true.249 ], [ 0, %cond.false.250 ]
  store i32 %cond252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.253

cleanup.253:                                      ; preds = %cond.end.251, %cleanup, %if.then.92
  %137 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = load i32, i32* %retval
  ret i32 %143

unreachable:                                      ; preds = %cleanup.241
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pbm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %3, i32 0, i32 70
  %4 = load i8, i8* %is_raw, align 1, !tbaa !57
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4, !tbaa !26
  %add = add nsw i32 %7, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %n, align 4, !tbaa !27
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %9 = load i32, i32* %n, align 4, !tbaa !27
  %conv = zext i32 %9 to i64
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %8, i64 1, i64 %conv, %struct._IO_FILE* %10) #5
  %11 = load i32, i32* %n, align 4, !tbaa !27
  %conv1 = zext i32 %11 to i64
  %cmp = icmp ne i64 %call, %conv1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.else:                                          ; preds = %entry
  %13 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %16, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  store i32 128, i32* %mask, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %if.end.30, %if.else
  %17 = load i32, i32* %x, align 4, !tbaa !27
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width4, align 4, !tbaa !26
  %cmp5 = icmp ult i32 %17, %19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %bp, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !37
  %conv7 = zext i8 %21 to i32
  %22 = load i32, i32* %mask, align 4, !tbaa !27
  %and = and i32 %conv7, %22
  %tobool8 = icmp ne i32 %and, 0
  %cond = select i1 %tobool8, i32 49, i32 48
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call9 = call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %23) #5
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.13:                                        ; preds = %for.body
  %24 = load i32, i32* %x, align 4, !tbaa !27
  %inc = add i32 %24, 1
  store i32 %inc, i32* %x, align 4, !tbaa !27
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width14, align 4, !tbaa !26
  %cmp15 = icmp eq i32 %inc, %26
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %27 = load i32, i32* %x, align 4, !tbaa !27
  %and17 = and i32 %27, 63
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end.25, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call20 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %28) #5
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.24:                                        ; preds = %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %lor.lhs.false
  %29 = load i32, i32* %mask, align 4, !tbaa !27
  %shr26 = lshr i32 %29, 1
  store i32 %shr26, i32* %mask, align 4, !tbaa !27
  %cmp27 = icmp eq i32 %shr26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %30 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i32 128, i32* %mask, align 4, !tbaa !27
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %for.end, %if.then.23, %if.then.12
  %31 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.34, label %cleanup.37 [
    i32 0, label %cleanup.cont.35
  ]

cleanup.cont.35:                                  ; preds = %cleanup.31
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont.35, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %cleanup.31, %cleanup
  %34 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gx_device_raster_chunky(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @nop_row_proc(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %len, %struct._IO_FILE* %f) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  ret i32 0
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pxm_pbm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %delta = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %out_mask = alloca i8, align 1
  %out = alloca i8, align 1
  %in_mask = alloca i8, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %add = add nsw i32 %1, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %delta, align 4, !tbaa !27
  %2 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %delta, align 4, !tbaa !27
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %src, align 8, !tbaa !1
  %5 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %6, i8** %dest, align 8, !tbaa !1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  call void @llvm.lifetime.start(i64 1, i8* %out_mask) #2
  store i8 -128, i8* %out_mask, align 1, !tbaa !37
  call void @llvm.lifetime.start(i64 1, i8* %out) #2
  store i8 0, i8* %out, align 1, !tbaa !37
  %8 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %8, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %x, align 4, !tbaa !27
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !26
  %cmp2 = icmp slt i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %src, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !37
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %for.body
  %14 = load i8, i8* %out_mask, align 1, !tbaa !37
  %conv4 = zext i8 %14 to i32
  %15 = load i8, i8* %out, align 1, !tbaa !37
  %conv5 = zext i8 %15 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %out, align 1, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  %16 = load i8, i8* %out_mask, align 1, !tbaa !37
  %conv7 = zext i8 %16 to i32
  %shr8 = ashr i32 %conv7, 1
  %conv9 = trunc i32 %shr8 to i8
  store i8 %conv9, i8* %out_mask, align 1, !tbaa !37
  %17 = load i8, i8* %out_mask, align 1, !tbaa !37
  %tobool10 = icmp ne i8 %17, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i8 -128, i8* %out_mask, align 1, !tbaa !37
  %18 = load i8, i8* %out, align 1, !tbaa !37
  %19 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8, !tbaa !1
  store i8 %18, i8* %19, align 1, !tbaa !37
  store i8 0, i8* %out, align 1, !tbaa !37
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %20 = load i32, i32* %x, align 4, !tbaa !27
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %x, align 4, !tbaa !27
  %21 = load i32, i32* %delta, align 4, !tbaa !27
  %22 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext13 = sext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 %idx.ext13
  store i8* %add.ptr14, i8** %src, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %in_mask) #2
  %23 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %shr15 = ashr i32 256, %23
  %conv16 = trunc i32 %shr15 to i8
  store i8 %conv16, i8* %in_mask, align 1, !tbaa !37
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.48, %if.else
  %24 = load i32, i32* %x, align 4, !tbaa !27
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width18, align 4, !tbaa !26
  %cmp19 = icmp slt i32 %24, %26
  br i1 %cmp19, label %for.body.21, label %for.end.50

for.body.21:                                      ; preds = %for.cond.17
  %27 = load i8*, i8** %src, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !37
  %conv22 = zext i8 %28 to i32
  %29 = load i8, i8* %in_mask, align 1, !tbaa !37
  %conv23 = zext i8 %29 to i32
  %and24 = and i32 %conv22, %conv23
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.31, label %if.then.26

if.then.26:                                       ; preds = %for.body.21
  %30 = load i8, i8* %out_mask, align 1, !tbaa !37
  %conv27 = zext i8 %30 to i32
  %31 = load i8, i8* %out, align 1, !tbaa !37
  %conv28 = zext i8 %31 to i32
  %or29 = or i32 %conv28, %conv27
  %conv30 = trunc i32 %or29 to i8
  store i8 %conv30, i8* %out, align 1, !tbaa !37
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %for.body.21
  %32 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %33 = load i8, i8* %in_mask, align 1, !tbaa !37
  %conv32 = zext i8 %33 to i32
  %shr33 = ashr i32 %conv32, %32
  %conv34 = trunc i32 %shr33 to i8
  store i8 %conv34, i8* %in_mask, align 1, !tbaa !37
  %34 = load i8, i8* %in_mask, align 1, !tbaa !37
  %tobool35 = icmp ne i8 %34, 0
  br i1 %tobool35, label %if.end.40, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  %35 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %shr37 = ashr i32 256, %35
  %conv38 = trunc i32 %shr37 to i8
  store i8 %conv38, i8* %in_mask, align 1, !tbaa !37
  %36 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr39, i8** %src, align 8, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end.31
  %37 = load i8, i8* %out_mask, align 1, !tbaa !37
  %conv41 = zext i8 %37 to i32
  %shr42 = ashr i32 %conv41, 1
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, i8* %out_mask, align 1, !tbaa !37
  %38 = load i8, i8* %out_mask, align 1, !tbaa !37
  %tobool44 = icmp ne i8 %38, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.end.40
  store i8 -128, i8* %out_mask, align 1, !tbaa !37
  %39 = load i8, i8* %out, align 1, !tbaa !37
  %40 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr46, i8** %dest, align 8, !tbaa !1
  store i8 %39, i8* %40, align 1, !tbaa !37
  store i8 0, i8* %out, align 1, !tbaa !37
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.40
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %41 = load i32, i32* %x, align 4, !tbaa !27
  %inc49 = add nsw i32 %41, 1
  store i32 %inc49, i32* %x, align 4, !tbaa !27
  br label %for.cond.17

for.end.50:                                       ; preds = %for.cond.17
  call void @llvm.lifetime.end(i64 1, i8* %in_mask) #2
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end
  %42 = load i8, i8* %out_mask, align 1, !tbaa !37
  %conv52 = zext i8 %42 to i32
  %cmp53 = icmp ne i32 %conv52, 128
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  %43 = load i8, i8* %out, align 1, !tbaa !37
  %44 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %43, i8* %44, align 1, !tbaa !37
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.51
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @pbm_print_row(%struct.gx_device_printer_s* %45, i8* %46, i32 1, %struct._IO_FILE* %47) #5
  call void @llvm.lifetime.end(i64 1, i8* %out) #2
  call void @llvm.lifetime.end(i64 1, i8* %out_mask) #2
  %48 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pgm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %mask = alloca i32, align 4
  %invert = alloca i32, align 4
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %shift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pixel = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !27
  %5 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %7 = load i32, i32* %polarity, align 4, !tbaa !51
  %cmp = icmp eq i32 %7, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %invert, align 4, !tbaa !27
  %8 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %11, i32 0, i32 70
  %12 = load i8, i8* %is_raw, align 1, !tbaa !57
  %conv1 = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %cmp2 = icmp eq i32 %13, 8
  br i1 %cmp2, label %if.then, label %if.else.24

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %invert, align 4, !tbaa !27
  %tobool4 = icmp ne i32 %14, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %15, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %16 = load i32, i32* %x, align 4, !tbaa !27
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !26
  %cmp6 = icmp ult i32 %16, %18
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %bp, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !37
  %conv8 = zext i8 %20 to i32
  %neg = xor i32 %conv8, -1
  %conv9 = trunc i32 %neg to i8
  %conv10 = zext i8 %conv9 to i32
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %conv10, %struct._IO_FILE* %21) #5
  %cmp11 = icmp eq i32 %call, -1
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  %23 = load i32, i32* %x, align 4, !tbaa !27
  %inc = add i32 %23, 1
  store i32 %inc, i32* %x, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width14, align 4, !tbaa !26
  %conv15 = sext i32 %26 to i64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call16 = call i64 @fwrite(i8* %24, i64 1, i64 %conv15, %struct._IO_FILE* %27) #5
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width17, align 4, !tbaa !26
  %conv18 = sext i32 %29 to i64
  %cmp19 = icmp ne i64 %call16, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.22:                                        ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.end
  br label %if.end.69

if.else.24:                                       ; preds = %land.lhs.true, %entry
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %30, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  %31 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %sub25 = sub nsw i32 8, %31
  store i32 %sub25, i32* %shift, align 4, !tbaa !27
  br label %for.cond.26

for.cond.26:                                      ; preds = %cleanup.cont, %if.else.24
  %32 = load i32, i32* %x, align 4, !tbaa !27
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width27, align 4, !tbaa !26
  %cmp28 = icmp ult i32 %32, %34
  br i1 %cmp28, label %for.body.30, label %for.end.68

for.body.30:                                      ; preds = %for.cond.26
  %35 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i32, i32* %shift, align 4, !tbaa !27
  %cmp31 = icmp slt i32 %36, 0
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %for.body.30
  %37 = load i8*, i8** %bp, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !37
  %conv34 = zext i8 %38 to i32
  %shl35 = shl i32 %conv34, 8
  %39 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %conv36 = zext i8 %40 to i32
  %add = add i32 %shl35, %conv36
  store i32 %add, i32* %pixel, align 4, !tbaa !27
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %if.end.46

if.else.37:                                       ; preds = %for.body.30
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !37
  %conv38 = zext i8 %43 to i32
  %44 = load i32, i32* %shift, align 4, !tbaa !27
  %shr = ashr i32 %conv38, %44
  %45 = load i32, i32* %mask, align 4, !tbaa !27
  %and = and i32 %shr, %45
  store i32 %and, i32* %pixel, align 4, !tbaa !27
  %46 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %47 = load i32, i32* %shift, align 4, !tbaa !27
  %sub39 = sub nsw i32 %47, %46
  store i32 %sub39, i32* %shift, align 4, !tbaa !27
  %cmp40 = icmp slt i32 %sub39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.else.37
  %48 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr43, i8** %bp, align 8, !tbaa !1
  %49 = load i32, i32* %shift, align 4, !tbaa !27
  %add44 = add nsw i32 %49, 8
  store i32 %add44, i32* %shift, align 4, !tbaa !27
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.else.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.33
  %50 = load i32, i32* %x, align 4, !tbaa !27
  %inc47 = add i32 %50, 1
  store i32 %inc47, i32* %x, align 4, !tbaa !27
  %51 = load i32, i32* %invert, align 4, !tbaa !27
  %52 = load i32, i32* %pixel, align 4, !tbaa !27
  %xor = xor i32 %52, %51
  store i32 %xor, i32* %pixel, align 4, !tbaa !27
  %53 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw48 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %53, i32 0, i32 70
  %54 = load i8, i8* %is_raw48, align 1, !tbaa !57
  %tobool49 = icmp ne i8 %54, 0
  br i1 %tobool49, label %if.then.50, label %if.else.56

if.then.50:                                       ; preds = %if.end.46
  %55 = load i32, i32* %pixel, align 4, !tbaa !27
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call51 = call i32 @_IO_putc(i32 %55, %struct._IO_FILE* %56) #5
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.50
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.then.50
  br label %if.end.67

if.else.56:                                       ; preds = %if.end.46
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %58 = load i32, i32* %pixel, align 4, !tbaa !27
  %59 = load i32, i32* %x, align 4, !tbaa !27
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 13
  %61 = load i32, i32* %width57, align 4, !tbaa !26
  %cmp58 = icmp eq i32 %59, %61
  br i1 %cmp58, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.56
  %62 = load i32, i32* %x, align 4, !tbaa !27
  %and60 = and i32 %62, 15
  %tobool61 = icmp ne i32 %and60, 0
  %lnot = xor i1 %tobool61, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.56
  %63 = phi i1 [ true, %if.else.56 ], [ %lnot, %lor.rhs ]
  %cond = select i1 %63, i32 10, i32 32
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 %58, i32 %cond) #5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %lor.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.65, %if.then.54
  %64 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.26

for.end.68:                                       ; preds = %for.cond.26
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.69, %cleanup, %if.then.21, %if.then.13
  %65 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @ppgm_print_row(%struct.gx_device_printer_s* %0, i8* %1, i32 %2, %struct._IO_FILE* %3, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_pgm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @ppgm_print_row(%struct.gx_device_printer_s* %0, i8* %1, i32 %2, %struct._IO_FILE* %3, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ppgm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream, i32 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %color.addr = alloca i32, align 4
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %bpe = alloca i32, align 4
  %mask = alloca i32, align 4
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %eol_mask = alloca i32, align 4
  %shift = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pixel = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  store i32 %color, i32* %color.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %bpe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %div = sdiv i32 %4, 3
  store i32 %div, i32* %bpe, align 4, !tbaa !27
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %bpe, align 4, !tbaa !27
  %shl = shl i32 1, %6
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !27
  %7 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %eol_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %color.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %10, 0
  %cond = select i1 %tobool, i32 7, i32 15
  store i32 %cond, i32* %eol_mask, align 4, !tbaa !27
  %11 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %12, i32 0, i32 70
  %13 = load i8, i8* %is_raw, align 1, !tbaa !57
  %conv = zext i8 %13 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %cmp = icmp eq i32 %14, 24
  br i1 %cmp, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %color.addr, align 4, !tbaa !27
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3
  %16 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !26
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %div5 = sdiv i32 %19, 8
  %mul = mul nsw i32 %18, %div5
  store i32 %mul, i32* %n, align 4, !tbaa !27
  %20 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %21 = load i32, i32* %n, align 4, !tbaa !27
  %conv6 = zext i32 %21 to i64
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %20, i64 1, i64 %conv6, %struct._IO_FILE* %22) #5
  %23 = load i32, i32* %n, align 4, !tbaa !27
  %conv7 = zext i32 %23 to i64
  %cmp8 = icmp ne i64 %call, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %24 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.92

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %25, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  %26 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %sub11 = sub nsw i32 8, %26
  store i32 %sub11, i32* %shift, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.91, %if.else
  %27 = load i32, i32* %x, align 4, !tbaa !27
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width12, align 4, !tbaa !26
  %cmp13 = icmp ult i32 %27, %29
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  store i32 0, i32* %pixel, align 4, !tbaa !27
  %31 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %shr = ashr i32 %34, 3
  switch i32 %shr, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.17
    i32 2, label %sw.bb.21
    i32 1, label %sw.bb.26
    i32 0, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %for.body
  %35 = load i8*, i8** %bp, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !37
  %conv15 = zext i8 %36 to i32
  %shl16 = shl i32 %conv15, 24
  store i32 %shl16, i32* %pixel, align 4, !tbaa !27
  %37 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %for.body, %sw.bb
  %38 = load i8*, i8** %bp, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !37
  %conv18 = zext i8 %39 to i32
  %shl19 = shl i32 %conv18, 16
  %40 = load i32, i32* %pixel, align 4, !tbaa !27
  %add = add i32 %40, %shl19
  store i32 %add, i32* %pixel, align 4, !tbaa !27
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr20, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %for.body, %sw.bb.17
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !37
  %conv22 = zext i8 %43 to i32
  %shl23 = shl i32 %conv22, 8
  %44 = load i32, i32* %pixel, align 4, !tbaa !27
  %add24 = add i32 %44, %shl23
  store i32 %add24, i32* %pixel, align 4, !tbaa !27
  %45 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr25, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %for.body, %sw.bb.21
  %46 = load i8*, i8** %bp, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !37
  %conv27 = zext i8 %47 to i32
  %48 = load i32, i32* %pixel, align 4, !tbaa !27
  %add28 = add i32 %48, %conv27
  store i32 %add28, i32* %pixel, align 4, !tbaa !27
  %49 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  %50 = load i8*, i8** %bp, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !37
  %conv31 = zext i8 %51 to i32
  %52 = load i32, i32* %shift, align 4, !tbaa !27
  %shr32 = ashr i32 %conv31, %52
  store i32 %shr32, i32* %pixel, align 4, !tbaa !27
  %53 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %54 = load i32, i32* %shift, align 4, !tbaa !27
  %sub33 = sub nsw i32 %54, %53
  store i32 %sub33, i32* %shift, align 4, !tbaa !27
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %sw.bb.30
  %55 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr37, i8** %bp, align 8, !tbaa !1
  %56 = load i32, i32* %shift, align 4, !tbaa !27
  %add38 = add nsw i32 %56, 8
  store i32 %add38, i32* %shift, align 4, !tbaa !27
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %sw.bb.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end.39, %sw.bb.26
  %57 = load i32, i32* %x, align 4, !tbaa !27
  %inc = add i32 %57, 1
  store i32 %inc, i32* %x, align 4, !tbaa !27
  %58 = load i32, i32* %pixel, align 4, !tbaa !27
  %59 = load i32, i32* %mask, align 4, !tbaa !27
  %and = and i32 %58, %59
  store i32 %and, i32* %b, align 4, !tbaa !27
  %60 = load i32, i32* %bpe, align 4, !tbaa !27
  %61 = load i32, i32* %pixel, align 4, !tbaa !27
  %shr40 = lshr i32 %61, %60
  store i32 %shr40, i32* %pixel, align 4, !tbaa !27
  %62 = load i32, i32* %pixel, align 4, !tbaa !27
  %63 = load i32, i32* %mask, align 4, !tbaa !27
  %and41 = and i32 %62, %63
  store i32 %and41, i32* %g, align 4, !tbaa !27
  %64 = load i32, i32* %bpe, align 4, !tbaa !27
  %65 = load i32, i32* %pixel, align 4, !tbaa !27
  %shr42 = lshr i32 %65, %64
  store i32 %shr42, i32* %pixel, align 4, !tbaa !27
  %66 = load i32, i32* %pixel, align 4, !tbaa !27
  %67 = load i32, i32* %mask, align 4, !tbaa !27
  %and43 = and i32 %66, %67
  store i32 %and43, i32* %r, align 4, !tbaa !27
  %68 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw44 = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %68, i32 0, i32 70
  %69 = load i8, i8* %is_raw44, align 1, !tbaa !57
  %tobool45 = icmp ne i8 %69, 0
  br i1 %tobool45, label %if.then.46, label %if.else.65

if.then.46:                                       ; preds = %sw.epilog
  %70 = load i32, i32* %color.addr, align 4, !tbaa !27
  %tobool47 = icmp ne i32 %70, 0
  br i1 %tobool47, label %if.then.48, label %if.end.59

if.then.48:                                       ; preds = %if.then.46
  %71 = load i32, i32* %r, align 4, !tbaa !27
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call49 = call i32 @_IO_putc(i32 %71, %struct._IO_FILE* %72) #5
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.53:                                        ; preds = %if.then.48
  %73 = load i32, i32* %g, align 4, !tbaa !27
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call54 = call i32 @_IO_putc(i32 %73, %struct._IO_FILE* %74) #5
  %cmp55 = icmp eq i32 %call54, -1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.58:                                        ; preds = %if.end.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  %75 = load i32, i32* %b, align 4, !tbaa !27
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call60 = call i32 @_IO_putc(i32 %75, %struct._IO_FILE* %76) #5
  %cmp61 = icmp eq i32 %call60, -1
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.64:                                        ; preds = %if.end.59
  br label %if.end.85

if.else.65:                                       ; preds = %sw.epilog
  %77 = load i32, i32* %color.addr, align 4, !tbaa !27
  %tobool66 = icmp ne i32 %77, 0
  br i1 %tobool66, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %if.else.65
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %79 = load i32, i32* %r, align 4, !tbaa !27
  %80 = load i32, i32* %g, align 4, !tbaa !27
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %79, i32 %80) #5
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.67
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.72:                                        ; preds = %if.then.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.else.65
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %82 = load i32, i32* %b, align 4, !tbaa !27
  %83 = load i32, i32* %x, align 4, !tbaa !27
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width74 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 13
  %85 = load i32, i32* %width74, align 4, !tbaa !26
  %cmp75 = icmp eq i32 %83, %85
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.73
  %86 = load i32, i32* %x, align 4, !tbaa !27
  %87 = load i32, i32* %eol_mask, align 4, !tbaa !27
  %and77 = and i32 %86, %87
  %tobool78 = icmp ne i32 %and77, 0
  %lnot = xor i1 %tobool78, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.73
  %88 = phi i1 [ true, %if.end.73 ], [ %lnot, %lor.rhs ]
  %cond79 = select i1 %88, i32 10, i32 32
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 %82, i32 %cond79) #5
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.84:                                        ; preds = %lor.end
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.85, %if.then.83, %if.then.71, %if.then.63, %if.then.57, %if.then.52
  %89 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %cleanup.dest.90 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.90, label %cleanup.93 [
    i32 0, label %cleanup.cont.91
  ]

cleanup.cont.91:                                  ; preds = %cleanup.86
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.92

if.end.92:                                        ; preds = %for.end, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.92, %cleanup.86, %cleanup
  %93 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast i32* %eol_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %bpe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @pam_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4, !tbaa !26
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %div = sdiv i32 %4, 8
  %mul = mul nsw i32 %3, %div
  store i32 %mul, i32* %n, align 4, !tbaa !27
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %n, align 4, !tbaa !27
  %conv = zext i32 %6 to i64
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %5, i64 1, i64 %conv, %struct._IO_FILE* %7) #5
  %8 = load i32, i32* %n, align 4, !tbaa !27
  %conv1 = zext i32 %8 to i64
  %cmp2 = icmp ne i64 %call, %conv1
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %10 = load i32, i32* %retval
  ret i32 %10

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pam4_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %w = alloca i32, align 4
  %s = alloca i32, align 4
  %C = alloca i8, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 13
  %4 = load i32, i32* %width, align 4, !tbaa !26
  store i32 %4, i32* %w, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.then
  %5 = load i32, i32* %w, align 4, !tbaa !27
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %C) #2
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !37
  store i8 %7, i8* %C, align 1, !tbaa !37
  store i32 7, i32* %s, align 4, !tbaa !27
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %s, align 4, !tbaa !27
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i8, i8* %C, align 1, !tbaa !37
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %s, align 4, !tbaa !27
  %shr = ashr i32 %conv, %10
  %and = and i32 %shr, 1
  %mul = mul nsw i32 %and, 255
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %mul, %struct._IO_FILE* %11) #5
  %12 = load i8, i8* %C, align 1, !tbaa !37
  %conv5 = zext i8 %12 to i32
  %13 = load i32, i32* %s, align 4, !tbaa !27
  %sub = sub nsw i32 %13, 1
  %shr6 = ashr i32 %conv5, %sub
  %and7 = and i32 %shr6, 1
  %mul8 = mul nsw i32 %and7, 255
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %mul8, %struct._IO_FILE* %14) #5
  %15 = load i8, i8* %C, align 1, !tbaa !37
  %conv10 = zext i8 %15 to i32
  %16 = load i32, i32* %s, align 4, !tbaa !27
  %sub11 = sub nsw i32 %16, 2
  %shr12 = ashr i32 %conv10, %sub11
  %and13 = and i32 %shr12, 1
  %mul14 = mul nsw i32 %and13, 255
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call15 = call i32 @fputc(i32 %mul14, %struct._IO_FILE* %17) #5
  %18 = load i8, i8* %C, align 1, !tbaa !37
  %conv16 = zext i8 %18 to i32
  %19 = load i32, i32* %s, align 4, !tbaa !27
  %sub17 = sub nsw i32 %19, 3
  %shr18 = ashr i32 %conv16, %sub17
  %and19 = and i32 %shr18, 1
  %mul20 = mul nsw i32 %and19, 255
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call21 = call i32 @fputc(i32 %mul20, %struct._IO_FILE* %20) #5
  %21 = load i32, i32* %w, align 4, !tbaa !27
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %w, align 4, !tbaa !27
  %22 = load i32, i32* %w, align 4, !tbaa !27
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %for.body.4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %s, align 4, !tbaa !27
  %sub25 = sub nsw i32 %23, 4
  store i32 %sub25, i32* %s, align 4, !tbaa !27
  br label %for.cond.2

for.end:                                          ; preds = %if.then.24, %for.cond.2
  call void @llvm.lifetime.end(i64 1, i8* %C) #2
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %entry
  %24 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  ret i32 0
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pkm_print_row_4(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %rv = alloca [16 x i8], align 16
  %gv = alloca [16 x i8], align 16
  %bv = alloca [16 x i8], align 16
  %i = alloca i8, align 1
  %rgb = alloca [3 x i16], align 2
  %raw = alloca [150 x i8], align 16
  %end = alloca i32, align 4
  %outp = alloca i8*, align 8
  %b = alloca i32, align 4
  %pixel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %shift = alloca i32, align 4
  %pixel84 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast [16 x i8]* %rv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast [16 x i8]* %gv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast [16 x i8]* %bv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  call void @llvm.lifetime.start(i64 1, i8* %i) #2
  store i8 0, i8* %i, align 1, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8, i8* %i, align 1, !tbaa !37
  %conv = zext i8 %8 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_s*
  %12 = load i8, i8* %i, align 1, !tbaa !37
  %conv2 = zext i8 %12 to i64
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s* %11, i64 %conv2, i16* %arraydecay) #5
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !56
  %conv3 = zext i16 %13 to i32
  %div = sdiv i32 %conv3, 65535
  %mul = mul nsw i32 %div, 255
  %conv4 = trunc i32 %mul to i8
  %14 = load i8, i8* %i, align 1, !tbaa !37
  %idxprom = zext i8 %14 to i64
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %rv, i32 0, i64 %idxprom
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !37
  %arrayidx6 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %15 = load i16, i16* %arrayidx6, align 2, !tbaa !56
  %conv7 = zext i16 %15 to i32
  %div8 = sdiv i32 %conv7, 65535
  %mul9 = mul nsw i32 %div8, 255
  %conv10 = trunc i32 %mul9 to i8
  %16 = load i8, i8* %i, align 1, !tbaa !37
  %idxprom11 = zext i8 %16 to i64
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %gv, i32 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !37
  %arrayidx13 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %17 = load i16, i16* %arrayidx13, align 2, !tbaa !56
  %conv14 = zext i16 %17 to i32
  %div15 = sdiv i32 %conv14, 65535
  %mul16 = mul nsw i32 %div15, 255
  %conv17 = trunc i32 %mul16 to i8
  %18 = load i8, i8* %i, align 1, !tbaa !37
  %idxprom18 = zext i8 %18 to i64
  %arrayidx19 = getelementptr inbounds [16 x i8], [16 x i8]* %bv, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1, !tbaa !37
  %19 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %19) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i8, i8* %i, align 1, !tbaa !37
  %inc = add i8 %20, 1
  store i8 %inc, i8* %i, align 1, !tbaa !37
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %21, i32 0, i32 70
  %22 = load i8, i8* %is_raw, align 1, !tbaa !57
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %23, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %for.cond.20

for.cond.20:                                      ; preds = %cleanup.cont, %if.then
  %24 = load i32, i32* %x, align 4, !tbaa !27
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width, align 4, !tbaa !26
  %cmp21 = icmp ult i32 %24, %26
  br i1 %cmp21, label %for.body.23, label %for.end.78

for.body.23:                                      ; preds = %for.cond.20
  %27 = bitcast [150 x i8]* %raw to i8*
  call void @llvm.lifetime.start(i64 150, i8* %27) #2
  %28 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32, i32* %x, align 4, !tbaa !27
  %conv24 = zext i32 %29 to i64
  %add = add i64 %conv24, 50
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width25, align 4, !tbaa !26
  %conv26 = sext i32 %31 to i64
  %cmp27 = icmp ult i64 %add, %conv26
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.23
  %32 = load i32, i32* %x, align 4, !tbaa !27
  %conv29 = zext i32 %32 to i64
  %add30 = add i64 %conv29, 50
  br label %cond.end

cond.false:                                       ; preds = %for.body.23
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width31, align 4, !tbaa !26
  %conv32 = sext i32 %34 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add30, %cond.true ], [ %conv32, %cond.false ]
  %conv33 = trunc i64 %cond to i32
  store i32 %conv33, i32* %end, align 4, !tbaa !27
  %35 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %arraydecay34 = getelementptr inbounds [150 x i8], [150 x i8]* %raw, i32 0, i32 0
  store i8* %arraydecay34, i8** %outp, align 8, !tbaa !1
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.58, %cond.end
  %36 = load i32, i32* %x, align 4, !tbaa !27
  %37 = load i32, i32* %end, align 4, !tbaa !27
  %cmp36 = icmp ult i32 %36, %37
  br i1 %cmp36, label %for.body.38, label %for.end.60

for.body.38:                                      ; preds = %for.cond.35
  %38 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i8*, i8** %bp, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !37
  %conv39 = zext i8 %40 to i32
  store i32 %conv39, i32* %b, align 4, !tbaa !27
  %41 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i32, i32* %b, align 4, !tbaa !27
  %shr = lshr i32 %42, 4
  store i32 %shr, i32* %pixel, align 4, !tbaa !27
  %43 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom40 = zext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [16 x i8], [16 x i8]* %rv, i32 0, i64 %idxprom40
  %44 = load i8, i8* %arrayidx41, align 1, !tbaa !37
  %45 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %arrayidx42, align 1, !tbaa !37
  %46 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom43 = zext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %gv, i32 0, i64 %idxprom43
  %47 = load i8, i8* %arrayidx44, align 1, !tbaa !37
  %48 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %47, i8* %arrayidx45, align 1, !tbaa !37
  %49 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom46 = zext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds [16 x i8], [16 x i8]* %bv, i32 0, i64 %idxprom46
  %50 = load i8, i8* %arrayidx47, align 1, !tbaa !37
  %51 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %50, i8* %arrayidx48, align 1, !tbaa !37
  %52 = load i32, i32* %b, align 4, !tbaa !27
  %and = and i32 %52, 15
  store i32 %and, i32* %pixel, align 4, !tbaa !27
  %53 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom49 = zext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds [16 x i8], [16 x i8]* %rv, i32 0, i64 %idxprom49
  %54 = load i8, i8* %arrayidx50, align 1, !tbaa !37
  %55 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %55, i64 3
  store i8 %54, i8* %arrayidx51, align 1, !tbaa !37
  %56 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom52 = zext i32 %56 to i64
  %arrayidx53 = getelementptr inbounds [16 x i8], [16 x i8]* %gv, i32 0, i64 %idxprom52
  %57 = load i8, i8* %arrayidx53, align 1, !tbaa !37
  %58 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %58, i64 4
  store i8 %57, i8* %arrayidx54, align 1, !tbaa !37
  %59 = load i32, i32* %pixel, align 4, !tbaa !27
  %idxprom55 = zext i32 %59 to i64
  %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %bv, i32 0, i64 %idxprom55
  %60 = load i8, i8* %arrayidx56, align 1, !tbaa !37
  %61 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %61, i64 5
  store i8 %60, i8* %arrayidx57, align 1, !tbaa !37
  %62 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.38
  %64 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  %65 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 6
  store i8* %add.ptr, i8** %outp, align 8, !tbaa !1
  %66 = load i32, i32* %x, align 4, !tbaa !27
  %add59 = add i32 %66, 2
  store i32 %add59, i32* %x, align 4, !tbaa !27
  br label %for.cond.35

for.end.60:                                       ; preds = %for.cond.35
  %67 = load i32, i32* %x, align 4, !tbaa !27
  %68 = load i32, i32* %end, align 4, !tbaa !27
  %cmp61 = icmp ugt i32 %67, %68
  br i1 %cmp61, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %for.end.60
  %69 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i8, i8* %69, i64 -3
  store i8* %add.ptr64, i8** %outp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.63, %for.end.60
  %arraydecay65 = getelementptr inbounds [150 x i8], [150 x i8]* %raw, i32 0, i32 0
  %70 = load i8*, i8** %outp, align 8, !tbaa !1
  %arraydecay66 = getelementptr inbounds [150 x i8], [150 x i8]* %raw, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call67 = call i64 @fwrite(i8* %arraydecay65, i64 1, i64 %sub.ptr.sub, %struct._IO_FILE* %71) #5
  %72 = load i8*, i8** %outp, align 8, !tbaa !1
  %arraydecay68 = getelementptr inbounds [150 x i8], [150 x i8]* %raw, i32 0, i32 0
  %sub.ptr.lhs.cast69 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %arraydecay68 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %cmp72 = icmp ne i64 %call67, %sub.ptr.sub71
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.74
  %73 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast [150 x i8]* %raw to i8*
  call void @llvm.lifetime.end(i64 150, i8* %75) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.119 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.20

for.end.78:                                       ; preds = %for.cond.20
  br label %if.end.118

if.else:                                          ; preds = %for.end
  %76 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %77, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  store i32 4, i32* %shift, align 4, !tbaa !27
  br label %for.cond.79

for.cond.79:                                      ; preds = %cleanup.cont.113, %if.else
  %78 = load i32, i32* %x, align 4, !tbaa !27
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width80 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %79, i32 0, i32 13
  %80 = load i32, i32* %width80, align 4, !tbaa !26
  %cmp81 = icmp ult i32 %78, %80
  br i1 %cmp81, label %for.body.83, label %for.end.114

for.body.83:                                      ; preds = %for.cond.79
  %81 = bitcast i32* %pixel84 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load i8*, i8** %bp, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !37
  %conv85 = zext i8 %83 to i32
  %84 = load i32, i32* %shift, align 4, !tbaa !27
  %shr86 = ashr i32 %conv85, %84
  %and87 = and i32 %shr86, 15
  store i32 %and87, i32* %pixel84, align 4, !tbaa !27
  %85 = load i32, i32* %shift, align 4, !tbaa !27
  %xor = xor i32 %85, 4
  store i32 %xor, i32* %shift, align 4, !tbaa !27
  %86 = load i32, i32* %shift, align 4, !tbaa !27
  %shr88 = ashr i32 %86, 2
  %87 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext = sext i32 %shr88 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %87, i64 %idx.ext
  store i8* %add.ptr89, i8** %bp, align 8, !tbaa !1
  %88 = load i32, i32* %x, align 4, !tbaa !27
  %inc90 = add i32 %88, 1
  store i32 %inc90, i32* %x, align 4, !tbaa !27
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %90 = load i32, i32* %pixel84, align 4, !tbaa !27
  %idxprom91 = sext i32 %90 to i64
  %arrayidx92 = getelementptr inbounds [16 x i8], [16 x i8]* %rv, i32 0, i64 %idxprom91
  %91 = load i8, i8* %arrayidx92, align 1, !tbaa !37
  %conv93 = zext i8 %91 to i32
  %92 = load i32, i32* %pixel84, align 4, !tbaa !27
  %idxprom94 = sext i32 %92 to i64
  %arrayidx95 = getelementptr inbounds [16 x i8], [16 x i8]* %gv, i32 0, i64 %idxprom94
  %93 = load i8, i8* %arrayidx95, align 1, !tbaa !37
  %conv96 = zext i8 %93 to i32
  %94 = load i32, i32* %pixel84, align 4, !tbaa !27
  %idxprom97 = sext i32 %94 to i64
  %arrayidx98 = getelementptr inbounds [16 x i8], [16 x i8]* %bv, i32 0, i64 %idxprom97
  %95 = load i8, i8* %arrayidx98, align 1, !tbaa !37
  %conv99 = zext i8 %95 to i32
  %96 = load i32, i32* %x, align 4, !tbaa !27
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width100 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 13
  %98 = load i32, i32* %width100, align 4, !tbaa !26
  %cmp101 = icmp eq i32 %96, %98
  br i1 %cmp101, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.83
  %99 = load i32, i32* %x, align 4, !tbaa !27
  %and103 = and i32 %99, 7
  %tobool104 = icmp ne i32 %and103, 0
  %lnot = xor i1 %tobool104, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.83
  %100 = phi i1 [ true, %for.body.83 ], [ %lnot, %lor.rhs ]
  %cond105 = select i1 %100, i32 10, i32 32
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 %conv93, i32 %conv96, i32 %conv99, i32 %cond105) #5
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %lor.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

if.end.110:                                       ; preds = %lor.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.111

cleanup.111:                                      ; preds = %if.end.110, %if.then.109
  %101 = bitcast i32* %pixel84 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %cleanup.dest.112 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.112, label %cleanup.115 [
    i32 0, label %cleanup.cont.113
  ]

cleanup.cont.113:                                 ; preds = %cleanup.111
  br label %for.cond.79

for.end.114:                                      ; preds = %for.cond.79
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %for.end.114, %cleanup.111
  %102 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %cleanup.dest.116 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.116, label %cleanup.119 [
    i32 0, label %cleanup.cont.117
  ]

cleanup.cont.117:                                 ; preds = %cleanup.115
  br label %if.end.118

if.end.118:                                       ; preds = %cleanup.cont.117, %for.end.78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.119

cleanup.119:                                      ; preds = %if.end.118, %cleanup.115, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %i) #2
  %103 = bitcast [16 x i8]* %bv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %103) #2
  %104 = bitcast [16 x i8]* %gv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %104) #2
  %105 = bitcast [16 x i8]* %rv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %105) #2
  %106 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal i32 @pkm_print_row(%struct.gx_device_printer_s* %pdev, i8* %data, i32 %depth, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %data.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %bdev = alloca %struct.gx_device_pbm_s*, align 8
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %pixel = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !27
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_pbm_s*
  store %struct.gx_device_pbm_s* %2, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %5, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  %6 = load i32, i32* %x, align 4, !tbaa !27
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !26
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %pixel, align 4, !tbaa !27
  %10 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %10) #2
  %11 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !27
  %shr = ashr i32 %14, 3
  switch i32 %shr, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.1
    i32 2, label %sw.bb.5
    i32 1, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %for.body
  %15 = load i8*, i8** %bp, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !37
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, i32* %pixel, align 4, !tbaa !27
  %17 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %for.body, %sw.bb
  %18 = load i8*, i8** %bp, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !37
  %conv2 = zext i8 %19 to i32
  %shl3 = shl i32 %conv2, 16
  %20 = load i32, i32* %pixel, align 4, !tbaa !27
  %add = add i32 %20, %shl3
  store i32 %add, i32* %pixel, align 4, !tbaa !27
  %21 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr4, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %for.body, %sw.bb.1
  %22 = load i8*, i8** %bp, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !37
  %conv6 = zext i8 %23 to i32
  %shl7 = shl i32 %conv6, 8
  %24 = load i32, i32* %pixel, align 4, !tbaa !27
  %add8 = add i32 %24, %shl7
  store i32 %add8, i32* %pixel, align 4, !tbaa !27
  %25 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr9, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %for.body, %sw.bb.5
  %26 = load i8*, i8** %bp, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !37
  %conv11 = zext i8 %27 to i32
  %28 = load i32, i32* %pixel, align 4, !tbaa !27
  %add12 = add i32 %28, %conv11
  store i32 %add12, i32* %pixel, align 4, !tbaa !27
  %29 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr13, i8** %bp, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %for.body
  %30 = load i32, i32* %x, align 4, !tbaa !27
  %inc = add i32 %30, 1
  store i32 %inc, i32* %x, align 4, !tbaa !27
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_printer_s* %31 to %struct.gx_device_s*
  %33 = load i32, i32* %pixel, align 4, !tbaa !27
  %conv14 = zext i32 %33 to i64
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 @pkm_map_color_rgb(%struct.gx_device_s* %32, i64 %conv14, i16* %arraydecay) #5
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %34 = load i16, i16* %arrayidx, align 2, !tbaa !56
  %conv15 = zext i16 %34 to i32
  %mul = mul nsw i32 %conv15, 255
  %div = sdiv i32 %mul, 65535
  store i32 %div, i32* %r, align 4, !tbaa !27
  %arrayidx16 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %35 = load i16, i16* %arrayidx16, align 2, !tbaa !56
  %conv17 = zext i16 %35 to i32
  %mul18 = mul nsw i32 %conv17, 255
  %div19 = sdiv i32 %mul18, 65535
  store i32 %div19, i32* %g, align 4, !tbaa !27
  %arrayidx20 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %36 = load i16, i16* %arrayidx20, align 2, !tbaa !56
  %conv21 = zext i16 %36 to i32
  %mul22 = mul nsw i32 %conv21, 255
  %div23 = sdiv i32 %mul22, 65535
  store i32 %div23, i32* %b, align 4, !tbaa !27
  %37 = load %struct.gx_device_pbm_s*, %struct.gx_device_pbm_s** %bdev, align 8, !tbaa !1
  %is_raw = getelementptr inbounds %struct.gx_device_pbm_s, %struct.gx_device_pbm_s* %37, i32 0, i32 70
  %38 = load i8, i8* %is_raw, align 1, !tbaa !57
  %tobool = icmp ne i8 %38, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %39 = load i32, i32* %r, align 4, !tbaa !27
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call24 = call i32 @_IO_putc(i32 %39, %struct._IO_FILE* %40) #5
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %41 = load i32, i32* %g, align 4, !tbaa !27
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call28 = call i32 @_IO_putc(i32 %41, %struct._IO_FILE* %42) #5
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end
  %43 = load i32, i32* %b, align 4, !tbaa !27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call33 = call i32 @_IO_putc(i32 %43, %struct._IO_FILE* %44) #5
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.32
  br label %if.end.47

if.else:                                          ; preds = %sw.epilog
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %46 = load i32, i32* %r, align 4, !tbaa !27
  %47 = load i32, i32* %g, align 4, !tbaa !27
  %48 = load i32, i32* %b, align 4, !tbaa !27
  %49 = load i32, i32* %x, align 4, !tbaa !27
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width38 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 13
  %51 = load i32, i32* %width38, align 4, !tbaa !26
  %cmp39 = icmp eq i32 %49, %51
  br i1 %cmp39, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %52 = load i32, i32* %x, align 4, !tbaa !27
  %and = and i32 %52, 7
  %tobool41 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool41, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %53 = phi i1 [ true, %if.else ], [ %lnot, %lor.rhs ]
  %cond = select i1 %53, i32 10, i32 32
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 %46, i32 %47, i32 %48, i32 %cond) #5
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.45, %if.then.36, %if.then.31, %if.then.27
  %54 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %57) #2
  %58 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %for.end, %cleanup
  %59 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast %struct.gx_device_pbm_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare i32 @gx_render_plane_init(%struct.gx_render_plane_s*, %struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_color_usage(%struct.gx_device_s*, i32, i32, %struct.gx_colors_usage_s*, i32*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @gdev_prn_get_lines(%struct.gx_device_printer_s*, i32, i32, i8*, i32, i8**, i32*, %struct.gx_render_plane_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 18472}
!6 = !{!"gx_device_pbm_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !3, i64 18472, !3, i64 18473, !3, i64 18544, !3, i64 18545, !3, i64 18546, !7, i64 18548, !2, i64 18552, !2, i64 18560}
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
!19 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !20, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!20 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!22 = !{!6, !3, i64 18546}
!23 = !{!6, !3, i64 18545}
!24 = !{!25, !11, i64 108}
!25 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
!26 = !{!25, !7, i64 832}
!27 = !{!7, !7, i64 0}
!28 = !{!25, !2, i64 24}
!29 = !{!30, !2, i64 64}
!30 = !{!"gs_memory_s", !2, i64 0, !31, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!31 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!25, !7, i64 100}
!33 = !{!9, !9, i64 0}
!34 = !{!35, !7, i64 0}
!35 = !{!"gx_render_plane_s", !7, i64 0, !7, i64 4, !7, i64 8}
!36 = !{!35, !7, i64 4}
!37 = !{!3, !3, i64 0}
!38 = !{!25, !2, i64 16}
!39 = !{!25, !7, i64 836}
!40 = !{!25, !7, i64 112}
!41 = !{!42, !9, i64 0}
!42 = !{!"gx_colors_usage_s", !9, i64 0, !7, i64 8, !43, i64 12}
!43 = !{!"gs_int_rect_s", !44, i64 0, !44, i64 8}
!44 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!45 = !{!35, !7, i64 8}
!46 = !{!30, !2, i64 24}
!47 = !{!25, !2, i64 1104}
!48 = !{!49, !7, i64 156}
!49 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!50 = !{!49, !7, i64 160}
!51 = !{!25, !3, i64 104}
!52 = !{!53, !7, i64 100}
!53 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!54 = !{!53, !11, i64 108}
!55 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !37, i64 12, i64 2, !56, i64 14, i64 1, !37, i64 16, i64 4, !27, i64 20, i64 4, !27, i64 24, i64 4, !27, i64 28, i64 4, !27, i64 32, i64 4, !27, i64 36, i64 4, !27, i64 40, i64 4, !37, i64 44, i64 64, !37, i64 108, i64 64, !37, i64 176, i64 512, !37, i64 688, i64 8, !1, i64 696, i64 4, !37, i64 704, i64 8, !33, i64 712, i64 4, !27}
!56 = !{!11, !11, i64 0}
!57 = !{!6, !3, i64 18544}
!58 = !{!59, !2, i64 0}
!59 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!60 = !{!61, !2, i64 56}
!61 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!62 = !{!53, !7, i64 124}
!63 = !{!53, !7, i64 120}
!64 = !{!53, !7, i64 116}
!65 = !{!53, !7, i64 112}
!66 = !{!53, !2, i64 1312}
!67 = !{!6, !2, i64 18552}
!68 = !{!53, !2, i64 1440}
!69 = !{!6, !2, i64 18560}
!70 = !{!6, !7, i64 100}
!71 = !{!6, !11, i64 108}
!72 = !{!53, !2, i64 1192}
!73 = !{!53, !2, i64 1264}
!74 = !{!75, !2, i64 0}
!75 = !{!"gs_image_common_s", !2, i64 0, !76, i64 8}
!76 = !{!"gs_matrix_s", !77, i64 0, !77, i64 4, !77, i64 8, !77, i64 12, !77, i64 16, !77, i64 20}
!77 = !{!"float", !3, i64 0}
!78 = !{!79, !7, i64 48}
!79 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48}
!80 = !{!81, !2, i64 576}
!81 = !{!"gs_pixel_image_s", !2, i64 0, !76, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576}
!82 = !{!83, !2, i64 64}
!83 = !{!"gs_color_space_s", !2, i64 0, !8, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!84 = !{!85, !3, i64 0}
!85 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !86, i64 20, !9, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !87, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !8, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!86 = !{!"gs_range_icc_s", !3, i64 0}
!87 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!88 = !{!81, !7, i64 40}
!89 = !{!6, !7, i64 18548}
!90 = !{!53, !3, i64 136}
!91 = !{!53, !2, i64 1104}
