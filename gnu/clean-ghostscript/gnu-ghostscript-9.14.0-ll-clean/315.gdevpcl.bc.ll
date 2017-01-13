; ModuleID = './gdevpcl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32)*, {}*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_paper_size(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width_inches = alloca float, align 4
  %height_inches = alloca float, align 4
  %width_difference = alloca float, align 4
  %height_difference = alloca float, align 4
  %new_width_difference = alloca float, align 4
  %new_height_difference = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast float* %width_inches to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !5
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !19
  %div = fdiv float %conv, %4
  store float %div, float* %width_inches, align 4, !tbaa !19
  %5 = bitcast float* %height_inches to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !21
  %conv1 = sitofp i32 %7 to float
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !19
  %div4 = fdiv float %conv1, %9
  store float %div4, float* %height_inches, align 4, !tbaa !19
  %10 = bitcast float* %width_difference to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store float -1.000000e+00, float* %width_difference, align 4, !tbaa !19
  %11 = bitcast float* %height_difference to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store float -1.000000e+00, float* %height_difference, align 4, !tbaa !19
  %12 = bitcast float* %new_width_difference to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast float* %new_height_difference to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 2, i32* %code, align 4, !tbaa !22
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width5, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height6, align 4, !tbaa !21
  %cmp = icmp sgt i32 %16, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height8, align 4, !tbaa !21
  %conv9 = sitofp i32 %20 to float
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 22
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution10, i32 0, i64 1
  %22 = load float, float* %arrayidx11, align 4, !tbaa !19
  %div12 = fdiv float %conv9, %22
  store float %div12, float* %width_inches, align 4, !tbaa !19
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width13, align 4, !tbaa !5
  %conv14 = sitofp i32 %24 to float
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 22
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution15, i32 0, i64 0
  %26 = load float, float* %arrayidx16, align 4, !tbaa !19
  %div17 = fdiv float %conv14, %26
  store float %div17, float* %height_inches, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load float, float* %width_inches, align 4, !tbaa !19
  %conv18 = fpext float %27 to double
  %sub = fsub double 7.250000e+00, %conv18
  %conv19 = fptrunc double %sub to float
  store float %conv19, float* %new_width_difference, align 4, !tbaa !19
  %28 = load float, float* %height_inches, align 4, !tbaa !19
  %conv20 = fpext float %28 to double
  %sub21 = fsub double 1.050000e+01, %conv20
  %conv22 = fptrunc double %sub21 to float
  store float %conv22, float* %new_height_difference, align 4, !tbaa !19
  %29 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv23 = fpext float %29 to double
  %cmp24 = fcmp ogt double %conv23, -1.000000e-02
  br i1 %cmp24, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end
  %30 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv26 = fpext float %30 to double
  %cmp27 = fcmp ogt double %conv26, -1.000000e-02
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.42

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %31 = load float, float* %width_difference, align 4, !tbaa !19
  %conv30 = fpext float %31 to double
  %cmp31 = fcmp oeq double %conv30, -1.000000e+00
  br i1 %cmp31, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.29
  %32 = load float, float* %new_width_difference, align 4, !tbaa !19
  %33 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp33 = fcmp olt float %32, %33
  br i1 %cmp33, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %34 = load float, float* %new_width_difference, align 4, !tbaa !19
  %35 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp36 = fcmp oeq float %34, %35
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %lor.lhs.false.35
  %36 = load float, float* %new_height_difference, align 4, !tbaa !19
  %37 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp39 = fcmp olt float %36, %37
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38, %lor.lhs.false, %land.lhs.true.29
  %38 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %38, float* %width_difference, align 4, !tbaa !19
  %39 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %39, float* %height_difference, align 4, !tbaa !19
  store i32 1, i32* %code, align 4, !tbaa !22
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.38, %lor.lhs.false.35, %land.lhs.true, %if.end
  %40 = load float, float* %width_inches, align 4, !tbaa !19
  %conv43 = fpext float %40 to double
  %sub44 = fsub double 8.500000e+00, %conv43
  %conv45 = fptrunc double %sub44 to float
  store float %conv45, float* %new_width_difference, align 4, !tbaa !19
  %41 = load float, float* %height_inches, align 4, !tbaa !19
  %conv46 = fpext float %41 to double
  %sub47 = fsub double 1.100000e+01, %conv46
  %conv48 = fptrunc double %sub47 to float
  store float %conv48, float* %new_height_difference, align 4, !tbaa !19
  %42 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv49 = fpext float %42 to double
  %cmp50 = fcmp ogt double %conv49, -1.000000e-02
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.70

land.lhs.true.52:                                 ; preds = %if.end.42
  %43 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv53 = fpext float %43 to double
  %cmp54 = fcmp ogt double %conv53, -1.000000e-02
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.70

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %44 = load float, float* %width_difference, align 4, !tbaa !19
  %conv57 = fpext float %44 to double
  %cmp58 = fcmp oeq double %conv57, -1.000000e+00
  br i1 %cmp58, label %if.then.69, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.56
  %45 = load float, float* %new_width_difference, align 4, !tbaa !19
  %46 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp61 = fcmp olt float %45, %46
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %47 = load float, float* %new_width_difference, align 4, !tbaa !19
  %48 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp64 = fcmp oeq float %47, %48
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.70

land.lhs.true.66:                                 ; preds = %lor.lhs.false.63
  %49 = load float, float* %new_height_difference, align 4, !tbaa !19
  %50 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp67 = fcmp olt float %49, %50
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.60, %land.lhs.true.56
  %51 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %51, float* %width_difference, align 4, !tbaa !19
  %52 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %52, float* %height_difference, align 4, !tbaa !19
  store i32 2, i32* %code, align 4, !tbaa !22
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.66, %lor.lhs.false.63, %land.lhs.true.52, %if.end.42
  %53 = load float, float* %width_inches, align 4, !tbaa !19
  %conv71 = fpext float %53 to double
  %sub72 = fsub double 8.500000e+00, %conv71
  %conv73 = fptrunc double %sub72 to float
  store float %conv73, float* %new_width_difference, align 4, !tbaa !19
  %54 = load float, float* %height_inches, align 4, !tbaa !19
  %conv74 = fpext float %54 to double
  %sub75 = fsub double 1.400000e+01, %conv74
  %conv76 = fptrunc double %sub75 to float
  store float %conv76, float* %new_height_difference, align 4, !tbaa !19
  %55 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv77 = fpext float %55 to double
  %cmp78 = fcmp ogt double %conv77, -1.000000e-02
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.98

land.lhs.true.80:                                 ; preds = %if.end.70
  %56 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv81 = fpext float %56 to double
  %cmp82 = fcmp ogt double %conv81, -1.000000e-02
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.98

land.lhs.true.84:                                 ; preds = %land.lhs.true.80
  %57 = load float, float* %width_difference, align 4, !tbaa !19
  %conv85 = fpext float %57 to double
  %cmp86 = fcmp oeq double %conv85, -1.000000e+00
  br i1 %cmp86, label %if.then.97, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %land.lhs.true.84
  %58 = load float, float* %new_width_difference, align 4, !tbaa !19
  %59 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp89 = fcmp olt float %58, %59
  br i1 %cmp89, label %if.then.97, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.88
  %60 = load float, float* %new_width_difference, align 4, !tbaa !19
  %61 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp92 = fcmp oeq float %60, %61
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %lor.lhs.false.91
  %62 = load float, float* %new_height_difference, align 4, !tbaa !19
  %63 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp95 = fcmp olt float %62, %63
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.94, %lor.lhs.false.88, %land.lhs.true.84
  %64 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %64, float* %width_difference, align 4, !tbaa !19
  %65 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %65, float* %height_difference, align 4, !tbaa !19
  store i32 3, i32* %code, align 4, !tbaa !22
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %land.lhs.true.94, %lor.lhs.false.91, %land.lhs.true.80, %if.end.70
  %66 = load float, float* %width_inches, align 4, !tbaa !19
  %conv99 = fpext float %66 to double
  %sub100 = fsub double 1.100000e+01, %conv99
  %conv101 = fptrunc double %sub100 to float
  store float %conv101, float* %new_width_difference, align 4, !tbaa !19
  %67 = load float, float* %height_inches, align 4, !tbaa !19
  %conv102 = fpext float %67 to double
  %sub103 = fsub double 1.700000e+01, %conv102
  %conv104 = fptrunc double %sub103 to float
  store float %conv104, float* %new_height_difference, align 4, !tbaa !19
  %68 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv105 = fpext float %68 to double
  %cmp106 = fcmp ogt double %conv105, -1.000000e-02
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.126

land.lhs.true.108:                                ; preds = %if.end.98
  %69 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv109 = fpext float %69 to double
  %cmp110 = fcmp ogt double %conv109, -1.000000e-02
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.126

land.lhs.true.112:                                ; preds = %land.lhs.true.108
  %70 = load float, float* %width_difference, align 4, !tbaa !19
  %conv113 = fpext float %70 to double
  %cmp114 = fcmp oeq double %conv113, -1.000000e+00
  br i1 %cmp114, label %if.then.125, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.112
  %71 = load float, float* %new_width_difference, align 4, !tbaa !19
  %72 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp117 = fcmp olt float %71, %72
  br i1 %cmp117, label %if.then.125, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.116
  %73 = load float, float* %new_width_difference, align 4, !tbaa !19
  %74 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp120 = fcmp oeq float %73, %74
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.126

land.lhs.true.122:                                ; preds = %lor.lhs.false.119
  %75 = load float, float* %new_height_difference, align 4, !tbaa !19
  %76 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp123 = fcmp olt float %75, %76
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.122, %lor.lhs.false.116, %land.lhs.true.112
  %77 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %77, float* %width_difference, align 4, !tbaa !19
  %78 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %78, float* %height_difference, align 4, !tbaa !19
  store i32 6, i32* %code, align 4, !tbaa !22
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.122, %lor.lhs.false.119, %land.lhs.true.108, %if.end.98
  %79 = load float, float* %width_inches, align 4, !tbaa !19
  %conv127 = fpext float %79 to double
  %sub128 = fsub double 5.830000e+00, %conv127
  %conv129 = fptrunc double %sub128 to float
  store float %conv129, float* %new_width_difference, align 4, !tbaa !19
  %80 = load float, float* %height_inches, align 4, !tbaa !19
  %conv130 = fpext float %80 to double
  %sub131 = fsub double 8.270000e+00, %conv130
  %conv132 = fptrunc double %sub131 to float
  store float %conv132, float* %new_height_difference, align 4, !tbaa !19
  %81 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv133 = fpext float %81 to double
  %cmp134 = fcmp ogt double %conv133, -1.000000e-02
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.154

land.lhs.true.136:                                ; preds = %if.end.126
  %82 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv137 = fpext float %82 to double
  %cmp138 = fcmp ogt double %conv137, -1.000000e-02
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.154

land.lhs.true.140:                                ; preds = %land.lhs.true.136
  %83 = load float, float* %width_difference, align 4, !tbaa !19
  %conv141 = fpext float %83 to double
  %cmp142 = fcmp oeq double %conv141, -1.000000e+00
  br i1 %cmp142, label %if.then.153, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %land.lhs.true.140
  %84 = load float, float* %new_width_difference, align 4, !tbaa !19
  %85 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp145 = fcmp olt float %84, %85
  br i1 %cmp145, label %if.then.153, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.144
  %86 = load float, float* %new_width_difference, align 4, !tbaa !19
  %87 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp148 = fcmp oeq float %86, %87
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.154

land.lhs.true.150:                                ; preds = %lor.lhs.false.147
  %88 = load float, float* %new_height_difference, align 4, !tbaa !19
  %89 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp151 = fcmp olt float %88, %89
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %land.lhs.true.150, %lor.lhs.false.144, %land.lhs.true.140
  %90 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %90, float* %width_difference, align 4, !tbaa !19
  %91 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %91, float* %height_difference, align 4, !tbaa !19
  store i32 25, i32* %code, align 4, !tbaa !22
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %land.lhs.true.150, %lor.lhs.false.147, %land.lhs.true.136, %if.end.126
  %92 = load float, float* %width_inches, align 4, !tbaa !19
  %conv155 = fpext float %92 to double
  %sub156 = fsub double 8.270000e+00, %conv155
  %conv157 = fptrunc double %sub156 to float
  store float %conv157, float* %new_width_difference, align 4, !tbaa !19
  %93 = load float, float* %height_inches, align 4, !tbaa !19
  %conv158 = fpext float %93 to double
  %sub159 = fsub double 1.169000e+01, %conv158
  %conv160 = fptrunc double %sub159 to float
  store float %conv160, float* %new_height_difference, align 4, !tbaa !19
  %94 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv161 = fpext float %94 to double
  %cmp162 = fcmp ogt double %conv161, -1.000000e-02
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.182

land.lhs.true.164:                                ; preds = %if.end.154
  %95 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv165 = fpext float %95 to double
  %cmp166 = fcmp ogt double %conv165, -1.000000e-02
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.182

land.lhs.true.168:                                ; preds = %land.lhs.true.164
  %96 = load float, float* %width_difference, align 4, !tbaa !19
  %conv169 = fpext float %96 to double
  %cmp170 = fcmp oeq double %conv169, -1.000000e+00
  br i1 %cmp170, label %if.then.181, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %land.lhs.true.168
  %97 = load float, float* %new_width_difference, align 4, !tbaa !19
  %98 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp173 = fcmp olt float %97, %98
  br i1 %cmp173, label %if.then.181, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.172
  %99 = load float, float* %new_width_difference, align 4, !tbaa !19
  %100 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp176 = fcmp oeq float %99, %100
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.182

land.lhs.true.178:                                ; preds = %lor.lhs.false.175
  %101 = load float, float* %new_height_difference, align 4, !tbaa !19
  %102 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp179 = fcmp olt float %101, %102
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %land.lhs.true.178, %lor.lhs.false.172, %land.lhs.true.168
  %103 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %103, float* %width_difference, align 4, !tbaa !19
  %104 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %104, float* %height_difference, align 4, !tbaa !19
  store i32 26, i32* %code, align 4, !tbaa !22
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %land.lhs.true.178, %lor.lhs.false.175, %land.lhs.true.164, %if.end.154
  %105 = load float, float* %width_inches, align 4, !tbaa !19
  %conv183 = fpext float %105 to double
  %sub184 = fsub double 1.169000e+01, %conv183
  %conv185 = fptrunc double %sub184 to float
  store float %conv185, float* %new_width_difference, align 4, !tbaa !19
  %106 = load float, float* %height_inches, align 4, !tbaa !19
  %conv186 = fpext float %106 to double
  %sub187 = fsub double 1.654000e+01, %conv186
  %conv188 = fptrunc double %sub187 to float
  store float %conv188, float* %new_height_difference, align 4, !tbaa !19
  %107 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv189 = fpext float %107 to double
  %cmp190 = fcmp ogt double %conv189, -1.000000e-02
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.210

land.lhs.true.192:                                ; preds = %if.end.182
  %108 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv193 = fpext float %108 to double
  %cmp194 = fcmp ogt double %conv193, -1.000000e-02
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.210

land.lhs.true.196:                                ; preds = %land.lhs.true.192
  %109 = load float, float* %width_difference, align 4, !tbaa !19
  %conv197 = fpext float %109 to double
  %cmp198 = fcmp oeq double %conv197, -1.000000e+00
  br i1 %cmp198, label %if.then.209, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %land.lhs.true.196
  %110 = load float, float* %new_width_difference, align 4, !tbaa !19
  %111 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp201 = fcmp olt float %110, %111
  br i1 %cmp201, label %if.then.209, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.200
  %112 = load float, float* %new_width_difference, align 4, !tbaa !19
  %113 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp204 = fcmp oeq float %112, %113
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.210

land.lhs.true.206:                                ; preds = %lor.lhs.false.203
  %114 = load float, float* %new_height_difference, align 4, !tbaa !19
  %115 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp207 = fcmp olt float %114, %115
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %land.lhs.true.206, %lor.lhs.false.200, %land.lhs.true.196
  %116 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %116, float* %width_difference, align 4, !tbaa !19
  %117 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %117, float* %height_difference, align 4, !tbaa !19
  store i32 27, i32* %code, align 4, !tbaa !22
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %land.lhs.true.206, %lor.lhs.false.203, %land.lhs.true.192, %if.end.182
  %118 = load float, float* %width_inches, align 4, !tbaa !19
  %conv211 = fpext float %118 to double
  %sub212 = fsub double 1.654000e+01, %conv211
  %conv213 = fptrunc double %sub212 to float
  store float %conv213, float* %new_width_difference, align 4, !tbaa !19
  %119 = load float, float* %height_inches, align 4, !tbaa !19
  %conv214 = fpext float %119 to double
  %sub215 = fsub double 2.339000e+01, %conv214
  %conv216 = fptrunc double %sub215 to float
  store float %conv216, float* %new_height_difference, align 4, !tbaa !19
  %120 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv217 = fpext float %120 to double
  %cmp218 = fcmp ogt double %conv217, -1.000000e-02
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.238

land.lhs.true.220:                                ; preds = %if.end.210
  %121 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv221 = fpext float %121 to double
  %cmp222 = fcmp ogt double %conv221, -1.000000e-02
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.238

land.lhs.true.224:                                ; preds = %land.lhs.true.220
  %122 = load float, float* %width_difference, align 4, !tbaa !19
  %conv225 = fpext float %122 to double
  %cmp226 = fcmp oeq double %conv225, -1.000000e+00
  br i1 %cmp226, label %if.then.237, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %land.lhs.true.224
  %123 = load float, float* %new_width_difference, align 4, !tbaa !19
  %124 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp229 = fcmp olt float %123, %124
  br i1 %cmp229, label %if.then.237, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.228
  %125 = load float, float* %new_width_difference, align 4, !tbaa !19
  %126 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp232 = fcmp oeq float %125, %126
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.238

land.lhs.true.234:                                ; preds = %lor.lhs.false.231
  %127 = load float, float* %new_height_difference, align 4, !tbaa !19
  %128 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp235 = fcmp olt float %127, %128
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %land.lhs.true.234, %lor.lhs.false.228, %land.lhs.true.224
  %129 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %129, float* %width_difference, align 4, !tbaa !19
  %130 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %130, float* %height_difference, align 4, !tbaa !19
  store i32 28, i32* %code, align 4, !tbaa !22
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %land.lhs.true.234, %lor.lhs.false.231, %land.lhs.true.220, %if.end.210
  %131 = load float, float* %width_inches, align 4, !tbaa !19
  %conv239 = fpext float %131 to double
  %sub240 = fsub double 2.339000e+01, %conv239
  %conv241 = fptrunc double %sub240 to float
  store float %conv241, float* %new_width_difference, align 4, !tbaa !19
  %132 = load float, float* %height_inches, align 4, !tbaa !19
  %conv242 = fpext float %132 to double
  %sub243 = fsub double 3.311000e+01, %conv242
  %conv244 = fptrunc double %sub243 to float
  store float %conv244, float* %new_height_difference, align 4, !tbaa !19
  %133 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv245 = fpext float %133 to double
  %cmp246 = fcmp ogt double %conv245, -1.000000e-02
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.266

land.lhs.true.248:                                ; preds = %if.end.238
  %134 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv249 = fpext float %134 to double
  %cmp250 = fcmp ogt double %conv249, -1.000000e-02
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.266

land.lhs.true.252:                                ; preds = %land.lhs.true.248
  %135 = load float, float* %width_difference, align 4, !tbaa !19
  %conv253 = fpext float %135 to double
  %cmp254 = fcmp oeq double %conv253, -1.000000e+00
  br i1 %cmp254, label %if.then.265, label %lor.lhs.false.256

lor.lhs.false.256:                                ; preds = %land.lhs.true.252
  %136 = load float, float* %new_width_difference, align 4, !tbaa !19
  %137 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp257 = fcmp olt float %136, %137
  br i1 %cmp257, label %if.then.265, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %lor.lhs.false.256
  %138 = load float, float* %new_width_difference, align 4, !tbaa !19
  %139 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp260 = fcmp oeq float %138, %139
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.266

land.lhs.true.262:                                ; preds = %lor.lhs.false.259
  %140 = load float, float* %new_height_difference, align 4, !tbaa !19
  %141 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp263 = fcmp olt float %140, %141
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %land.lhs.true.262, %lor.lhs.false.256, %land.lhs.true.252
  %142 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %142, float* %width_difference, align 4, !tbaa !19
  %143 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %143, float* %height_difference, align 4, !tbaa !19
  store i32 29, i32* %code, align 4, !tbaa !22
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %land.lhs.true.262, %lor.lhs.false.259, %land.lhs.true.248, %if.end.238
  %144 = load float, float* %width_inches, align 4, !tbaa !19
  %conv267 = fpext float %144 to double
  %sub268 = fsub double 3.311000e+01, %conv267
  %conv269 = fptrunc double %sub268 to float
  store float %conv269, float* %new_width_difference, align 4, !tbaa !19
  %145 = load float, float* %height_inches, align 4, !tbaa !19
  %conv270 = fpext float %145 to double
  %sub271 = fsub double 4.681000e+01, %conv270
  %conv272 = fptrunc double %sub271 to float
  store float %conv272, float* %new_height_difference, align 4, !tbaa !19
  %146 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv273 = fpext float %146 to double
  %cmp274 = fcmp ogt double %conv273, -1.000000e-02
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.294

land.lhs.true.276:                                ; preds = %if.end.266
  %147 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv277 = fpext float %147 to double
  %cmp278 = fcmp ogt double %conv277, -1.000000e-02
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.294

land.lhs.true.280:                                ; preds = %land.lhs.true.276
  %148 = load float, float* %width_difference, align 4, !tbaa !19
  %conv281 = fpext float %148 to double
  %cmp282 = fcmp oeq double %conv281, -1.000000e+00
  br i1 %cmp282, label %if.then.293, label %lor.lhs.false.284

lor.lhs.false.284:                                ; preds = %land.lhs.true.280
  %149 = load float, float* %new_width_difference, align 4, !tbaa !19
  %150 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp285 = fcmp olt float %149, %150
  br i1 %cmp285, label %if.then.293, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %lor.lhs.false.284
  %151 = load float, float* %new_width_difference, align 4, !tbaa !19
  %152 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp288 = fcmp oeq float %151, %152
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.294

land.lhs.true.290:                                ; preds = %lor.lhs.false.287
  %153 = load float, float* %new_height_difference, align 4, !tbaa !19
  %154 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp291 = fcmp olt float %153, %154
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %land.lhs.true.290, %lor.lhs.false.284, %land.lhs.true.280
  %155 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %155, float* %width_difference, align 4, !tbaa !19
  %156 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %156, float* %height_difference, align 4, !tbaa !19
  store i32 30, i32* %code, align 4, !tbaa !22
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.293, %land.lhs.true.290, %lor.lhs.false.287, %land.lhs.true.276, %if.end.266
  %157 = load float, float* %width_inches, align 4, !tbaa !19
  %conv295 = fpext float %157 to double
  %sub296 = fsub double 7.160000e+00, %conv295
  %conv297 = fptrunc double %sub296 to float
  store float %conv297, float* %new_width_difference, align 4, !tbaa !19
  %158 = load float, float* %height_inches, align 4, !tbaa !19
  %conv298 = fpext float %158 to double
  %sub299 = fsub double 1.012000e+01, %conv298
  %conv300 = fptrunc double %sub299 to float
  store float %conv300, float* %new_height_difference, align 4, !tbaa !19
  %159 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv301 = fpext float %159 to double
  %cmp302 = fcmp ogt double %conv301, -1.000000e-02
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.322

land.lhs.true.304:                                ; preds = %if.end.294
  %160 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv305 = fpext float %160 to double
  %cmp306 = fcmp ogt double %conv305, -1.000000e-02
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.322

land.lhs.true.308:                                ; preds = %land.lhs.true.304
  %161 = load float, float* %width_difference, align 4, !tbaa !19
  %conv309 = fpext float %161 to double
  %cmp310 = fcmp oeq double %conv309, -1.000000e+00
  br i1 %cmp310, label %if.then.321, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %land.lhs.true.308
  %162 = load float, float* %new_width_difference, align 4, !tbaa !19
  %163 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp313 = fcmp olt float %162, %163
  br i1 %cmp313, label %if.then.321, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %lor.lhs.false.312
  %164 = load float, float* %new_width_difference, align 4, !tbaa !19
  %165 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp316 = fcmp oeq float %164, %165
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.322

land.lhs.true.318:                                ; preds = %lor.lhs.false.315
  %166 = load float, float* %new_height_difference, align 4, !tbaa !19
  %167 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp319 = fcmp olt float %166, %167
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %land.lhs.true.318, %lor.lhs.false.312, %land.lhs.true.308
  %168 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %168, float* %width_difference, align 4, !tbaa !19
  %169 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %169, float* %height_difference, align 4, !tbaa !19
  store i32 45, i32* %code, align 4, !tbaa !22
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.321, %land.lhs.true.318, %lor.lhs.false.315, %land.lhs.true.304, %if.end.294
  %170 = load float, float* %width_inches, align 4, !tbaa !19
  %conv323 = fpext float %170 to double
  %sub324 = fsub double 1.012000e+01, %conv323
  %conv325 = fptrunc double %sub324 to float
  store float %conv325, float* %new_width_difference, align 4, !tbaa !19
  %171 = load float, float* %height_inches, align 4, !tbaa !19
  %conv326 = fpext float %171 to double
  %sub327 = fsub double 1.433000e+01, %conv326
  %conv328 = fptrunc double %sub327 to float
  store float %conv328, float* %new_height_difference, align 4, !tbaa !19
  %172 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv329 = fpext float %172 to double
  %cmp330 = fcmp ogt double %conv329, -1.000000e-02
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.350

land.lhs.true.332:                                ; preds = %if.end.322
  %173 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv333 = fpext float %173 to double
  %cmp334 = fcmp ogt double %conv333, -1.000000e-02
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.350

land.lhs.true.336:                                ; preds = %land.lhs.true.332
  %174 = load float, float* %width_difference, align 4, !tbaa !19
  %conv337 = fpext float %174 to double
  %cmp338 = fcmp oeq double %conv337, -1.000000e+00
  br i1 %cmp338, label %if.then.349, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %land.lhs.true.336
  %175 = load float, float* %new_width_difference, align 4, !tbaa !19
  %176 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp341 = fcmp olt float %175, %176
  br i1 %cmp341, label %if.then.349, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %lor.lhs.false.340
  %177 = load float, float* %new_width_difference, align 4, !tbaa !19
  %178 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp344 = fcmp oeq float %177, %178
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.350

land.lhs.true.346:                                ; preds = %lor.lhs.false.343
  %179 = load float, float* %new_height_difference, align 4, !tbaa !19
  %180 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp347 = fcmp olt float %179, %180
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %land.lhs.true.346, %lor.lhs.false.340, %land.lhs.true.336
  %181 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %181, float* %width_difference, align 4, !tbaa !19
  %182 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %182, float* %height_difference, align 4, !tbaa !19
  store i32 46, i32* %code, align 4, !tbaa !22
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %land.lhs.true.346, %lor.lhs.false.343, %land.lhs.true.332, %if.end.322
  %183 = load float, float* %width_inches, align 4, !tbaa !19
  %conv351 = fpext float %183 to double
  %sub352 = fsub double 3.940000e+00, %conv351
  %conv353 = fptrunc double %sub352 to float
  store float %conv353, float* %new_width_difference, align 4, !tbaa !19
  %184 = load float, float* %height_inches, align 4, !tbaa !19
  %conv354 = fpext float %184 to double
  %sub355 = fsub double 5.830000e+00, %conv354
  %conv356 = fptrunc double %sub355 to float
  store float %conv356, float* %new_height_difference, align 4, !tbaa !19
  %185 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv357 = fpext float %185 to double
  %cmp358 = fcmp ogt double %conv357, -1.000000e-02
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.378

land.lhs.true.360:                                ; preds = %if.end.350
  %186 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv361 = fpext float %186 to double
  %cmp362 = fcmp ogt double %conv361, -1.000000e-02
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.378

land.lhs.true.364:                                ; preds = %land.lhs.true.360
  %187 = load float, float* %width_difference, align 4, !tbaa !19
  %conv365 = fpext float %187 to double
  %cmp366 = fcmp oeq double %conv365, -1.000000e+00
  br i1 %cmp366, label %if.then.377, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %land.lhs.true.364
  %188 = load float, float* %new_width_difference, align 4, !tbaa !19
  %189 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp369 = fcmp olt float %188, %189
  br i1 %cmp369, label %if.then.377, label %lor.lhs.false.371

lor.lhs.false.371:                                ; preds = %lor.lhs.false.368
  %190 = load float, float* %new_width_difference, align 4, !tbaa !19
  %191 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp372 = fcmp oeq float %190, %191
  br i1 %cmp372, label %land.lhs.true.374, label %if.end.378

land.lhs.true.374:                                ; preds = %lor.lhs.false.371
  %192 = load float, float* %new_height_difference, align 4, !tbaa !19
  %193 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp375 = fcmp olt float %192, %193
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %land.lhs.true.374, %lor.lhs.false.368, %land.lhs.true.364
  %194 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %194, float* %width_difference, align 4, !tbaa !19
  %195 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %195, float* %height_difference, align 4, !tbaa !19
  store i32 71, i32* %code, align 4, !tbaa !22
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %land.lhs.true.374, %lor.lhs.false.371, %land.lhs.true.360, %if.end.350
  %196 = load float, float* %width_inches, align 4, !tbaa !19
  %conv379 = fpext float %196 to double
  %sub380 = fsub double 5.830000e+00, %conv379
  %conv381 = fptrunc double %sub380 to float
  store float %conv381, float* %new_width_difference, align 4, !tbaa !19
  %197 = load float, float* %height_inches, align 4, !tbaa !19
  %conv382 = fpext float %197 to double
  %sub383 = fsub double 7.870000e+00, %conv382
  %conv384 = fptrunc double %sub383 to float
  store float %conv384, float* %new_height_difference, align 4, !tbaa !19
  %198 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv385 = fpext float %198 to double
  %cmp386 = fcmp ogt double %conv385, -1.000000e-02
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.406

land.lhs.true.388:                                ; preds = %if.end.378
  %199 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv389 = fpext float %199 to double
  %cmp390 = fcmp ogt double %conv389, -1.000000e-02
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.406

land.lhs.true.392:                                ; preds = %land.lhs.true.388
  %200 = load float, float* %width_difference, align 4, !tbaa !19
  %conv393 = fpext float %200 to double
  %cmp394 = fcmp oeq double %conv393, -1.000000e+00
  br i1 %cmp394, label %if.then.405, label %lor.lhs.false.396

lor.lhs.false.396:                                ; preds = %land.lhs.true.392
  %201 = load float, float* %new_width_difference, align 4, !tbaa !19
  %202 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp397 = fcmp olt float %201, %202
  br i1 %cmp397, label %if.then.405, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %lor.lhs.false.396
  %203 = load float, float* %new_width_difference, align 4, !tbaa !19
  %204 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp400 = fcmp oeq float %203, %204
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.406

land.lhs.true.402:                                ; preds = %lor.lhs.false.399
  %205 = load float, float* %new_height_difference, align 4, !tbaa !19
  %206 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp403 = fcmp olt float %205, %206
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %land.lhs.true.402, %lor.lhs.false.396, %land.lhs.true.392
  %207 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %207, float* %width_difference, align 4, !tbaa !19
  %208 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %208, float* %height_difference, align 4, !tbaa !19
  store i32 72, i32* %code, align 4, !tbaa !22
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.405, %land.lhs.true.402, %lor.lhs.false.399, %land.lhs.true.388, %if.end.378
  %209 = load float, float* %width_inches, align 4, !tbaa !19
  %conv407 = fpext float %209 to double
  %sub408 = fsub double 3.870000e+00, %conv407
  %conv409 = fptrunc double %sub408 to float
  store float %conv409, float* %new_width_difference, align 4, !tbaa !19
  %210 = load float, float* %height_inches, align 4, !tbaa !19
  %conv410 = fpext float %210 to double
  %sub411 = fsub double 7.500000e+00, %conv410
  %conv412 = fptrunc double %sub411 to float
  store float %conv412, float* %new_height_difference, align 4, !tbaa !19
  %211 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv413 = fpext float %211 to double
  %cmp414 = fcmp ogt double %conv413, -1.000000e-02
  br i1 %cmp414, label %land.lhs.true.416, label %if.end.434

land.lhs.true.416:                                ; preds = %if.end.406
  %212 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv417 = fpext float %212 to double
  %cmp418 = fcmp ogt double %conv417, -1.000000e-02
  br i1 %cmp418, label %land.lhs.true.420, label %if.end.434

land.lhs.true.420:                                ; preds = %land.lhs.true.416
  %213 = load float, float* %width_difference, align 4, !tbaa !19
  %conv421 = fpext float %213 to double
  %cmp422 = fcmp oeq double %conv421, -1.000000e+00
  br i1 %cmp422, label %if.then.433, label %lor.lhs.false.424

lor.lhs.false.424:                                ; preds = %land.lhs.true.420
  %214 = load float, float* %new_width_difference, align 4, !tbaa !19
  %215 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp425 = fcmp olt float %214, %215
  br i1 %cmp425, label %if.then.433, label %lor.lhs.false.427

lor.lhs.false.427:                                ; preds = %lor.lhs.false.424
  %216 = load float, float* %new_width_difference, align 4, !tbaa !19
  %217 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp428 = fcmp oeq float %216, %217
  br i1 %cmp428, label %land.lhs.true.430, label %if.end.434

land.lhs.true.430:                                ; preds = %lor.lhs.false.427
  %218 = load float, float* %new_height_difference, align 4, !tbaa !19
  %219 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp431 = fcmp olt float %218, %219
  br i1 %cmp431, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %land.lhs.true.430, %lor.lhs.false.424, %land.lhs.true.420
  %220 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %220, float* %width_difference, align 4, !tbaa !19
  %221 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %221, float* %height_difference, align 4, !tbaa !19
  store i32 80, i32* %code, align 4, !tbaa !22
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.433, %land.lhs.true.430, %lor.lhs.false.427, %land.lhs.true.416, %if.end.406
  %222 = load float, float* %width_inches, align 4, !tbaa !19
  %conv435 = fpext float %222 to double
  %sub436 = fsub double 4.120000e+00, %conv435
  %conv437 = fptrunc double %sub436 to float
  store float %conv437, float* %new_width_difference, align 4, !tbaa !19
  %223 = load float, float* %height_inches, align 4, !tbaa !19
  %conv438 = fpext float %223 to double
  %sub439 = fsub double 9.500000e+00, %conv438
  %conv440 = fptrunc double %sub439 to float
  store float %conv440, float* %new_height_difference, align 4, !tbaa !19
  %224 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv441 = fpext float %224 to double
  %cmp442 = fcmp ogt double %conv441, -1.000000e-02
  br i1 %cmp442, label %land.lhs.true.444, label %if.end.462

land.lhs.true.444:                                ; preds = %if.end.434
  %225 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv445 = fpext float %225 to double
  %cmp446 = fcmp ogt double %conv445, -1.000000e-02
  br i1 %cmp446, label %land.lhs.true.448, label %if.end.462

land.lhs.true.448:                                ; preds = %land.lhs.true.444
  %226 = load float, float* %width_difference, align 4, !tbaa !19
  %conv449 = fpext float %226 to double
  %cmp450 = fcmp oeq double %conv449, -1.000000e+00
  br i1 %cmp450, label %if.then.461, label %lor.lhs.false.452

lor.lhs.false.452:                                ; preds = %land.lhs.true.448
  %227 = load float, float* %new_width_difference, align 4, !tbaa !19
  %228 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp453 = fcmp olt float %227, %228
  br i1 %cmp453, label %if.then.461, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %lor.lhs.false.452
  %229 = load float, float* %new_width_difference, align 4, !tbaa !19
  %230 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp456 = fcmp oeq float %229, %230
  br i1 %cmp456, label %land.lhs.true.458, label %if.end.462

land.lhs.true.458:                                ; preds = %lor.lhs.false.455
  %231 = load float, float* %new_height_difference, align 4, !tbaa !19
  %232 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp459 = fcmp olt float %231, %232
  br i1 %cmp459, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %land.lhs.true.458, %lor.lhs.false.452, %land.lhs.true.448
  %233 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %233, float* %width_difference, align 4, !tbaa !19
  %234 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %234, float* %height_difference, align 4, !tbaa !19
  store i32 81, i32* %code, align 4, !tbaa !22
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.461, %land.lhs.true.458, %lor.lhs.false.455, %land.lhs.true.444, %if.end.434
  %235 = load float, float* %width_inches, align 4, !tbaa !19
  %conv463 = fpext float %235 to double
  %sub464 = fsub double 4.330000e+00, %conv463
  %conv465 = fptrunc double %sub464 to float
  store float %conv465, float* %new_width_difference, align 4, !tbaa !19
  %236 = load float, float* %height_inches, align 4, !tbaa !19
  %conv466 = fpext float %236 to double
  %sub467 = fsub double 8.660000e+00, %conv466
  %conv468 = fptrunc double %sub467 to float
  store float %conv468, float* %new_height_difference, align 4, !tbaa !19
  %237 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv469 = fpext float %237 to double
  %cmp470 = fcmp ogt double %conv469, -1.000000e-02
  br i1 %cmp470, label %land.lhs.true.472, label %if.end.490

land.lhs.true.472:                                ; preds = %if.end.462
  %238 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv473 = fpext float %238 to double
  %cmp474 = fcmp ogt double %conv473, -1.000000e-02
  br i1 %cmp474, label %land.lhs.true.476, label %if.end.490

land.lhs.true.476:                                ; preds = %land.lhs.true.472
  %239 = load float, float* %width_difference, align 4, !tbaa !19
  %conv477 = fpext float %239 to double
  %cmp478 = fcmp oeq double %conv477, -1.000000e+00
  br i1 %cmp478, label %if.then.489, label %lor.lhs.false.480

lor.lhs.false.480:                                ; preds = %land.lhs.true.476
  %240 = load float, float* %new_width_difference, align 4, !tbaa !19
  %241 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp481 = fcmp olt float %240, %241
  br i1 %cmp481, label %if.then.489, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %lor.lhs.false.480
  %242 = load float, float* %new_width_difference, align 4, !tbaa !19
  %243 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp484 = fcmp oeq float %242, %243
  br i1 %cmp484, label %land.lhs.true.486, label %if.end.490

land.lhs.true.486:                                ; preds = %lor.lhs.false.483
  %244 = load float, float* %new_height_difference, align 4, !tbaa !19
  %245 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp487 = fcmp olt float %244, %245
  br i1 %cmp487, label %if.then.489, label %if.end.490

if.then.489:                                      ; preds = %land.lhs.true.486, %lor.lhs.false.480, %land.lhs.true.476
  %246 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %246, float* %width_difference, align 4, !tbaa !19
  %247 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %247, float* %height_difference, align 4, !tbaa !19
  store i32 90, i32* %code, align 4, !tbaa !22
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.489, %land.lhs.true.486, %lor.lhs.false.483, %land.lhs.true.472, %if.end.462
  %248 = load float, float* %width_inches, align 4, !tbaa !19
  %conv491 = fpext float %248 to double
  %sub492 = fsub double 6.380000e+00, %conv491
  %conv493 = fptrunc double %sub492 to float
  store float %conv493, float* %new_width_difference, align 4, !tbaa !19
  %249 = load float, float* %height_inches, align 4, !tbaa !19
  %conv494 = fpext float %249 to double
  %sub495 = fsub double 9.010000e+00, %conv494
  %conv496 = fptrunc double %sub495 to float
  store float %conv496, float* %new_height_difference, align 4, !tbaa !19
  %250 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv497 = fpext float %250 to double
  %cmp498 = fcmp ogt double %conv497, -1.000000e-02
  br i1 %cmp498, label %land.lhs.true.500, label %if.end.518

land.lhs.true.500:                                ; preds = %if.end.490
  %251 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv501 = fpext float %251 to double
  %cmp502 = fcmp ogt double %conv501, -1.000000e-02
  br i1 %cmp502, label %land.lhs.true.504, label %if.end.518

land.lhs.true.504:                                ; preds = %land.lhs.true.500
  %252 = load float, float* %width_difference, align 4, !tbaa !19
  %conv505 = fpext float %252 to double
  %cmp506 = fcmp oeq double %conv505, -1.000000e+00
  br i1 %cmp506, label %if.then.517, label %lor.lhs.false.508

lor.lhs.false.508:                                ; preds = %land.lhs.true.504
  %253 = load float, float* %new_width_difference, align 4, !tbaa !19
  %254 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp509 = fcmp olt float %253, %254
  br i1 %cmp509, label %if.then.517, label %lor.lhs.false.511

lor.lhs.false.511:                                ; preds = %lor.lhs.false.508
  %255 = load float, float* %new_width_difference, align 4, !tbaa !19
  %256 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp512 = fcmp oeq float %255, %256
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.518

land.lhs.true.514:                                ; preds = %lor.lhs.false.511
  %257 = load float, float* %new_height_difference, align 4, !tbaa !19
  %258 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp515 = fcmp olt float %257, %258
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %land.lhs.true.514, %lor.lhs.false.508, %land.lhs.true.504
  %259 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %259, float* %width_difference, align 4, !tbaa !19
  %260 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %260, float* %height_difference, align 4, !tbaa !19
  store i32 91, i32* %code, align 4, !tbaa !22
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.517, %land.lhs.true.514, %lor.lhs.false.511, %land.lhs.true.500, %if.end.490
  %261 = load float, float* %width_inches, align 4, !tbaa !19
  %conv519 = fpext float %261 to double
  %sub520 = fsub double 6.930000e+00, %conv519
  %conv521 = fptrunc double %sub520 to float
  store float %conv521, float* %new_width_difference, align 4, !tbaa !19
  %262 = load float, float* %height_inches, align 4, !tbaa !19
  %conv522 = fpext float %262 to double
  %sub523 = fsub double 9.840000e+00, %conv522
  %conv524 = fptrunc double %sub523 to float
  store float %conv524, float* %new_height_difference, align 4, !tbaa !19
  %263 = load float, float* %new_width_difference, align 4, !tbaa !19
  %conv525 = fpext float %263 to double
  %cmp526 = fcmp ogt double %conv525, -1.000000e-02
  br i1 %cmp526, label %land.lhs.true.528, label %if.end.546

land.lhs.true.528:                                ; preds = %if.end.518
  %264 = load float, float* %new_height_difference, align 4, !tbaa !19
  %conv529 = fpext float %264 to double
  %cmp530 = fcmp ogt double %conv529, -1.000000e-02
  br i1 %cmp530, label %land.lhs.true.532, label %if.end.546

land.lhs.true.532:                                ; preds = %land.lhs.true.528
  %265 = load float, float* %width_difference, align 4, !tbaa !19
  %conv533 = fpext float %265 to double
  %cmp534 = fcmp oeq double %conv533, -1.000000e+00
  br i1 %cmp534, label %if.then.545, label %lor.lhs.false.536

lor.lhs.false.536:                                ; preds = %land.lhs.true.532
  %266 = load float, float* %new_width_difference, align 4, !tbaa !19
  %267 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp537 = fcmp olt float %266, %267
  br i1 %cmp537, label %if.then.545, label %lor.lhs.false.539

lor.lhs.false.539:                                ; preds = %lor.lhs.false.536
  %268 = load float, float* %new_width_difference, align 4, !tbaa !19
  %269 = load float, float* %width_difference, align 4, !tbaa !19
  %cmp540 = fcmp oeq float %268, %269
  br i1 %cmp540, label %land.lhs.true.542, label %if.end.546

land.lhs.true.542:                                ; preds = %lor.lhs.false.539
  %270 = load float, float* %new_height_difference, align 4, !tbaa !19
  %271 = load float, float* %height_difference, align 4, !tbaa !19
  %cmp543 = fcmp olt float %270, %271
  br i1 %cmp543, label %if.then.545, label %if.end.546

if.then.545:                                      ; preds = %land.lhs.true.542, %lor.lhs.false.536, %land.lhs.true.532
  %272 = load float, float* %new_width_difference, align 4, !tbaa !19
  store float %272, float* %width_difference, align 4, !tbaa !19
  %273 = load float, float* %new_height_difference, align 4, !tbaa !19
  store float %273, float* %height_difference, align 4, !tbaa !19
  store i32 100, i32* %code, align 4, !tbaa !22
  br label %if.end.546

if.end.546:                                       ; preds = %if.then.545, %land.lhs.true.542, %lor.lhs.false.539, %land.lhs.true.528, %if.end.518
  %274 = load i32, i32* %code, align 4, !tbaa !22
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast float* %new_height_difference to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast float* %new_width_difference to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast float* %height_difference to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast float* %width_difference to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast float* %height_inches to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast float* %width_inches to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  ret i32 %274
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_page_orientation(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 14
  %1 = load i32, i32* %height, align 4, !tbaa !21
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i64 @gdev_pcl_3bit_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !23
  store i16 %4, i16* %r, align 2, !tbaa !23
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !23
  store i16 %6, i16* %g, align 2, !tbaa !23
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !23
  store i16 %8, i16* %b, align 2, !tbaa !23
  %9 = load i16, i16* %b, align 2, !tbaa !23
  %conv = zext i16 %9 to i32
  %shr = ashr i32 %conv, 15
  %shl = shl i32 %shr, 2
  %10 = load i16, i16* %g, align 2, !tbaa !23
  %conv3 = zext i16 %10 to i32
  %shr4 = ashr i32 %conv3, 15
  %shl5 = shl i32 %shr4, 1
  %add = add nsw i32 %shl, %shl5
  %11 = load i16, i16* %r, align 2, !tbaa !23
  %conv6 = zext i16 %11 to i32
  %shr7 = ashr i32 %conv6, 15
  %add8 = add nsw i32 %add, %shr7
  %xor = xor i32 %add8, 7
  %conv9 = sext i32 %xor to i64
  %12 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #1
  %13 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  %14 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #1
  ret i64 %conv9
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_3bit_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %cc = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !24
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %cc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i64, i64* %color.addr, align 8, !tbaa !24
  %conv = trunc i64 %1 to i16
  %conv1 = zext i16 %conv to i32
  %xor = xor i32 %conv1, 7
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %cc, align 2, !tbaa !23
  %2 = load i16, i16* %cc, align 2, !tbaa !23
  %conv3 = zext i16 %2 to i32
  %and = and i32 %conv3, 1
  %sub = sub nsw i32 0, %and
  %conv4 = trunc i32 %sub to i16
  %3 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !23
  %4 = load i16, i16* %cc, align 2, !tbaa !23
  %conv5 = zext i16 %4 to i32
  %shr = ashr i32 %conv5, 1
  %and6 = and i32 %shr, 1
  %sub7 = sub nsw i32 0, %and6
  %conv8 = trunc i32 %sub7 to i16
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv8, i16* %arrayidx9, align 2, !tbaa !23
  %6 = load i16, i16* %cc, align 2, !tbaa !23
  %conv10 = zext i16 %6 to i32
  %shr11 = ashr i32 %conv10, 2
  %sub12 = sub nsw i32 0, %shr11
  %conv13 = trunc i32 %sub12 to i16
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %7, i64 2
  store i16 %conv13, i16* %arrayidx14, align 2, !tbaa !23
  %8 = bitcast i16* %cc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %8) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_mode2compress_padded(i64* %row, i64* %end_row, i8* %compressed, i32 %pad) #0 {
entry:
  %row.addr = alloca i64*, align 8
  %end_row.addr = alloca i64*, align 8
  %compressed.addr = alloca i8*, align 8
  %pad.addr = alloca i32, align 4
  %exam = alloca i64*, align 8
  %cptr = alloca i8*, align 8
  %compr = alloca i8*, align 8
  %end_dis = alloca i8*, align 8
  %next = alloca i64*, align 8
  %test = alloca i64, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count104 = alloca i32, align 4
  %this = alloca i32, align 4
  store i64* %row, i64** %row.addr, align 8, !tbaa !1
  store i64* %end_row, i64** %end_row.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  store i32 %pad, i32* %pad.addr, align 4, !tbaa !22
  %0 = bitcast i64** %exam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %row.addr, align 8, !tbaa !1
  store i64* %1, i64** %exam, align 8, !tbaa !1
  %2 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %3, i8** %cptr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end.121, %entry
  %4 = load i64*, i64** %exam, align 8, !tbaa !1
  %5 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %cmp = icmp ult i64* %4, %5
  br i1 %cmp, label %while.body, label %while.end.122

while.body:                                       ; preds = %while.cond
  %6 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i64*, i64** %exam, align 8, !tbaa !1
  %8 = bitcast i64* %7 to i8*
  store i8* %8, i8** %compr, align 8, !tbaa !1
  %9 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %test to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i64*, i64** %exam, align 8, !tbaa !1
  %13 = load i64, i64* %12, align 8, !tbaa !24
  store i64 %13, i64* %test, align 8, !tbaa !24
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %14 = load i64, i64* %test, align 8, !tbaa !24
  %shl = shl i64 %14, 8
  %15 = load i64, i64* %test, align 8, !tbaa !24
  %xor = xor i64 %shl, %15
  %cmp2 = icmp ugt i64 %xor, 255
  br i1 %cmp2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %16 = load i64*, i64** %exam, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr, i64** %exam, align 8, !tbaa !1
  %17 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %cmp4 = icmp uge i64* %incdec.ptr, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.3
  br label %while.end

if.end:                                           ; preds = %while.body.3
  %18 = load i64*, i64** %exam, align 8, !tbaa !1
  %19 = load i64, i64* %18, align 8, !tbaa !24
  store i64 %19, i64* %test, align 8, !tbaa !24
  br label %while.cond.1

while.end:                                        ; preds = %if.then, %while.cond.1
  %20 = load i64*, i64** %exam, align 8, !tbaa !1
  %21 = bitcast i64* %20 to i8*
  store i8* %21, i8** %end_dis, align 8, !tbaa !1
  %22 = load i64*, i64** %exam, align 8, !tbaa !1
  %23 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %cmp5 = icmp eq i64* %22, %23
  br i1 %cmp5, label %if.then.6, label %if.else.29

if.then.6:                                        ; preds = %while.end
  %24 = load i32, i32* %pad.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.6
  %25 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %26 = load i8*, i8** %compr, align 8, !tbaa !1
  %cmp7 = icmp ugt i8* %25, %26
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.27

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %27 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %28 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %land.lhs.true.8
  %29 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 -2
  %30 = load i8, i8* %arrayidx12, align 1, !tbaa !25
  %conv13 = zext i8 %30 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.11
  %31 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr17, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.26

if.else:                                          ; preds = %if.then.11
  %32 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %32, i64 -3
  %33 = load i8, i8* %arrayidx18, align 1, !tbaa !25
  %conv19 = zext i8 %33 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %34 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 -2
  store i8* %add.ptr, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.25

if.else.23:                                       ; preds = %if.else
  %35 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %35, i64 -3
  store i8* %add.ptr24, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.8, %land.lhs.true, %if.then.6
  %36 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i64, i64* %36, i32 -1
  store i64* %incdec.ptr28, i64** %end_row.addr, align 8, !tbaa !1
  store i64* %incdec.ptr28, i64** %next, align 8, !tbaa !1
  br label %if.end.71

if.else.29:                                       ; preds = %while.end
  %37 = load i64*, i64** %exam, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i64, i64* %37, i64 1
  store i64* %add.ptr30, i64** %next, align 8, !tbaa !1
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.36, %if.else.29
  %38 = load i64*, i64** %next, align 8, !tbaa !1
  %39 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %cmp32 = icmp ult i64* %38, %39
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.31
  %40 = load i64*, i64** %next, align 8, !tbaa !1
  %41 = load i64, i64* %40, align 8, !tbaa !24
  %42 = load i64, i64* %test, align 8, !tbaa !24
  %cmp34 = icmp eq i64 %41, %42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.31
  %43 = phi i1 [ false, %while.cond.31 ], [ %cmp34, %land.rhs ]
  br i1 %43, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %land.end
  %44 = load i64*, i64** %next, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %incdec.ptr37, i64** %next, align 8, !tbaa !1
  br label %while.cond.31

while.end.38:                                     ; preds = %land.end
  %45 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %46 = load i8*, i8** %compr, align 8, !tbaa !1
  %cmp39 = icmp ugt i8* %45, %46
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.70

land.lhs.true.41:                                 ; preds = %while.end.38
  %47 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %47, i64 -1
  %48 = load i8, i8* %arrayidx42, align 1, !tbaa !25
  %conv43 = zext i8 %48 to i32
  %49 = load i64, i64* %test, align 8, !tbaa !24
  %conv44 = trunc i64 %49 to i8
  %conv45 = zext i8 %conv44 to i32
  %cmp46 = icmp eq i32 %conv43, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.70

if.then.48:                                       ; preds = %land.lhs.true.41
  %50 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %50, i64 -2
  %51 = load i8, i8* %arrayidx49, align 1, !tbaa !25
  %conv50 = zext i8 %51 to i32
  %52 = load i64, i64* %test, align 8, !tbaa !24
  %conv51 = trunc i64 %52 to i8
  %conv52 = zext i8 %conv51 to i32
  %cmp53 = icmp ne i32 %conv50, %conv52
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.then.48
  %53 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr56, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.69

if.else.57:                                       ; preds = %if.then.48
  %54 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %54, i64 -3
  %55 = load i8, i8* %arrayidx58, align 1, !tbaa !25
  %conv59 = zext i8 %55 to i32
  %56 = load i64, i64* %test, align 8, !tbaa !24
  %conv60 = trunc i64 %56 to i8
  %conv61 = zext i8 %conv60 to i32
  %cmp62 = icmp ne i32 %conv59, %conv61
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.57
  %57 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds i8, i8* %57, i64 -2
  store i8* %add.ptr65, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.68

if.else.66:                                       ; preds = %if.else.57
  %58 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i8, i8* %58, i64 -3
  store i8* %add.ptr67, i8** %end_dis, align 8, !tbaa !1
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.55
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.41, %while.end.38
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.27
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end.71
  %59 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %61 = load i8*, i8** %compr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv72 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv72, i32* %count, align 4, !tbaa !22
  %62 = load i32, i32* %count, align 4, !tbaa !22
  switch i32 %62, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.75
    i32 4, label %sw.bb.78
    i32 3, label %sw.bb.81
    i32 2, label %sw.bb.84
    i32 1, label %sw.bb.87
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.cond
  %63 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %63, i64 5
  %64 = load i8, i8* %arrayidx73, align 1, !tbaa !25
  %65 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %65, i64 6
  store i8 %64, i8* %arrayidx74, align 1, !tbaa !25
  br label %sw.bb.75

sw.bb.75:                                         ; preds = %for.cond, %sw.bb
  %66 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %66, i64 4
  %67 = load i8, i8* %arrayidx76, align 1, !tbaa !25
  %68 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %68, i64 5
  store i8 %67, i8* %arrayidx77, align 1, !tbaa !25
  br label %sw.bb.78

sw.bb.78:                                         ; preds = %for.cond, %sw.bb.75
  %69 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %69, i64 3
  %70 = load i8, i8* %arrayidx79, align 1, !tbaa !25
  %71 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %71, i64 4
  store i8 %70, i8* %arrayidx80, align 1, !tbaa !25
  br label %sw.bb.81

sw.bb.81:                                         ; preds = %for.cond, %sw.bb.78
  %72 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx82, align 1, !tbaa !25
  %74 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %74, i64 3
  store i8 %73, i8* %arrayidx83, align 1, !tbaa !25
  br label %sw.bb.84

sw.bb.84:                                         ; preds = %for.cond, %sw.bb.81
  %75 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx85, align 1, !tbaa !25
  %77 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %77, i64 2
  store i8 %76, i8* %arrayidx86, align 1, !tbaa !25
  br label %sw.bb.87

sw.bb.87:                                         ; preds = %for.cond, %sw.bb.84
  %78 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx88, align 1, !tbaa !25
  %80 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 %79, i8* %arrayidx89, align 1, !tbaa !25
  %81 = load i32, i32* %count, align 4, !tbaa !22
  %sub = sub i32 %81, 1
  %conv90 = trunc i32 %sub to i8
  %82 = load i8*, i8** %cptr, align 8, !tbaa !1
  store i8 %conv90, i8* %82, align 1, !tbaa !25
  %83 = load i32, i32* %count, align 4, !tbaa !22
  %add = add i32 %83, 1
  %84 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext = zext i32 %add to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  store i8* %add.ptr91, i8** %cptr, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %85 = load i32, i32* %count, align 4, !tbaa !22
  %cmp92 = icmp ugt i32 %85, 127
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %sw.default
  store i32 127, i32* %count, align 4, !tbaa !22
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %sw.default
  %86 = load i32, i32* %count, align 4, !tbaa !22
  %sub96 = sub i32 %86, 1
  %conv97 = trunc i32 %sub96 to i8
  %87 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr98, i8** %cptr, align 8, !tbaa !1
  store i8 %conv97, i8* %87, align 1, !tbaa !25
  %88 = load i8*, i8** %cptr, align 8, !tbaa !1
  %89 = load i8*, i8** %compr, align 8, !tbaa !1
  %90 = load i32, i32* %count, align 4, !tbaa !22
  %conv99 = zext i32 %90 to i64
  %call = call i8* @memcpy(i8* %88, i8* %89, i64 %conv99) #3
  %91 = load i32, i32* %count, align 4, !tbaa !22
  %92 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext100 = zext i32 %91 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %92, i64 %idx.ext100
  store i8* %add.ptr101, i8** %cptr, align 8, !tbaa !1
  %93 = load i32, i32* %count, align 4, !tbaa !22
  %94 = load i8*, i8** %compr, align 8, !tbaa !1
  %idx.ext102 = zext i32 %93 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %94, i64 %idx.ext102
  store i8* %add.ptr103, i8** %compr, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.87, %for.cond
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.95
  %95 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 9, label %for.cond
    i32 8, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %96 = bitcast i32* %count104 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load i64*, i64** %next, align 8, !tbaa !1
  %98 = bitcast i64* %97 to i8*
  %99 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %sub.ptr.lhs.cast105 = ptrtoint i8* %98 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %99 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %conv108 = trunc i64 %sub.ptr.sub107 to i32
  store i32 %conv108, i32* %count104, align 4, !tbaa !22
  br label %while.cond.109

while.cond.109:                                   ; preds = %cond.end, %for.end
  %100 = load i32, i32* %count104, align 4, !tbaa !22
  %cmp110 = icmp sgt i32 %100, 0
  br i1 %cmp110, label %while.body.112, label %while.end.121

while.body.112:                                   ; preds = %while.cond.109
  %101 = bitcast i32* %this to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = load i32, i32* %count104, align 4, !tbaa !22
  %cmp113 = icmp sgt i32 %102, 127
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.112
  br label %cond.end

cond.false:                                       ; preds = %while.body.112
  %103 = load i32, i32* %count104, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 127, %cond.true ], [ %103, %cond.false ]
  store i32 %cond, i32* %this, align 4, !tbaa !22
  %104 = load i32, i32* %this, align 4, !tbaa !22
  %sub115 = sub nsw i32 257, %104
  %conv116 = trunc i32 %sub115 to i8
  %105 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr117, i8** %cptr, align 8, !tbaa !1
  store i8 %conv116, i8* %105, align 1, !tbaa !25
  %106 = load i64, i64* %test, align 8, !tbaa !24
  %conv118 = trunc i64 %106 to i8
  %107 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr119, i8** %cptr, align 8, !tbaa !1
  store i8 %conv118, i8* %107, align 1, !tbaa !25
  %108 = load i32, i32* %this, align 4, !tbaa !22
  %109 = load i32, i32* %count104, align 4, !tbaa !22
  %sub120 = sub nsw i32 %109, %108
  store i32 %sub120, i32* %count104, align 4, !tbaa !22
  %110 = bitcast i32* %this to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  br label %while.cond.109

while.end.121:                                    ; preds = %while.cond.109
  %111 = load i64*, i64** %next, align 8, !tbaa !1
  store i64* %111, i64** %exam, align 8, !tbaa !1
  %112 = bitcast i32* %count104 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i64* %test to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i64** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  br label %while.cond

while.end.122:                                    ; preds = %while.cond
  %117 = load i8*, i8** %cptr, align 8, !tbaa !1
  %118 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast123 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast124 = ptrtoint i8* %118 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %conv126 = trunc i64 %sub.ptr.sub125 to i32
  store i32 1, i32* %cleanup.dest.slot
  %119 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i64** %exam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  ret i32 %conv126

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_mode2compress(i64* %row, i64* %end_row, i8* %compressed) #0 {
entry:
  %row.addr = alloca i64*, align 8
  %end_row.addr = alloca i64*, align 8
  %compressed.addr = alloca i8*, align 8
  store i64* %row, i64** %row.addr, align 8, !tbaa !1
  store i64* %end_row, i64** %end_row.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %row.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %end_row.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_mode2compress_padded(i64* %0, i64* %1, i8* %2, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_mode3compress(i32 %bytecount, i8* %current, i8* %previous, i8* %compressed) #0 {
entry:
  %bytecount.addr = alloca i32, align 4
  %current.addr = alloca i8*, align 8
  %previous.addr = alloca i8*, align 8
  %compressed.addr = alloca i8*, align 8
  %cur = alloca i8*, align 8
  %prev = alloca i8*, align 8
  %out = alloca i8*, align 8
  %end = alloca i8*, align 8
  %run = alloca i8*, align 8
  %diff = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %offset = alloca i32, align 4
  %cbyte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !22
  store i8* %current, i8** %current.addr, align 8, !tbaa !1
  store i8* %previous, i8** %previous.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %current.addr, align 8, !tbaa !1
  store i8* %1, i8** %cur, align 8, !tbaa !1
  %2 = bitcast i8** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %previous.addr, align 8, !tbaa !1
  store i8* %3, i8** %prev, align 8, !tbaa !1
  %4 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %5, i8** %out, align 8, !tbaa !1
  %6 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %current.addr, align 8, !tbaa !1
  %8 = load i32, i32* %bytecount.addr, align 4, !tbaa !22
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %9 = load i8*, i8** %cur, align 8, !tbaa !1
  %10 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end.61

while.body:                                       ; preds = %while.cond
  %11 = bitcast i8** %run to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %cur, align 8, !tbaa !1
  store i8* %12, i8** %run, align 8, !tbaa !1
  %13 = bitcast i8** %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %cbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.6, %while.body
  %17 = load i8*, i8** %cur, align 8, !tbaa !1
  %18 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %17, %18
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %19 = load i8*, i8** %cur, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !25
  %conv = zext i8 %20 to i32
  %21 = load i8*, i8** %prev, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !25
  %conv3 = zext i8 %22 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %23 = phi i1 [ false, %while.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %23, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  %24 = load i8*, i8** %cur, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8, !tbaa !1
  %25 = load i8*, i8** %prev, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr7, i8** %prev, align 8, !tbaa !1
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %26 = load i8*, i8** %cur, align 8, !tbaa !1
  %27 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %26, %27
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %28 = load i8*, i8** %cur, align 8, !tbaa !1
  store i8* %28, i8** %diff, align 8, !tbaa !1
  %29 = load i8*, i8** %end, align 8, !tbaa !1
  %30 = load i8*, i8** %cur, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp sgt i64 %sub.ptr.sub, 8
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %31 = load i8*, i8** %cur, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %32 = load i8*, i8** %end, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr12, %cond.true ], [ %32, %cond.false ]
  store i8* %cond, i8** %stop, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end.22, %cond.end
  %33 = load i8*, i8** %cur, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr13, i8** %cur, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !25
  %35 = load i8*, i8** %prev, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr14, i8** %prev, align 8, !tbaa !1
  store i8 %34, i8* %35, align 1, !tbaa !25
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %36 = load i8*, i8** %cur, align 8, !tbaa !1
  %37 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp15 = icmp ult i8* %36, %37
  br i1 %cmp15, label %land.rhs.17, label %land.end.22

land.rhs.17:                                      ; preds = %do.cond
  %38 = load i8*, i8** %cur, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !25
  %conv18 = zext i8 %39 to i32
  %40 = load i8*, i8** %prev, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !25
  %conv19 = zext i8 %41 to i32
  %cmp20 = icmp ne i32 %conv18, %conv19
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.17, %do.cond
  %42 = phi i1 [ false, %do.cond ], [ %cmp20, %land.rhs.17 ]
  br i1 %42, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.22
  %43 = load i8*, i8** %diff, align 8, !tbaa !1
  %44 = load i8*, i8** %run, align 8, !tbaa !1
  %sub.ptr.lhs.cast23 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %44 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %conv26 = trunc i64 %sub.ptr.sub25 to i32
  store i32 %conv26, i32* %offset, align 4, !tbaa !22
  %45 = load i8*, i8** %cur, align 8, !tbaa !1
  %46 = load i8*, i8** %diff, align 8, !tbaa !1
  %sub.ptr.lhs.cast27 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %46 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub = sub nsw i64 %sub.ptr.sub29, 1
  %shl = shl i64 %sub, 5
  %conv30 = trunc i64 %shl to i32
  store i32 %conv30, i32* %cbyte, align 4, !tbaa !22
  %47 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp31 = icmp slt i32 %47, 31
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %do.end
  %48 = load i32, i32* %cbyte, align 4, !tbaa !22
  %49 = load i32, i32* %offset, align 4, !tbaa !22
  %add = add nsw i32 %48, %49
  %conv34 = trunc i32 %add to i8
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr35, i8** %out, align 8, !tbaa !1
  store i8 %conv34, i8* %50, align 1, !tbaa !25
  br label %if.end.49

if.else:                                          ; preds = %do.end
  %51 = load i32, i32* %cbyte, align 4, !tbaa !22
  %add36 = add nsw i32 %51, 31
  %conv37 = trunc i32 %add36 to i8
  %52 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr38, i8** %out, align 8, !tbaa !1
  store i8 %conv37, i8* %52, align 1, !tbaa !25
  %53 = load i32, i32* %offset, align 4, !tbaa !22
  %sub39 = sub nsw i32 %53, 31
  store i32 %sub39, i32* %offset, align 4, !tbaa !22
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %if.else
  %54 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp41 = icmp sge i32 %54, 255
  br i1 %cmp41, label %while.body.43, label %while.end.46

while.body.43:                                    ; preds = %while.cond.40
  %55 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr44, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %55, align 1, !tbaa !25
  %56 = load i32, i32* %offset, align 4, !tbaa !22
  %sub45 = sub nsw i32 %56, 255
  store i32 %sub45, i32* %offset, align 4, !tbaa !22
  br label %while.cond.40

while.end.46:                                     ; preds = %while.cond.40
  %57 = load i32, i32* %offset, align 4, !tbaa !22
  %conv47 = trunc i32 %57 to i8
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr48, i8** %out, align 8, !tbaa !1
  store i8 %conv47, i8* %58, align 1, !tbaa !25
  br label %if.end.49

if.end.49:                                        ; preds = %while.end.46, %if.then.33
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.53, %if.end.49
  %59 = load i8*, i8** %diff, align 8, !tbaa !1
  %60 = load i8*, i8** %cur, align 8, !tbaa !1
  %cmp51 = icmp ult i8* %59, %60
  br i1 %cmp51, label %while.body.53, label %while.end.56

while.body.53:                                    ; preds = %while.cond.50
  %61 = load i8*, i8** %diff, align 8, !tbaa !1
  %incdec.ptr54 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr54, i8** %diff, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !25
  %63 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr55, i8** %out, align 8, !tbaa !1
  store i8 %62, i8* %63, align 1, !tbaa !25
  br label %while.cond.50

while.end.56:                                     ; preds = %while.cond.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.56, %if.then
  %64 = bitcast i32* %cbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i8** %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %run to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.61
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.61:                                     ; preds = %cleanup, %while.cond
  %69 = load i8*, i8** %out, align 8, !tbaa !1
  %70 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast62 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %70 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %conv65 = trunc i64 %sub.ptr.sub64 to i32
  store i32 1, i32* %cleanup.dest.slot
  %71 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret i32 %conv65

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pcl_mode9compress(i32 %bytecount, i8* %current, i8* %previous, i8* %compressed) #0 {
entry:
  %bytecount.addr = alloca i32, align 4
  %current.addr = alloca i8*, align 8
  %previous.addr = alloca i8*, align 8
  %compressed.addr = alloca i8*, align 8
  %cur = alloca i8*, align 8
  %prev = alloca i8*, align 8
  %out = alloca i8*, align 8
  %end = alloca i8*, align 8
  %run = alloca i8*, align 8
  %diff = alloca i8*, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %stop_test = alloca i8*, align 8
  %dissimilar = alloca i32, align 4
  %similar = alloca i32, align 4
  %compr = alloca i8*, align 8
  %next = alloca i8*, align 8
  %value = alloca i8, align 1
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %temp122 = alloca i32, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4, !tbaa !22
  store i8* %current, i8** %current.addr, align 8, !tbaa !1
  store i8* %previous, i8** %previous.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %current.addr, align 8, !tbaa !1
  store i8* %1, i8** %cur, align 8, !tbaa !1
  %2 = bitcast i8** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %previous.addr, align 8, !tbaa !1
  store i8* %3, i8** %prev, align 8, !tbaa !1
  %4 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %5, i8** %out, align 8, !tbaa !1
  %6 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %current.addr, align 8, !tbaa !1
  %8 = load i32, i32* %bytecount.addr, align 4, !tbaa !22
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %9 = load i8*, i8** %cur, align 8, !tbaa !1
  %10 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end.174

while.body:                                       ; preds = %while.cond
  %11 = bitcast i8** %run to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %cur, align 8, !tbaa !1
  store i8* %12, i8** %run, align 8, !tbaa !1
  %13 = bitcast i8** %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.6, %while.body
  %15 = load i8*, i8** %cur, align 8, !tbaa !1
  %16 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %15, %16
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %17 = load i8*, i8** %cur, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !25
  %conv = zext i8 %18 to i32
  %19 = load i8*, i8** %prev, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !25
  %conv3 = zext i8 %20 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %21 = phi i1 [ false, %while.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %21, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  %22 = load i8*, i8** %cur, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8, !tbaa !1
  %23 = load i8*, i8** %prev, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr7, i8** %prev, align 8, !tbaa !1
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %cur, align 8, !tbaa !1
  %25 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %24, %25
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %26 = load i8*, i8** %cur, align 8, !tbaa !1
  store i8* %26, i8** %diff, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end.19, %if.end
  %27 = load i8*, i8** %prev, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr10, i8** %prev, align 8, !tbaa !1
  %28 = load i8*, i8** %cur, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr11, i8** %cur, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %29 = load i8*, i8** %cur, align 8, !tbaa !1
  %30 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp12 = icmp ult i8* %29, %30
  br i1 %cmp12, label %land.rhs.14, label %land.end.19

land.rhs.14:                                      ; preds = %do.cond
  %31 = load i8*, i8** %cur, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !25
  %conv15 = zext i8 %32 to i32
  %33 = load i8*, i8** %prev, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !25
  %conv16 = zext i8 %34 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.14, %do.cond
  %35 = phi i1 [ false, %do.cond ], [ %cmp17, %land.rhs.14 ]
  br i1 %35, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.19
  %36 = load i8*, i8** %diff, align 8, !tbaa !1
  %37 = load i8*, i8** %run, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv20, i32* %offset, align 4, !tbaa !22
  %38 = bitcast i8** %stop_test to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i8*, i8** %cur, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %39, i64 -4
  store i8* %add.ptr21, i8** %stop_test, align 8, !tbaa !1
  %40 = bitcast i32* %dissimilar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %similar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.170, %do.end
  %42 = load i8*, i8** %diff, align 8, !tbaa !1
  %43 = load i8*, i8** %cur, align 8, !tbaa !1
  %cmp23 = icmp ult i8* %42, %43
  br i1 %cmp23, label %while.body.25, label %while.end.171

while.body.25:                                    ; preds = %while.cond.22
  %44 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %diff, align 8, !tbaa !1
  store i8* %45, i8** %compr, align 8, !tbaa !1
  %46 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  store i8 0, i8* %value, align 1, !tbaa !25
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.45, %while.body.25
  %47 = load i8*, i8** %diff, align 8, !tbaa !1
  %48 = load i8*, i8** %stop_test, align 8, !tbaa !1
  %cmp27 = icmp ule i8* %47, %48
  br i1 %cmp27, label %land.rhs.29, label %land.end.44

land.rhs.29:                                      ; preds = %while.cond.26
  %49 = load i8*, i8** %diff, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !25
  store i8 %50, i8* %value, align 1, !tbaa !25
  %conv30 = zext i8 %50 to i32
  %51 = load i8*, i8** %diff, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv31 = zext i8 %52 to i32
  %cmp32 = icmp ne i32 %conv30, %conv31
  br i1 %cmp32, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs.29
  %53 = load i8, i8* %value, align 1, !tbaa !25
  %conv34 = zext i8 %53 to i32
  %54 = load i8*, i8** %diff, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx35, align 1, !tbaa !25
  %conv36 = zext i8 %55 to i32
  %cmp37 = icmp ne i32 %conv34, %conv36
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %56 = load i8, i8* %value, align 1, !tbaa !25
  %conv39 = zext i8 %56 to i32
  %57 = load i8*, i8** %diff, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %57, i64 3
  %58 = load i8, i8* %arrayidx40, align 1, !tbaa !25
  %conv41 = zext i8 %58 to i32
  %cmp42 = icmp ne i32 %conv39, %conv41
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs.29
  %59 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs.29 ], [ %cmp42, %lor.rhs ]
  br label %land.end.44

land.end.44:                                      ; preds = %lor.end, %while.cond.26
  %60 = phi i1 [ false, %while.cond.26 ], [ %59, %lor.end ]
  br i1 %60, label %while.body.45, label %while.end.47

while.body.45:                                    ; preds = %land.end.44
  %61 = load i8*, i8** %diff, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr46, i8** %diff, align 8, !tbaa !1
  br label %while.cond.26

while.end.47:                                     ; preds = %land.end.44
  %62 = load i8*, i8** %diff, align 8, !tbaa !1
  %63 = load i8*, i8** %stop_test, align 8, !tbaa !1
  %cmp48 = icmp ugt i8* %62, %63
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %while.end.47
  %64 = load i8*, i8** %cur, align 8, !tbaa !1
  store i8* %64, i8** %diff, align 8, !tbaa !1
  store i8* %64, i8** %next, align 8, !tbaa !1
  br label %if.end.64

if.else:                                          ; preds = %while.end.47
  %65 = load i8*, i8** %diff, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr51, i8** %next, align 8, !tbaa !1
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.61, %if.else
  %66 = load i8*, i8** %next, align 8, !tbaa !1
  %67 = load i8*, i8** %cur, align 8, !tbaa !1
  %cmp53 = icmp ult i8* %66, %67
  br i1 %cmp53, label %land.rhs.55, label %land.end.60

land.rhs.55:                                      ; preds = %while.cond.52
  %68 = load i8*, i8** %next, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !25
  %conv56 = zext i8 %69 to i32
  %70 = load i8, i8* %value, align 1, !tbaa !25
  %conv57 = zext i8 %70 to i32
  %cmp58 = icmp eq i32 %conv56, %conv57
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.55, %while.cond.52
  %71 = phi i1 [ false, %while.cond.52 ], [ %cmp58, %land.rhs.55 ]
  br i1 %71, label %while.body.61, label %while.end.63

while.body.61:                                    ; preds = %land.end.60
  %72 = load i8*, i8** %next, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr62, i8** %next, align 8, !tbaa !1
  br label %while.cond.52

while.end.63:                                     ; preds = %land.end.60
  br label %if.end.64

if.end.64:                                        ; preds = %while.end.63, %if.then.50
  %73 = load i8*, i8** %diff, align 8, !tbaa !1
  %74 = load i8*, i8** %compr, align 8, !tbaa !1
  %sub.ptr.lhs.cast65 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %74 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  store i32 %conv68, i32* %dissimilar, align 4, !tbaa !22
  %tobool = icmp ne i32 %conv68, 0
  br i1 %tobool, label %if.then.69, label %if.end.115

if.then.69:                                       ; preds = %if.end.64
  %75 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32, i32* %dissimilar, align 4, !tbaa !22
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %dissimilar, align 4, !tbaa !22
  store i32 %dec, i32* %temp, align 4, !tbaa !22
  %cmp70 = icmp sgt i32 %dec, 7
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.69
  store i32 7, i32* %temp, align 4, !tbaa !22
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.then.69
  %78 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp74 = icmp slt i32 %78, 15
  br i1 %cmp74, label %if.then.76, label %if.else.81

if.then.76:                                       ; preds = %if.end.73
  %79 = load i32, i32* %offset, align 4, !tbaa !22
  %shl = shl i32 %79, 3
  %80 = load i32, i32* %temp, align 4, !tbaa !22
  %conv77 = trunc i32 %80 to i8
  %conv78 = zext i8 %conv77 to i32
  %or = or i32 %shl, %conv78
  %conv79 = trunc i32 %or to i8
  %81 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr80, i8** %out, align 8, !tbaa !1
  store i8 %conv79, i8* %81, align 1, !tbaa !25
  br label %if.end.96

if.else.81:                                       ; preds = %if.end.73
  %82 = load i32, i32* %temp, align 4, !tbaa !22
  %conv82 = trunc i32 %82 to i8
  %conv83 = zext i8 %conv82 to i32
  %or84 = or i32 120, %conv83
  %conv85 = trunc i32 %or84 to i8
  %83 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr86, i8** %out, align 8, !tbaa !1
  store i8 %conv85, i8* %83, align 1, !tbaa !25
  %84 = load i32, i32* %offset, align 4, !tbaa !22
  %sub = sub nsw i32 %84, 15
  store i32 %sub, i32* %offset, align 4, !tbaa !22
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %if.else.81
  %85 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp88 = icmp sge i32 %85, 255
  br i1 %cmp88, label %while.body.90, label %while.end.93

while.body.90:                                    ; preds = %while.cond.87
  %86 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr91 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr91, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %86, align 1, !tbaa !25
  %87 = load i32, i32* %offset, align 4, !tbaa !22
  %sub92 = sub nsw i32 %87, 255
  store i32 %sub92, i32* %offset, align 4, !tbaa !22
  br label %while.cond.87

while.end.93:                                     ; preds = %while.cond.87
  %88 = load i32, i32* %offset, align 4, !tbaa !22
  %conv94 = trunc i32 %88 to i8
  %89 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr95, i8** %out, align 8, !tbaa !1
  store i8 %conv94, i8* %89, align 1, !tbaa !25
  br label %if.end.96

if.end.96:                                        ; preds = %while.end.93, %if.then.76
  %90 = load i32, i32* %temp, align 4, !tbaa !22
  %cmp97 = icmp eq i32 %90, 7
  br i1 %cmp97, label %if.then.99, label %if.end.110

if.then.99:                                       ; preds = %if.end.96
  %91 = load i32, i32* %dissimilar, align 4, !tbaa !22
  %sub100 = sub nsw i32 %91, 7
  store i32 %sub100, i32* %temp, align 4, !tbaa !22
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.104, %if.then.99
  %92 = load i32, i32* %temp, align 4, !tbaa !22
  %cmp102 = icmp sge i32 %92, 255
  br i1 %cmp102, label %while.body.104, label %while.end.107

while.body.104:                                   ; preds = %while.cond.101
  %93 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr105, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %93, align 1, !tbaa !25
  %94 = load i32, i32* %temp, align 4, !tbaa !22
  %sub106 = sub nsw i32 %94, 255
  store i32 %sub106, i32* %temp, align 4, !tbaa !22
  br label %while.cond.101

while.end.107:                                    ; preds = %while.cond.101
  %95 = load i32, i32* %temp, align 4, !tbaa !22
  %conv108 = trunc i32 %95 to i8
  %96 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr109, i8** %out, align 8, !tbaa !1
  store i8 %conv108, i8* %96, align 1, !tbaa !25
  br label %if.end.110

if.end.110:                                       ; preds = %while.end.107, %if.end.96
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.110
  %97 = load i32, i32* %i, align 4, !tbaa !22
  %98 = load i32, i32* %dissimilar, align 4, !tbaa !22
  %cmp111 = icmp sle i32 %97, %98
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load i8*, i8** %compr, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr113, i8** %compr, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !25
  %101 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr114, i8** %out, align 8, !tbaa !1
  store i8 %100, i8* %101, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %offset, align 4, !tbaa !22
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  br label %if.end.115

if.end.115:                                       ; preds = %for.end, %if.end.64
  %105 = load i8*, i8** %next, align 8, !tbaa !1
  %106 = load i8*, i8** %diff, align 8, !tbaa !1
  %sub.ptr.lhs.cast116 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %106 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %conv119 = trunc i64 %sub.ptr.sub118 to i32
  store i32 %conv119, i32* %similar, align 4, !tbaa !22
  %tobool120 = icmp ne i32 %conv119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.170

if.then.121:                                      ; preds = %if.end.115
  %107 = bitcast i32* %temp122 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load i32, i32* %similar, align 4, !tbaa !22
  %sub123 = sub nsw i32 %108, 2
  store i32 %sub123, i32* %similar, align 4, !tbaa !22
  store i32 %sub123, i32* %temp122, align 4, !tbaa !22
  %cmp124 = icmp sgt i32 %sub123, 31
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.121
  store i32 31, i32* %temp122, align 4, !tbaa !22
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.then.121
  %109 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp128 = icmp slt i32 %109, 3
  br i1 %cmp128, label %if.then.130, label %if.else.138

if.then.130:                                      ; preds = %if.end.127
  %110 = load i32, i32* %offset, align 4, !tbaa !22
  %shl131 = shl i32 %110, 5
  %or132 = or i32 128, %shl131
  %111 = load i32, i32* %temp122, align 4, !tbaa !22
  %conv133 = trunc i32 %111 to i8
  %conv134 = zext i8 %conv133 to i32
  %or135 = or i32 %or132, %conv134
  %conv136 = trunc i32 %or135 to i8
  %112 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr137 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr137, i8** %out, align 8, !tbaa !1
  store i8 %conv136, i8* %112, align 1, !tbaa !25
  br label %if.end.154

if.else.138:                                      ; preds = %if.end.127
  %113 = load i32, i32* %temp122, align 4, !tbaa !22
  %conv139 = trunc i32 %113 to i8
  %conv140 = zext i8 %conv139 to i32
  %or141 = or i32 224, %conv140
  %conv142 = trunc i32 %or141 to i8
  %114 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr143 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr143, i8** %out, align 8, !tbaa !1
  store i8 %conv142, i8* %114, align 1, !tbaa !25
  %115 = load i32, i32* %offset, align 4, !tbaa !22
  %sub144 = sub nsw i32 %115, 3
  store i32 %sub144, i32* %offset, align 4, !tbaa !22
  br label %while.cond.145

while.cond.145:                                   ; preds = %while.body.148, %if.else.138
  %116 = load i32, i32* %offset, align 4, !tbaa !22
  %cmp146 = icmp sge i32 %116, 255
  br i1 %cmp146, label %while.body.148, label %while.end.151

while.body.148:                                   ; preds = %while.cond.145
  %117 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr149, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %117, align 1, !tbaa !25
  %118 = load i32, i32* %offset, align 4, !tbaa !22
  %sub150 = sub nsw i32 %118, 255
  store i32 %sub150, i32* %offset, align 4, !tbaa !22
  br label %while.cond.145

while.end.151:                                    ; preds = %while.cond.145
  %119 = load i32, i32* %offset, align 4, !tbaa !22
  %conv152 = trunc i32 %119 to i8
  %120 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr153, i8** %out, align 8, !tbaa !1
  store i8 %conv152, i8* %120, align 1, !tbaa !25
  br label %if.end.154

if.end.154:                                       ; preds = %while.end.151, %if.then.130
  %121 = load i32, i32* %temp122, align 4, !tbaa !22
  %cmp155 = icmp eq i32 %121, 31
  br i1 %cmp155, label %if.then.157, label %if.end.168

if.then.157:                                      ; preds = %if.end.154
  %122 = load i32, i32* %similar, align 4, !tbaa !22
  %sub158 = sub nsw i32 %122, 31
  store i32 %sub158, i32* %temp122, align 4, !tbaa !22
  br label %while.cond.159

while.cond.159:                                   ; preds = %while.body.162, %if.then.157
  %123 = load i32, i32* %temp122, align 4, !tbaa !22
  %cmp160 = icmp sge i32 %123, 255
  br i1 %cmp160, label %while.body.162, label %while.end.165

while.body.162:                                   ; preds = %while.cond.159
  %124 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr163, i8** %out, align 8, !tbaa !1
  store i8 -1, i8* %124, align 1, !tbaa !25
  %125 = load i32, i32* %temp122, align 4, !tbaa !22
  %sub164 = sub nsw i32 %125, 255
  store i32 %sub164, i32* %temp122, align 4, !tbaa !22
  br label %while.cond.159

while.end.165:                                    ; preds = %while.cond.159
  %126 = load i32, i32* %temp122, align 4, !tbaa !22
  %conv166 = trunc i32 %126 to i8
  %127 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr167 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr167, i8** %out, align 8, !tbaa !1
  store i8 %conv166, i8* %127, align 1, !tbaa !25
  br label %if.end.168

if.end.168:                                       ; preds = %while.end.165, %if.end.154
  %128 = load i8, i8* %value, align 1, !tbaa !25
  %129 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr169, i8** %out, align 8, !tbaa !1
  store i8 %128, i8* %129, align 1, !tbaa !25
  store i32 0, i32* %offset, align 4, !tbaa !22
  %130 = bitcast i32* %temp122 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.168, %if.end.115
  %131 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %131, i8** %diff, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  %132 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %while.cond.22

while.end.171:                                    ; preds = %while.cond.22
  %134 = bitcast i32* %similar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %dissimilar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i8** %stop_test to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.171, %if.then
  %137 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i8** %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %run to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.174
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.174:                                    ; preds = %cleanup, %while.cond
  %140 = load i8*, i8** %out, align 8, !tbaa !1
  %141 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast175 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast176 = ptrtoint i8* %141 to i64
  %sub.ptr.sub177 = sub i64 %sub.ptr.lhs.cast175, %sub.ptr.rhs.cast176
  %conv178 = trunc i64 %sub.ptr.sub177 to i32
  store i32 1, i32* %cleanup.dest.slot
  %142 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i8** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i8** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  ret i32 %conv178

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

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
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !3, i64 0}
!21 = !{!6, !7, i64 836}
!22 = !{!7, !7, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!3, !3, i64 0}
