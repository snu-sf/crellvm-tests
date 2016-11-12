; ModuleID = './gdevop4w.bc'
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

@prn_hp_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @oki4w_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @oki4w_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"oki4w\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_oki4w_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_hp_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @oki4w_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@oki4w_open.m_a4 = internal constant [4 x float] [float 1.250000e-01, float 2.500000e-01, float 1.250000e-01, float 0x3FB1EB8520000000], align 16
@oki4w_open.m_letter = internal constant [4 x float] [float 1.250000e-01, float 2.500000e-01, float 1.250000e-01, float 0x3FB1EB8520000000], align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"oki4w_print_page\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\1B%%-98765X\1C\14\03Ai\10\1C\14\05Ae%cf%c\1C\14\09Ba%cb\02c\01e%c\1C\7F9\1B&B\1B&A\07%c\01%c\01%c%c%c%c\1B$A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\1B*B%c%c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\1B*A%c%c%c\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\1B$B\1B\7F%c\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @oki4w_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %line_size_words = alloca i32, align 4
  %storage_size_words = alloca i32, align 4
  %storage = alloca i64*, align 8
  %data_words = alloca i64*, align 8
  %out_row_words = alloca i64*, align 8
  %out_row_alt_words = alloca i64*, align 8
  %prev_row_words = alloca i64*, align 8
  %out_data = alloca i8*, align 8
  %x_dpi = alloca i32, align 4
  %y_dpi = alloca i32, align 4
  %y_dots_per_pixel = alloca i32, align 4
  %dpi_code = alloca i32, align 4
  %compress_code = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %out_count = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lnum = alloca i32, align 4
  %num_blank_lines = alloca i32, align 4
  %rmask = alloca i64, align 8
  %end_data = alloca i64*, align 8
  %i = alloca i32, align 4
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
  %5 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %line_size_words, align 4, !tbaa !5
  %7 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul = mul nsw i32 %8, 8
  store i32 %mul, i32* %storage_size_words, align 4, !tbaa !5
  %9 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %14 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !23
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %19 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %call6 = call i8* %14(%struct.gs_memory_s* %18, i32 %19, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %20 = bitcast i8* %call6 to i64*
  store i64* %20, i64** %storage, align 8, !tbaa !1
  %21 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = bitcast i64** %out_row_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i64** %out_row_alt_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i64** %prev_row_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !27
  %conv7 = fptosi float %28 to i32
  store i32 %conv7, i32* %x_dpi, align 4, !tbaa !5
  %29 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 1
  %31 = load float, float* %arrayidx9, align 4, !tbaa !27
  %conv10 = fptosi float %31 to i32
  store i32 %conv10, i32* %y_dpi, align 4, !tbaa !5
  %32 = bitcast i32* %y_dots_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %34 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %div11 = sdiv i32 %33, %34
  store i32 %div11, i32* %y_dots_per_pixel, align 4, !tbaa !5
  %35 = bitcast i32* %dpi_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = bitcast i32* %compress_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gx_device_printer_s* %38 to %struct.gx_device_s*
  %call12 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %39) #4
  store i32 %call12, i32* %num_rows, align 4, !tbaa !5
  %40 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_s*
  %call13 = call i32 @oki_paper_size(%struct.gx_device_s* %43) #4
  store i32 %call13, i32* %paper_size, align 4, !tbaa !5
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %45 = load i64*, i64** %storage, align 8, !tbaa !1
  %cmp = icmp eq i64* %45, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end:                                           ; preds = %entry
  %46 = load i64*, i64** %storage, align 8, !tbaa !1
  store i64* %46, i64** %data_words, align 8, !tbaa !1
  %47 = load i64*, i64** %data_words, align 8, !tbaa !1
  %48 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul15 = mul nsw i32 %48, 2
  %idx.ext = sext i32 %mul15 to i64
  %add.ptr = getelementptr inbounds i64, i64* %47, i64 %idx.ext
  store i64* %add.ptr, i64** %out_row_words, align 8, !tbaa !1
  %49 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %50 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul16 = mul nsw i32 %50, 2
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i64, i64* %49, i64 %idx.ext17
  store i64* %add.ptr18, i64** %out_row_alt_words, align 8, !tbaa !1
  %51 = load i64*, i64** %out_row_alt_words, align 8, !tbaa !1
  %52 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul19 = mul nsw i32 %52, 2
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i64, i64* %51, i64 %idx.ext20
  store i64* %add.ptr21, i64** %prev_row_words, align 8, !tbaa !1
  %53 = load i64*, i64** %data_words, align 8, !tbaa !1
  %54 = bitcast i64* %53 to i8*
  %55 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %conv22 = zext i32 %55 to i64
  %mul23 = mul i64 %conv22, 8
  %call24 = call i8* @memset(i8* %54, i32 0, i64 %mul23) #5
  %56 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %57 = bitcast i64* %56 to i8*
  store i8* %57, i8** %out_data, align 8, !tbaa !1
  %58 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %58, 150
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  store i32 3, i32* %dpi_code, align 4, !tbaa !5
  store i32 2, i32* %compress_code, align 4, !tbaa !5
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %59 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %59, 300
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else
  store i32 5, i32* %dpi_code, align 4, !tbaa !5
  store i32 2, i32* %compress_code, align 4, !tbaa !5
  br label %if.end.32

if.else.31:                                       ; preds = %if.else
  store i32 7, i32* %dpi_code, align 4, !tbaa !5
  store i32 2, i32* %compress_code, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.27
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %61 = load i32, i32* %dpi_code, align 4, !tbaa !5
  %62 = load i32, i32* %dpi_code, align 4, !tbaa !5
  %63 = load i32, i32* %paper_size, align 4, !tbaa !5
  %64 = load i32, i32* %dpi_code, align 4, !tbaa !5
  %65 = load i32, i32* %dpi_code, align 4, !tbaa !5
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0), i32 %61, i32 %62, i32 0, i32 0, i32 0, i32 %63, i32 0, i32 %64, i32 %65, i32 0) #4
  %66 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %68 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #2
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 13
  %70 = load i32, i32* %width, align 4, !tbaa !29
  %sub35 = sub nsw i32 0, %70
  %conv36 = sext i32 %sub35 to i64
  %and = and i64 %conv36, 63
  %shl = shl i64 -1, %and
  store i64 %shl, i64* %rmask, align 8, !tbaa !30
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end.33
  %71 = load i32, i32* %lnum, align 4, !tbaa !5
  %72 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %71, %72
  br i1 %cmp37, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %73 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #2
  %74 = load i64*, i64** %data_words, align 8, !tbaa !1
  %75 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %idx.ext39 = sext i32 %75 to i64
  %add.ptr40 = getelementptr inbounds i64, i64* %74, i64 %idx.ext39
  store i64* %add.ptr40, i64** %end_data, align 8, !tbaa !1
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = load i32, i32* %lnum, align 4, !tbaa !5
  %79 = load i64*, i64** %data_words, align 8, !tbaa !1
  %80 = bitcast i64* %79 to i8*
  %81 = load i32, i32* %line_size, align 4, !tbaa !5
  %call41 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %77, i32 %78, i8* %80, i32 %81) #4
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %82, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %for.body
  %83 = load i64, i64* %rmask, align 8, !tbaa !30
  %84 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i64, i64* %84, i64 -1
  %85 = load i64, i64* %arrayidx46, align 8, !tbaa !30
  %and47 = and i64 %85, %83
  store i64 %and47, i64* %arrayidx46, align 8, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.45
  %86 = load i64*, i64** %end_data, align 8, !tbaa !1
  %87 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp48 = icmp ugt i64* %86, %87
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %88 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i64, i64* %88, i64 -1
  %89 = load i64, i64* %arrayidx50, align 8, !tbaa !30
  %cmp51 = icmp eq i64 %89, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %90 = phi i1 [ false, %while.cond ], [ %cmp51, %land.rhs ]
  br i1 %90, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %91 = load i64*, i64** %end_data, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %91, i32 -1
  store i64* %incdec.ptr, i64** %end_data, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %92 = load i64*, i64** %end_data, align 8, !tbaa !1
  %93 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp53 = icmp eq i64* %92, %93
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.end
  %94 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %num_blank_lines, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %while.end
  %95 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %96 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %95, %96
  br i1 %cmp57, label %if.then.59, label %if.else.66

if.then.59:                                       ; preds = %if.end.56
  %97 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %97, 0
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.then.59
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %99 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %and63 = and i32 %99, 255
  %100 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %shr = ashr i32 %100, 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %and63, i32 %shr) #4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.74

if.else.66:                                       ; preds = %if.end.56
  %101 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %101, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.else.66
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %103 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %and70 = and i32 %103, 255
  %104 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %shr71 = ashr i32 %104, 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %and70, i32 %shr71) #4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.else.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.65
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %105 = load i32, i32* %compress_code, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %105, 6
  br i1 %cmp75, label %if.then.77, label %if.else.81

if.then.77:                                       ; preds = %if.end.74
  %106 = load i64*, i64** %data_words, align 8, !tbaa !1
  %107 = bitcast i64* %106 to i8*
  %108 = load i8*, i8** %out_data, align 8, !tbaa !1
  %109 = load i64*, i64** %end_data, align 8, !tbaa !1
  %110 = load i64*, i64** %data_words, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i64* %109 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %110 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul78 = mul i64 %sub.ptr.div, 8
  %conv79 = trunc i64 %mul78 to i32
  %call80 = call i32 @oki_compress(i8* %107, i8* %108, i32 %conv79) #4
  store i32 %call80, i32* %out_count, align 4, !tbaa !5
  br label %if.end.83

if.else.81:                                       ; preds = %if.end.74
  %111 = load i64*, i64** %data_words, align 8, !tbaa !1
  %112 = load i64*, i64** %end_data, align 8, !tbaa !1
  %113 = load i8*, i8** %out_data, align 8, !tbaa !1
  %call82 = call i32 @gdev_pcl_mode2compress(i64* %111, i64* %112, i8* %113) #4
  store i32 %call82, i32* %out_count, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.77
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc, %if.end.83
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %115 = load i32, i32* %y_dots_per_pixel, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %114, %115
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.84
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %117 = load i32, i32* %compress_code, align 4, !tbaa !5
  %118 = load i32, i32* %out_count, align 4, !tbaa !5
  %and88 = and i32 %118, 255
  %119 = load i32, i32* %out_count, align 4, !tbaa !5
  %shr89 = ashr i32 %119, 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %117, i32 %and88, i32 %shr89) #4
  %120 = load i8*, i8** %out_data, align 8, !tbaa !1
  %121 = load i32, i32* %out_count, align 4, !tbaa !5
  %conv91 = sext i32 %121 to i64
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call92 = call i64 @fwrite(i8* %120, i64 1, i64 %conv91, %struct._IO_FILE* %122) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.87
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %123, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !5
  br label %for.cond.84

for.end:                                          ; preds = %for.cond.84
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.55, %if.then.44
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.97
    i32 4, label %for.inc.95
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.95

for.inc.95:                                       ; preds = %cleanup.cont, %cleanup
  %126 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc96 = add nsw i32 %126, 1
  store i32 %inc96, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end.97:                                       ; preds = %cleanup, %for.cond
  %127 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0) #4
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !7
  %non_gc_memory100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory100, align 8, !tbaa !23
  %non_gc_memory101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory101, align 8, !tbaa !23
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %135 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !7
  %non_gc_memory104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %137, i32 0, i32 3
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory104, align 8, !tbaa !23
  %non_gc_memory105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory105, align 8, !tbaa !23
  %140 = load i64*, i64** %storage, align 8, !tbaa !1
  %141 = bitcast i64* %140 to i8*
  call void %135(%struct.gs_memory_s* %139, i8* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %142 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %for.end.97, %if.then
  %143 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %compress_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i32* %dpi_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i32* %y_dots_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast i64** %prev_row_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i64** %out_row_alt_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast i64** %out_row_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = load i32, i32* %retval
  ret i32 %161

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
define internal i32 @oki4w_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %m = alloca float*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store float* null, float** %m, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @oki_paper_size(%struct.gx_device_s* %1) #4
  %cmp = icmp eq i32 %call, 26
  %cond = select i1 %cmp, float* getelementptr inbounds ([4 x float], [4 x float]* @oki4w_open.m_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @oki4w_open.m_letter, i32 0, i32 0)
  store float* %cond, float** %m, align 8, !tbaa !1
  %2 = load float*, float** %m, align 8, !tbaa !1
  %cmp1 = icmp ne float* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %4 = load float*, float** %m, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %3, float* %4, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_open(%struct.gx_device_s* %5) #4
  %6 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 %call2
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @oki4w_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  ret i32 0
}

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

; Function Attrs: nounwind uwtable
define internal i32 @oki_paper_size(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %height_inches = alloca float, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast float* %height_inches to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 14
  %2 = load i32, i32* %height, align 4, !tbaa !32
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %4 = load float, float* %arrayidx, align 4, !tbaa !27
  %div = fdiv float %conv, %4
  store float %div, float* %height_inches, align 4, !tbaa !27
  %5 = load float, float* %height_inches, align 4, !tbaa !27
  %conv1 = fpext float %5 to double
  %cmp = fcmp oge double %conv1, 1.590000e+01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %6 = load float, float* %height_inches, align 4, !tbaa !27
  %conv3 = fpext float %6 to double
  %cmp4 = fcmp oge double %conv3, 1.180000e+01
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end.17

cond.false.7:                                     ; preds = %cond.false
  %7 = load float, float* %height_inches, align 4, !tbaa !27
  %conv8 = fpext float %7 to double
  %cmp9 = fcmp oge double %conv8, 1.110000e+01
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false.7
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false.7
  %8 = load float, float* %height_inches, align 4, !tbaa !27
  %conv13 = fpext float %8 to double
  %cmp14 = fcmp oge double %conv13, 8.300000e+00
  %cond = select i1 %cmp14, i32 2, i32 25
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 26, %cond.true.11 ], [ %cond, %cond.false.12 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true.6
  %cond18 = phi i32 [ 3, %cond.true.6 ], [ %cond16, %cond.end ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true
  %cond20 = phi i32 [ 27, %cond.true ], [ %cond18, %cond.end.17 ]
  %9 = bitcast float* %height_inches to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret i32 %cond20
}

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @oki_compress(i8* %src, i8* %dst, i32 %count) #1 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %dcnt = alloca i32, align 4
  %lastval = alloca i8, align 1
  %run = alloca i32, align 4
  %newval = alloca i8, align 1
  %backptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %dcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %dcnt, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %lastval) #2
  %1 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !34
  store i8 %2, i8* %lastval, align 1, !tbaa !34
  %3 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %run, align 4, !tbaa !5
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec1 = add nsw i32 %6, -1
  store i32 %dec1, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end.64

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %newval) #2
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr2, i8** %src.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !34
  store i8 %8, i8* %newval, align 1, !tbaa !34
  %9 = load i8, i8* %newval, align 1, !tbaa !34
  %conv = zext i8 %9 to i32
  %10 = load i8, i8* %lastval, align 1, !tbaa !34
  %conv3 = zext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %run, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %run, align 4, !tbaa !5
  br label %if.end.63

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %run, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.then.8, label %if.end.45

if.then.8:                                        ; preds = %if.else
  %13 = bitcast i8** %backptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %dst.addr, align 8, !tbaa !1
  store i8* %14, i8** %backptr, align 8, !tbaa !1
  %15 = load i8, i8* %lastval, align 1, !tbaa !34
  %16 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %dst.addr, align 8, !tbaa !1
  store i8 %15, i8* %16, align 1, !tbaa !34
  %17 = load i32, i32* %dcnt, align 4, !tbaa !5
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %dcnt, align 4, !tbaa !5
  %18 = load i8, i8* %newval, align 1, !tbaa !34
  store i8 %18, i8* %lastval, align 1, !tbaa !34
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end, %if.then.8
  %19 = load i32, i32* %run, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %19, 128
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.12
  %20 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.12
  %21 = phi i1 [ false, %while.cond.12 ], [ %cmp15, %land.rhs ]
  br i1 %21, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %land.end
  %22 = load i32, i32* %run, align 4, !tbaa !5
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %run, align 4, !tbaa !5
  %23 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr19, i8** %src.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !34
  store i8 %24, i8* %newval, align 1, !tbaa !34
  %25 = load i8, i8* %newval, align 1, !tbaa !34
  %26 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %dst.addr, align 8, !tbaa !1
  store i8 %25, i8* %26, align 1, !tbaa !34
  %27 = load i32, i32* %dcnt, align 4, !tbaa !5
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, i32* %dcnt, align 4, !tbaa !5
  %28 = load i32, i32* %count.addr, align 4, !tbaa !5
  %dec22 = add nsw i32 %28, -1
  store i32 %dec22, i32* %count.addr, align 4, !tbaa !5
  %29 = load i8, i8* %newval, align 1, !tbaa !34
  %conv23 = zext i8 %29 to i32
  %30 = load i8, i8* %lastval, align 1, !tbaa !34
  %conv24 = zext i8 %30 to i32
  %cmp25 = icmp eq i32 %conv23, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %while.body.17
  br label %while.end

if.end:                                           ; preds = %while.body.17
  br label %while.cond.12

while.end:                                        ; preds = %if.then.27, %land.end
  %31 = load i8, i8* %newval, align 1, !tbaa !34
  %conv28 = zext i8 %31 to i32
  %32 = load i8, i8* %lastval, align 1, !tbaa !34
  %conv29 = zext i8 %32 to i32
  %cmp30 = icmp eq i32 %conv28, %conv29
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %while.end
  %33 = load i32, i32* %run, align 4, !tbaa !5
  %dec33 = add nsw i32 %33, -1
  store i32 %dec33, i32* %run, align 4, !tbaa !5
  %34 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr34, i8** %dst.addr, align 8, !tbaa !1
  %35 = load i32, i32* %dcnt, align 4, !tbaa !5
  %dec35 = add nsw i32 %35, -1
  store i32 %dec35, i32* %dcnt, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %while.end
  %36 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %backptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 2
  %conv37 = trunc i64 %sub to i8
  %38 = load i8*, i8** %backptr, align 8, !tbaa !1
  store i8 %conv37, i8* %38, align 1, !tbaa !34
  %39 = load i8, i8* %newval, align 1, !tbaa !34
  %conv38 = zext i8 %39 to i32
  %40 = load i8, i8* %lastval, align 1, !tbaa !34
  %conv39 = zext i8 %40 to i32
  %cmp40 = icmp eq i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.36
  store i32 2, i32* %run, align 4, !tbaa !5
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.36
  store i32 1, i32* %run, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.42
  store i32 2, i32* %cleanup.dest.slot
  %41 = bitcast i8** %backptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  br label %cleanup

if.end.45:                                        ; preds = %if.else
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.49, %if.end.45
  %42 = load i32, i32* %run, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %42, 128
  br i1 %cmp47, label %while.body.49, label %while.end.53

while.body.49:                                    ; preds = %while.cond.46
  %43 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr50, i8** %dst.addr, align 8, !tbaa !1
  store i8 -127, i8* %43, align 1, !tbaa !34
  %44 = load i8, i8* %lastval, align 1, !tbaa !34
  %45 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr51, i8** %dst.addr, align 8, !tbaa !1
  store i8 %44, i8* %45, align 1, !tbaa !34
  %46 = load i32, i32* %run, align 4, !tbaa !5
  %sub52 = sub nsw i32 %46, 128
  store i32 %sub52, i32* %run, align 4, !tbaa !5
  %47 = load i32, i32* %dcnt, align 4, !tbaa !5
  %add = add nsw i32 %47, 2
  store i32 %add, i32* %dcnt, align 4, !tbaa !5
  br label %while.cond.46

while.end.53:                                     ; preds = %while.cond.46
  %48 = load i32, i32* %run, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 %48, 0
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %while.end.53
  %49 = load i32, i32* %run, align 4, !tbaa !5
  %sub57 = sub nsw i32 257, %49
  %and = and i32 %sub57, 255
  %conv58 = trunc i32 %and to i8
  %50 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr59, i8** %dst.addr, align 8, !tbaa !1
  store i8 %conv58, i8* %50, align 1, !tbaa !34
  %51 = load i8, i8* %lastval, align 1, !tbaa !34
  %52 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr60, i8** %dst.addr, align 8, !tbaa !1
  store i8 %51, i8* %52, align 1, !tbaa !34
  %53 = load i32, i32* %dcnt, align 4, !tbaa !5
  %add61 = add nsw i32 %53, 2
  store i32 %add61, i32* %dcnt, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.56, %while.end.53
  %54 = load i8, i8* %newval, align 1, !tbaa !34
  store i8 %54, i8* %lastval, align 1, !tbaa !34
  store i32 1, i32* %run, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.end.44
  call void @llvm.lifetime.end(i64 1, i8* %newval) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.64:                                     ; preds = %while.cond
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.68, %while.end.64
  %55 = load i32, i32* %run, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %55, 128
  br i1 %cmp66, label %while.body.68, label %while.end.73

while.body.68:                                    ; preds = %while.cond.65
  %56 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr69, i8** %dst.addr, align 8, !tbaa !1
  store i8 -127, i8* %56, align 1, !tbaa !34
  %57 = load i8, i8* %lastval, align 1, !tbaa !34
  %58 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr70, i8** %dst.addr, align 8, !tbaa !1
  store i8 %57, i8* %58, align 1, !tbaa !34
  %59 = load i32, i32* %run, align 4, !tbaa !5
  %sub71 = sub nsw i32 %59, 128
  store i32 %sub71, i32* %run, align 4, !tbaa !5
  %60 = load i32, i32* %dcnt, align 4, !tbaa !5
  %add72 = add nsw i32 %60, 2
  store i32 %add72, i32* %dcnt, align 4, !tbaa !5
  br label %while.cond.65

while.end.73:                                     ; preds = %while.cond.65
  %61 = load i32, i32* %run, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %61, 0
  br i1 %cmp74, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %while.end.73
  %62 = load i32, i32* %run, align 4, !tbaa !5
  %sub77 = sub nsw i32 257, %62
  %and78 = and i32 %sub77, 255
  %conv79 = trunc i32 %and78 to i8
  %63 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr80, i8** %dst.addr, align 8, !tbaa !1
  store i8 %conv79, i8* %63, align 1, !tbaa !34
  %64 = load i8, i8* %lastval, align 1, !tbaa !34
  %65 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr81, i8** %dst.addr, align 8, !tbaa !1
  store i8 %64, i8* %65, align 1, !tbaa !34
  %66 = load i32, i32* %dcnt, align 4, !tbaa !5
  %add82 = add nsw i32 %66, 2
  store i32 %add82, i32* %dcnt, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.76, %while.end.73
  %67 = load i32, i32* %dcnt, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %68 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  call void @llvm.lifetime.end(i64 1, i8* %lastval) #2
  %69 = bitcast i32* %dcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  ret i32 %67

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gdev_pcl_mode2compress(i64*, i64*, i8*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

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
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!8, !6, i64 832}
!30 = !{!10, !10, i64 0}
!31 = !{!24, !2, i64 24}
!32 = !{!33, !6, i64 836}
!33 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!34 = !{!3, !3, i64 0}
