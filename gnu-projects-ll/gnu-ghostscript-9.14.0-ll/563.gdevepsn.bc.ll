; ModuleID = './gdevepsn.bc'
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
@.str = private unnamed_addr constant [6 x i8] c"epson\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_epson_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2040, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 7.200000e+01], [2 x float] [float 2.400000e+02, float 7.200000e+01], [2 x float] [float -6.000000e+01, float 0xC03CCCCCC0000000], [4 x float] [float 1.800000e+01, float 0x3FF70A3D80000000, float 1.800000e+01, float 0x403CCCCCC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @epson_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"eps9mid\00", align 1
@gs_eps9mid_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2040, i32 2376, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.160000e+02], [2 x float] [float 2.400000e+02, float 2.160000e+02], [2 x float] [float -4.800000e+01, float -0.000000e+00], [4 x float] [float 0x402CCCCCC0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @eps9mid_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"eps9high\00", align 1
@gs_eps9high_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2040, i32 2376, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.160000e+02], [2 x float] [float 2.400000e+02, float 2.160000e+02], [2 x float] [float -4.800000e+01, float -0.000000e+00], [4 x float] [float 0x402CCCCCC0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @eps9high_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ibmpro\00", align 1
@gs_ibmpro_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2040, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 7.200000e+01], [2 x float] [float 2.400000e+02, float 7.200000e+01], [2 x float] [float -4.800000e+01, float -0.000000e+00], [4 x float] [float 0x402CCCCCC0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ibmpro_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@eps_init_string = internal constant [10 x i8] c"\1B@\1BP\1Bl\00\0D\1BQ", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@eps_print_page.graphics_modes_9 = internal constant [5 x i8] c"\FF\00\01\07C", align 1
@eps_print_page.graphics_modes_24 = internal constant [7 x i8] c"\FF !'c\FFh", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"eps_print_page(buf1)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"eps_print_page(buf2)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@eps_print_page.index = internal constant [24 x i8] c"\00\08\10\01\09\11\02\0A\12\03\0B\13\04\0C\14\05\0D\15\06\0E\16\07\0F\17", align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"\08 \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\1BD%c\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\1BJ\01\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"KLYZ\00", align 1
@ibmpro_print_page.ibmpro_init_string = internal constant [4 x i8] c"\11\1B30", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @epson_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @eps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @eps_init_string, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0) #5
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
define internal i32 @eps9mid_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @eps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @eps_init_string, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @eps9high_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @eps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @eps_init_string, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ibmpro_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @eps_print_page(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ibmpro_print_page.ibmpro_init_string, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @eps_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %y_9pin_high, i8* %init_string, i32 %init_length, i8* %end_string, i32 %archaic, i32 %tab_hiccup) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %y_9pin_high.addr = alloca i32, align 4
  %init_string.addr = alloca i8*, align 8
  %init_length.addr = alloca i32, align 4
  %end_string.addr = alloca i8*, align 8
  %archaic.addr = alloca i32, align 4
  %tab_hiccup.addr = alloca i32, align 4
  %y_24pin = alloca i32, align 4
  %in_y_mult = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %out_y_mult = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %start_graphics = alloca i8, align 1
  %first_pass = alloca i32, align 4
  %last_pass = alloca i32, align 4
  %y_passes = alloca i32, align 4
  %dots_per_space = alloca i32, align 4
  %bytes_per_space = alloca i32, align 4
  %tab_min_pixels = alloca i32, align 4
  %skip = alloca i32, align 4
  %lnum = alloca i32, align 4
  %pass = alloca i32, align 4
  %ypass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in_data = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %out_blk = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %i133 = alloca i32, align 4
  %zp = alloca i8*, align 8
  %tpos = alloca i32, align 4
  %newp = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %y_9pin_high, i32* %y_9pin_high.addr, align 4, !tbaa !5
  store i8* %init_string, i8** %init_string.addr, align 8, !tbaa !1
  store i32 %init_length, i32* %init_length.addr, align 4, !tbaa !5
  store i8* %end_string, i8** %end_string.addr, align 8, !tbaa !1
  store i32 %archaic, i32* %archaic.addr, align 4, !tbaa !5
  store i32 %tab_hiccup, i32* %tab_hiccup.addr, align 4, !tbaa !5
  %0 = bitcast i32* %y_24pin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %3 = load float, float* %arrayidx, align 4, !tbaa !7
  %cmp = fcmp ogt float %3, 7.200000e+01
  %conv = zext i1 %cmp to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %y_24pin, align 4, !tbaa !5
  %4 = bitcast i32* %in_y_mult to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %y_24pin, align 4, !tbaa !5
  %6 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %or = or i32 %5, %6
  %tobool1 = icmp ne i32 %or, 0
  %cond2 = select i1 %tobool1, i32 3, i32 1
  store i32 %cond2, i32* %in_y_mult, align 4, !tbaa !5
  %7 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_printer_s* %8 to %struct.gx_device_s*
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_printer_s*
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %11, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %12 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %line_size, align 4, !tbaa !5
  %14 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul = mul nsw i32 8, %14
  %mul3 = mul nsw i32 %13, %mul
  store i32 %mul3, i32* %in_size, align 4, !tbaa !5
  %15 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %19 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !9
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !25
  %23 = load i32, i32* %in_size, align 4, !tbaa !5
  %call6 = call i8* %19(%struct.gs_memory_s* %22, i32 %23, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call6, i8** %buf1, align 8, !tbaa !1
  %24 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !9
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !25
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_byte_array10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 10
  %28 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array10, align 8, !tbaa !28
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !9
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !25
  %32 = load i32, i32* %in_size, align 4, !tbaa !5
  %call13 = call i8* %28(%struct.gs_memory_s* %31, i32 %32, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #5
  store i8* %call13, i8** %buf2, align 8, !tbaa !1
  %33 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %34, i8** %in, align 8, !tbaa !1
  %35 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i8*, i8** %buf2, align 8, !tbaa !1
  store i8* %36, i8** %out, align 8, !tbaa !1
  %37 = bitcast i32* %out_y_mult to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i32, i32* %y_24pin, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %38, 0
  %cond15 = select i1 %tobool14, i32 3, i32 1
  store i32 %cond15, i32* %out_y_mult, align 4, !tbaa !5
  %39 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 0
  %41 = load float, float* %arrayidx17, align 4, !tbaa !7
  %conv18 = fptosi float %41 to i32
  store i32 %conv18, i32* %x_dpi, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %start_graphics) #2
  %42 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %div = sdiv i32 %42, 60
  %idxprom = sext i32 %div to i64
  %43 = load i32, i32* %y_24pin, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %43, 0
  %cond20 = select i1 %tobool19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @eps_print_page.graphics_modes_24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @eps_print_page.graphics_modes_9, i32 0, i32 0)
  %arrayidx21 = getelementptr inbounds i8, i8* %cond20, i64 %idxprom
  %44 = load i8, i8* %arrayidx21, align 1, !tbaa !29
  store i8 %44, i8* %start_graphics, align 1, !tbaa !29
  %45 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i8, i8* %start_graphics, align 1, !tbaa !29
  %conv22 = sext i8 %46 to i32
  %and = and i32 %conv22, 64
  %tobool23 = icmp ne i32 %and, 0
  %cond24 = select i1 %tobool23, i32 1, i32 0
  store i32 %cond24, i32* %first_pass, align 4, !tbaa !5
  %47 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i32, i32* %first_pass, align 4, !tbaa !5
  %49 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %49, 2
  %cond27 = select i1 %cmp25, i32 1, i32 2
  %mul28 = mul nsw i32 %48, %cond27
  store i32 %mul28, i32* %last_pass, align 4, !tbaa !5
  %50 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %51, 0
  %cond30 = select i1 %tobool29, i32 3, i32 1
  store i32 %cond30, i32* %y_passes, align 4, !tbaa !5
  %52 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %div31 = sdiv i32 %53, 10
  store i32 %div31, i32* %dots_per_space, align 4, !tbaa !5
  %54 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i32, i32* %dots_per_space, align 4, !tbaa !5
  %56 = load i32, i32* %out_y_mult, align 4, !tbaa !5
  %mul32 = mul nsw i32 %55, %56
  store i32 %mul32, i32* %bytes_per_space, align 4, !tbaa !5
  %57 = bitcast i32* %tab_min_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %mul33 = mul nsw i32 %58, 15
  %div34 = sdiv i32 %mul33, 10
  store i32 %div34, i32* %tab_min_pixels, align 4, !tbaa !5
  %59 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  store i32 0, i32* %skip, align 4, !tbaa !5
  %60 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %61 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %63, null
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %64 = load i8*, i8** %buf2, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %64, null
  br i1 %cmp37, label %if.then, label %if.end.55

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %65 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool39 = icmp ne i8* %65, null
  br i1 %tobool39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.then
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !9
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !25
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !9
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !25
  %73 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %69(%struct.gs_memory_s* %72, i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.then
  %74 = load i8*, i8** %buf2, align 8, !tbaa !1
  %tobool46 = icmp ne i8* %74, null
  br i1 %tobool46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !9
  %non_gc_memory49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory49, align 8, !tbaa !25
  %procs50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %free_object51 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs50, i32 0, i32 2
  %78 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object51, align 8, !tbaa !30
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !9
  %non_gc_memory53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory53, align 8, !tbaa !25
  %82 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %78(%struct.gs_memory_s* %81, i8* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.55:                                        ; preds = %lor.lhs.false
  %83 = load i8*, i8** %init_string.addr, align 8, !tbaa !1
  %84 = load i32, i32* %init_length.addr, align 4, !tbaa !5
  %conv56 = sext i32 %84 to i64
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call57 = call i64 @fwrite(i8* %83, i64 1, i64 %conv56, %struct._IO_FILE* %85) #5
  %86 = load i32, i32* %init_length.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %86, 1
  %idxprom58 = sext i32 %sub to i64
  %87 = load i8*, i8** %init_string.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %87, i64 %idxprom58
  %88 = load i8, i8* %arrayidx59, align 1, !tbaa !29
  %conv60 = sext i8 %88 to i32
  %cmp61 = icmp eq i32 %conv60, 81
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.end.55
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 13
  %90 = load i32, i32* %width, align 4, !tbaa !31
  %conv64 = sitofp i32 %90 to float
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %91, i32 0, i32 22
  %arrayidx66 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution65, i32 0, i64 0
  %92 = load float, float* %arrayidx66, align 4, !tbaa !7
  %div67 = fdiv float %conv64, %92
  %mul68 = fmul float %div67, 1.000000e+01
  %conv69 = fptosi float %mul68 to i32
  %add = add nsw i32 %conv69, 2
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call70 = call i32 @fputc(i32 %add, %struct._IO_FILE* %93) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.55
  %94 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %94, 10
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  store i32 10, i32* %tab_min_pixels, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.71
  %95 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %rem = srem i32 %95, 3
  %96 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %sub76 = sub nsw i32 %96, %rem
  store i32 %sub76, i32* %tab_min_pixels, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.75
  %97 = load i32, i32* %lnum, align 4, !tbaa !5
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %98, i32 0, i32 14
  %99 = load i32, i32* %height, align 4, !tbaa !32
  %cmp77 = icmp slt i32 %97, %99
  br i1 %cmp77, label %while.body, label %while.end.362

while.body:                                       ; preds = %while.cond
  %100 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %104 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  %105 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #2
  %106 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %108 = load i32, i32* %lnum, align 4, !tbaa !5
  %109 = load i8*, i8** %in, align 8, !tbaa !1
  %call79 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %107, i32 %108, i8* %109, i8** %in_data) #5
  %110 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx80, align 1, !tbaa !29
  %conv81 = zext i8 %111 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %while.body
  %112 = load i8*, i8** %in_data, align 8, !tbaa !1
  %113 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub84 = sub nsw i32 %114, 1
  %conv85 = sext i32 %sub84 to i64
  %call86 = call i32 @memcmp(i8* %112, i8* %add.ptr, i64 %conv85) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.91, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true
  %115 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %116 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %div89 = sdiv i32 3, %116
  %117 = load i32, i32* %skip, align 4, !tbaa !5
  %add90 = add nsw i32 %117, %div89
  store i32 %add90, i32* %skip, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %land.lhs.true, %while.body
  br label %while.cond.92

while.cond.92:                                    ; preds = %while.body.95, %if.end.91
  %118 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp93 = icmp sgt i32 %118, 255
  br i1 %cmp93, label %while.body.95, label %while.end

while.body.95:                                    ; preds = %while.cond.92
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %119) #5
  %120 = load i32, i32* %skip, align 4, !tbaa !5
  %sub97 = sub nsw i32 %120, 255
  store i32 %sub97, i32* %skip, align 4, !tbaa !5
  br label %while.cond.92

while.end:                                        ; preds = %while.cond.92
  %121 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool98 = icmp ne i32 %121, 0
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %while.end
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %123 = load i32, i32* %skip, align 4, !tbaa !5
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %123) #5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %while.end
  %124 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %125 = load i32, i32* %lnum, align 4, !tbaa !5
  %126 = load i8*, i8** %in, align 8, !tbaa !1
  %127 = load i32, i32* %in_size, align 4, !tbaa !5
  %call102 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %124, i32 %125, i8* %126, i32 %127) #5
  store i32 %call102, i32* %lcnt, align 4, !tbaa !5
  %128 = load i32, i32* %lcnt, align 4, !tbaa !5
  %129 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul103 = mul nsw i32 8, %129
  %cmp104 = icmp slt i32 %128, %mul103
  br i1 %cmp104, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %if.end.101
  %130 = load i8*, i8** %in, align 8, !tbaa !1
  %131 = load i32, i32* %lcnt, align 4, !tbaa !5
  %132 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul107 = mul nsw i32 %131, %132
  %idx.ext = sext i32 %mul107 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %130, i64 %idx.ext
  %133 = load i32, i32* %in_size, align 4, !tbaa !5
  %134 = load i32, i32* %lcnt, align 4, !tbaa !5
  %135 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul109 = mul nsw i32 %134, %135
  %sub110 = sub nsw i32 %133, %mul109
  %conv111 = sext i32 %sub110 to i64
  %call112 = call i8* @memset(i8* %add.ptr108, i32 0, i64 %conv111) #7
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.106, %if.end.101
  %136 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %136, 2
  br i1 %cmp114, label %if.then.116, label %if.end.130

if.then.116:                                      ; preds = %if.end.113
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %139 = load i32, i32* %line_size, align 4, !tbaa !5
  %140 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul117 = mul nsw i32 %139, %140
  %cmp118 = icmp slt i32 %138, %mul117
  br i1 %cmp118, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %142 = load i32, i32* %line_size, align 4, !tbaa !5
  %add120 = add nsw i32 %141, %142
  %idxprom121 = sext i32 %add120 to i64
  %143 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %143, i64 %idxprom121
  %144 = load i8, i8* %arrayidx122, align 1, !tbaa !29
  %conv123 = zext i8 %144 to i32
  %145 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %145 to i64
  %146 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %146, i64 %idxprom124
  %147 = load i8, i8* %arrayidx125, align 1, !tbaa !29
  %conv126 = zext i8 %147 to i32
  %or127 = or i32 %conv126, %conv123
  %conv128 = trunc i32 %or127 to i8
  store i8 %conv128, i8* %arrayidx125, align 1, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %148 = load i32, i32* %i, align 4, !tbaa !5
  %inc129 = add nsw i32 %148, 1
  store i32 %inc129, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %149 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  br label %if.end.130

if.end.130:                                       ; preds = %for.end, %if.end.113
  %150 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %tobool131 = icmp ne i32 %150, 0
  br i1 %tobool131, label %if.then.132, label %if.end.152

if.then.132:                                      ; preds = %if.end.130
  %151 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %151) #2
  %152 = bitcast i32* %i133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #2
  store i32 0, i32* %i133, align 4, !tbaa !5
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.149, %if.then.132
  %153 = load i32, i32* %i133, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %153, 24
  br i1 %cmp135, label %for.body.137, label %for.end.151

for.body.137:                                     ; preds = %for.cond.134
  %154 = load i8*, i8** %out, align 8, !tbaa !1
  %155 = load i32, i32* %i133, align 4, !tbaa !5
  %idxprom138 = sext i32 %155 to i64
  %arrayidx139 = getelementptr inbounds [24 x i8], [24 x i8]* @eps_print_page.index, i32 0, i64 %idxprom138
  %156 = load i8, i8* %arrayidx139, align 1, !tbaa !29
  %conv140 = sext i8 %156 to i32
  %157 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul141 = mul nsw i32 %conv140, %157
  %idx.ext142 = sext i32 %mul141 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %154, i64 %idx.ext142
  %158 = load i8*, i8** %in, align 8, !tbaa !1
  %159 = load i32, i32* %i133, align 4, !tbaa !5
  %160 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul144 = mul nsw i32 %159, %160
  %idx.ext145 = sext i32 %mul144 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %158, i64 %idx.ext145
  %161 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv147 = sext i32 %161 to i64
  %call148 = call i8* @memcpy(i8* %add.ptr143, i8* %add.ptr146, i64 %conv147) #7
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.137
  %162 = load i32, i32* %i133, align 4, !tbaa !5
  %inc150 = add nsw i32 %162, 1
  store i32 %inc150, i32* %i133, align 4, !tbaa !5
  br label %for.cond.134

for.end.151:                                      ; preds = %for.cond.134
  %163 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %163, i8** %p, align 8, !tbaa !1
  %164 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %164, i8** %in, align 8, !tbaa !1
  %165 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %165, i8** %out, align 8, !tbaa !1
  %166 = bitcast i32* %i133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %if.end.130
  store i32 0, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.349, %if.end.152
  %168 = load i32, i32* %ypass, align 4, !tbaa !5
  %169 = load i32, i32* %y_passes, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %168, %169
  br i1 %cmp154, label %for.body.156, label %for.end.351

for.body.156:                                     ; preds = %for.cond.153
  %170 = load i32, i32* %first_pass, align 4, !tbaa !5
  store i32 %170, i32* %pass, align 4, !tbaa !5
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.340, %for.body.156
  %171 = load i32, i32* %pass, align 4, !tbaa !5
  %172 = load i32, i32* %last_pass, align 4, !tbaa !5
  %cmp158 = icmp sle i32 %171, %172
  br i1 %cmp158, label %for.body.160, label %for.end.342

for.body.160:                                     ; preds = %for.cond.157
  %173 = load i32, i32* %pass, align 4, !tbaa !5
  %174 = load i32, i32* %first_pass, align 4, !tbaa !5
  %cmp161 = icmp eq i32 %173, %174
  br i1 %cmp161, label %if.then.163, label %if.end.228

if.then.163:                                      ; preds = %for.body.160
  %175 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %175, i8** %out_end, align 8, !tbaa !1
  %176 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %176, i8** %inp, align 8, !tbaa !1
  %177 = load i8*, i8** %inp, align 8, !tbaa !1
  %178 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext164 = sext i32 %178 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %177, i64 %idx.ext164
  store i8* %add.ptr165, i8** %in_end, align 8, !tbaa !1
  %179 = load i32, i32* %y_24pin, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %179, 0
  br i1 %tobool166, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %if.then.163
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.180, %if.then.167
  %180 = load i8*, i8** %inp, align 8, !tbaa !1
  %181 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp169 = icmp ult i8* %180, %181
  br i1 %cmp169, label %for.body.171, label %for.end.182

for.body.171:                                     ; preds = %for.cond.168
  %182 = load i8*, i8** %inp, align 8, !tbaa !1
  %183 = load i32, i32* %line_size, align 4, !tbaa !5
  %184 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %182, i32 %183, i8* %184, i32 3) #5
  %185 = load i8*, i8** %inp, align 8, !tbaa !1
  %186 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul172 = mul nsw i32 %186, 8
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %185, i64 %idx.ext173
  %187 = load i32, i32* %line_size, align 4, !tbaa !5
  %188 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr175 = getelementptr inbounds i8, i8* %188, i64 1
  call void @memflip8x8(i8* %add.ptr174, i32 %187, i8* %add.ptr175, i32 3) #5
  %189 = load i8*, i8** %inp, align 8, !tbaa !1
  %190 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul176 = mul nsw i32 %190, 16
  %idx.ext177 = sext i32 %mul176 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %189, i64 %idx.ext177
  %191 = load i32, i32* %line_size, align 4, !tbaa !5
  %192 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr179 = getelementptr inbounds i8, i8* %192, i64 2
  call void @memflip8x8(i8* %add.ptr178, i32 %191, i8* %add.ptr179, i32 3) #5
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.171
  %193 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %194 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr181 = getelementptr inbounds i8, i8* %194, i64 24
  store i8* %add.ptr181, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.168

for.end.182:                                      ; preds = %for.cond.168
  br label %while.cond.183

while.cond.183:                                   ; preds = %while.body.200, %for.end.182
  %195 = load i8*, i8** %out_end, align 8, !tbaa !1
  %196 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp184 = icmp ugt i8* %195, %196
  br i1 %cmp184, label %land.lhs.true.186, label %land.end

land.lhs.true.186:                                ; preds = %while.cond.183
  %197 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %197, i64 -1
  %198 = load i8, i8* %arrayidx187, align 1, !tbaa !29
  %conv188 = zext i8 %198 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %land.lhs.true.191, label %land.end

land.lhs.true.191:                                ; preds = %land.lhs.true.186
  %199 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %199, i64 -2
  %200 = load i8, i8* %arrayidx192, align 1, !tbaa !29
  %conv193 = zext i8 %200 to i32
  %cmp194 = icmp eq i32 %conv193, 0
  br i1 %cmp194, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.191
  %201 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %201, i64 -3
  %202 = load i8, i8* %arrayidx196, align 1, !tbaa !29
  %conv197 = zext i8 %202 to i32
  %cmp198 = icmp eq i32 %conv197, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.191, %land.lhs.true.186, %while.cond.183
  %203 = phi i1 [ false, %land.lhs.true.191 ], [ false, %land.lhs.true.186 ], [ false, %while.cond.183 ], [ %cmp198, %land.rhs ]
  br i1 %203, label %while.body.200, label %while.end.202

while.body.200:                                   ; preds = %land.end
  %204 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr201 = getelementptr inbounds i8, i8* %204, i64 -3
  store i8* %add.ptr201, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.183

while.end.202:                                    ; preds = %land.end
  br label %if.end.227

if.else:                                          ; preds = %if.then.163
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.211, %if.else
  %205 = load i8*, i8** %inp, align 8, !tbaa !1
  %206 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp204 = icmp ult i8* %205, %206
  br i1 %cmp204, label %for.body.206, label %for.end.214

for.body.206:                                     ; preds = %for.cond.203
  %207 = load i8*, i8** %inp, align 8, !tbaa !1
  %208 = load i32, i32* %ypass, align 4, !tbaa !5
  %mul207 = mul nsw i32 %208, 8
  %209 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul208 = mul nsw i32 %mul207, %209
  %idx.ext209 = sext i32 %mul208 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %207, i64 %idx.ext209
  %210 = load i32, i32* %line_size, align 4, !tbaa !5
  %211 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %add.ptr210, i32 %210, i8* %211, i32 1) #5
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.206
  %212 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr212 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr212, i8** %inp, align 8, !tbaa !1
  %213 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr213 = getelementptr inbounds i8, i8* %213, i64 8
  store i8* %add.ptr213, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.203

for.end.214:                                      ; preds = %for.cond.203
  br label %while.cond.215

while.cond.215:                                   ; preds = %while.body.224, %for.end.214
  %214 = load i8*, i8** %out_end, align 8, !tbaa !1
  %215 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp216 = icmp ugt i8* %214, %215
  br i1 %cmp216, label %land.rhs.218, label %land.end.223

land.rhs.218:                                     ; preds = %while.cond.215
  %216 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %216, i64 -1
  %217 = load i8, i8* %arrayidx219, align 1, !tbaa !29
  %conv220 = zext i8 %217 to i32
  %cmp221 = icmp eq i32 %conv220, 0
  br label %land.end.223

land.end.223:                                     ; preds = %land.rhs.218, %while.cond.215
  %218 = phi i1 [ false, %while.cond.215 ], [ %cmp221, %land.rhs.218 ]
  br i1 %218, label %while.body.224, label %while.end.226

while.body.224:                                   ; preds = %land.end.223
  %219 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr225 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %incdec.ptr225, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.215

while.end.226:                                    ; preds = %land.end.223
  br label %if.end.227

if.end.227:                                       ; preds = %while.end.226, %while.end.202
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %for.body.160
  %220 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %220, i8** %outp, align 8, !tbaa !1
  store i8* %220, i8** %out_blk, align 8, !tbaa !1
  br label %for.cond.229

for.cond.229:                                     ; preds = %if.end.321, %if.end.228
  %221 = load i8*, i8** %outp, align 8, !tbaa !1
  %222 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp230 = icmp ult i8* %221, %222
  br i1 %cmp230, label %for.body.232, label %for.end.322

for.body.232:                                     ; preds = %for.cond.229
  %223 = load i32, i32* %archaic.addr, align 4, !tbaa !5
  %tobool233 = icmp ne i32 %223, 0
  br i1 %tobool233, label %if.else.318, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %for.body.232
  %224 = load i8*, i8** %outp, align 8, !tbaa !1
  %225 = load i8, i8* %224, align 1, !tbaa !29
  %conv235 = zext i8 %225 to i32
  %cmp236 = icmp eq i32 %conv235, 0
  br i1 %cmp236, label %land.lhs.true.238, label %if.else.318

land.lhs.true.238:                                ; preds = %land.lhs.true.234
  %226 = load i8*, i8** %out_end, align 8, !tbaa !1
  %227 = load i8*, i8** %outp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %226 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %227 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %228 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %conv239 = sext i32 %228 to i64
  %cmp240 = icmp sge i64 %sub.ptr.sub, %conv239
  br i1 %cmp240, label %land.lhs.true.242, label %if.else.318

land.lhs.true.242:                                ; preds = %land.lhs.true.238
  %229 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8, i8* %229, i64 1
  %230 = load i8, i8* %arrayidx243, align 1, !tbaa !29
  %conv244 = zext i8 %230 to i32
  %231 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %231, i64 2
  %232 = load i8, i8* %arrayidx245, align 1, !tbaa !29
  %conv246 = zext i8 %232 to i32
  %or247 = or i32 %conv244, %conv246
  %cmp248 = icmp eq i32 %or247, 0
  br i1 %cmp248, label %land.lhs.true.250, label %if.else.318

land.lhs.true.250:                                ; preds = %land.lhs.true.242
  %233 = load i8*, i8** %outp, align 8, !tbaa !1
  %234 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr251 = getelementptr inbounds i8, i8* %234, i64 3
  %235 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %sub252 = sub nsw i32 %235, 3
  %conv253 = sext i32 %sub252 to i64
  %call254 = call i32 @memcmp(i8* %233, i8* %add.ptr251, i64 %conv253) #6
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.else.318, label %if.then.256

if.then.256:                                      ; preds = %land.lhs.true.250
  %236 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #2
  %237 = load i8*, i8** %outp, align 8, !tbaa !1
  store i8* %237, i8** %zp, align 8, !tbaa !1
  %238 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #2
  %239 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #2
  %240 = load i32, i32* %tab_min_pixels, align 4, !tbaa !5
  %241 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext257 = sext i32 %240 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %241, i64 %idx.ext257
  store i8* %add.ptr258, i8** %outp, align 8, !tbaa !1
  br label %while.cond.259

while.cond.259:                                   ; preds = %while.body.278, %if.then.256
  %242 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr260 = getelementptr inbounds i8, i8* %242, i64 3
  %243 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp261 = icmp ule i8* %add.ptr260, %243
  br i1 %cmp261, label %land.lhs.true.263, label %land.end.277

land.lhs.true.263:                                ; preds = %while.cond.259
  %244 = load i8*, i8** %outp, align 8, !tbaa !1
  %245 = load i8, i8* %244, align 1, !tbaa !29
  %conv264 = zext i8 %245 to i32
  %cmp265 = icmp eq i32 %conv264, 0
  br i1 %cmp265, label %land.lhs.true.267, label %land.end.277

land.lhs.true.267:                                ; preds = %land.lhs.true.263
  %246 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i8, i8* %246, i64 1
  %247 = load i8, i8* %arrayidx268, align 1, !tbaa !29
  %conv269 = zext i8 %247 to i32
  %cmp270 = icmp eq i32 %conv269, 0
  br i1 %cmp270, label %land.rhs.272, label %land.end.277

land.rhs.272:                                     ; preds = %land.lhs.true.267
  %248 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %248, i64 2
  %249 = load i8, i8* %arrayidx273, align 1, !tbaa !29
  %conv274 = zext i8 %249 to i32
  %cmp275 = icmp eq i32 %conv274, 0
  br label %land.end.277

land.end.277:                                     ; preds = %land.rhs.272, %land.lhs.true.267, %land.lhs.true.263, %while.cond.259
  %250 = phi i1 [ false, %land.lhs.true.267 ], [ false, %land.lhs.true.263 ], [ false, %while.cond.259 ], [ %cmp275, %land.rhs.272 ]
  br i1 %250, label %while.body.278, label %while.end.280

while.body.278:                                   ; preds = %land.end.277
  %251 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr279 = getelementptr inbounds i8, i8* %251, i64 3
  store i8* %add.ptr279, i8** %outp, align 8, !tbaa !1
  br label %while.cond.259

while.end.280:                                    ; preds = %land.end.277
  %252 = load i8*, i8** %outp, align 8, !tbaa !1
  %253 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast281 = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast282 = ptrtoint i8* %253 to i64
  %sub.ptr.sub283 = sub i64 %sub.ptr.lhs.cast281, %sub.ptr.rhs.cast282
  %254 = load i32, i32* %bytes_per_space, align 4, !tbaa !5
  %conv284 = sext i32 %254 to i64
  %div285 = sdiv i64 %sub.ptr.sub283, %conv284
  %conv286 = trunc i64 %div285 to i32
  store i32 %conv286, i32* %tpos, align 4, !tbaa !5
  %255 = load i8*, i8** %out, align 8, !tbaa !1
  %256 = load i32, i32* %tpos, align 4, !tbaa !5
  %257 = load i32, i32* %bytes_per_space, align 4, !tbaa !5
  %mul287 = mul nsw i32 %256, %257
  %idx.ext288 = sext i32 %mul287 to i64
  %add.ptr289 = getelementptr inbounds i8, i8* %255, i64 %idx.ext288
  store i8* %add.ptr289, i8** %newp, align 8, !tbaa !1
  %258 = load i8*, i8** %newp, align 8, !tbaa !1
  %259 = load i8*, i8** %zp, align 8, !tbaa !1
  %add.ptr290 = getelementptr inbounds i8, i8* %259, i64 10
  %cmp291 = icmp ugt i8* %258, %add.ptr290
  br i1 %cmp291, label %if.then.293, label %if.end.317

if.then.293:                                      ; preds = %while.end.280
  %260 = load i8*, i8** %zp, align 8, !tbaa !1
  %261 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp294 = icmp ugt i8* %260, %261
  br i1 %cmp294, label %if.then.296, label %if.end.309

if.then.296:                                      ; preds = %if.then.293
  %262 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %263 = load i8*, i8** %zp, align 8, !tbaa !1
  %264 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast297 = ptrtoint i8* %263 to i64
  %sub.ptr.rhs.cast298 = ptrtoint i8* %264 to i64
  %sub.ptr.sub299 = sub i64 %sub.ptr.lhs.cast297, %sub.ptr.rhs.cast298
  %conv300 = trunc i64 %sub.ptr.sub299 to i32
  %265 = load i32, i32* %out_y_mult, align 4, !tbaa !5
  %266 = load i8, i8* %start_graphics, align 1, !tbaa !29
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %268 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %cmp301 = icmp eq i32 %268, 2
  br i1 %cmp301, label %cond.true.303, label %cond.false.306

cond.true.303:                                    ; preds = %if.then.296
  %269 = load i32, i32* %ypass, align 4, !tbaa !5
  %add304 = add nsw i32 1, %269
  %and305 = and i32 %add304, 1
  br label %cond.end.307

cond.false.306:                                   ; preds = %if.then.296
  %270 = load i32, i32* %pass, align 4, !tbaa !5
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.306, %cond.true.303
  %cond308 = phi i32 [ %and305, %cond.true.303 ], [ %270, %cond.false.306 ]
  call void @eps_output_run(i8* %262, i32 %conv300, i32 %265, i8 signext %266, %struct._IO_FILE* %267, i32 %cond308) #5
  br label %if.end.309

if.end.309:                                       ; preds = %cond.end.307, %if.then.293
  %271 = load i32, i32* %tab_hiccup.addr, align 4, !tbaa !5
  %tobool310 = icmp ne i32 %271, 0
  br i1 %tobool310, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %if.end.309
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call312 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %272) #5
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %if.end.309
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %274 = load i32, i32* %tpos, align 4, !tbaa !5
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %274) #5
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call315 = call i32 @fputc(i32 0, %struct._IO_FILE* %275) #5
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call316 = call i32 @fputc(i32 9, %struct._IO_FILE* %276) #5
  %277 = load i8*, i8** %newp, align 8, !tbaa !1
  store i8* %277, i8** %outp, align 8, !tbaa !1
  store i8* %277, i8** %out_blk, align 8, !tbaa !1
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.313, %while.end.280
  %278 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #2
  %279 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #2
  br label %if.end.321

if.else.318:                                      ; preds = %land.lhs.true.250, %land.lhs.true.242, %land.lhs.true.238, %land.lhs.true.234, %for.body.232
  %281 = load i32, i32* %out_y_mult, align 4, !tbaa !5
  %282 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext319 = sext i32 %281 to i64
  %add.ptr320 = getelementptr inbounds i8, i8* %282, i64 %idx.ext319
  store i8* %add.ptr320, i8** %outp, align 8, !tbaa !1
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.end.317
  br label %for.cond.229

for.end.322:                                      ; preds = %for.cond.229
  %283 = load i8*, i8** %outp, align 8, !tbaa !1
  %284 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp323 = icmp ugt i8* %283, %284
  br i1 %cmp323, label %if.then.325, label %if.end.338

if.then.325:                                      ; preds = %for.end.322
  %285 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %286 = load i8*, i8** %outp, align 8, !tbaa !1
  %287 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast326 = ptrtoint i8* %286 to i64
  %sub.ptr.rhs.cast327 = ptrtoint i8* %287 to i64
  %sub.ptr.sub328 = sub i64 %sub.ptr.lhs.cast326, %sub.ptr.rhs.cast327
  %conv329 = trunc i64 %sub.ptr.sub328 to i32
  %288 = load i32, i32* %out_y_mult, align 4, !tbaa !5
  %289 = load i8, i8* %start_graphics, align 1, !tbaa !29
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %291 = load i32, i32* %y_9pin_high.addr, align 4, !tbaa !5
  %cmp330 = icmp eq i32 %291, 2
  br i1 %cmp330, label %cond.true.332, label %cond.false.335

cond.true.332:                                    ; preds = %if.then.325
  %292 = load i32, i32* %ypass, align 4, !tbaa !5
  %add333 = add nsw i32 1, %292
  %and334 = and i32 %add333, 1
  br label %cond.end.336

cond.false.335:                                   ; preds = %if.then.325
  %293 = load i32, i32* %pass, align 4, !tbaa !5
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.335, %cond.true.332
  %cond337 = phi i32 [ %and334, %cond.true.332 ], [ %293, %cond.false.335 ]
  call void @eps_output_run(i8* %285, i32 %conv329, i32 %288, i8 signext %289, %struct._IO_FILE* %290, i32 %cond337) #5
  br label %if.end.338

if.end.338:                                       ; preds = %cond.end.336, %for.end.322
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call339 = call i32 @fputc(i32 13, %struct._IO_FILE* %294) #5
  br label %for.inc.340

for.inc.340:                                      ; preds = %if.end.338
  %295 = load i32, i32* %pass, align 4, !tbaa !5
  %inc341 = add nsw i32 %295, 1
  store i32 %inc341, i32* %pass, align 4, !tbaa !5
  br label %for.cond.157

for.end.342:                                      ; preds = %for.cond.157
  %296 = load i32, i32* %ypass, align 4, !tbaa !5
  %297 = load i32, i32* %y_passes, align 4, !tbaa !5
  %sub343 = sub nsw i32 %297, 1
  %cmp344 = icmp slt i32 %296, %sub343
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %for.end.342
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call347 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %298) #5
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.346, %for.end.342
  br label %for.inc.349

for.inc.349:                                      ; preds = %if.end.348
  %299 = load i32, i32* %ypass, align 4, !tbaa !5
  %inc350 = add nsw i32 %299, 1
  store i32 %inc350, i32* %ypass, align 4, !tbaa !5
  br label %for.cond.153

for.end.351:                                      ; preds = %for.cond.153
  %300 = load i32, i32* %y_passes, align 4, !tbaa !5
  %sub352 = sub nsw i32 24, %300
  %add353 = add nsw i32 %sub352, 1
  store i32 %add353, i32* %skip, align 4, !tbaa !5
  %301 = load i32, i32* %in_y_mult, align 4, !tbaa !5
  %mul354 = mul nsw i32 8, %301
  %302 = load i32, i32* %lnum, align 4, !tbaa !5
  %add355 = add nsw i32 %302, %mul354
  store i32 %add355, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.351, %if.then.88
  %303 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #2
  %305 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #2
  %306 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #2
  %307 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #2
  %308 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #2
  %309 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.362:                                    ; preds = %while.cond
  %310 = load i8*, i8** %end_string.addr, align 8, !tbaa !1
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call363 = call i32 @fputs(i8* %310, %struct._IO_FILE* %311) #5
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call364 = call i32 @fflush(%struct._IO_FILE* %312) #5
  %313 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory365 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %313, i32 0, i32 3
  %314 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory365, align 8, !tbaa !9
  %non_gc_memory366 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %314, i32 0, i32 3
  %315 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory366, align 8, !tbaa !25
  %procs367 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %315, i32 0, i32 1
  %free_object368 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs367, i32 0, i32 2
  %316 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object368, align 8, !tbaa !30
  %317 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory369 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %317, i32 0, i32 3
  %318 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory369, align 8, !tbaa !9
  %non_gc_memory370 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %318, i32 0, i32 3
  %319 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory370, align 8, !tbaa !25
  %320 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %316(%struct.gs_memory_s* %319, i8* %320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #5
  %321 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory371 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %321, i32 0, i32 3
  %322 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory371, align 8, !tbaa !9
  %non_gc_memory372 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %322, i32 0, i32 3
  %323 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory372, align 8, !tbaa !25
  %procs373 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %323, i32 0, i32 1
  %free_object374 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs373, i32 0, i32 2
  %324 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object374, align 8, !tbaa !30
  %325 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory375 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %325, i32 0, i32 3
  %326 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory375, align 8, !tbaa !9
  %non_gc_memory376 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %326, i32 0, i32 3
  %327 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory376, align 8, !tbaa !25
  %328 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %324(%struct.gs_memory_s* %327, i8* %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

cleanup.377:                                      ; preds = %while.end.362, %if.end.54
  %329 = bitcast i32* %ypass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #2
  %330 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #2
  %331 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #2
  %332 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #2
  %333 = bitcast i32* %tab_min_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #2
  %334 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #2
  %335 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #2
  %336 = bitcast i32* %y_passes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #2
  %337 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #2
  %338 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #2
  call void @llvm.lifetime.end(i64 1, i8* %start_graphics) #2
  %339 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #2
  %340 = bitcast i32* %out_y_mult to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #2
  %341 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #2
  %342 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #2
  %343 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #2
  %344 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #2
  %345 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #2
  %346 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #2
  %347 = bitcast i32* %in_y_mult to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #2
  %348 = bitcast i32* %y_24pin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #2
  %349 = load i32, i32* %retval
  ret i32 %349

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @memflip8x8(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @eps_output_run(i8* %data, i32 %count, i32 %y_mult, i8 signext %start_graphics, %struct._IO_FILE* %prn_stream, i32 %pass) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %y_mult.addr = alloca i32, align 4
  %start_graphics.addr = alloca i8, align 1
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pass.addr = alloca i32, align 4
  %xcount = alloca i32, align 4
  %which = alloca i32, align 4
  %dp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %y_mult, i32* %y_mult.addr, align 4, !tbaa !5
  store i8 %start_graphics, i8* %start_graphics.addr, align 1, !tbaa !29
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !5
  %0 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y_mult.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %xcount, align 4, !tbaa !5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 27, %struct._IO_FILE* %3) #5
  %4 = load i8, i8* %start_graphics.addr, align 1, !tbaa !29
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, -4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %start_graphics.addr, align 1, !tbaa !29
  %conv1 = sext i8 %5 to i32
  %idxprom = sext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @.str.13, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv2 = sext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %7) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 42, %struct._IO_FILE* %8) #5
  %9 = load i8, i8* %start_graphics.addr, align 1, !tbaa !29
  %conv5 = sext i8 %9 to i32
  %and6 = and i32 %conv5, -65
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call7 = call i32 @fputc(i32 %and6, %struct._IO_FILE* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %xcount, align 4, !tbaa !5
  %and8 = and i32 %11, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %and8, %struct._IO_FILE* %12) #5
  %13 = load i32, i32* %xcount, align 4, !tbaa !5
  %shr = ashr i32 %13, 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %14) #5
  %15 = load i32, i32* %pass.addr, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.else.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv13 = sext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call14 = call i64 @fwrite(i8* %16, i64 1, i64 %conv13, %struct._IO_FILE* %18) #5
  br label %if.end.29

if.else.15:                                       ; preds = %if.end
  %19 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %pass.addr, align 4, !tbaa !5
  store i32 %20, i32* %which, align 4, !tbaa !5
  %21 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %22, i8** %dp, align 8, !tbaa !1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.else.15
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %xcount, align 4, !tbaa !5
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %28 = load i32, i32* %y_mult.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %27, %28
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %29 = load i32, i32* %which, align 4, !tbaa !5
  %and21 = and i32 %29, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.20
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !29
  %conv23 = zext i8 %31 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ 0, %cond.false ]
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call24 = call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %32) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !5
  %36 = load i32, i32* %which, align 4, !tbaa !5
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %which, align 4, !tbaa !5
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %if.then.12
  %41 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

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
!29 = !{!3, !3, i64 0}
!30 = !{!26, !2, i64 24}
!31 = !{!10, !6, i64 832}
!32 = !{!10, !6, i64 836}
