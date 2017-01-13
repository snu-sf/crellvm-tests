; ModuleID = './gdevpcl3.bc'
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
%struct.pcl_PrinterDescription = type { i32, i32, %struct.eprn_PrinterDescription }
%struct.eprn_PrinterDescription = type { i8*, %struct.eprn_PageDescription*, %struct.eprn_CustomPageDescription*, float, %struct.eprn_ColourInfo* }
%struct.eprn_PageDescription = type { i32, float, float, float, float }
%struct.eprn_CustomPageDescription = type { i32, float, float, float, float, float, float, float, float }
%struct.eprn_ColourInfo = type { i32, [2 x %struct.eprn_ResLev*] }
%struct.eprn_ResLev = type { %struct.eprn_Resolution*, %struct.eprn_IntensityLevels* }
%struct.eprn_Resolution = type { float, float }
%struct.eprn_IntensityLevels = type { i16, i16 }
%struct.ms_Flag = type { i32, i8* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.s_eprn_Device = type { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, {}*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }
%struct.eprn_OctetString = type { i8*, i32 }
%struct.pcl_FileData = type { i32, i32, i8*, i8*, %struct.pcl_OctetString, %struct.pcl_OctetString, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_ColorantState*, [4 x %struct.pcl_ColorantState], i32, i32, i32, i16, i16, i32 }
%struct.pcl_OctetString = type { i8*, i32 }
%struct.pcl_ColorantState = type { i32, i32, i32 }
%struct.eprn_StringAndInt = type { i8*, i32 }
%struct.anon = type { i32, i32, i32 }
%struct.pcl3_Device = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.s_eprn_Device, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData }
%struct.pcl_RasterData = type { i32, %struct.pcl_FileData*, %struct.pcl_OctetString*, %struct.pcl_OctetString*, [2 x i8*], i64, i32, %struct.pcl_OctetString** }
%struct.eprn_Device = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.s_eprn_Device }

@pcl3_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pcl3_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @eprn_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @eprn_output_page, i32 (%struct.gx_device_s*)* @pcl3_close_device, i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K, i32 (%struct.gx_device_s*, i64, i16*)* @eprn_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pcl3_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pcl3_put_params, i64 (%struct.gx_device_s*, i16*)* @eprn_map_cmyk_color_glob, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"pcl3\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@pcl3_printers = external constant [0 x %struct.pcl_PrinterDescription], align 8
@flag_description = internal constant [2 x %struct.ms_Flag] [%struct.ms_Flag { i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0) }, %struct.ms_Flag zeroinitializer], align 16
@card_is_optional = internal constant [2 x i32] [i32 512, i32 0], align 4
@gs_pcl3_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 1208) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"hpdjplus\00", align 1
@gs_hpdjplus_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 56) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"hpdjportable\00", align 1
@gs_hpdjportable_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 104) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"hpdj310\00", align 1
@gs_hpdj310_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 152) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"hpdj320\00", align 1
@gs_hpdj320_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 200) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"hpdj340\00", align 1
@gs_hpdj340_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 248) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"hpdj400\00", align 1
@gs_hpdj400_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 296) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"hpdj500\00", align 1
@gs_hpdj500_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 344) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"hpdj500c\00", align 1
@gs_hpdj500c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 392) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"hpdj510\00", align 1
@gs_hpdj510_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 440) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"hpdj520\00", align 1
@gs_hpdj520_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 488) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"hpdj540\00", align 1
@gs_hpdj540_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 536) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"hpdj550c\00", align 1
@gs_hpdj550c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 584) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"hpdj560c\00", align 1
@gs_hpdj560c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 632) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"hpdj600\00", align 1
@gs_hpdj600_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 728) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"hpdj660c\00", align 1
@gs_hpdj660c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 776) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"hpdj670c\00", align 1
@gs_hpdj670c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 824) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"hpdj680c\00", align 1
@gs_hpdj680c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 872) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"hpdj690c\00", align 1
@gs_hpdj690c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 920) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"hpdj850c\00", align 1
@gs_hpdj850c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 968) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"hpdj855c\00", align 1
@gs_hpdj855c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 1016) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"hpdj870c\00", align 1
@gs_hpdj870c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 1064) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"hpdj890c\00", align 1
@gs_hpdj890c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 1112) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.24 = private unnamed_addr constant [10 x i8] c"hpdj1120c\00", align 1
@gs_hpdj1120c_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_FileData } { i32 18872, %struct.gx_device_procs_s* @pcl3_procs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pcl3_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 } { %struct.eprn_PrinterDescription* bitcast (i8* getelementptr (i8, i8* bitcast ([0 x %struct.pcl_PrinterDescription]* @pcl3_printers to i8*), i64 1160) to %struct.eprn_PrinterDescription*), i8* null, %struct.eprn_PageDescription* null, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0), i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), void (%struct.s_eprn_Device*, i32)* bitcast (void (%struct._IO_FILE*, %struct.s_eprn_Device*, i32)* @pcl3_flag_mismatch_reporter to void (%struct.s_eprn_Device*, i32)*), i32 0, i32 0, i32 0, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.eprn_OctetString zeroinitializer, %struct.eprn_OctetString zeroinitializer, i32 0, i32 0, i32 0 }, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pcl_FileData zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.28 = private unnamed_addr constant [103 x i8] c"%s?-W pcl3: More than 2 intensity levels and draft quality\0A%s    are unlikely to work in combination.\0A\00", align 1
@.str.29 = private unnamed_addr constant [127 x i8] c"%s? pcl3: The current configuration for this driver has identified the\0A%s  page setup requested by the document as being for `\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"' (%.0f x %.0f bp).\0A%s  The driver does not know how to do this in PCL.\0A\00", align 1
@.str.33 = private unnamed_addr constant [89 x i8] c"%s  You should therefore not include such an entry in the\0A%s  media configuration file.\0A\00", align 1
@subdevice_list = internal constant [27 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 3 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 4 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 5 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 6 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 7 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 8 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 9 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 10 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 11 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 12 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 13 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 14 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 15 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 16 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 17 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 18 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 19 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 20 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 21 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 22 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 23 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 24 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 25 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [62 x i8] c"cmp_by_value(subdevice_list + j - 1, subdevice_list + j) <= 0\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"./contrib/pcl3/src/gdevpcl3.c\00", align 1
@__PRETTY_FUNCTION__.init = private unnamed_addr constant [25 x i8] c"void init(pcl3_Device *)\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"hpdj\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"unspecold\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.set_palette = private unnamed_addr constant [32 x i8] c"void set_palette(pcl3_Device *)\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"CompressionMethod\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ConfigureEveryPage\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"DryTime\00", align 1
@duplex_capabilities_list = internal constant [5 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 3 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [17 x i8] c"DuplexCapability\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"ManualFeed\00", align 1
@media_type_list = internal constant [13 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i32 3 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i32 4 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i32 5 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i32 6 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 3 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i32 4 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"%MediaDestination\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"%MediaSource\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"OnlyCRD\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"PCLInit1\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"PCLInit2\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"PJLJob\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"PJLLanguage\00", align 1
@print_quality_list = internal constant [6 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 -1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 -1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [13 x i8] c"PrintQuality\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"SendBlackLast\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"SendNULs\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Subdevice\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"UseCard\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"Depletion\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"RasterGraphicsQuality\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"Shingling\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"sameLeadingEdge\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"oppositeLeadingEdge\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@get_string_for_int.buffer = internal global [22 x i8] zeroinitializer, align 16
@.str.66 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"strlen(buffer) < sizeof(buffer)\00", align 1
@__PRETTY_FUNCTION__.get_string_for_int = private unnamed_addr constant [75 x i8] c"void get_string_for_int(int, const eprn_StringAndInt *, gs_param_string *)\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"plain paper\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"bond paper\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"HP Premium paper\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"glossy paper\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"transparency film\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"quick dry glossy\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"quick dry transparency\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"bond\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"Premium\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"glossy\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"transparency\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"draft\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"presentation\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"econo\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"found != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.find_subdevice_name = private unnamed_addr constant [37 x i8] c"const char *find_subdevice_name(int)\00", align 1
@pcl3_put_params.requested = private unnamed_addr constant %struct.anon { i32 -1, i32 -1, i32 -1 }, align 4
@.str.86 = private unnamed_addr constant [36 x i8] c"%s? pcl3: Unknown subdevice name: `\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"'.\0A\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"%s? pcl3: Unsupported compression method: %d.\0A\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"%s? pcl3: The %s does not support compression method 9.\0A\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"%s? pcl3: Invalid value for depletion: %d.\0A\00", align 1
@.str.91 = private unnamed_addr constant [55 x i8] c"%s? pcl3: The %s does not support setting a dry time.\0A\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"%s? pcl3: Invalid value for the dry time: %d.\0A\00", align 1
@.str.93 = private unnamed_addr constant [99 x i8] c"%s? pcl3: You can use a non-trivial value for DuplexCapability\0A%s  only for unspec and unspecold.\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"%s? pcl3: Invalid duplex capability: `\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.96 = private unnamed_addr constant [105 x i8] c"%s? pcl3: The '%s' device does not support duplex printing unless\0A%s  'DuplexCapability' is not 'none'.\0A\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"%s? pcl3: The %s does not support duplex printing.\0A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"%s? pcl3: Unknown medium: `\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"%s?-W pcl3: Unknown media type code: %d.\0A\00", align 1
@.str.100 = private unnamed_addr constant [56 x i8] c"%s? pcl3: OnlyCRD may be set only for group-3 devices.\0A\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"%s? pcl3: Unknown print quality: `\00", align 1
@.str.102 = private unnamed_addr constant [40 x i8] c"%s?-W pcl3: Unknown print quality: %d.\0A\00", align 1
@.str.103 = private unnamed_addr constant [58 x i8] c"%s? pcl3: Invalid value for raster graphics quality: %d.\0A\00", align 1
@.str.104 = private unnamed_addr constant [53 x i8] c"%s? pcl3: Invalid value for SendNULs parameter: %d.\0A\00", align 1
@.str.105 = private unnamed_addr constant [44 x i8] c"%s? pcl3: Invalid value for shingling: %d.\0A\00", align 1
@.str.106 = private unnamed_addr constant [64 x i8] c"? pcl3: Memory allocation failure in get_int_for_string(): %s.\0A\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"fetch_octets\00", align 1
@.str.109 = private unnamed_addr constant [55 x i8] c"%s? pcl3: Memory allocation failure from gs_malloc().\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"fetch_cstring\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"Card\00", align 1
@.str.112 = private unnamed_addr constant [67 x i8] c"%s? pcl3: The %s does not support the requested media properties.\0A\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"%s? pcl3: The %s does not support banner printing\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c" for this size\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.116 = private unnamed_addr constant [56 x i8] c"%s? pcl3: The %s does not support a `Card' variant for \00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c" size.\0A\00", align 1
@.str.120 = private unnamed_addr constant [62 x i8] c"%s? pcl3: Banner printing on postcards?? You must be joking!\0A\00", align 1
@.str.121 = private unnamed_addr constant [52 x i8] c"%s? pcl3: Memory allocation failure from malloc().\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pcl3_print_page(%struct.gx_device_printer_s* %device, %struct._IO_FILE* %out) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_printer_s*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %blank_lines = alloca i32, align 4
  %rc = alloca i32, align 4
  %dev = alloca %struct.pcl3_Device*, align 8
  %epref = alloca i8*, align 8
  %rd = alloca %struct.pcl_RasterData, align 8
  %j = alloca i32, align 4
  %lengths = alloca i32*, align 8
  %planes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %k = alloca i32, align 4
  store %struct.gx_device_printer_s* %device, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.pcl3_Device*
  store %struct.pcl3_Device* %4, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %5 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %6, i32 0, i32 68
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 20
  %7 = load i32, i32* %CUPS_messages, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %8 = bitcast %struct.pcl_RasterData* %rd to i8*
  call void @llvm.lifetime.start(i64 72, i8* %8) #2
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32** %lengths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s* %12) #7
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configured = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %13, i32 0, i32 74
  %14 = load i32, i32* %configured, align 4, !tbaa !26
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %15 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configure_every_page = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %15, i32 0, i32 75
  %16 = load i32, i32* %configure_every_page, align 4, !tbaa !27
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %if.then, label %if.end.11

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %18 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %18, i32 0, i32 76
  %call5 = call i32 @pcl3_init_file(%struct._IO_FILE* %17, %struct.pcl_FileData* %file_data) #7
  store i32 %call5, i32* %rc, align 4, !tbaa !28
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then
  %19 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp7 = icmp sgt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then
  %20 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configured10 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %20, i32 0, i32 74
  store i32 1, i32* %configured10, align 4, !tbaa !26
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %lor.lhs.false.3
  %21 = bitcast %struct.pcl_RasterData* %rd to i8*
  %call12 = call i8* @memset(i8* %21, i32 0, i64 72) #8
  %22 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data13 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %22, i32 0, i32 76
  %global = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 1
  store %struct.pcl_FileData* %file_data13, %struct.pcl_FileData** %global, align 8, !tbaa !29
  %23 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %24 = bitcast %struct.pcl3_Device* %23 to %struct.eprn_Device*
  %call14 = call i32 @eprn_number_of_bitplanes(%struct.eprn_Device* %24) #7
  store i32 %call14, i32* %planes, align 4, !tbaa !28
  %25 = load i32, i32* %planes, align 4, !tbaa !28
  %conv = zext i32 %25 to i64
  %mul = mul i64 %conv, 4
  %call15 = call noalias i8* @malloc(i64 %mul) #8
  %26 = bitcast i8* %call15 to i32*
  store i32* %26, i32** %lengths, align 8, !tbaa !1
  %27 = load i32, i32* %planes, align 4, !tbaa !28
  %conv16 = zext i32 %27 to i64
  %mul17 = mul i64 %conv16, 16
  %call18 = call noalias i8* @malloc(i64 %mul17) #8
  %28 = bitcast i8* %call18 to %struct.pcl_OctetString*
  %next = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  store %struct.pcl_OctetString* %28, %struct.pcl_OctetString** %next, align 8, !tbaa !31
  %29 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data19 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %29, i32 0, i32 76
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data19, i32 0, i32 22
  %30 = load i32, i32* %compression, align 4, !tbaa !32
  %cmp20 = icmp eq i32 %30, 3
  br i1 %cmp20, label %if.then.32, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.end.11
  %31 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data23 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %31, i32 0, i32 76
  %compression24 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data23, i32 0, i32 22
  %32 = load i32, i32* %compression24, align 4, !tbaa !32
  %cmp25 = icmp eq i32 %32, 5
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.22
  %33 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data28 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %33, i32 0, i32 76
  %compression29 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data28, i32 0, i32 22
  %34 = load i32, i32* %compression29, align 4, !tbaa !32
  %cmp30 = icmp eq i32 %34, 9
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.22, %if.end.11
  %35 = load i32, i32* %planes, align 4, !tbaa !28
  %conv33 = zext i32 %35 to i64
  %mul34 = mul i64 %conv33, 16
  %call35 = call noalias i8* @malloc(i64 %mul34) #8
  %36 = bitcast i8* %call35 to %struct.pcl_OctetString*
  %previous = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  store %struct.pcl_OctetString* %36, %struct.pcl_OctetString** %previous, align 8, !tbaa !33
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %lor.lhs.false.27
  %37 = load i32*, i32** %lengths, align 8, !tbaa !1
  %cmp37 = icmp eq i32* %37, null
  br i1 %cmp37, label %if.then.61, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.36
  %next40 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %38 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next40, align 8, !tbaa !31
  %cmp41 = icmp eq %struct.pcl_OctetString* %38, null
  br i1 %cmp41, label %if.then.61, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %39 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data44 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %39, i32 0, i32 76
  %compression45 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data44, i32 0, i32 22
  %40 = load i32, i32* %compression45, align 4, !tbaa !32
  %cmp46 = icmp eq i32 %40, 3
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.43
  %41 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data49 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %41, i32 0, i32 76
  %compression50 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data49, i32 0, i32 22
  %42 = load i32, i32* %compression50, align 4, !tbaa !32
  %cmp51 = icmp eq i32 %42, 5
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.48
  %43 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data54 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %43, i32 0, i32 76
  %compression55 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data54, i32 0, i32 22
  %44 = load i32, i32* %compression55, align 4, !tbaa !32
  %cmp56 = icmp eq i32 %44, 9
  br i1 %cmp56, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %lor.lhs.false.53, %lor.lhs.false.48, %lor.lhs.false.43
  %previous58 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %45 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous58, align 8, !tbaa !33
  %cmp59 = icmp eq %struct.pcl_OctetString* %45, null
  br i1 %cmp59, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %land.lhs.true, %lor.lhs.false.39, %if.end.36
  %46 = load i32*, i32** %lengths, align 8, !tbaa !1
  %47 = bitcast i32* %46 to i8*
  call void @free(i8* %47) #8
  %next62 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %48 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next62, align 8, !tbaa !31
  %49 = bitcast %struct.pcl_OctetString* %48 to i8*
  call void @free(i8* %49) #8
  %previous63 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %50 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous63, align 8, !tbaa !33
  %51 = bitcast %struct.pcl_OctetString* %50 to i8*
  call void @free(i8* %51) #8
  %call64 = call i8* @gs_program_name() #7
  %call65 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call64, i64 %call65) #7
  %52 = load i8*, i8** %epref, align 8, !tbaa !1
  %call66 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.121, i32 0, i32 0), i8* %52) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %land.lhs.true, %lor.lhs.false.53
  %53 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %54 = bitcast %struct.pcl3_Device* %53 to %struct.eprn_Device*
  %55 = load i32*, i32** %lengths, align 8, !tbaa !1
  call void @eprn_number_of_octets(%struct.eprn_Device* %54, i32* %55) #7
  %56 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx, align 4, !tbaa !28
  %mul68 = mul i32 8, %57
  %width = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 0
  store i32 %mul68, i32* %width, align 4, !tbaa !34
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.67
  %58 = load i32, i32* %j, align 4, !tbaa !28
  %59 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp69 = icmp ult i32 %58, %59
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom = zext i32 %60 to i64
  %61 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %61, i64 %idxprom
  %62 = load i32, i32* %arrayidx71, align 4, !tbaa !28
  %conv72 = zext i32 %62 to i64
  %mul73 = mul i64 %conv72, 1
  %call74 = call noalias i8* @malloc(i64 %mul73) #8
  %63 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom75 = zext i32 %63 to i64
  %next76 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %64 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next76, align 8, !tbaa !31
  %arrayidx77 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %64, i64 %idxprom75
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx77, i32 0, i32 0
  store i8* %call74, i8** %str, align 8, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %j, align 4, !tbaa !28
  %inc = add i32 %65, 1
  store i32 %inc, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data78 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %66, i32 0, i32 76
  %compression79 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data78, i32 0, i32 22
  %67 = load i32, i32* %compression79, align 4, !tbaa !32
  %cmp80 = icmp eq i32 %67, 3
  br i1 %cmp80, label %if.then.92, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %for.end
  %68 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data83 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %68, i32 0, i32 76
  %compression84 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data83, i32 0, i32 22
  %69 = load i32, i32* %compression84, align 4, !tbaa !32
  %cmp85 = icmp eq i32 %69, 5
  br i1 %cmp85, label %if.then.92, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.82
  %70 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data88 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %70, i32 0, i32 76
  %compression89 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data88, i32 0, i32 22
  %71 = load i32, i32* %compression89, align 4, !tbaa !32
  %cmp90 = icmp eq i32 %71, 9
  br i1 %cmp90, label %if.then.92, label %if.end.109

if.then.92:                                       ; preds = %lor.lhs.false.87, %lor.lhs.false.82, %for.end
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.106, %if.then.92
  %72 = load i32, i32* %j, align 4, !tbaa !28
  %73 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp94 = icmp ult i32 %72, %73
  br i1 %cmp94, label %for.body.96, label %for.end.108

for.body.96:                                      ; preds = %for.cond.93
  %74 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom97 = zext i32 %74 to i64
  %75 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %75, i64 %idxprom97
  %76 = load i32, i32* %arrayidx98, align 4, !tbaa !28
  %conv99 = zext i32 %76 to i64
  %mul100 = mul i64 %conv99, 1
  %call101 = call noalias i8* @malloc(i64 %mul100) #8
  %77 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom102 = zext i32 %77 to i64
  %previous103 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %78 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous103, align 8, !tbaa !33
  %arrayidx104 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %78, i64 %idxprom102
  %str105 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx104, i32 0, i32 0
  store i8* %call101, i8** %str105, align 8, !tbaa !35
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.96
  %79 = load i32, i32* %j, align 4, !tbaa !28
  %inc107 = add i32 %79, 1
  store i32 %inc107, i32* %j, align 4, !tbaa !28
  br label %for.cond.93

for.end.108:                                      ; preds = %for.cond.93
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %lor.lhs.false.87
  %80 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx110, align 4, !tbaa !28
  %conv111 = zext i32 %81 to i64
  %workspace_allocated = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 5
  store i64 %conv111, i64* %workspace_allocated, align 8, !tbaa !36
  store i32 1, i32* %j, align 4, !tbaa !28
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.128, %if.end.109
  %82 = load i32, i32* %j, align 4, !tbaa !28
  %83 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp113 = icmp ult i32 %82, %83
  br i1 %cmp113, label %for.body.115, label %for.end.130

for.body.115:                                     ; preds = %for.cond.112
  %84 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom116 = zext i32 %84 to i64
  %85 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %85, i64 %idxprom116
  %86 = load i32, i32* %arrayidx117, align 4, !tbaa !28
  %conv118 = zext i32 %86 to i64
  %workspace_allocated119 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 5
  %87 = load i64, i64* %workspace_allocated119, align 8, !tbaa !36
  %cmp120 = icmp ugt i64 %conv118, %87
  br i1 %cmp120, label %if.then.122, label %if.end.127

if.then.122:                                      ; preds = %for.body.115
  %88 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom123 = zext i32 %88 to i64
  %89 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %89, i64 %idxprom123
  %90 = load i32, i32* %arrayidx124, align 4, !tbaa !28
  %conv125 = zext i32 %90 to i64
  %workspace_allocated126 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 5
  store i64 %conv125, i64* %workspace_allocated126, align 8, !tbaa !36
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.122, %for.body.115
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %91 = load i32, i32* %j, align 4, !tbaa !28
  %inc129 = add i32 %91, 1
  store i32 %inc129, i32* %j, align 4, !tbaa !28
  br label %for.cond.112

for.end.130:                                      ; preds = %for.cond.112
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.146, %for.end.130
  %92 = load i32, i32* %j, align 4, !tbaa !28
  %cmp132 = icmp ult i32 %92, 2
  br i1 %cmp132, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.131
  %93 = load i32, i32* %j, align 4, !tbaa !28
  %cmp134 = icmp ne i32 %93, 1
  br i1 %cmp134, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %94 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data136 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %94, i32 0, i32 76
  %compression137 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data136, i32 0, i32 22
  %95 = load i32, i32* %compression137, align 4, !tbaa !32
  %cmp138 = icmp eq i32 %95, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %96 = phi i1 [ true, %land.rhs ], [ %cmp138, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond.131
  %97 = phi i1 [ false, %for.cond.131 ], [ %96, %lor.end ]
  br i1 %97, label %for.body.140, label %for.end.148

for.body.140:                                     ; preds = %land.end
  %workspace_allocated141 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 5
  %98 = load i64, i64* %workspace_allocated141, align 8, !tbaa !36
  %mul142 = mul i64 %98, 1
  %call143 = call noalias i8* @malloc(i64 %mul142) #8
  %99 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom144 = zext i32 %99 to i64
  %workspace = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 4
  %arrayidx145 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace, i32 0, i64 %idxprom144
  store i8* %call143, i8** %arrayidx145, align 8, !tbaa !1
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.140
  %100 = load i32, i32* %j, align 4, !tbaa !28
  %inc147 = add i32 %100, 1
  store i32 %inc147, i32* %j, align 4, !tbaa !28
  br label %for.cond.131

for.end.148:                                      ; preds = %land.end
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.148
  %101 = load i32, i32* %j, align 4, !tbaa !28
  %102 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp149 = icmp ult i32 %101, %102
  br i1 %cmp149, label %land.rhs.151, label %land.end.158

land.rhs.151:                                     ; preds = %while.cond
  %103 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom152 = zext i32 %103 to i64
  %next153 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %104 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next153, align 8, !tbaa !31
  %arrayidx154 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %104, i64 %idxprom152
  %str155 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx154, i32 0, i32 0
  %105 = load i8*, i8** %str155, align 8, !tbaa !35
  %cmp156 = icmp ne i8* %105, null
  br label %land.end.158

land.end.158:                                     ; preds = %land.rhs.151, %while.cond
  %106 = phi i1 [ false, %while.cond ], [ %cmp156, %land.rhs.151 ]
  br i1 %106, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.158
  %107 = load i32, i32* %j, align 4, !tbaa !28
  %inc159 = add i32 %107, 1
  store i32 %inc159, i32* %j, align 4, !tbaa !28
  br label %while.cond

while.end:                                        ; preds = %land.end.158
  %108 = load i32, i32* %j, align 4, !tbaa !28
  %109 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp160 = icmp eq i32 %108, %109
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.206

land.lhs.true.162:                                ; preds = %while.end
  %110 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data163 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %110, i32 0, i32 76
  %compression164 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data163, i32 0, i32 22
  %111 = load i32, i32* %compression164, align 4, !tbaa !32
  %cmp165 = icmp eq i32 %111, 3
  br i1 %cmp165, label %if.then.177, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %land.lhs.true.162
  %112 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data168 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %112, i32 0, i32 76
  %compression169 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data168, i32 0, i32 22
  %113 = load i32, i32* %compression169, align 4, !tbaa !32
  %cmp170 = icmp eq i32 %113, 5
  br i1 %cmp170, label %if.then.177, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false.167
  %114 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data173 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %114, i32 0, i32 76
  %compression174 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data173, i32 0, i32 22
  %115 = load i32, i32* %compression174, align 4, !tbaa !32
  %cmp175 = icmp eq i32 %115, 9
  br i1 %cmp175, label %if.then.177, label %if.end.206

if.then.177:                                      ; preds = %lor.lhs.false.172, %lor.lhs.false.167, %land.lhs.true.162
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %while.cond.178

while.cond.178:                                   ; preds = %while.body.189, %if.then.177
  %116 = load i32, i32* %j, align 4, !tbaa !28
  %117 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp179 = icmp ult i32 %116, %117
  br i1 %cmp179, label %land.rhs.181, label %land.end.188

land.rhs.181:                                     ; preds = %while.cond.178
  %118 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom182 = zext i32 %118 to i64
  %previous183 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %119 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous183, align 8, !tbaa !33
  %arrayidx184 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %119, i64 %idxprom182
  %str185 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx184, i32 0, i32 0
  %120 = load i8*, i8** %str185, align 8, !tbaa !35
  %cmp186 = icmp ne i8* %120, null
  br label %land.end.188

land.end.188:                                     ; preds = %land.rhs.181, %while.cond.178
  %121 = phi i1 [ false, %while.cond.178 ], [ %cmp186, %land.rhs.181 ]
  br i1 %121, label %while.body.189, label %while.end.191

while.body.189:                                   ; preds = %land.end.188
  %122 = load i32, i32* %j, align 4, !tbaa !28
  %inc190 = add i32 %122, 1
  store i32 %inc190, i32* %j, align 4, !tbaa !28
  br label %while.cond.178

while.end.191:                                    ; preds = %land.end.188
  %123 = load i32, i32* %j, align 4, !tbaa !28
  %124 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp192 = icmp eq i32 %123, %124
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.205

land.lhs.true.194:                                ; preds = %while.end.191
  %125 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data195 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %125, i32 0, i32 76
  %compression196 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data195, i32 0, i32 22
  %126 = load i32, i32* %compression196, align 4, !tbaa !32
  %cmp197 = icmp eq i32 %126, 3
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.205

land.lhs.true.199:                                ; preds = %land.lhs.true.194
  %workspace200 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 4
  %arrayidx201 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace200, i32 0, i64 1
  %127 = load i8*, i8** %arrayidx201, align 8, !tbaa !1
  %cmp202 = icmp eq i8* %127, null
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %land.lhs.true.199
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %land.lhs.true.199, %land.lhs.true.194, %while.end.191
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %lor.lhs.false.172, %while.end
  %128 = load i32, i32* %j, align 4, !tbaa !28
  %129 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp207 = icmp ult i32 %128, %129
  br i1 %cmp207, label %if.then.214, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.end.206
  %workspace210 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 4
  %arrayidx211 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace210, i32 0, i64 0
  %130 = load i8*, i8** %arrayidx211, align 8, !tbaa !1
  %cmp212 = icmp eq i8* %130, null
  br i1 %cmp212, label %if.then.214, label %if.end.261

if.then.214:                                      ; preds = %lor.lhs.false.209, %if.end.206
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.243, %if.then.214
  %131 = load i32, i32* %j, align 4, !tbaa !28
  %132 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp216 = icmp ult i32 %131, %132
  br i1 %cmp216, label %for.body.218, label %for.end.245

for.body.218:                                     ; preds = %for.cond.215
  %133 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom219 = zext i32 %133 to i64
  %next220 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %134 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next220, align 8, !tbaa !31
  %arrayidx221 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %134, i64 %idxprom219
  %str222 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx221, i32 0, i32 0
  %135 = load i8*, i8** %str222, align 8, !tbaa !35
  call void @free(i8* %135) #8
  %136 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data223 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %136, i32 0, i32 76
  %compression224 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data223, i32 0, i32 22
  %137 = load i32, i32* %compression224, align 4, !tbaa !32
  %cmp225 = icmp eq i32 %137, 3
  br i1 %cmp225, label %if.then.237, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %for.body.218
  %138 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data228 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %138, i32 0, i32 76
  %compression229 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data228, i32 0, i32 22
  %139 = load i32, i32* %compression229, align 4, !tbaa !32
  %cmp230 = icmp eq i32 %139, 5
  br i1 %cmp230, label %if.then.237, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %lor.lhs.false.227
  %140 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data233 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %140, i32 0, i32 76
  %compression234 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data233, i32 0, i32 22
  %141 = load i32, i32* %compression234, align 4, !tbaa !32
  %cmp235 = icmp eq i32 %141, 9
  br i1 %cmp235, label %if.then.237, label %if.end.242

if.then.237:                                      ; preds = %lor.lhs.false.232, %lor.lhs.false.227, %for.body.218
  %142 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom238 = zext i32 %142 to i64
  %previous239 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %143 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous239, align 8, !tbaa !33
  %arrayidx240 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %143, i64 %idxprom238
  %str241 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx240, i32 0, i32 0
  %144 = load i8*, i8** %str241, align 8, !tbaa !35
  call void @free(i8* %144) #8
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.237, %lor.lhs.false.232
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %145 = load i32, i32* %j, align 4, !tbaa !28
  %inc244 = add i32 %145, 1
  store i32 %inc244, i32* %j, align 4, !tbaa !28
  br label %for.cond.215

for.end.245:                                      ; preds = %for.cond.215
  %146 = load i32*, i32** %lengths, align 8, !tbaa !1
  %147 = bitcast i32* %146 to i8*
  call void @free(i8* %147) #8
  %next246 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %148 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next246, align 8, !tbaa !31
  %149 = bitcast %struct.pcl_OctetString* %148 to i8*
  call void @free(i8* %149) #8
  %previous247 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %150 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous247, align 8, !tbaa !33
  %151 = bitcast %struct.pcl_OctetString* %150 to i8*
  call void @free(i8* %151) #8
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.255, %for.end.245
  %152 = load i32, i32* %j, align 4, !tbaa !28
  %cmp249 = icmp ult i32 %152, 2
  br i1 %cmp249, label %for.body.251, label %for.end.257

for.body.251:                                     ; preds = %for.cond.248
  %153 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom252 = zext i32 %153 to i64
  %workspace253 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 4
  %arrayidx254 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace253, i32 0, i64 %idxprom252
  %154 = load i8*, i8** %arrayidx254, align 8, !tbaa !1
  call void @free(i8* %154) #8
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.251
  %155 = load i32, i32* %j, align 4, !tbaa !28
  %inc256 = add i32 %155, 1
  store i32 %inc256, i32* %j, align 4, !tbaa !28
  br label %for.cond.248

for.end.257:                                      ; preds = %for.cond.248
  %call258 = call i8* @gs_program_name() #7
  %call259 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call258, i64 %call259) #7
  %156 = load i8*, i8** %epref, align 8, !tbaa !1
  %call260 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.121, i32 0, i32 0), i8* %156) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.261:                                       ; preds = %lor.lhs.false.209
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %158 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data262 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %158, i32 0, i32 76
  %call263 = call i32 @pcl3_begin_page(%struct._IO_FILE* %157, %struct.pcl_FileData* %file_data262) #7
  store i32 %call263, i32* %rc, align 4, !tbaa !28
  %cmp264 = icmp ne i32 %call263, 0
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.261
  %159 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp267 = icmp sgt i32 %159, 0
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.266
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.270:                                       ; preds = %if.then.266
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.271:                                       ; preds = %if.end.261
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call272 = call i32 @pcl3_begin_raster(%struct._IO_FILE* %160, %struct.pcl_RasterData* %rd) #7
  store i32 %call272, i32* %rc, align 4, !tbaa !28
  %cmp273 = icmp ne i32 %call272, 0
  br i1 %cmp273, label %if.then.275, label %if.end.280

if.then.275:                                      ; preds = %if.end.271
  %161 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp276 = icmp sgt i32 %161, 0
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.then.275
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.279:                                       ; preds = %if.then.275
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.280:                                       ; preds = %if.end.271
  store i32 0, i32* %blank_lines, align 4, !tbaa !28
  br label %while.cond.281

while.cond.281:                                   ; preds = %if.end.398, %if.end.280
  %162 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %163 = bitcast %struct.pcl3_Device* %162 to %struct.eprn_Device*
  %next282 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %164 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next282, align 8, !tbaa !31
  %165 = bitcast %struct.pcl_OctetString* %164 to %struct.eprn_OctetString*
  %call283 = call i32 @eprn_get_planes(%struct.eprn_Device* %163, %struct.eprn_OctetString* %165) #7
  %cmp284 = icmp eq i32 %call283, 0
  br i1 %cmp284, label %while.body.286, label %while.end.399

while.body.286:                                   ; preds = %while.cond.281
  %166 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn287 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %166, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn287, i32 0, i32 14
  %167 = load i32, i32* %colour_model, align 4, !tbaa !37
  %cmp288 = icmp eq i32 %167, 1
  br i1 %cmp288, label %if.then.290, label %if.else

if.then.290:                                      ; preds = %while.body.286
  store i32 1, i32* %j, align 4, !tbaa !28
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.305, %if.then.290
  %168 = load i32, i32* %j, align 4, !tbaa !28
  %169 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp292 = icmp ult i32 %168, %169
  br i1 %cmp292, label %land.rhs.294, label %land.end.303

land.rhs.294:                                     ; preds = %for.cond.291
  %170 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom295 = zext i32 %170 to i64
  %next296 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %171 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next296, align 8, !tbaa !31
  %arrayidx297 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %171, i64 %idxprom295
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx297, i32 0, i32 1
  %172 = load i32, i32* %length, align 4, !tbaa !38
  %next298 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %173 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next298, align 8, !tbaa !31
  %arrayidx299 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %173, i64 0
  %length300 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx299, i32 0, i32 1
  %174 = load i32, i32* %length300, align 4, !tbaa !38
  %cmp301 = icmp eq i32 %172, %174
  br label %land.end.303

land.end.303:                                     ; preds = %land.rhs.294, %for.cond.291
  %175 = phi i1 [ false, %for.cond.291 ], [ %cmp301, %land.rhs.294 ]
  br i1 %175, label %for.body.304, label %for.end.307

for.body.304:                                     ; preds = %land.end.303
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.304
  %176 = load i32, i32* %j, align 4, !tbaa !28
  %inc306 = add i32 %176, 1
  store i32 %inc306, i32* %j, align 4, !tbaa !28
  br label %for.cond.291

for.end.307:                                      ; preds = %land.end.303
  %177 = load i32, i32* %j, align 4, !tbaa !28
  %178 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp308 = icmp uge i32 %177, %178
  br i1 %cmp308, label %land.lhs.true.310, label %if.end.354

land.lhs.true.310:                                ; preds = %for.end.307
  %next311 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %179 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next311, align 8, !tbaa !31
  %arrayidx312 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %179, i64 0
  %length313 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx312, i32 0, i32 1
  %180 = load i32, i32* %length313, align 4, !tbaa !38
  %181 = load i32*, i32** %lengths, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i32, i32* %181, i64 0
  %182 = load i32, i32* %arrayidx314, align 4, !tbaa !28
  %cmp315 = icmp eq i32 %180, %182
  br i1 %cmp315, label %if.then.317, label %if.end.354

if.then.317:                                      ; preds = %land.lhs.true.310
  %183 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #2
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %do.body

do.body:                                          ; preds = %land.end.353, %if.then.317
  %184 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom318 = zext i32 %184 to i64
  %next319 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %185 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next319, align 8, !tbaa !31
  %arrayidx320 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %185, i64 %idxprom318
  %length321 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx320, i32 0, i32 1
  %186 = load i32, i32* %length321, align 4, !tbaa !38
  %sub = sub nsw i32 %186, 1
  store i32 %sub, i32* %k, align 4, !tbaa !28
  br label %while.cond.322

while.cond.322:                                   ; preds = %while.body.336, %do.body
  %187 = load i32, i32* %k, align 4, !tbaa !28
  %cmp323 = icmp sgt i32 %187, 0
  br i1 %cmp323, label %land.rhs.325, label %land.end.335

land.rhs.325:                                     ; preds = %while.cond.322
  %188 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom326 = sext i32 %188 to i64
  %189 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom327 = zext i32 %189 to i64
  %next328 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %190 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next328, align 8, !tbaa !31
  %arrayidx329 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %190, i64 %idxprom327
  %str330 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx329, i32 0, i32 0
  %191 = load i8*, i8** %str330, align 8, !tbaa !35
  %arrayidx331 = getelementptr inbounds i8, i8* %191, i64 %idxprom326
  %192 = load i8, i8* %arrayidx331, align 1, !tbaa !39
  %conv332 = zext i8 %192 to i32
  %cmp333 = icmp eq i32 %conv332, 255
  br label %land.end.335

land.end.335:                                     ; preds = %land.rhs.325, %while.cond.322
  %193 = phi i1 [ false, %while.cond.322 ], [ %cmp333, %land.rhs.325 ]
  br i1 %193, label %while.body.336, label %while.end.337

while.body.336:                                   ; preds = %land.end.335
  %194 = load i32, i32* %k, align 4, !tbaa !28
  %dec = add nsw i32 %194, -1
  store i32 %dec, i32* %k, align 4, !tbaa !28
  br label %while.cond.322

while.end.337:                                    ; preds = %land.end.335
  br label %do.cond

do.cond:                                          ; preds = %while.end.337
  %195 = load i32, i32* %k, align 4, !tbaa !28
  %cmp338 = icmp eq i32 %195, 0
  br i1 %cmp338, label %land.lhs.true.340, label %land.end.353

land.lhs.true.340:                                ; preds = %do.cond
  %196 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom341 = zext i32 %196 to i64
  %next342 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %197 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next342, align 8, !tbaa !31
  %arrayidx343 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %197, i64 %idxprom341
  %str344 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx343, i32 0, i32 0
  %198 = load i8*, i8** %str344, align 8, !tbaa !35
  %arrayidx345 = getelementptr inbounds i8, i8* %198, i64 0
  %199 = load i8, i8* %arrayidx345, align 1, !tbaa !39
  %conv346 = zext i8 %199 to i32
  %cmp347 = icmp eq i32 %conv346, 255
  br i1 %cmp347, label %land.rhs.349, label %land.end.353

land.rhs.349:                                     ; preds = %land.lhs.true.340
  %200 = load i32, i32* %j, align 4, !tbaa !28
  %inc350 = add i32 %200, 1
  store i32 %inc350, i32* %j, align 4, !tbaa !28
  %201 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp351 = icmp ult i32 %inc350, %201
  br label %land.end.353

land.end.353:                                     ; preds = %land.rhs.349, %land.lhs.true.340, %do.cond
  %202 = phi i1 [ false, %land.lhs.true.340 ], [ false, %do.cond ], [ %cmp351, %land.rhs.349 ]
  br i1 %202, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.353
  %203 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #2
  br label %if.end.354

if.end.354:                                       ; preds = %do.end, %land.lhs.true.310, %for.end.307
  br label %if.end.370

if.else:                                          ; preds = %while.body.286
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.367, %if.else
  %204 = load i32, i32* %j, align 4, !tbaa !28
  %205 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp356 = icmp ult i32 %204, %205
  br i1 %cmp356, label %land.rhs.358, label %land.end.365

land.rhs.358:                                     ; preds = %for.cond.355
  %206 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom359 = zext i32 %206 to i64
  %next360 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %207 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next360, align 8, !tbaa !31
  %arrayidx361 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %207, i64 %idxprom359
  %length362 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx361, i32 0, i32 1
  %208 = load i32, i32* %length362, align 4, !tbaa !38
  %cmp363 = icmp eq i32 %208, 0
  br label %land.end.365

land.end.365:                                     ; preds = %land.rhs.358, %for.cond.355
  %209 = phi i1 [ false, %for.cond.355 ], [ %cmp363, %land.rhs.358 ]
  br i1 %209, label %for.body.366, label %for.end.369

for.body.366:                                     ; preds = %land.end.365
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.body.366
  %210 = load i32, i32* %j, align 4, !tbaa !28
  %inc368 = add i32 %210, 1
  store i32 %inc368, i32* %j, align 4, !tbaa !28
  br label %for.cond.355

for.end.369:                                      ; preds = %land.end.365
  br label %if.end.370

if.end.370:                                       ; preds = %for.end.369, %if.end.354
  %211 = load i32, i32* %j, align 4, !tbaa !28
  %212 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp371 = icmp eq i32 %211, %212
  br i1 %cmp371, label %if.then.373, label %if.else.375

if.then.373:                                      ; preds = %if.end.370
  %213 = load i32, i32* %blank_lines, align 4, !tbaa !28
  %inc374 = add nsw i32 %213, 1
  store i32 %inc374, i32* %blank_lines, align 4, !tbaa !28
  br label %if.end.398

if.else.375:                                      ; preds = %if.end.370
  %214 = load i32, i32* %blank_lines, align 4, !tbaa !28
  %cmp376 = icmp sgt i32 %214, 0
  br i1 %cmp376, label %if.then.378, label %if.end.388

if.then.378:                                      ; preds = %if.else.375
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %216 = load i32, i32* %blank_lines, align 4, !tbaa !28
  %call379 = call i32 @pcl3_skip_groups(%struct._IO_FILE* %215, %struct.pcl_RasterData* %rd, i32 %216) #7
  store i32 %call379, i32* %rc, align 4, !tbaa !28
  %cmp380 = icmp ne i32 %call379, 0
  br i1 %cmp380, label %if.then.382, label %if.end.387

if.then.382:                                      ; preds = %if.then.378
  %217 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp383 = icmp sgt i32 %217, 0
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.then.382
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.386:                                       ; preds = %if.then.382
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.387:                                       ; preds = %if.then.378
  store i32 0, i32* %blank_lines, align 4, !tbaa !28
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.else.375
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call389 = call i32 @pcl3_transfer_group(%struct._IO_FILE* %218, %struct.pcl_RasterData* %rd) #7
  store i32 %call389, i32* %rc, align 4, !tbaa !28
  %cmp390 = icmp ne i32 %call389, 0
  br i1 %cmp390, label %if.then.392, label %if.end.397

if.then.392:                                      ; preds = %if.end.388
  %219 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp393 = icmp sgt i32 %219, 0
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.then.392
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.396:                                       ; preds = %if.then.392
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.397:                                       ; preds = %if.end.388
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %if.then.373
  br label %while.cond.281

while.end.399:                                    ; preds = %while.cond.281
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call400 = call i32 @pcl3_end_raster(%struct._IO_FILE* %220, %struct.pcl_RasterData* %rd) #7
  store i32 %call400, i32* %rc, align 4, !tbaa !28
  %cmp401 = icmp ne i32 %call400, 0
  br i1 %cmp401, label %if.then.403, label %if.end.408

if.then.403:                                      ; preds = %while.end.399
  %221 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp404 = icmp sgt i32 %221, 0
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %if.then.403
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.407:                                       ; preds = %if.then.403
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.408:                                       ; preds = %while.end.399
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %223 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data409 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %223, i32 0, i32 76
  %call410 = call i32 @pcl3_end_page(%struct._IO_FILE* %222, %struct.pcl_FileData* %file_data409) #7
  store i32 %call410, i32* %rc, align 4, !tbaa !28
  %cmp411 = icmp ne i32 %call410, 0
  br i1 %cmp411, label %if.then.413, label %if.end.418

if.then.413:                                      ; preds = %if.end.408
  %224 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp414 = icmp sgt i32 %224, 0
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.then.413
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.417:                                       ; preds = %if.then.413
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.418:                                       ; preds = %if.end.408
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.427, %if.end.418
  %225 = load i32, i32* %j, align 4, !tbaa !28
  %226 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp420 = icmp ult i32 %225, %226
  br i1 %cmp420, label %for.body.422, label %for.end.429

for.body.422:                                     ; preds = %for.cond.419
  %227 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom423 = zext i32 %227 to i64
  %next424 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %228 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next424, align 8, !tbaa !31
  %arrayidx425 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %228, i64 %idxprom423
  %str426 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx425, i32 0, i32 0
  %229 = load i8*, i8** %str426, align 8, !tbaa !35
  call void @free(i8* %229) #8
  br label %for.inc.427

for.inc.427:                                      ; preds = %for.body.422
  %230 = load i32, i32* %j, align 4, !tbaa !28
  %inc428 = add i32 %230, 1
  store i32 %inc428, i32* %j, align 4, !tbaa !28
  br label %for.cond.419

for.end.429:                                      ; preds = %for.cond.419
  %231 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data430 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %231, i32 0, i32 76
  %compression431 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data430, i32 0, i32 22
  %232 = load i32, i32* %compression431, align 4, !tbaa !32
  %cmp432 = icmp eq i32 %232, 3
  br i1 %cmp432, label %if.then.444, label %lor.lhs.false.434

lor.lhs.false.434:                                ; preds = %for.end.429
  %233 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data435 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %233, i32 0, i32 76
  %compression436 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data435, i32 0, i32 22
  %234 = load i32, i32* %compression436, align 4, !tbaa !32
  %cmp437 = icmp eq i32 %234, 5
  br i1 %cmp437, label %if.then.444, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %lor.lhs.false.434
  %235 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data440 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %235, i32 0, i32 76
  %compression441 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data440, i32 0, i32 22
  %236 = load i32, i32* %compression441, align 4, !tbaa !32
  %cmp442 = icmp eq i32 %236, 9
  br i1 %cmp442, label %if.then.444, label %if.end.456

if.then.444:                                      ; preds = %lor.lhs.false.439, %lor.lhs.false.434, %for.end.429
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.453, %if.then.444
  %237 = load i32, i32* %j, align 4, !tbaa !28
  %238 = load i32, i32* %planes, align 4, !tbaa !28
  %cmp446 = icmp ult i32 %237, %238
  br i1 %cmp446, label %for.body.448, label %for.end.455

for.body.448:                                     ; preds = %for.cond.445
  %239 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom449 = zext i32 %239 to i64
  %previous450 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %240 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous450, align 8, !tbaa !33
  %arrayidx451 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %240, i64 %idxprom449
  %str452 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx451, i32 0, i32 0
  %241 = load i8*, i8** %str452, align 8, !tbaa !35
  call void @free(i8* %241) #8
  br label %for.inc.453

for.inc.453:                                      ; preds = %for.body.448
  %242 = load i32, i32* %j, align 4, !tbaa !28
  %inc454 = add i32 %242, 1
  store i32 %inc454, i32* %j, align 4, !tbaa !28
  br label %for.cond.445

for.end.455:                                      ; preds = %for.cond.445
  br label %if.end.456

if.end.456:                                       ; preds = %for.end.455, %lor.lhs.false.439
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.464, %if.end.456
  %243 = load i32, i32* %j, align 4, !tbaa !28
  %cmp458 = icmp ult i32 %243, 2
  br i1 %cmp458, label %for.body.460, label %for.end.466

for.body.460:                                     ; preds = %for.cond.457
  %244 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom461 = zext i32 %244 to i64
  %workspace462 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 4
  %arrayidx463 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace462, i32 0, i64 %idxprom461
  %245 = load i8*, i8** %arrayidx463, align 8, !tbaa !1
  call void @free(i8* %245) #8
  br label %for.inc.464

for.inc.464:                                      ; preds = %for.body.460
  %246 = load i32, i32* %j, align 4, !tbaa !28
  %inc465 = add i32 %246, 1
  store i32 %inc465, i32* %j, align 4, !tbaa !28
  br label %for.cond.457

for.end.466:                                      ; preds = %for.cond.457
  %247 = load i32*, i32** %lengths, align 8, !tbaa !1
  %248 = bitcast i32* %247 to i8*
  call void @free(i8* %248) #8
  %next467 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 3
  %249 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next467, align 8, !tbaa !31
  %250 = bitcast %struct.pcl_OctetString* %249 to i8*
  call void @free(i8* %250) #8
  %previous468 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %rd, i32 0, i32 2
  %251 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous468, align 8, !tbaa !33
  %252 = bitcast %struct.pcl_OctetString* %251 to i8*
  call void @free(i8* %252) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.466, %if.end.417, %if.then.416, %if.end.407, %if.then.406, %if.end.396, %if.then.395, %if.end.386, %if.then.385, %if.end.279, %if.then.278, %if.end.270, %if.then.269, %for.end.257, %if.then.61, %if.end, %if.then.8
  %253 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i32** %lengths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  %255 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast %struct.pcl_RasterData* %rd to i8*
  call void @llvm.lifetime.end(i64 72, i8* %256) #2
  %257 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #2
  %258 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #2
  %259 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = load i32, i32* %retval
  ret i32 %261
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
define internal void @pcl3_flag_mismatch_reporter(%struct._IO_FILE* %err, %struct.s_eprn_Device* %eprn, i32 %no_match) #1 {
entry:
  %err.addr = alloca %struct._IO_FILE*, align 8
  %eprn.addr = alloca %struct.s_eprn_Device*, align 8
  %no_match.addr = alloca i32, align 4
  %epref = alloca i8*, align 8
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8, !tbaa !1
  store %struct.s_eprn_Device* %eprn, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  store i32 %no_match, i32* %no_match.addr, align 4, !tbaa !28
  %0 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %1, i32 0, i32 20
  %2 = load i32, i32* %CUPS_messages, align 4, !tbaa !40
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %3 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %desired_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %3, i32 0, i32 4
  %4 = load i32, i32* %desired_flags, align 4, !tbaa !41
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @gs_program_name() #7
  %call1 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call, i64 %call1) #7
  %5 = load i8*, i8** %epref, align 8, !tbaa !1
  %6 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %6, i32 0, i32 0
  %7 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !42
  %name = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8, !tbaa !43
  %call2 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.112, i32 0, i32 0), i8* %5, i8* %8) #7
  br label %if.end.47

if.else:                                          ; preds = %entry
  %9 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %desired_flags3 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %9, i32 0, i32 4
  %10 = load i32, i32* %desired_flags3, align 4, !tbaa !41
  %cmp4 = icmp eq i32 %10, 2048
  br i1 %cmp4, label %if.then.5, label %if.else.19

if.then.5:                                        ; preds = %if.else
  %call6 = call i8* @gs_program_name() #7
  %call7 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call6, i64 %call7) #7
  %11 = load i8*, i8** %epref, align 8, !tbaa !1
  %12 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %cap8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %12, i32 0, i32 0
  %13 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap8, align 8, !tbaa !42
  %name9 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %13, i32 0, i32 0
  %14 = load i8*, i8** %name9, align 8, !tbaa !43
  %call10 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.113, i32 0, i32 0), i8* %11, i8* %14) #7
  %15 = load i32, i32* %no_match.addr, align 4, !tbaa !28
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then.5
  %call13 = call i8* @gs_program_name() #7
  %call14 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call13, i64 %call14) #7
  %call15 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.5
  %call16 = call i8* @gs_program_name() #7
  %call17 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call16, i64 %call17) #7
  %call18 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0)) #7
  br label %if.end.46

if.else.19:                                       ; preds = %if.else
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %desired_flags20 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 4
  %17 = load i32, i32* %desired_flags20, align 4, !tbaa !41
  %cmp21 = icmp eq i32 %17, 512
  br i1 %cmp21, label %if.then.22, label %if.else.41

if.then.22:                                       ; preds = %if.else.19
  %call23 = call i8* @gs_program_name() #7
  %call24 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call23, i64 %call24) #7
  %18 = load i8*, i8** %epref, align 8, !tbaa !1
  %19 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %cap25 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %19, i32 0, i32 0
  %20 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap25, align 8, !tbaa !42
  %name26 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %20, i32 0, i32 0
  %21 = load i8*, i8** %name26, align 8, !tbaa !43
  %call27 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.116, i32 0, i32 0), i8* %18, i8* %21) #7
  %22 = load i32, i32* %no_match.addr, align 4, !tbaa !28
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %if.then.22
  %call30 = call i8* @gs_program_name() #7
  %call31 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call30, i64 %call31) #7
  %call32 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0)) #7
  br label %if.end.37

if.else.33:                                       ; preds = %if.then.22
  %call34 = call i8* @gs_program_name() #7
  %call35 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call34, i64 %call35) #7
  %call36 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #7
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.then.29
  %call38 = call i8* @gs_program_name() #7
  %call39 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call38, i64 %call39) #7
  %call40 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0)) #7
  br label %if.end.45

if.else.41:                                       ; preds = %if.else.19
  %call42 = call i8* @gs_program_name() #7
  %call43 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call42, i64 %call43) #7
  %23 = load i8*, i8** %epref, align 8, !tbaa !1
  %call44 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.120, i32 0, i32 0), i8* %23) #7
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.end.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %24 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pcl3_open_device(%struct.gx_device_s* %device) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %dev = alloca %struct.pcl3_Device*, align 8
  %epref = alloca i8*, align 8
  %wpref = alloca i8*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %data = alloca %struct.pcl_FileData*, align 8
  %j = alloca i32, align 4
  %buffer = alloca [50 x i8], align 16
  %same_leading_edge = alloca i32, align 4
  %orient = alloca i32, align 4
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pcl3_Device*
  store %struct.pcl3_Device* %2, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %3 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %4, i32 0, i32 68
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 20
  %5 = load i32, i32* %CUPS_messages, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %6 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %7, i32 0, i32 68
  %CUPS_messages2 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 20
  %8 = load i32, i32* %CUPS_messages2, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %8, 0
  %cond4 = select i1 %tobool3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond4, i8** %wpref, align 8, !tbaa !1
  %9 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %10, i32 0, i32 73
  %11 = load i32, i32* %initialized, align 4, !tbaa !45
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  call void @init(%struct.pcl3_Device* %12) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn6 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %13, i32 0, i32 68
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn6, i32 0, i32 15
  %14 = load i32, i32* %black_levels, align 4, !tbaa !46
  %cmp = icmp ugt i32 %14, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn7 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %15, i32 0, i32 68
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn7, i32 0, i32 16
  %16 = load i32, i32* %non_black_levels, align 4, !tbaa !47
  %cmp8 = icmp ugt i32 %16, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %17, i32 0, i32 76
  %print_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data, i32 0, i32 12
  %18 = load i32, i32* %print_quality, align 4, !tbaa !48
  %cmp9 = icmp eq i32 %18, -1
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true
  %call = call i8* @gs_program_name() #7
  %call11 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call, i64 %call11) #7
  %19 = load i8*, i8** %wpref, align 8, !tbaa !1
  %20 = load i8*, i8** %wpref, align 8, !tbaa !1
  %call12 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.28, i32 0, i32 0), i8* %19, i8* %20) #7
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %land.lhs.true, %lor.lhs.false
  %21 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %22 = bitcast %struct.pcl3_Device* %21 to %struct.eprn_Device*
  %23 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data14 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %23, i32 0, i32 76
  %media_source = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data14, i32 0, i32 8
  %24 = load i32, i32* %media_source, align 4, !tbaa !49
  %cmp15 = icmp eq i32 %24, -1
  %cond16 = select i1 %cmp15, i32 2048, i32 0
  %25 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %25, i32 0, i32 70
  %26 = load i32, i32* %use_card, align 4, !tbaa !50
  %cmp17 = icmp eq i32 %26, 1
  %cond18 = select i1 %cmp17, i32 512, i32 0
  %or = or i32 %cond16, %cond18
  %27 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card19 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %27, i32 0, i32 70
  %28 = load i32, i32* %use_card19, align 4, !tbaa !50
  %cmp20 = icmp eq i32 %28, 0
  %cond21 = select i1 %cmp20, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @card_is_optional, i32 0, i32 0), i32* null
  call void @eprn_set_media_flags(%struct.eprn_Device* %22, i32 %or, i32* %cond21) #7
  %29 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn22 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %29, i32 0, i32 68
  %soft_tumble = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn22, i32 0, i32 13
  store i32 0, i32* %soft_tumble, align 4, !tbaa !51
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call23 = call i32 @eprn_open_device(%struct.gx_device_s* %30) #7
  store i32 %call23, i32* %rc, align 4, !tbaa !28
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.13
  %31 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

if.end.26:                                        ; preds = %if.end.13
  %32 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data27 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %33, i32 0, i32 76
  store %struct.pcl_FileData* %file_data27, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn28 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %35, i32 0, i32 68
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn28, i32 0, i32 7
  %36 = load i32, i32* %code, align 4, !tbaa !52
  %call29 = call i32 @pcl3_page_size(i32 %36) #7
  %37 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %37, i32 0, i32 6
  store i32 %call29, i32* %size, align 4, !tbaa !53
  %38 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %size30 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %38, i32 0, i32 6
  %39 = load i32, i32* %size30, align 4, !tbaa !53
  %cmp31 = icmp eq i32 %39, 0
  br i1 %cmp31, label %if.then.32, label %if.end.63

if.then.32:                                       ; preds = %if.end.26
  %40 = bitcast [50 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 50, i8* %40) #2
  %call33 = call i8* @gs_program_name() #7
  %call34 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call33, i64 %call34) #7
  %41 = load i8*, i8** %epref, align 8, !tbaa !1
  %42 = load i8*, i8** %epref, align 8, !tbaa !1
  %call35 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.29, i32 0, i32 0), i8* %41, i8* %42) #7
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buffer, i32 0, i32 0
  %43 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn36 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %43, i32 0, i32 68
  %code37 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn36, i32 0, i32 7
  %44 = load i32, i32* %code37, align 4, !tbaa !52
  %call38 = call i32 @ms_find_name_from_code(i8* %arraydecay, i64 50, i32 %44, %struct.ms_Flag* getelementptr inbounds ([2 x %struct.ms_Flag], [2 x %struct.ms_Flag]* @flag_description, i32 0, i32 0)) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.32
  %call41 = call i8* @gs_program_name() #7
  %call42 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call41, i64 %call42) #7
  %arraydecay43 = getelementptr inbounds [50 x i8], [50 x i8]* %buffer, i32 0, i32 0
  %call44 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay43) #7
  br label %if.end.48

if.else:                                          ; preds = %if.then.32
  %call45 = call i8* @gs_program_name() #7
  %call46 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call45, i64 %call46) #7
  %call47 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #7
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.40
  %call49 = call i8* @gs_program_name() #7
  %call50 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call49, i64 %call50) #7
  %45 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %45, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %46 = load float, float* %arrayidx, align 4, !tbaa !54
  %conv = fpext float %46 to double
  %47 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %MediaSize51 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %47, i32 0, i32 19
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize51, i32 0, i64 1
  %48 = load float, float* %arrayidx52, align 4, !tbaa !54
  %conv53 = fpext float %48 to double
  %49 = load i8*, i8** %epref, align 8, !tbaa !1
  %call54 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.32, i32 0, i32 0), double %conv, double %conv53, i8* %49) #7
  %50 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn55 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %50, i32 0, i32 68
  %media_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn55, i32 0, i32 1
  %51 = load i8*, i8** %media_file, align 8, !tbaa !55
  %cmp56 = icmp ne i8* %51, null
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.48
  %call59 = call i8* @gs_program_name() #7
  %call60 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call59, i64 %call60) #7
  %52 = load i8*, i8** %epref, align 8, !tbaa !1
  %53 = load i8*, i8** %epref, align 8, !tbaa !1
  %call61 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.33, i32 0, i32 0), i8* %52, i8* %53) #7
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.48
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %54 = bitcast [50 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 50, i8* %54) #2
  br label %cleanup

if.end.63:                                        ; preds = %if.end.26
  %55 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %duplex = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %55, i32 0, i32 10
  store i32 -1, i32* %duplex, align 4, !tbaa !56
  %56 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %56, i32 0, i32 50
  %57 = load i32, i32* %Duplex_set, align 4, !tbaa !57
  %cmp64 = icmp sgt i32 %57, 0
  br i1 %cmp64, label %if.then.66, label %if.end.114

if.then.66:                                       ; preds = %if.end.63
  %58 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %58, i32 0, i32 49
  %59 = load i32, i32* %Duplex, align 4, !tbaa !58
  %tobool67 = icmp ne i32 %59, 0
  br i1 %tobool67, label %if.then.68, label %if.else.111

if.then.68:                                       ; preds = %if.then.66
  %60 = bitcast i32* %same_leading_edge to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn69 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %62, i32 0, i32 68
  %default_orientation = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn69, i32 0, i32 8
  %63 = load i32, i32* %default_orientation, align 4, !tbaa !59
  store i32 %63, i32* %orient, align 4, !tbaa !28
  %64 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %MediaSize70 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %64, i32 0, i32 19
  %arrayidx71 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize70, i32 0, i64 1
  %65 = load float, float* %arrayidx71, align 4, !tbaa !54
  %66 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %MediaSize72 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %66, i32 0, i32 19
  %arrayidx73 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize72, i32 0, i64 0
  %67 = load float, float* %arrayidx73, align 4, !tbaa !54
  %cmp74 = fcmp olt float %65, %67
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.68
  %68 = load i32, i32* %orient, align 4, !tbaa !28
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %orient, align 4, !tbaa !28
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.68
  %69 = load i32, i32* %orient, align 4, !tbaa !28
  %rem = srem i32 %69, 2
  %cmp78 = icmp eq i32 %rem, 0
  %conv79 = zext i1 %cmp78 to i32
  %70 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %tumble = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %70, i32 0, i32 72
  %71 = load i32, i32* %tumble, align 4, !tbaa !60
  %cmp80 = icmp ne i32 %71, 0
  %conv81 = zext i1 %cmp80 to i32
  %cmp82 = icmp ne i32 %conv79, %conv81
  %conv83 = zext i1 %cmp82 to i32
  store i32 %conv83, i32* %same_leading_edge, align 4, !tbaa !28
  %72 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %72, i32 0, i32 71
  %73 = load i32, i32* %duplex_capability, align 4, !tbaa !61
  %cmp84 = icmp ne i32 %73, 3
  br i1 %cmp84, label %land.rhs, label %land.end.96

land.rhs:                                         ; preds = %if.end.77
  %74 = load i32, i32* %same_leading_edge, align 4, !tbaa !28
  %tobool86 = icmp ne i32 %74, 0
  br i1 %tobool86, label %land.lhs.true.87, label %lor.rhs

land.lhs.true.87:                                 ; preds = %land.rhs
  %75 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability88 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %75, i32 0, i32 71
  %76 = load i32, i32* %duplex_capability88, align 4, !tbaa !61
  %cmp89 = icmp ne i32 %76, 1
  br i1 %cmp89, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.87, %land.rhs
  %77 = load i32, i32* %same_leading_edge, align 4, !tbaa !28
  %tobool91 = icmp ne i32 %77, 0
  br i1 %tobool91, label %land.end, label %land.rhs.92

land.rhs.92:                                      ; preds = %lor.rhs
  %78 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability93 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %78, i32 0, i32 71
  %79 = load i32, i32* %duplex_capability93, align 4, !tbaa !61
  %cmp94 = icmp ne i32 %79, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs.92, %lor.rhs
  %80 = phi i1 [ false, %lor.rhs ], [ %cmp94, %land.rhs.92 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.87
  %81 = phi i1 [ true, %land.lhs.true.87 ], [ %80, %land.end ]
  br label %land.end.96

land.end.96:                                      ; preds = %lor.end, %if.end.77
  %82 = phi i1 [ false, %if.end.77 ], [ %81, %lor.end ]
  %land.ext = zext i1 %82 to i32
  %83 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn97 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %83, i32 0, i32 68
  %soft_tumble98 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn97, i32 0, i32 13
  store i32 %land.ext, i32* %soft_tumble98, align 4, !tbaa !51
  %84 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn99 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %84, i32 0, i32 68
  %soft_tumble100 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn99, i32 0, i32 13
  %85 = load i32, i32* %soft_tumble100, align 4, !tbaa !51
  %tobool101 = icmp ne i32 %85, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %land.end.96
  %86 = load i32, i32* %same_leading_edge, align 4, !tbaa !28
  %tobool103 = icmp ne i32 %86, 0
  %lnot = xor i1 %tobool103, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %same_leading_edge, align 4, !tbaa !28
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %land.end.96
  %87 = load i32, i32* %same_leading_edge, align 4, !tbaa !28
  %tobool105 = icmp ne i32 %87, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.end.104
  %88 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %duplex107 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %88, i32 0, i32 10
  store i32 1, i32* %duplex107, align 4, !tbaa !56
  br label %if.end.110

if.else.108:                                      ; preds = %if.end.104
  %89 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %duplex109 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %89, i32 0, i32 10
  store i32 2, i32* %duplex109, align 4, !tbaa !56
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.106
  %90 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %same_leading_edge to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %if.end.113

if.else.111:                                      ; preds = %if.then.66
  %92 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %duplex112 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %92, i32 0, i32 10
  store i32 0, i32* %duplex112, align 4, !tbaa !56
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.end.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.63
  %93 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  call void @set_palette(%struct.pcl3_Device* %93) #7
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.114
  %94 = load i32, i32* %j, align 4, !tbaa !28
  %95 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %95, i32 0, i32 17
  %96 = load i32, i32* %number_of_colorants, align 4, !tbaa !62
  %cmp115 = icmp ult i32 %94, %96
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %97, i32 0, i32 22
  %arrayidx117 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %98 = load float, float* %arrayidx117, align 4, !tbaa !54
  %conv118 = fpext float %98 to double
  %add = fadd double %conv118, 5.000000e-01
  %conv119 = fptoui double %add to i32
  %99 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom = zext i32 %99 to i64
  %100 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %colorant_array = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %100, i32 0, i32 19
  %arrayidx120 = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array, i32 0, i64 %idxprom
  %hres = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx120, i32 0, i32 0
  store i32 %conv119, i32* %hres, align 4, !tbaa !63
  %101 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %HWResolution121 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %101, i32 0, i32 22
  %arrayidx122 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution121, i32 0, i64 1
  %102 = load float, float* %arrayidx122, align 4, !tbaa !54
  %conv123 = fpext float %102 to double
  %add124 = fadd double %conv123, 5.000000e-01
  %conv125 = fptoui double %add124 to i32
  %103 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom126 = zext i32 %103 to i64
  %104 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %colorant_array127 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %104, i32 0, i32 19
  %arrayidx128 = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array127, i32 0, i64 %idxprom126
  %vres = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx128, i32 0, i32 1
  store i32 %conv125, i32* %vres, align 4, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %105 = load i32, i32* %j, align 4, !tbaa !28
  %inc129 = add i32 %105, 1
  store i32 %inc129, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %106, i32 0, i32 16
  %107 = load i32, i32* %palette, align 4, !tbaa !66
  %cmp130 = icmp eq i32 %107, 2
  br i1 %cmp130, label %if.then.136, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %for.end
  %108 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette133 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %108, i32 0, i32 16
  %109 = load i32, i32* %palette133, align 4, !tbaa !66
  %cmp134 = icmp eq i32 %109, 4
  br i1 %cmp134, label %if.then.136, label %if.else.149

if.then.136:                                      ; preds = %lor.lhs.false.132, %for.end
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.146, %if.then.136
  %110 = load i32, i32* %j, align 4, !tbaa !28
  %cmp138 = icmp ult i32 %110, 3
  br i1 %cmp138, label %for.body.140, label %for.end.148

for.body.140:                                     ; preds = %for.cond.137
  %111 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn141 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %111, i32 0, i32 68
  %non_black_levels142 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn141, i32 0, i32 16
  %112 = load i32, i32* %non_black_levels142, align 4, !tbaa !47
  %113 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom143 = zext i32 %113 to i64
  %114 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %colorant_array144 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %114, i32 0, i32 19
  %arrayidx145 = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array144, i32 0, i64 %idxprom143
  %levels = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx145, i32 0, i32 2
  store i32 %112, i32* %levels, align 4, !tbaa !67
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.140
  %115 = load i32, i32* %j, align 4, !tbaa !28
  %inc147 = add i32 %115, 1
  store i32 %inc147, i32* %j, align 4, !tbaa !28
  br label %for.cond.137

for.end.148:                                      ; preds = %for.cond.137
  br label %if.end.169

if.else.149:                                      ; preds = %lor.lhs.false.132
  %116 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn150 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %116, i32 0, i32 68
  %black_levels151 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn150, i32 0, i32 15
  %117 = load i32, i32* %black_levels151, align 4, !tbaa !46
  %118 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %colorant_array152 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %118, i32 0, i32 19
  %arrayidx153 = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array152, i32 0, i64 0
  %levels154 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx153, i32 0, i32 2
  store i32 %117, i32* %levels154, align 4, !tbaa !67
  store i32 1, i32* %j, align 4, !tbaa !28
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.166, %if.else.149
  %119 = load i32, i32* %j, align 4, !tbaa !28
  %120 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants156 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %120, i32 0, i32 17
  %121 = load i32, i32* %number_of_colorants156, align 4, !tbaa !62
  %cmp157 = icmp ult i32 %119, %121
  br i1 %cmp157, label %for.body.159, label %for.end.168

for.body.159:                                     ; preds = %for.cond.155
  %122 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn160 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %122, i32 0, i32 68
  %non_black_levels161 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn160, i32 0, i32 16
  %123 = load i32, i32* %non_black_levels161, align 4, !tbaa !47
  %124 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom162 = zext i32 %124 to i64
  %125 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %colorant_array163 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %125, i32 0, i32 19
  %arrayidx164 = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array163, i32 0, i64 %idxprom162
  %levels165 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx164, i32 0, i32 2
  store i32 %123, i32* %levels165, align 4, !tbaa !67
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.159
  %126 = load i32, i32* %j, align 4, !tbaa !28
  %inc167 = add i32 %126, 1
  store i32 %inc167, i32* %j, align 4, !tbaa !28
  br label %for.cond.155

for.end.168:                                      ; preds = %for.cond.155
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.168, %for.end.148
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.169, %if.end.62
  %127 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.171 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %129 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %cleanup.cont, %cleanup, %if.then.25
  %130 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare void @eprn_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @eprn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @pcl3_close_device(%struct.gx_device_s* %device) #1 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %dev = alloca %struct.pcl3_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pcl3_Device*
  store %struct.pcl3_Device* %2, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %3 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configured = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %3, i32 0, i32 74
  %4 = load i32, i32* %configured, align 4, !tbaa !26
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %5, i32 0, i32 52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !68
  %cmp = icmp ne %struct._IO_FILE* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %7, i32 0, i32 52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !68
  %9 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %9, i32 0, i32 76
  %call = call i32 @pcl3_end_file(%struct._IO_FILE* %8, %struct.pcl_FileData* %file_data) #7
  %10 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configured2 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %10, i32 0, i32 74
  store i32 0, i32* %configured2, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call3 = call i32 @eprn_close_device(%struct.gx_device_s* %11) #7
  %12 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 %call3
}

declare i64 @eprn_map_rgb_color_for_CMY_or_K(%struct.gx_device_s*, i16*) #0

declare i32 @eprn_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pcl3_get_params(%struct.gx_device_s* %device, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %dev = alloca %struct.pcl3_Device*, align 8
  %data = alloca %struct.pcl_FileData*, align 8
  %temp = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %temp75 = alloca i32, align 4
  %__s1_len98 = alloca i64, align 8
  %__s2_len100 = alloca i64, align 8
  %tmp101 = alloca i32, align 4
  %__s1108 = alloca i8*, align 8
  %__result111 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  %temp161 = alloca i32, align 4
  %temp266 = alloca i32, align 4
  %__s1_len283 = alloca i64, align 8
  %__s2_len285 = alloca i64, align 8
  %tmp286 = alloca i32, align 4
  %__s1293 = alloca i8*, align 8
  %__result296 = alloca i32, align 4
  %tmp334 = alloca i32, align 4
  %name = alloca i8*, align 8
  %__s1_len360 = alloca i64, align 8
  %__s2_len362 = alloca i64, align 8
  %tmp363 = alloca i32, align 4
  %__s1370 = alloca i8*, align 8
  %__result373 = alloca i32, align 4
  %tmp411 = alloca i32, align 4
  %temp436 = alloca i32, align 4
  %__s1_len481 = alloca i64, align 8
  %__s2_len483 = alloca i64, align 8
  %tmp484 = alloca i32, align 4
  %__s1491 = alloca i8*, align 8
  %__result494 = alloca i32, align 4
  %tmp532 = alloca i32, align 4
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.pcl3_Device*
  store %struct.pcl3_Device* %3, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %4 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %5, i32 0, i32 76
  store %struct.pcl_FileData* %file_data, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %6 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %8, i32 0, i32 73
  %9 = load i32, i32* %initialized, align 4, !tbaa !45
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  call void @init(%struct.pcl3_Device* %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @eprn_get_params(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #7
  store i32 %call, i32* %rc, align 4, !tbaa !28
  %13 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %14 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.2:                                         ; preds = %if.end
  %15 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %15, i32 0, i32 22
  %16 = load i32, i32* %compression, align 4, !tbaa !69
  store i32 %16, i32* %temp, align 4, !tbaa !28
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_int(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32* %temp) #7
  store i32 %call3, i32* %rc, align 4, !tbaa !28
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %18 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.6:                                         ; preds = %if.end.2
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configure_every_page = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %20, i32 0, i32 75
  %call7 = call i32 @param_write_bool(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32* %configure_every_page) #7
  store i32 %call7, i32* %rc, align 4, !tbaa !28
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %21 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.10:                                        ; preds = %if.end.6
  %22 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %dry_time = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %22, i32 0, i32 21
  %23 = load i32, i32* %dry_time, align 4, !tbaa !70
  %cmp11 = icmp slt i32 %23, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 @param_write_null(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #7
  store i32 %call13, i32* %rc, align 4, !tbaa !28
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %25 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.22

if.else:                                          ; preds = %if.end.10
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %dry_time17 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %27, i32 0, i32 21
  %call18 = call i32 @param_write_int(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32* %dry_time17) #7
  store i32 %call18, i32* %rc, align 4, !tbaa !28
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  %28 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.21:                                        ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.16
  %29 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.22
  %call23 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call23, i64* %__s2_len, align 8, !tbaa !71
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp24 = icmp ult i64 %31, 4
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %32 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %33, i32 0, i32 2
  %34 = load i8*, i8** %dname, align 8, !tbaa !72
  store i8* %34, i8** %__s1, align 8, !tbaa !1
  %35 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %37 to i32
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv27 = zext i8 %38 to i32
  %sub = sub nsw i32 %conv, %conv27
  store i32 %sub, i32* %__result, align 4, !tbaa !28
  %39 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp28 = icmp ugt i64 %39, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.60

land.lhs.true.30:                                 ; preds = %cond.true
  %40 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp31 = icmp eq i32 %40, 0
  br i1 %cmp31, label %if.then.33, label %if.end.60

if.then.33:                                       ; preds = %land.lhs.true.30
  %41 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx34, align 1, !tbaa !39
  %conv35 = zext i8 %42 to i32
  %43 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv36 = zext i8 %43 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !28
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp38 = icmp ugt i64 %44, 1
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.59

land.lhs.true.40:                                 ; preds = %if.then.33
  %45 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp41 = icmp eq i32 %45, 0
  br i1 %cmp41, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %land.lhs.true.40
  %46 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %46, i64 2
  %47 = load i8, i8* %arrayidx44, align 1, !tbaa !39
  %conv45 = zext i8 %47 to i32
  %48 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv46 = zext i8 %48 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !28
  %49 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp48 = icmp ugt i64 %49, 2
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.58

land.lhs.true.50:                                 ; preds = %if.then.43
  %50 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp51 = icmp eq i32 %50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %land.lhs.true.50
  %51 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i8, i8* %arrayidx54, align 1, !tbaa !39
  %conv55 = zext i8 %52 to i32
  %53 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv56 = zext i8 %53 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  store i32 %sub57, i32* %__result, align 4, !tbaa !28
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %land.lhs.true.50, %if.then.43
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.40, %if.then.33
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.30, %cond.true
  %54 = load i32, i32* %__result, align 4, !tbaa !28
  store i32 %54, i32* %tmp61, !tbaa !28
  %55 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = load i32, i32* %tmp61, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.22
  %58 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname62 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %58, i32 0, i32 2
  %59 = load i8*, i8** %dname62, align 8, !tbaa !72
  %call63 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.60
  %cond = phi i32 [ %57, %if.end.60 ], [ %call63, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !28
  %60 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = load i32, i32* %tmp, !tbaa !28
  %cmp64 = icmp eq i32 %62, 0
  br i1 %cmp64, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %cond.end
  %63 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %63, i32 0, i32 71
  %64 = load i32, i32* %duplex_capability, align 4, !tbaa !61
  %call67 = call i32 @eprn_get_string(i32 %64, %struct.eprn_StringAndInt* getelementptr inbounds ([5 x %struct.eprn_StringAndInt], [5 x %struct.eprn_StringAndInt]* @duplex_capabilities_list, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  %65 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call68 = call i32 @param_write_string(%struct.gs_param_list_s* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call68, i32* %rc, align 4, !tbaa !28
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.66
  %66 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.72:                                        ; preds = %if.then.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %cond.end
  %67 = bitcast i32* %temp75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data76 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %68, i32 0, i32 76
  %manual_feed = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data76, i32 0, i32 11
  %69 = load i32, i32* %manual_feed, align 4, !tbaa !73
  store i32 %69, i32* %temp75, align 4, !tbaa !28
  %70 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call77 = call i32 @param_write_bool(%struct.gs_param_list_s* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32* %temp75) #7
  store i32 %call77, i32* %rc, align 4, !tbaa !28
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.73
  %71 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.end.73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.then.80
  %72 = bitcast i32* %temp75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.558 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %73 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %media_type = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %73, i32 0, i32 7
  %74 = load i32, i32* %media_type, align 4, !tbaa !74
  call void @get_string_for_int(i32 %74, %struct.eprn_StringAndInt* getelementptr inbounds ([13 x %struct.eprn_StringAndInt], [13 x %struct.eprn_StringAndInt]* @media_type_list, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  %75 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call82 = call i32 @param_write_string(%struct.gs_param_list_s* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call82, i32* %rc, align 4, !tbaa !28
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %cleanup.cont
  %76 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.86:                                        ; preds = %cleanup.cont
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %78 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %media_destination = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %78, i32 0, i32 9
  %call87 = call i32 @param_write_int(%struct.gs_param_list_s* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32* %media_destination) #7
  store i32 %call87, i32* %rc, align 4, !tbaa !28
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.86
  %79 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.91:                                        ; preds = %if.end.86
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %81 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %media_source = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %81, i32 0, i32 8
  %call92 = call i32 @param_write_int(%struct.gs_param_list_s* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32* %media_source) #7
  store i32 %call92, i32* %rc, align 4, !tbaa !28
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.91
  %82 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.96:                                        ; preds = %if.end.91
  %83 = bitcast i64* %__s1_len98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = bitcast i64* %__s2_len100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.102, label %cond.false.150

land.lhs.true.102:                                ; preds = %if.end.96
  %call103 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call103, i64* %__s2_len100, align 8, !tbaa !71
  %85 = load i64, i64* %__s2_len100, align 8, !tbaa !71
  %cmp104 = icmp ult i64 %85, 4
  br i1 %cmp104, label %cond.true.106, label %cond.false.150

cond.true.106:                                    ; preds = %land.lhs.true.102
  %86 = bitcast i8** %__s1108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname109 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %87, i32 0, i32 2
  %88 = load i8*, i8** %dname109, align 8, !tbaa !72
  store i8* %88, i8** %__s1108, align 8, !tbaa !1
  %89 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx112, align 1, !tbaa !39
  %conv113 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv114 = zext i8 %92 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result111, align 4, !tbaa !28
  %93 = load i64, i64* %__s2_len100, align 8, !tbaa !71
  %cmp116 = icmp ugt i64 %93, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.148

land.lhs.true.118:                                ; preds = %cond.true.106
  %94 = load i32, i32* %__result111, align 4, !tbaa !28
  %cmp119 = icmp eq i32 %94, 0
  br i1 %cmp119, label %if.then.121, label %if.end.148

if.then.121:                                      ; preds = %land.lhs.true.118
  %95 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx122, align 1, !tbaa !39
  %conv123 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv124 = zext i8 %97 to i32
  %sub125 = sub nsw i32 %conv123, %conv124
  store i32 %sub125, i32* %__result111, align 4, !tbaa !28
  %98 = load i64, i64* %__s2_len100, align 8, !tbaa !71
  %cmp126 = icmp ugt i64 %98, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.147

land.lhs.true.128:                                ; preds = %if.then.121
  %99 = load i32, i32* %__result111, align 4, !tbaa !28
  %cmp129 = icmp eq i32 %99, 0
  br i1 %cmp129, label %if.then.131, label %if.end.147

if.then.131:                                      ; preds = %land.lhs.true.128
  %100 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx132, align 1, !tbaa !39
  %conv133 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv134 = zext i8 %102 to i32
  %sub135 = sub nsw i32 %conv133, %conv134
  store i32 %sub135, i32* %__result111, align 4, !tbaa !28
  %103 = load i64, i64* %__s2_len100, align 8, !tbaa !71
  %cmp136 = icmp ugt i64 %103, 2
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.146

land.lhs.true.138:                                ; preds = %if.then.131
  %104 = load i32, i32* %__result111, align 4, !tbaa !28
  %cmp139 = icmp eq i32 %104, 0
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %land.lhs.true.138
  %105 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx142, align 1, !tbaa !39
  %conv143 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv144 = zext i8 %107 to i32
  %sub145 = sub nsw i32 %conv143, %conv144
  store i32 %sub145, i32* %__result111, align 4, !tbaa !28
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %land.lhs.true.138, %if.then.131
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.128, %if.then.121
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.118, %cond.true.106
  %108 = load i32, i32* %__result111, align 4, !tbaa !28
  store i32 %108, i32* %tmp149, !tbaa !28
  %109 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i8** %__s1108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %tmp149, !tbaa !28
  br label %cond.end.153

cond.false.150:                                   ; preds = %land.lhs.true.102, %if.end.96
  %112 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname151 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %112, i32 0, i32 2
  %113 = load i8*, i8** %dname151, align 8, !tbaa !72
  %call152 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %if.end.148
  %cond154 = phi i32 [ %111, %if.end.148 ], [ %call152, %cond.false.150 ]
  store i32 %cond154, i32* %tmp101, !tbaa !28
  %114 = bitcast i64* %__s2_len100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = bitcast i64* %__s1_len98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = load i32, i32* %tmp101, !tbaa !28
  %cmp155 = icmp eq i32 %116, 0
  br i1 %cmp155, label %if.then.159, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.153
  %117 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %117, i32 0, i32 0
  %118 = load i32, i32* %level, align 4, !tbaa !75
  %cmp157 = icmp uge i32 %118, 3
  br i1 %cmp157, label %if.then.159, label %if.end.173

if.then.159:                                      ; preds = %lor.lhs.false, %cond.end.153
  %119 = bitcast i32* %temp161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #2
  %120 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level162 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %120, i32 0, i32 0
  %121 = load i32, i32* %level162, align 4, !tbaa !75
  %cmp163 = icmp eq i32 %121, 4
  %conv164 = zext i1 %cmp163 to i32
  store i32 %conv164, i32* %temp161, align 4, !tbaa !28
  %122 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call165 = call i32 @param_write_bool(%struct.gs_param_list_s* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32* %temp161) #7
  store i32 %call165, i32* %rc, align 4, !tbaa !28
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.159
  %123 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.169:                                       ; preds = %if.then.159
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %if.end.169, %if.then.168
  %124 = bitcast i32* %temp161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %cleanup.dest.171 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.171, label %cleanup.558 [
    i32 0, label %cleanup.cont.172
  ]

cleanup.cont.172:                                 ; preds = %cleanup.170
  br label %if.end.173

if.end.173:                                       ; preds = %cleanup.cont.172, %lor.lhs.false
  %125 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init1 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %125, i32 0, i32 4
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1, i32 0, i32 1
  %126 = load i32, i32* %length, align 4, !tbaa !76
  %cmp174 = icmp eq i32 %126, 0
  br i1 %cmp174, label %if.then.176, label %if.else.182

if.then.176:                                      ; preds = %if.end.173
  %127 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call177 = call i32 @param_write_null(%struct.gs_param_list_s* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #7
  store i32 %call177, i32* %rc, align 4, !tbaa !28
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.176
  %128 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.181:                                       ; preds = %if.then.176
  br label %if.end.192

if.else.182:                                      ; preds = %if.end.173
  %129 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init1183 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %129, i32 0, i32 4
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1183, i32 0, i32 0
  %130 = load i8*, i8** %str, align 8, !tbaa !77
  %data184 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %130, i8** %data184, align 8, !tbaa !78
  %131 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init1185 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %131, i32 0, i32 4
  %length186 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1185, i32 0, i32 1
  %132 = load i32, i32* %length186, align 4, !tbaa !76
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %132, i32* %size, align 4, !tbaa !80
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !81
  %133 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call187 = call i32 @param_write_string(%struct.gs_param_list_s* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call187, i32* %rc, align 4, !tbaa !28
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.else.182
  %134 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.191:                                       ; preds = %if.else.182
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.end.181
  %135 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init2 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %135, i32 0, i32 5
  %length193 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2, i32 0, i32 1
  %136 = load i32, i32* %length193, align 4, !tbaa !82
  %cmp194 = icmp eq i32 %136, 0
  br i1 %cmp194, label %if.then.196, label %if.else.202

if.then.196:                                      ; preds = %if.end.192
  %137 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call197 = call i32 @param_write_null(%struct.gs_param_list_s* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)) #7
  store i32 %call197, i32* %rc, align 4, !tbaa !28
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.then.196
  %138 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.201:                                       ; preds = %if.then.196
  br label %if.end.215

if.else.202:                                      ; preds = %if.end.192
  %139 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init2203 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %139, i32 0, i32 5
  %str204 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2203, i32 0, i32 0
  %140 = load i8*, i8** %str204, align 8, !tbaa !83
  %data205 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %140, i8** %data205, align 8, !tbaa !78
  %141 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init2206 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %141, i32 0, i32 5
  %length207 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2206, i32 0, i32 1
  %142 = load i32, i32* %length207, align 4, !tbaa !82
  %size208 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %142, i32* %size208, align 4, !tbaa !80
  %persistent209 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent209, align 4, !tbaa !81
  %143 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call210 = call i32 @param_write_string(%struct.gs_param_list_s* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call210, i32* %rc, align 4, !tbaa !28
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.else.202
  %144 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.214:                                       ; preds = %if.else.202
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.201
  %145 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_job = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %145, i32 0, i32 2
  %146 = load i8*, i8** %PJL_job, align 8, !tbaa !84
  %cmp216 = icmp eq i8* %146, null
  br i1 %cmp216, label %if.then.218, label %if.else.224

if.then.218:                                      ; preds = %if.end.215
  %147 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call219 = call i32 @param_write_null(%struct.gs_param_list_s* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #7
  store i32 %call219, i32* %rc, align 4, !tbaa !28
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.then.218
  %148 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.223:                                       ; preds = %if.then.218
  br label %if.end.237

if.else.224:                                      ; preds = %if.end.215
  %149 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_job225 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %149, i32 0, i32 2
  %150 = load i8*, i8** %PJL_job225, align 8, !tbaa !84
  %data226 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %150, i8** %data226, align 8, !tbaa !78
  %151 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_job227 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %151, i32 0, i32 2
  %152 = load i8*, i8** %PJL_job227, align 8, !tbaa !84
  %call228 = call i64 @strlen(i8* %152) #9
  %conv229 = trunc i64 %call228 to i32
  %size230 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %conv229, i32* %size230, align 4, !tbaa !80
  %persistent231 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent231, align 4, !tbaa !81
  %153 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call232 = call i32 @param_write_string(%struct.gs_param_list_s* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call232, i32* %rc, align 4, !tbaa !28
  %cmp233 = icmp slt i32 %call232, 0
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.else.224
  %154 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.236:                                       ; preds = %if.else.224
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.223
  %155 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_language = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %155, i32 0, i32 3
  %156 = load i8*, i8** %PJL_language, align 8, !tbaa !85
  %cmp238 = icmp eq i8* %156, null
  br i1 %cmp238, label %if.then.240, label %if.else.246

if.then.240:                                      ; preds = %if.end.237
  %157 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call241 = call i32 @param_write_null(%struct.gs_param_list_s* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)) #7
  store i32 %call241, i32* %rc, align 4, !tbaa !28
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.then.240
  %158 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %158, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.245:                                       ; preds = %if.then.240
  br label %if.end.259

if.else.246:                                      ; preds = %if.end.237
  %159 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_language247 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %159, i32 0, i32 3
  %160 = load i8*, i8** %PJL_language247, align 8, !tbaa !85
  %data248 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %160, i8** %data248, align 8, !tbaa !78
  %161 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_language249 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %161, i32 0, i32 3
  %162 = load i8*, i8** %PJL_language249, align 8, !tbaa !85
  %call250 = call i64 @strlen(i8* %162) #9
  %conv251 = trunc i64 %call250 to i32
  %size252 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %conv251, i32* %size252, align 4, !tbaa !80
  %persistent253 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent253, align 4, !tbaa !81
  %163 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call254 = call i32 @param_write_string(%struct.gs_param_list_s* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call254, i32* %rc, align 4, !tbaa !28
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.else.246
  %164 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.258:                                       ; preds = %if.else.246
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.end.245
  %165 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %print_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %165, i32 0, i32 12
  %166 = load i32, i32* %print_quality, align 4, !tbaa !86
  call void @get_string_for_int(i32 %166, %struct.eprn_StringAndInt* getelementptr inbounds ([6 x %struct.eprn_StringAndInt], [6 x %struct.eprn_StringAndInt]* @print_quality_list, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  %167 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call260 = call i32 @param_write_string(%struct.gs_param_list_s* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call260, i32* %rc, align 4, !tbaa !28
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.259
  %168 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %168, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.264:                                       ; preds = %if.end.259
  %169 = bitcast i32* %temp266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #2
  %170 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %order_CMYK = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %170, i32 0, i32 20
  %171 = load i32, i32* %order_CMYK, align 4, !tbaa !87
  %cmp267 = icmp eq i32 %171, 1
  %conv268 = zext i1 %cmp267 to i32
  store i32 %conv268, i32* %temp266, align 4, !tbaa !28
  %172 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call269 = call i32 @param_write_bool(%struct.gs_param_list_s* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32* %temp266) #7
  store i32 %call269, i32* %rc, align 4, !tbaa !28
  %cmp270 = icmp slt i32 %call269, 0
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.264
  %173 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.273:                                       ; preds = %if.end.264
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.274

cleanup.274:                                      ; preds = %if.end.273, %if.then.272
  %174 = bitcast i32* %temp266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %cleanup.dest.275 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.275, label %cleanup.558 [
    i32 0, label %cleanup.cont.276
  ]

cleanup.cont.276:                                 ; preds = %cleanup.274
  %175 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %176 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %NULs_to_send = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %176, i32 0, i32 1
  %call277 = call i32 @param_write_int(%struct.gs_param_list_s* %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32* %NULs_to_send) #7
  store i32 %call277, i32* %rc, align 4, !tbaa !28
  %cmp278 = icmp slt i32 %call277, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %cleanup.cont.276
  %177 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.281:                                       ; preds = %cleanup.cont.276
  %178 = bitcast i64* %__s1_len283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #2
  %179 = bitcast i64* %__s2_len285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.287, label %cond.false.335

land.lhs.true.287:                                ; preds = %if.end.281
  %call288 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call288, i64* %__s2_len285, align 8, !tbaa !71
  %180 = load i64, i64* %__s2_len285, align 8, !tbaa !71
  %cmp289 = icmp ult i64 %180, 4
  br i1 %cmp289, label %cond.true.291, label %cond.false.335

cond.true.291:                                    ; preds = %land.lhs.true.287
  %181 = bitcast i8** %__s1293 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #2
  %182 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname294 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %182, i32 0, i32 2
  %183 = load i8*, i8** %dname294, align 8, !tbaa !72
  store i8* %183, i8** %__s1293, align 8, !tbaa !1
  %184 = bitcast i32* %__result296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #2
  %185 = load i8*, i8** %__s1293, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8, i8* %185, i64 0
  %186 = load i8, i8* %arrayidx297, align 1, !tbaa !39
  %conv298 = zext i8 %186 to i32
  %187 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv299 = zext i8 %187 to i32
  %sub300 = sub nsw i32 %conv298, %conv299
  store i32 %sub300, i32* %__result296, align 4, !tbaa !28
  %188 = load i64, i64* %__s2_len285, align 8, !tbaa !71
  %cmp301 = icmp ugt i64 %188, 0
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.333

land.lhs.true.303:                                ; preds = %cond.true.291
  %189 = load i32, i32* %__result296, align 4, !tbaa !28
  %cmp304 = icmp eq i32 %189, 0
  br i1 %cmp304, label %if.then.306, label %if.end.333

if.then.306:                                      ; preds = %land.lhs.true.303
  %190 = load i8*, i8** %__s1293, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds i8, i8* %190, i64 1
  %191 = load i8, i8* %arrayidx307, align 1, !tbaa !39
  %conv308 = zext i8 %191 to i32
  %192 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv309 = zext i8 %192 to i32
  %sub310 = sub nsw i32 %conv308, %conv309
  store i32 %sub310, i32* %__result296, align 4, !tbaa !28
  %193 = load i64, i64* %__s2_len285, align 8, !tbaa !71
  %cmp311 = icmp ugt i64 %193, 1
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.332

land.lhs.true.313:                                ; preds = %if.then.306
  %194 = load i32, i32* %__result296, align 4, !tbaa !28
  %cmp314 = icmp eq i32 %194, 0
  br i1 %cmp314, label %if.then.316, label %if.end.332

if.then.316:                                      ; preds = %land.lhs.true.313
  %195 = load i8*, i8** %__s1293, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %195, i64 2
  %196 = load i8, i8* %arrayidx317, align 1, !tbaa !39
  %conv318 = zext i8 %196 to i32
  %197 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv319 = zext i8 %197 to i32
  %sub320 = sub nsw i32 %conv318, %conv319
  store i32 %sub320, i32* %__result296, align 4, !tbaa !28
  %198 = load i64, i64* %__s2_len285, align 8, !tbaa !71
  %cmp321 = icmp ugt i64 %198, 2
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.331

land.lhs.true.323:                                ; preds = %if.then.316
  %199 = load i32, i32* %__result296, align 4, !tbaa !28
  %cmp324 = icmp eq i32 %199, 0
  br i1 %cmp324, label %if.then.326, label %if.end.331

if.then.326:                                      ; preds = %land.lhs.true.323
  %200 = load i8*, i8** %__s1293, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i8, i8* %200, i64 3
  %201 = load i8, i8* %arrayidx327, align 1, !tbaa !39
  %conv328 = zext i8 %201 to i32
  %202 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv329 = zext i8 %202 to i32
  %sub330 = sub nsw i32 %conv328, %conv329
  store i32 %sub330, i32* %__result296, align 4, !tbaa !28
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.326, %land.lhs.true.323, %if.then.316
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %land.lhs.true.313, %if.then.306
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %land.lhs.true.303, %cond.true.291
  %203 = load i32, i32* %__result296, align 4, !tbaa !28
  store i32 %203, i32* %tmp334, !tbaa !28
  %204 = bitcast i32* %__result296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #2
  %205 = bitcast i8** %__s1293 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  %206 = load i32, i32* %tmp334, !tbaa !28
  br label %cond.end.338

cond.false.335:                                   ; preds = %land.lhs.true.287, %if.end.281
  %207 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname336 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %207, i32 0, i32 2
  %208 = load i8*, i8** %dname336, align 8, !tbaa !72
  %call337 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.335, %if.end.333
  %cond339 = phi i32 [ %206, %if.end.333 ], [ %call337, %cond.false.335 ]
  store i32 %cond339, i32* %tmp286, !tbaa !28
  %209 = bitcast i64* %__s2_len285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #2
  %210 = bitcast i64* %__s1_len283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #2
  %211 = load i32, i32* %tmp286, !tbaa !28
  %cmp340 = icmp eq i32 %211, 0
  br i1 %cmp340, label %if.then.342, label %if.end.358

if.then.342:                                      ; preds = %cond.end.338
  %212 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #2
  %213 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %213, i32 0, i32 69
  %214 = load i32, i32* %printer, align 4, !tbaa !88
  %call344 = call i8* @find_subdevice_name(i32 %214) #7
  store i8* %call344, i8** %name, align 8, !tbaa !1
  %215 = load i8*, i8** %name, align 8, !tbaa !1
  %data345 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %215, i8** %data345, align 8, !tbaa !78
  %216 = load i8*, i8** %name, align 8, !tbaa !1
  %call346 = call i64 @strlen(i8* %216) #9
  %conv347 = trunc i64 %call346 to i32
  %size348 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %conv347, i32* %size348, align 4, !tbaa !80
  %persistent349 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 1, i32* %persistent349, align 4, !tbaa !81
  %217 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call350 = call i32 @param_write_string(%struct.gs_param_list_s* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call350, i32* %rc, align 4, !tbaa !28
  %cmp351 = icmp slt i32 %call350, 0
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.then.342
  %218 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.355

if.end.354:                                       ; preds = %if.then.342
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.355

cleanup.355:                                      ; preds = %if.end.354, %if.then.353
  %219 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %cleanup.dest.356 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.356, label %cleanup.558 [
    i32 0, label %cleanup.cont.357
  ]

cleanup.cont.357:                                 ; preds = %cleanup.355
  br label %if.end.358

if.end.358:                                       ; preds = %cleanup.cont.357, %cond.end.338
  %220 = bitcast i64* %__s1_len360 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #2
  %221 = bitcast i64* %__s2_len362 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.364, label %cond.false.412

land.lhs.true.364:                                ; preds = %if.end.358
  %call365 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call365, i64* %__s2_len362, align 8, !tbaa !71
  %222 = load i64, i64* %__s2_len362, align 8, !tbaa !71
  %cmp366 = icmp ult i64 %222, 4
  br i1 %cmp366, label %cond.true.368, label %cond.false.412

cond.true.368:                                    ; preds = %land.lhs.true.364
  %223 = bitcast i8** %__s1370 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #2
  %224 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname371 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %224, i32 0, i32 2
  %225 = load i8*, i8** %dname371, align 8, !tbaa !72
  store i8* %225, i8** %__s1370, align 8, !tbaa !1
  %226 = bitcast i32* %__result373 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #2
  %227 = load i8*, i8** %__s1370, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i8, i8* %227, i64 0
  %228 = load i8, i8* %arrayidx374, align 1, !tbaa !39
  %conv375 = zext i8 %228 to i32
  %229 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv376 = zext i8 %229 to i32
  %sub377 = sub nsw i32 %conv375, %conv376
  store i32 %sub377, i32* %__result373, align 4, !tbaa !28
  %230 = load i64, i64* %__s2_len362, align 8, !tbaa !71
  %cmp378 = icmp ugt i64 %230, 0
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.410

land.lhs.true.380:                                ; preds = %cond.true.368
  %231 = load i32, i32* %__result373, align 4, !tbaa !28
  %cmp381 = icmp eq i32 %231, 0
  br i1 %cmp381, label %if.then.383, label %if.end.410

if.then.383:                                      ; preds = %land.lhs.true.380
  %232 = load i8*, i8** %__s1370, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load i8, i8* %arrayidx384, align 1, !tbaa !39
  %conv385 = zext i8 %233 to i32
  %234 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv386 = zext i8 %234 to i32
  %sub387 = sub nsw i32 %conv385, %conv386
  store i32 %sub387, i32* %__result373, align 4, !tbaa !28
  %235 = load i64, i64* %__s2_len362, align 8, !tbaa !71
  %cmp388 = icmp ugt i64 %235, 1
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.409

land.lhs.true.390:                                ; preds = %if.then.383
  %236 = load i32, i32* %__result373, align 4, !tbaa !28
  %cmp391 = icmp eq i32 %236, 0
  br i1 %cmp391, label %if.then.393, label %if.end.409

if.then.393:                                      ; preds = %land.lhs.true.390
  %237 = load i8*, i8** %__s1370, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i8, i8* %237, i64 2
  %238 = load i8, i8* %arrayidx394, align 1, !tbaa !39
  %conv395 = zext i8 %238 to i32
  %239 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv396 = zext i8 %239 to i32
  %sub397 = sub nsw i32 %conv395, %conv396
  store i32 %sub397, i32* %__result373, align 4, !tbaa !28
  %240 = load i64, i64* %__s2_len362, align 8, !tbaa !71
  %cmp398 = icmp ugt i64 %240, 2
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.408

land.lhs.true.400:                                ; preds = %if.then.393
  %241 = load i32, i32* %__result373, align 4, !tbaa !28
  %cmp401 = icmp eq i32 %241, 0
  br i1 %cmp401, label %if.then.403, label %if.end.408

if.then.403:                                      ; preds = %land.lhs.true.400
  %242 = load i8*, i8** %__s1370, align 8, !tbaa !1
  %arrayidx404 = getelementptr inbounds i8, i8* %242, i64 3
  %243 = load i8, i8* %arrayidx404, align 1, !tbaa !39
  %conv405 = zext i8 %243 to i32
  %244 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv406 = zext i8 %244 to i32
  %sub407 = sub nsw i32 %conv405, %conv406
  store i32 %sub407, i32* %__result373, align 4, !tbaa !28
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.403, %land.lhs.true.400, %if.then.393
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %land.lhs.true.390, %if.then.383
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %land.lhs.true.380, %cond.true.368
  %245 = load i32, i32* %__result373, align 4, !tbaa !28
  store i32 %245, i32* %tmp411, !tbaa !28
  %246 = bitcast i32* %__result373 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  %247 = bitcast i8** %__s1370 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #2
  %248 = load i32, i32* %tmp411, !tbaa !28
  br label %cond.end.415

cond.false.412:                                   ; preds = %land.lhs.true.364, %if.end.358
  %249 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname413 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %249, i32 0, i32 2
  %250 = load i8*, i8** %dname413, align 8, !tbaa !72
  %call414 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.412, %if.end.410
  %cond416 = phi i32 [ %248, %if.end.410 ], [ %call414, %cond.false.412 ]
  store i32 %cond416, i32* %tmp363, !tbaa !28
  %251 = bitcast i64* %__s2_len362 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #2
  %252 = bitcast i64* %__s1_len360 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #2
  %253 = load i32, i32* %tmp363, !tbaa !28
  %cmp417 = icmp eq i32 %253, 0
  br i1 %cmp417, label %if.then.419, label %if.end.425

if.then.419:                                      ; preds = %cond.end.415
  %254 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %255 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %tumble = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %255, i32 0, i32 72
  %call420 = call i32 @param_write_bool(%struct.gs_param_list_s* %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32* %tumble) #7
  store i32 %call420, i32* %rc, align 4, !tbaa !28
  %cmp421 = icmp slt i32 %call420, 0
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.then.419
  %256 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.424:                                       ; preds = %if.then.419
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %cond.end.415
  %257 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %257, i32 0, i32 70
  %258 = load i32, i32* %use_card, align 4, !tbaa !50
  %cmp426 = icmp eq i32 %258, 0
  br i1 %cmp426, label %if.then.428, label %if.else.434

if.then.428:                                      ; preds = %if.end.425
  %259 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call429 = call i32 @param_write_null(%struct.gs_param_list_s* %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0)) #7
  store i32 %call429, i32* %rc, align 4, !tbaa !28
  %cmp430 = icmp slt i32 %call429, 0
  br i1 %cmp430, label %if.then.432, label %if.end.433

if.then.432:                                      ; preds = %if.then.428
  %260 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %260, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.433:                                       ; preds = %if.then.428
  br label %if.end.448

if.else.434:                                      ; preds = %if.end.425
  %261 = bitcast i32* %temp436 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #2
  %262 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card437 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %262, i32 0, i32 70
  %263 = load i32, i32* %use_card437, align 4, !tbaa !50
  %cmp438 = icmp eq i32 %263, 1
  %conv439 = zext i1 %cmp438 to i32
  store i32 %conv439, i32* %temp436, align 4, !tbaa !28
  %264 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call440 = call i32 @param_write_bool(%struct.gs_param_list_s* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32* %temp436) #7
  store i32 %call440, i32* %rc, align 4, !tbaa !28
  %cmp441 = icmp slt i32 %call440, 0
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %if.else.434
  %265 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.445

if.end.444:                                       ; preds = %if.else.434
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.445

cleanup.445:                                      ; preds = %if.end.444, %if.then.443
  %266 = bitcast i32* %temp436 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %cleanup.dest.446 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.446, label %cleanup.558 [
    i32 0, label %cleanup.cont.447
  ]

cleanup.cont.447:                                 ; preds = %cleanup.445
  br label %if.end.448

if.end.448:                                       ; preds = %cleanup.cont.447, %if.end.433
  %267 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level449 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %267, i32 0, i32 0
  %268 = load i32, i32* %level449, align 4, !tbaa !75
  %cmp450 = icmp ule i32 %268, 2
  br i1 %cmp450, label %if.then.452, label %if.else.479

if.then.452:                                      ; preds = %if.end.448
  %269 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %depletion = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %269, i32 0, i32 13
  %270 = load i32, i32* %depletion, align 4, !tbaa !89
  %cmp453 = icmp eq i32 %270, 0
  br i1 %cmp453, label %if.then.455, label %if.else.461

if.then.455:                                      ; preds = %if.then.452
  %271 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call456 = call i32 @param_write_null(%struct.gs_param_list_s* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)) #7
  store i32 %call456, i32* %rc, align 4, !tbaa !28
  %cmp457 = icmp slt i32 %call456, 0
  br i1 %cmp457, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %if.then.455
  %272 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %272, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.460:                                       ; preds = %if.then.455
  br label %if.end.468

if.else.461:                                      ; preds = %if.then.452
  %273 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %274 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %depletion462 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %274, i32 0, i32 13
  %call463 = call i32 @param_write_int(%struct.gs_param_list_s* %273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32* %depletion462) #7
  store i32 %call463, i32* %rc, align 4, !tbaa !28
  %cmp464 = icmp slt i32 %call463, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.else.461
  %275 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %275, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.467:                                       ; preds = %if.else.461
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.end.460
  %276 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %277 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %raster_graphics_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %277, i32 0, i32 15
  %call469 = call i32 @param_write_int(%struct.gs_param_list_s* %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i32* %raster_graphics_quality) #7
  store i32 %call469, i32* %rc, align 4, !tbaa !28
  %cmp470 = icmp slt i32 %call469, 0
  br i1 %cmp470, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %if.end.468
  %278 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %278, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.473:                                       ; preds = %if.end.468
  %279 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %280 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %shingling = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %280, i32 0, i32 14
  %call474 = call i32 @param_write_int(%struct.gs_param_list_s* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32* %shingling) #7
  store i32 %call474, i32* %rc, align 4, !tbaa !28
  %cmp475 = icmp slt i32 %call474, 0
  br i1 %cmp475, label %if.then.477, label %if.end.478

if.then.477:                                      ; preds = %if.end.473
  %281 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %281, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.478:                                       ; preds = %if.end.473
  br label %if.end.557

if.else.479:                                      ; preds = %if.end.448
  %282 = bitcast i64* %__s1_len481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %282) #2
  %283 = bitcast i64* %__s2_len483 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.485, label %cond.false.533

land.lhs.true.485:                                ; preds = %if.else.479
  %call486 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call486, i64* %__s2_len483, align 8, !tbaa !71
  %284 = load i64, i64* %__s2_len483, align 8, !tbaa !71
  %cmp487 = icmp ult i64 %284, 4
  br i1 %cmp487, label %cond.true.489, label %cond.false.533

cond.true.489:                                    ; preds = %land.lhs.true.485
  %285 = bitcast i8** %__s1491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #2
  %286 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname492 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %286, i32 0, i32 2
  %287 = load i8*, i8** %dname492, align 8, !tbaa !72
  store i8* %287, i8** %__s1491, align 8, !tbaa !1
  %288 = bitcast i32* %__result494 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #2
  %289 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx495 = getelementptr inbounds i8, i8* %289, i64 0
  %290 = load i8, i8* %arrayidx495, align 1, !tbaa !39
  %conv496 = zext i8 %290 to i32
  %291 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv497 = zext i8 %291 to i32
  %sub498 = sub nsw i32 %conv496, %conv497
  store i32 %sub498, i32* %__result494, align 4, !tbaa !28
  %292 = load i64, i64* %__s2_len483, align 8, !tbaa !71
  %cmp499 = icmp ugt i64 %292, 0
  br i1 %cmp499, label %land.lhs.true.501, label %if.end.531

land.lhs.true.501:                                ; preds = %cond.true.489
  %293 = load i32, i32* %__result494, align 4, !tbaa !28
  %cmp502 = icmp eq i32 %293, 0
  br i1 %cmp502, label %if.then.504, label %if.end.531

if.then.504:                                      ; preds = %land.lhs.true.501
  %294 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx505 = getelementptr inbounds i8, i8* %294, i64 1
  %295 = load i8, i8* %arrayidx505, align 1, !tbaa !39
  %conv506 = zext i8 %295 to i32
  %296 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv507 = zext i8 %296 to i32
  %sub508 = sub nsw i32 %conv506, %conv507
  store i32 %sub508, i32* %__result494, align 4, !tbaa !28
  %297 = load i64, i64* %__s2_len483, align 8, !tbaa !71
  %cmp509 = icmp ugt i64 %297, 1
  br i1 %cmp509, label %land.lhs.true.511, label %if.end.530

land.lhs.true.511:                                ; preds = %if.then.504
  %298 = load i32, i32* %__result494, align 4, !tbaa !28
  %cmp512 = icmp eq i32 %298, 0
  br i1 %cmp512, label %if.then.514, label %if.end.530

if.then.514:                                      ; preds = %land.lhs.true.511
  %299 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx515 = getelementptr inbounds i8, i8* %299, i64 2
  %300 = load i8, i8* %arrayidx515, align 1, !tbaa !39
  %conv516 = zext i8 %300 to i32
  %301 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv517 = zext i8 %301 to i32
  %sub518 = sub nsw i32 %conv516, %conv517
  store i32 %sub518, i32* %__result494, align 4, !tbaa !28
  %302 = load i64, i64* %__s2_len483, align 8, !tbaa !71
  %cmp519 = icmp ugt i64 %302, 2
  br i1 %cmp519, label %land.lhs.true.521, label %if.end.529

land.lhs.true.521:                                ; preds = %if.then.514
  %303 = load i32, i32* %__result494, align 4, !tbaa !28
  %cmp522 = icmp eq i32 %303, 0
  br i1 %cmp522, label %if.then.524, label %if.end.529

if.then.524:                                      ; preds = %land.lhs.true.521
  %304 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds i8, i8* %304, i64 3
  %305 = load i8, i8* %arrayidx525, align 1, !tbaa !39
  %conv526 = zext i8 %305 to i32
  %306 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv527 = zext i8 %306 to i32
  %sub528 = sub nsw i32 %conv526, %conv527
  store i32 %sub528, i32* %__result494, align 4, !tbaa !28
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.524, %land.lhs.true.521, %if.then.514
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %land.lhs.true.511, %if.then.504
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %land.lhs.true.501, %cond.true.489
  %307 = load i32, i32* %__result494, align 4, !tbaa !28
  store i32 %307, i32* %tmp532, !tbaa !28
  %308 = bitcast i32* %__result494 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i8** %__s1491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #2
  %310 = load i32, i32* %tmp532, !tbaa !28
  br label %cond.end.536

cond.false.533:                                   ; preds = %land.lhs.true.485, %if.else.479
  %311 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname534 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %311, i32 0, i32 2
  %312 = load i8*, i8** %dname534, align 8, !tbaa !72
  %call535 = call i32 @strcmp(i8* %312, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.536

cond.end.536:                                     ; preds = %cond.false.533, %if.end.531
  %cond537 = phi i32 [ %310, %if.end.531 ], [ %call535, %cond.false.533 ]
  store i32 %cond537, i32* %tmp484, !tbaa !28
  %313 = bitcast i64* %__s2_len483 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #2
  %314 = bitcast i64* %__s1_len481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #2
  %315 = load i32, i32* %tmp484, !tbaa !28
  %cmp538 = icmp eq i32 %315, 0
  br i1 %cmp538, label %if.then.540, label %if.end.556

if.then.540:                                      ; preds = %cond.end.536
  %316 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call541 = call i32 @param_write_null(%struct.gs_param_list_s* %316, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)) #7
  store i32 %call541, i32* %rc, align 4, !tbaa !28
  %cmp542 = icmp slt i32 %call541, 0
  br i1 %cmp542, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %if.then.540
  %317 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %317, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.545:                                       ; preds = %if.then.540
  %318 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call546 = call i32 @param_write_null(%struct.gs_param_list_s* %318, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0)) #7
  store i32 %call546, i32* %rc, align 4, !tbaa !28
  %cmp547 = icmp slt i32 %call546, 0
  br i1 %cmp547, label %if.then.549, label %if.end.550

if.then.549:                                      ; preds = %if.end.545
  %319 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %319, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.550:                                       ; preds = %if.end.545
  %320 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call551 = call i32 @param_write_null(%struct.gs_param_list_s* %320, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7
  store i32 %call551, i32* %rc, align 4, !tbaa !28
  %cmp552 = icmp slt i32 %call551, 0
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.550
  %321 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %321, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

if.end.555:                                       ; preds = %if.end.550
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %cond.end.536
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.end.478
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.558

cleanup.558:                                      ; preds = %if.end.557, %if.then.554, %if.then.549, %if.then.544, %if.then.477, %if.then.472, %if.then.466, %if.then.459, %cleanup.445, %if.then.432, %if.then.423, %cleanup.355, %if.then.280, %cleanup.274, %if.then.263, %if.then.257, %if.then.244, %if.then.235, %if.then.222, %if.then.213, %if.then.200, %if.then.190, %if.then.180, %cleanup.170, %if.then.95, %if.then.90, %if.then.85, %cleanup, %if.then.71, %if.then.20, %if.then.15, %if.then.9, %if.then.5, %if.then.1
  %322 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #2
  %323 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #2
  %324 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #2
  %325 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #2
  %326 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %326) #2
  %327 = load i32, i32* %retval
  ret i32 %327
}

; Function Attrs: nounwind uwtable
define internal i32 @pcl3_put_params(%struct.gx_device_s* %device, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %new_quality = alloca i32, align 4
  %pname = alloca i8*, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %dev = alloca %struct.pcl3_Device*, align 8
  %epref = alloca i8*, align 8
  %wpref = alloca i8*, align 8
  %previous_colour_model = alloca i32, align 4
  %data = alloca %struct.pcl_FileData*, align 8
  %last_error = alloca i32, align 4
  %temp = alloca i32, align 4
  %rc = alloca i32, align 4
  %requested = alloca %struct.anon, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %j = alloca i32, align 4
  %__s1_len267 = alloca i64, align 8
  %__s2_len269 = alloca i64, align 8
  %tmp270 = alloca i32, align 4
  %__s1277 = alloca i8*, align 8
  %__result280 = alloca i32, align 4
  %tmp318 = alloca i32, align 4
  %temp385 = alloca i32, align 4
  %temp422 = alloca i32, align 4
  %__s1_len501 = alloca i64, align 8
  %__s2_len503 = alloca i64, align 8
  %tmp504 = alloca i32, align 4
  %__s1511 = alloca i8*, align 8
  %__result514 = alloca i32, align 4
  %tmp552 = alloca i32, align 4
  %temp565 = alloca i32, align 4
  %temp697 = alloca i32, align 4
  %__s1_len764 = alloca i64, align 8
  %__s2_len766 = alloca i64, align 8
  %tmp767 = alloca i32, align 4
  %__s1774 = alloca i8*, align 8
  %__result777 = alloca i32, align 4
  %tmp815 = alloca i32, align 4
  %temp831 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %new_quality to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %new_quality, align 4, !tbaa !28
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.pcl3_Device*
  store %struct.pcl3_Device* %5, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %6 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %7, i32 0, i32 68
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 20
  %8 = load i32, i32* %CUPS_messages, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %9 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %10, i32 0, i32 68
  %CUPS_messages2 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 20
  %11 = load i32, i32* %CUPS_messages2, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %11, 0
  %cond4 = select i1 %tobool3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  store i8* %cond4, i8** %wpref, align 8, !tbaa !1
  %12 = bitcast i32* %previous_colour_model to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn5 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %13, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn5, i32 0, i32 14
  %14 = load i32, i32* %colour_model, align 4, !tbaa !37
  store i32 %14, i32* %previous_colour_model, align 4, !tbaa !39
  %15 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %16, i32 0, i32 76
  store %struct.pcl_FileData* %file_data, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %17 = bitcast i32* %last_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %last_error, align 4, !tbaa !28
  %18 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast %struct.anon* %requested to i8*
  call void @llvm.lifetime.start(i64 12, i8* %20) #2
  %21 = bitcast %struct.anon* %requested to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast (%struct.anon* @pcl3_put_params.requested to i8*), i64 12, i32 4, i1 false)
  %22 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call, i64* %__s2_len, align 8, !tbaa !71
  %24 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp = icmp ult i64 %24, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %25 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %26, i32 0, i32 2
  %27 = load i8*, i8** %dname, align 8, !tbaa !72
  store i8* %27, i8** %__s1, align 8, !tbaa !1
  %28 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %30 to i32
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv8 = zext i8 %31 to i32
  %sub = sub nsw i32 %conv, %conv8
  store i32 %sub, i32* %__result, align 4, !tbaa !28
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp9 = icmp ugt i64 %32, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.39

land.lhs.true.11:                                 ; preds = %cond.true
  %33 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp12 = icmp eq i32 %33, 0
  br i1 %cmp12, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true.11
  %34 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv15 = zext i8 %35 to i32
  %36 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv16 = zext i8 %36 to i32
  %sub17 = sub nsw i32 %conv15, %conv16
  store i32 %sub17, i32* %__result, align 4, !tbaa !28
  %37 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp18 = icmp ugt i64 %37, 1
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.38

land.lhs.true.20:                                 ; preds = %if.then
  %38 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp21 = icmp eq i32 %38, 0
  br i1 %cmp21, label %if.then.23, label %if.end.38

if.then.23:                                       ; preds = %land.lhs.true.20
  %39 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %40 to i32
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv26 = zext i8 %41 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  store i32 %sub27, i32* %__result, align 4, !tbaa !28
  %42 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp28 = icmp ugt i64 %42, 2
  br i1 %cmp28, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %if.then.23
  %43 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp31 = icmp eq i32 %43, 0
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true.30
  %44 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx34, align 1, !tbaa !39
  %conv35 = zext i8 %45 to i32
  %46 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv36 = zext i8 %46 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true.30, %if.then.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %land.lhs.true.20, %if.then
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.11, %cond.true
  %47 = load i32, i32* %__result, align 4, !tbaa !28
  store i32 %47, i32* %tmp40, !tbaa !28
  %48 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %tmp40, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %51 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname41 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %51, i32 0, i32 2
  %52 = load i8*, i8** %dname41, align 8, !tbaa !72
  %call42 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.39
  %cond43 = phi i32 [ %50, %if.end.39 ], [ %call42, %cond.false ]
  store i32 %cond43, i32* %tmp, !tbaa !28
  %53 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = load i32, i32* %tmp, !tbaa !28
  %cmp44 = icmp eq i32 %55, 0
  br i1 %cmp44, label %if.then.46, label %if.end.105

if.then.46:                                       ; preds = %cond.end
  %56 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call47 = call i32 @param_read_string(%struct.gs_param_list_s* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call47, i32* %rc, align 4, !tbaa !28
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.99

if.then.50:                                       ; preds = %if.then.46
  %57 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.50
  %58 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom = sext i32 %58 to i64
  %arrayidx52 = getelementptr inbounds [27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %arrayidx52, i32 0, i32 0
  %59 = load i8*, i8** %name, align 8, !tbaa !35
  %cmp53 = icmp ne i8* %59, null
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %60 = load i32, i32* %size, align 4, !tbaa !80
  %conv55 = zext i32 %60 to i64
  %61 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom56 = sext i32 %61 to i64
  %arrayidx57 = getelementptr inbounds [27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i64 %idxprom56
  %name58 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %arrayidx57, i32 0, i32 0
  %62 = load i8*, i8** %name58, align 8, !tbaa !35
  %call59 = call i64 @strlen(i8* %62) #9
  %cmp60 = icmp ne i64 %conv55, %call59
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %data62 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %63 = load i8*, i8** %data62, align 8, !tbaa !78
  %64 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom63 = sext i32 %64 to i64
  %arrayidx64 = getelementptr inbounds [27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i64 %idxprom63
  %name65 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %arrayidx64, i32 0, i32 0
  %65 = load i8*, i8** %name65, align 8, !tbaa !35
  %size66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %66 = load i32, i32* %size66, align 4, !tbaa !80
  %conv67 = zext i32 %66 to i64
  %call68 = call i32 @strncmp(i8* %63, i8* %65, i64 %conv67) #9
  %cmp69 = icmp ne i32 %call68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %67 = phi i1 [ true, %land.rhs ], [ %cmp69, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %68 = phi i1 [ false, %while.cond ], [ %67, %lor.end ]
  br i1 %68, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %69 = load i32, i32* %j, align 4, !tbaa !28
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %j, align 4, !tbaa !28
  br label %while.cond

while.end:                                        ; preds = %land.end
  %70 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom71 = sext i32 %70 to i64
  %arrayidx72 = getelementptr inbounds [27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i64 %idxprom71
  %name73 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %arrayidx72, i32 0, i32 0
  %71 = load i8*, i8** %name73, align 8, !tbaa !35
  %cmp74 = icmp ne i8* %71, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %while.end
  %72 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %72, i32 0, i32 9
  %73 = load i32, i32* %is_open, align 4, !tbaa !90
  %tobool77 = icmp ne i32 %73, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.76
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call79 = call i32 @gs_closedevice(%struct.gx_device_s* %74) #7
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.76
  %75 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom81 = sext i32 %75 to i64
  %arrayidx82 = getelementptr inbounds [27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i64 %idxprom81
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %arrayidx82, i32 0, i32 1
  %76 = load i32, i32* %value, align 4, !tbaa !38
  %77 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %77, i32 0, i32 69
  store i32 %76, i32* %printer, align 4, !tbaa !88
  %78 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %78, i32 0, i32 73
  store i32 0, i32* %initialized, align 4, !tbaa !45
  %79 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %80 = bitcast %struct.pcl3_Device* %79 to %struct.eprn_Device*
  %81 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer83 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %81, i32 0, i32 69
  %82 = load i32, i32* %printer83, align 4, !tbaa !88
  %idxprom84 = zext i32 %82 to i64
  %arrayidx85 = getelementptr inbounds [0 x %struct.pcl_PrinterDescription], [0 x %struct.pcl_PrinterDescription]* @pcl3_printers, i32 0, i64 %idxprom84
  %desc = getelementptr inbounds %struct.pcl_PrinterDescription, %struct.pcl_PrinterDescription* %arrayidx85, i32 0, i32 2
  call void @eprn_init_device(%struct.eprn_Device* %80, %struct.eprn_PrinterDescription* %desc) #7
  br label %if.end.98

if.else:                                          ; preds = %while.end
  %call86 = call i8* @gs_program_name() #7
  %call87 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call86, i64 %call87) #7
  %83 = load i8*, i8** %epref, align 8, !tbaa !1
  %call88 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* %83) #7
  %84 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !91
  %data89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %86 = load i8*, i8** %data89, align 8, !tbaa !78
  %size90 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %87 = load i32, i32* %size90, align 4, !tbaa !80
  %conv91 = zext i32 %87 to i64
  %mul = mul i64 1, %conv91
  %conv92 = trunc i64 %mul to i32
  %call93 = call i32 @errwrite(%struct.gs_memory_s* %85, i8* %86, i32 %conv92) #7
  %call94 = call i8* @gs_program_name() #7
  %call95 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call94, i64 %call95) #7
  %call96 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %88 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %88, i32 0, i32 0
  %89 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !92
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %89, i32 0, i32 7
  %90 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !94
  %91 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %92 = load i8*, i8** %pname, align 8, !tbaa !1
  %93 = load i32, i32* %last_error, align 4, !tbaa !28
  %call97 = call i32 %90(%struct.gs_param_list_s* %91, i8* %92, i32 %93) #7
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.end.80
  %94 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  br label %if.end.104

if.else.99:                                       ; preds = %if.then.46
  %95 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp100 = icmp slt i32 %95, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.99
  %96 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %96, i32* %last_error, align 4, !tbaa !28
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.else.99
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %cond.end
  %97 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %initialized106 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %97, i32 0, i32 73
  %98 = load i32, i32* %initialized106, align 4, !tbaa !45
  %tobool107 = icmp ne i32 %98, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %if.end.105
  %99 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  call void @init(%struct.pcl3_Device* %99) #7
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.105
  %100 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call110 = call i32 @param_read_int(%struct.gs_param_list_s* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32* %temp) #7
  store i32 %call110, i32* %rc, align 4, !tbaa !28
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.161

if.then.113:                                      ; preds = %if.end.109
  %101 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp114 = icmp ne i32 %101, 0
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.135

land.lhs.true.116:                                ; preds = %if.then.113
  %102 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp117 = icmp ne i32 %102, 1
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.135

land.lhs.true.119:                                ; preds = %land.lhs.true.116
  %103 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp120 = icmp ne i32 %103, 2
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.135

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %104 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp123 = icmp ne i32 %104, 3
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.135

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %105 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp126 = icmp ne i32 %105, 9
  br i1 %cmp126, label %if.then.128, label %if.else.135

if.then.128:                                      ; preds = %land.lhs.true.125
  %call129 = call i8* @gs_program_name() #7
  %call130 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call129, i64 %call130) #7
  %106 = load i8*, i8** %epref, align 8, !tbaa !1
  %107 = load i32, i32* %temp, align 4, !tbaa !28
  %call131 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i32 0, i32 0), i8* %106, i32 %107) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %108 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs132 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %108, i32 0, i32 0
  %109 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs132, align 8, !tbaa !92
  %signal_error133 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %109, i32 0, i32 7
  %110 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error133, align 8, !tbaa !94
  %111 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %112 = load i8*, i8** %pname, align 8, !tbaa !1
  %113 = load i32, i32* %last_error, align 4, !tbaa !28
  %call134 = call i32 %110(%struct.gs_param_list_s* %111, i8* %112, i32 %113) #7
  br label %if.end.160

if.else.135:                                      ; preds = %land.lhs.true.125, %land.lhs.true.122, %land.lhs.true.119, %land.lhs.true.116, %if.then.113
  %114 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp136 = icmp eq i32 %114, 9
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.158

land.lhs.true.138:                                ; preds = %if.else.135
  %115 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer139 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %115, i32 0, i32 69
  %116 = load i32, i32* %printer139, align 4, !tbaa !88
  %cmp140 = icmp eq i32 %116, 0
  br i1 %cmp140, label %if.then.149, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.138
  %117 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer142 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %117, i32 0, i32 69
  %118 = load i32, i32* %printer142, align 4, !tbaa !88
  %cmp143 = icmp eq i32 %118, 1
  br i1 %cmp143, label %if.then.149, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false
  %119 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer146 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %119, i32 0, i32 69
  %120 = load i32, i32* %printer146, align 4, !tbaa !88
  %cmp147 = icmp eq i32 %120, 7
  br i1 %cmp147, label %if.then.149, label %if.else.158

if.then.149:                                      ; preds = %lor.lhs.false.145, %lor.lhs.false, %land.lhs.true.138
  %call150 = call i8* @gs_program_name() #7
  %call151 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call150, i64 %call151) #7
  %121 = load i8*, i8** %epref, align 8, !tbaa !1
  %122 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn152 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %122, i32 0, i32 68
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn152, i32 0, i32 0
  %123 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !96
  %name153 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %123, i32 0, i32 0
  %124 = load i8*, i8** %name153, align 8, !tbaa !43
  %call154 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i32 0, i32 0), i8* %121, i8* %124) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %125 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs155 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %125, i32 0, i32 0
  %126 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs155, align 8, !tbaa !92
  %signal_error156 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %126, i32 0, i32 7
  %127 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error156, align 8, !tbaa !94
  %128 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %129 = load i8*, i8** %pname, align 8, !tbaa !1
  %130 = load i32, i32* %last_error, align 4, !tbaa !28
  %call157 = call i32 %127(%struct.gs_param_list_s* %128, i8* %129, i32 %130) #7
  br label %if.end.159

if.else.158:                                      ; preds = %lor.lhs.false.145, %if.else.135
  %131 = load i32, i32* %temp, align 4, !tbaa !28
  %132 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %132, i32 0, i32 22
  store i32 %131, i32* %compression, align 4, !tbaa !69
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.158, %if.then.149
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.128
  br label %if.end.166

if.else.161:                                      ; preds = %if.end.109
  %133 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp162 = icmp slt i32 %133, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.else.161
  %134 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %134, i32* %last_error, align 4, !tbaa !28
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.else.161
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.160
  %135 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %136 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %configure_every_page = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %136, i32 0, i32 75
  %call167 = call i32 @param_read_bool(%struct.gs_param_list_s* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32* %configure_every_page) #7
  store i32 %call167, i32* %rc, align 4, !tbaa !28
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.166
  %137 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %137, i32* %last_error, align 4, !tbaa !28
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.166
  %138 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call172 = call i32 @param_read_null(%struct.gs_param_list_s* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)) #7
  store i32 %call172, i32* %rc, align 4, !tbaa !28
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %if.end.171
  %depletion = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 0
  store i32 0, i32* %depletion, align 4, !tbaa !63
  br label %if.end.212

if.else.176:                                      ; preds = %if.end.171
  %139 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp177 = icmp slt i32 %139, 0
  br i1 %cmp177, label %land.lhs.true.179, label %if.else.206

land.lhs.true.179:                                ; preds = %if.else.176
  %140 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %141 = load i8*, i8** %pname, align 8, !tbaa !1
  %call180 = call i32 @param_read_int(%struct.gs_param_list_s* %140, i8* %141, i32* %temp) #7
  store i32 %call180, i32* %rc, align 4, !tbaa !28
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then.183, label %if.else.206

if.then.183:                                      ; preds = %land.lhs.true.179
  %142 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp184 = icmp sle i32 1, %142
  br i1 %cmp184, label %land.lhs.true.186, label %if.else.198

land.lhs.true.186:                                ; preds = %if.then.183
  %143 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp187 = icmp sle i32 %143, 5
  br i1 %cmp187, label %land.lhs.true.189, label %if.else.198

land.lhs.true.189:                                ; preds = %land.lhs.true.186
  %144 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer190 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %144, i32 0, i32 69
  %145 = load i32, i32* %printer190, align 4, !tbaa !88
  %cmp191 = icmp ne i32 %145, 8
  br i1 %cmp191, label %if.then.196, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %land.lhs.true.189
  %146 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp194 = icmp sle i32 %146, 3
  br i1 %cmp194, label %if.then.196, label %if.else.198

if.then.196:                                      ; preds = %lor.lhs.false.193, %land.lhs.true.189
  %147 = load i32, i32* %temp, align 4, !tbaa !28
  %depletion197 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 0
  store i32 %147, i32* %depletion197, align 4, !tbaa !63
  br label %if.end.205

if.else.198:                                      ; preds = %lor.lhs.false.193, %land.lhs.true.186, %if.then.183
  %call199 = call i8* @gs_program_name() #7
  %call200 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call199, i64 %call200) #7
  %148 = load i8*, i8** %epref, align 8, !tbaa !1
  %149 = load i32, i32* %temp, align 4, !tbaa !28
  %call201 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.90, i32 0, i32 0), i8* %148, i32 %149) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %150 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs202 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %150, i32 0, i32 0
  %151 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs202, align 8, !tbaa !92
  %signal_error203 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %151, i32 0, i32 7
  %152 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error203, align 8, !tbaa !94
  %153 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %154 = load i8*, i8** %pname, align 8, !tbaa !1
  %155 = load i32, i32* %last_error, align 4, !tbaa !28
  %call204 = call i32 %152(%struct.gs_param_list_s* %153, i8* %154, i32 %155) #7
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.198, %if.then.196
  br label %if.end.211

if.else.206:                                      ; preds = %land.lhs.true.179, %if.else.176
  %156 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp207 = icmp slt i32 %156, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.else.206
  %157 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %157, i32* %last_error, align 4, !tbaa !28
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.else.206
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.205
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.175
  %158 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call213 = call i32 @param_read_null(%struct.gs_param_list_s* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #7
  store i32 %call213, i32* %rc, align 4, !tbaa !28
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %if.end.212
  %159 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %dry_time = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %159, i32 0, i32 21
  store i32 -1, i32* %dry_time, align 4, !tbaa !70
  br label %if.end.265

if.else.217:                                      ; preds = %if.end.212
  %160 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp218 = icmp slt i32 %160, 0
  br i1 %cmp218, label %land.lhs.true.220, label %if.else.259

land.lhs.true.220:                                ; preds = %if.else.217
  %161 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %162 = load i8*, i8** %pname, align 8, !tbaa !1
  %call221 = call i32 @param_read_int(%struct.gs_param_list_s* %161, i8* %162, i32* %temp) #7
  store i32 %call221, i32* %rc, align 4, !tbaa !28
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.259

if.then.224:                                      ; preds = %land.lhs.true.220
  %163 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp225 = icmp sle i32 0, %163
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.251

land.lhs.true.227:                                ; preds = %if.then.224
  %164 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp228 = icmp sle i32 %164, 1200
  br i1 %cmp228, label %if.then.230, label %if.else.251

if.then.230:                                      ; preds = %land.lhs.true.227
  %165 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer231 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %165, i32 0, i32 69
  %166 = load i32, i32* %printer231, align 4, !tbaa !88
  %cmp232 = icmp eq i32 %166, 7
  br i1 %cmp232, label %if.then.238, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %if.then.230
  %167 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer235 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %167, i32 0, i32 69
  %168 = load i32, i32* %printer235, align 4, !tbaa !88
  %cmp236 = icmp eq i32 %168, 8
  br i1 %cmp236, label %if.then.238, label %if.else.248

if.then.238:                                      ; preds = %lor.lhs.false.234, %if.then.230
  %call239 = call i8* @gs_program_name() #7
  %call240 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call239, i64 %call240) #7
  %169 = load i8*, i8** %epref, align 8, !tbaa !1
  %170 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn241 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %170, i32 0, i32 68
  %cap242 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn241, i32 0, i32 0
  %171 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap242, align 8, !tbaa !96
  %name243 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %171, i32 0, i32 0
  %172 = load i8*, i8** %name243, align 8, !tbaa !43
  %call244 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.91, i32 0, i32 0), i8* %169, i8* %172) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %173 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs245 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %173, i32 0, i32 0
  %174 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs245, align 8, !tbaa !92
  %signal_error246 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %174, i32 0, i32 7
  %175 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error246, align 8, !tbaa !94
  %176 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %177 = load i8*, i8** %pname, align 8, !tbaa !1
  %178 = load i32, i32* %last_error, align 4, !tbaa !28
  %call247 = call i32 %175(%struct.gs_param_list_s* %176, i8* %177, i32 %178) #7
  br label %if.end.250

if.else.248:                                      ; preds = %lor.lhs.false.234
  %179 = load i32, i32* %temp, align 4, !tbaa !28
  %180 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %dry_time249 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %180, i32 0, i32 21
  store i32 %179, i32* %dry_time249, align 4, !tbaa !70
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.248, %if.then.238
  br label %if.end.258

if.else.251:                                      ; preds = %land.lhs.true.227, %if.then.224
  %call252 = call i8* @gs_program_name() #7
  %call253 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call252, i64 %call253) #7
  %181 = load i8*, i8** %epref, align 8, !tbaa !1
  %182 = load i32, i32* %temp, align 4, !tbaa !28
  %call254 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i32 0, i32 0), i8* %181, i32 %182) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %183 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs255 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %183, i32 0, i32 0
  %184 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs255, align 8, !tbaa !92
  %signal_error256 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %184, i32 0, i32 7
  %185 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error256, align 8, !tbaa !94
  %186 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %187 = load i8*, i8** %pname, align 8, !tbaa !1
  %188 = load i32, i32* %last_error, align 4, !tbaa !28
  %call257 = call i32 %185(%struct.gs_param_list_s* %186, i8* %187, i32 %188) #7
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.251, %if.end.250
  br label %if.end.264

if.else.259:                                      ; preds = %land.lhs.true.220, %if.else.217
  %189 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp260 = icmp slt i32 %189, 0
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.else.259
  %190 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %190, i32* %last_error, align 4, !tbaa !28
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.else.259
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.end.258
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.216
  %191 = bitcast i64* %__s1_len267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %191) #2
  %192 = bitcast i64* %__s2_len269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.271, label %cond.false.319

land.lhs.true.271:                                ; preds = %if.end.265
  %call272 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call272, i64* %__s2_len269, align 8, !tbaa !71
  %193 = load i64, i64* %__s2_len269, align 8, !tbaa !71
  %cmp273 = icmp ult i64 %193, 4
  br i1 %cmp273, label %cond.true.275, label %cond.false.319

cond.true.275:                                    ; preds = %land.lhs.true.271
  %194 = bitcast i8** %__s1277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #2
  %195 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname278 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %195, i32 0, i32 2
  %196 = load i8*, i8** %dname278, align 8, !tbaa !72
  store i8* %196, i8** %__s1277, align 8, !tbaa !1
  %197 = bitcast i32* %__result280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #2
  %198 = load i8*, i8** %__s1277, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %198, i64 0
  %199 = load i8, i8* %arrayidx281, align 1, !tbaa !39
  %conv282 = zext i8 %199 to i32
  %200 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv283 = zext i8 %200 to i32
  %sub284 = sub nsw i32 %conv282, %conv283
  store i32 %sub284, i32* %__result280, align 4, !tbaa !28
  %201 = load i64, i64* %__s2_len269, align 8, !tbaa !71
  %cmp285 = icmp ugt i64 %201, 0
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.317

land.lhs.true.287:                                ; preds = %cond.true.275
  %202 = load i32, i32* %__result280, align 4, !tbaa !28
  %cmp288 = icmp eq i32 %202, 0
  br i1 %cmp288, label %if.then.290, label %if.end.317

if.then.290:                                      ; preds = %land.lhs.true.287
  %203 = load i8*, i8** %__s1277, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx291, align 1, !tbaa !39
  %conv292 = zext i8 %204 to i32
  %205 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv293 = zext i8 %205 to i32
  %sub294 = sub nsw i32 %conv292, %conv293
  store i32 %sub294, i32* %__result280, align 4, !tbaa !28
  %206 = load i64, i64* %__s2_len269, align 8, !tbaa !71
  %cmp295 = icmp ugt i64 %206, 1
  br i1 %cmp295, label %land.lhs.true.297, label %if.end.316

land.lhs.true.297:                                ; preds = %if.then.290
  %207 = load i32, i32* %__result280, align 4, !tbaa !28
  %cmp298 = icmp eq i32 %207, 0
  br i1 %cmp298, label %if.then.300, label %if.end.316

if.then.300:                                      ; preds = %land.lhs.true.297
  %208 = load i8*, i8** %__s1277, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %208, i64 2
  %209 = load i8, i8* %arrayidx301, align 1, !tbaa !39
  %conv302 = zext i8 %209 to i32
  %210 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv303 = zext i8 %210 to i32
  %sub304 = sub nsw i32 %conv302, %conv303
  store i32 %sub304, i32* %__result280, align 4, !tbaa !28
  %211 = load i64, i64* %__s2_len269, align 8, !tbaa !71
  %cmp305 = icmp ugt i64 %211, 2
  br i1 %cmp305, label %land.lhs.true.307, label %if.end.315

land.lhs.true.307:                                ; preds = %if.then.300
  %212 = load i32, i32* %__result280, align 4, !tbaa !28
  %cmp308 = icmp eq i32 %212, 0
  br i1 %cmp308, label %if.then.310, label %if.end.315

if.then.310:                                      ; preds = %land.lhs.true.307
  %213 = load i8*, i8** %__s1277, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds i8, i8* %213, i64 3
  %214 = load i8, i8* %arrayidx311, align 1, !tbaa !39
  %conv312 = zext i8 %214 to i32
  %215 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv313 = zext i8 %215 to i32
  %sub314 = sub nsw i32 %conv312, %conv313
  store i32 %sub314, i32* %__result280, align 4, !tbaa !28
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.310, %land.lhs.true.307, %if.then.300
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %land.lhs.true.297, %if.then.290
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %land.lhs.true.287, %cond.true.275
  %216 = load i32, i32* %__result280, align 4, !tbaa !28
  store i32 %216, i32* %tmp318, !tbaa !28
  %217 = bitcast i32* %__result280 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #2
  %218 = bitcast i8** %__s1277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %219 = load i32, i32* %tmp318, !tbaa !28
  br label %cond.end.322

cond.false.319:                                   ; preds = %land.lhs.true.271, %if.end.265
  %220 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname320 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %220, i32 0, i32 2
  %221 = load i8*, i8** %dname320, align 8, !tbaa !72
  %call321 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.319, %if.end.317
  %cond323 = phi i32 [ %219, %if.end.317 ], [ %call321, %cond.false.319 ]
  store i32 %cond323, i32* %tmp270, !tbaa !28
  %222 = bitcast i64* %__s2_len269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast i64* %__s1_len267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = load i32, i32* %tmp270, !tbaa !28
  %cmp324 = icmp eq i32 %224, 0
  br i1 %cmp324, label %if.then.326, label %if.end.383

if.then.326:                                      ; preds = %cond.end.322
  %225 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call327 = call i32 @param_read_string(%struct.gs_param_list_s* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call327, i32* %rc, align 4, !tbaa !28
  %cmp328 = icmp eq i32 %call327, 0
  br i1 %cmp328, label %if.then.330, label %if.else.377

if.then.330:                                      ; preds = %if.then.326
  %call331 = call i32 @eprn_get_int(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([5 x %struct.eprn_StringAndInt], [5 x %struct.eprn_StringAndInt]* @duplex_capabilities_list, i32 0, i32 0), i32* %temp) #7
  store i32 %call331, i32* %rc, align 4, !tbaa !28
  %226 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp332 = icmp eq i32 %226, 0
  br i1 %cmp332, label %if.then.334, label %if.else.359

if.then.334:                                      ; preds = %if.then.330
  %227 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer335 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %227, i32 0, i32 69
  %228 = load i32, i32* %printer335, align 4, !tbaa !88
  %cmp336 = icmp eq i32 %228, 25
  br i1 %cmp336, label %if.then.345, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %if.then.334
  %229 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer339 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %229, i32 0, i32 69
  %230 = load i32, i32* %printer339, align 4, !tbaa !88
  %cmp340 = icmp eq i32 %230, 14
  br i1 %cmp340, label %if.then.345, label %lor.lhs.false.342

lor.lhs.false.342:                                ; preds = %lor.lhs.false.338
  %231 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp343 = icmp eq i32 %231, 0
  br i1 %cmp343, label %if.then.345, label %if.else.351

if.then.345:                                      ; preds = %lor.lhs.false.342, %lor.lhs.false.338, %if.then.334
  %232 = load i32, i32* %temp, align 4, !tbaa !28
  %233 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %233, i32 0, i32 71
  store i32 %232, i32* %duplex_capability, align 4, !tbaa !61
  %234 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability346 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %234, i32 0, i32 71
  %235 = load i32, i32* %duplex_capability346, align 4, !tbaa !61
  %cmp347 = icmp eq i32 %235, 0
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.then.345
  %236 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %236, i32 0, i32 50
  store i32 0, i32* %Duplex_set, align 4, !tbaa !57
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.then.345
  br label %if.end.358

if.else.351:                                      ; preds = %lor.lhs.false.342
  %call352 = call i8* @gs_program_name() #7
  %call353 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call352, i64 %call353) #7
  %237 = load i8*, i8** %epref, align 8, !tbaa !1
  %238 = load i8*, i8** %epref, align 8, !tbaa !1
  %call354 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.93, i32 0, i32 0), i8* %237, i8* %238) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %239 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs355 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %239, i32 0, i32 0
  %240 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs355, align 8, !tbaa !92
  %signal_error356 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %240, i32 0, i32 7
  %241 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error356, align 8, !tbaa !94
  %242 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %243 = load i8*, i8** %pname, align 8, !tbaa !1
  %244 = load i32, i32* %last_error, align 4, !tbaa !28
  %call357 = call i32 %241(%struct.gs_param_list_s* %242, i8* %243, i32 %244) #7
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.351, %if.end.350
  br label %if.end.376

if.else.359:                                      ; preds = %if.then.330
  %call360 = call i8* @gs_program_name() #7
  %call361 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call360, i64 %call361) #7
  %245 = load i8*, i8** %epref, align 8, !tbaa !1
  %call362 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* %245) #7
  %246 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %memory363 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %246, i32 0, i32 3
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory363, align 8, !tbaa !91
  %data364 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %248 = load i8*, i8** %data364, align 8, !tbaa !78
  %size365 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %249 = load i32, i32* %size365, align 4, !tbaa !80
  %conv366 = zext i32 %249 to i64
  %mul367 = mul i64 1, %conv366
  %conv368 = trunc i64 %mul367 to i32
  %call369 = call i32 @errwrite(%struct.gs_memory_s* %247, i8* %248, i32 %conv368) #7
  %call370 = call i8* @gs_program_name() #7
  %call371 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call370, i64 %call371) #7
  %call372 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %250 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs373 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %250, i32 0, i32 0
  %251 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs373, align 8, !tbaa !92
  %signal_error374 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %251, i32 0, i32 7
  %252 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error374, align 8, !tbaa !94
  %253 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %254 = load i8*, i8** %pname, align 8, !tbaa !1
  %255 = load i32, i32* %last_error, align 4, !tbaa !28
  %call375 = call i32 %252(%struct.gs_param_list_s* %253, i8* %254, i32 %255) #7
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.359, %if.end.358
  br label %if.end.382

if.else.377:                                      ; preds = %if.then.326
  %256 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp378 = icmp slt i32 %256, 0
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %if.else.377
  %257 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %257, i32* %last_error, align 4, !tbaa !28
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.380, %if.else.377
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.376
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %cond.end.322
  %258 = bitcast i32* %temp385 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #2
  %259 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call386 = call i32 @param_read_bool(%struct.gs_param_list_s* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32* %temp385) #7
  store i32 %call386, i32* %rc, align 4, !tbaa !28
  %cmp387 = icmp eq i32 %call386, 0
  br i1 %cmp387, label %land.lhs.true.389, label %if.end.420

land.lhs.true.389:                                ; preds = %if.end.383
  %260 = load i32, i32* %temp385, align 4, !tbaa !28
  %tobool390 = icmp ne i32 %260, 0
  br i1 %tobool390, label %land.lhs.true.391, label %if.end.420

land.lhs.true.391:                                ; preds = %land.lhs.true.389
  %261 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %duplex_capability392 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %261, i32 0, i32 71
  %262 = load i32, i32* %duplex_capability392, align 4, !tbaa !61
  %cmp393 = icmp eq i32 %262, 0
  br i1 %cmp393, label %if.then.395, label %if.end.420

if.then.395:                                      ; preds = %land.lhs.true.391
  %263 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer396 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %263, i32 0, i32 69
  %264 = load i32, i32* %printer396, align 4, !tbaa !88
  %cmp397 = icmp eq i32 %264, 25
  br i1 %cmp397, label %if.then.403, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %if.then.395
  %265 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer400 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %265, i32 0, i32 69
  %266 = load i32, i32* %printer400, align 4, !tbaa !88
  %cmp401 = icmp eq i32 %266, 14
  br i1 %cmp401, label %if.then.403, label %if.else.409

if.then.403:                                      ; preds = %lor.lhs.false.399, %if.then.395
  %call404 = call i8* @gs_program_name() #7
  %call405 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call404, i64 %call405) #7
  %267 = load i8*, i8** %epref, align 8, !tbaa !1
  %268 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %printer406 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %268, i32 0, i32 69
  %269 = load i32, i32* %printer406, align 4, !tbaa !88
  %call407 = call i8* @find_subdevice_name(i32 %269) #7
  %270 = load i8*, i8** %epref, align 8, !tbaa !1
  %call408 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.96, i32 0, i32 0), i8* %267, i8* %call407, i8* %270) #7
  br label %if.end.416

if.else.409:                                      ; preds = %lor.lhs.false.399
  %call410 = call i8* @gs_program_name() #7
  %call411 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call410, i64 %call411) #7
  %271 = load i8*, i8** %epref, align 8, !tbaa !1
  %272 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn412 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %272, i32 0, i32 68
  %cap413 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn412, i32 0, i32 0
  %273 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap413, align 8, !tbaa !96
  %name414 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %273, i32 0, i32 0
  %274 = load i8*, i8** %name414, align 8, !tbaa !43
  %call415 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.97, i32 0, i32 0), i8* %271, i8* %274) #7
  br label %if.end.416

if.end.416:                                       ; preds = %if.else.409, %if.then.403
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %275 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs417 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %275, i32 0, i32 0
  %276 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs417, align 8, !tbaa !92
  %signal_error418 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %276, i32 0, i32 7
  %277 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error418, align 8, !tbaa !94
  %278 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %279 = load i8*, i8** %pname, align 8, !tbaa !1
  %280 = load i32, i32* %last_error, align 4, !tbaa !28
  %call419 = call i32 %277(%struct.gs_param_list_s* %278, i8* %279, i32 %280) #7
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.416, %land.lhs.true.391, %land.lhs.true.389, %if.end.383
  %281 = bitcast i32* %temp385 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %temp422 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #2
  %283 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call423 = call i32 @param_read_bool(%struct.gs_param_list_s* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32* %temp422) #7
  store i32 %call423, i32* %rc, align 4, !tbaa !28
  %cmp424 = icmp eq i32 %call423, 0
  br i1 %cmp424, label %if.then.426, label %if.else.428

if.then.426:                                      ; preds = %if.end.420
  %284 = load i32, i32* %temp422, align 4, !tbaa !28
  %285 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %file_data427 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %285, i32 0, i32 76
  %manual_feed = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %file_data427, i32 0, i32 11
  store i32 %284, i32* %manual_feed, align 4, !tbaa !73
  br label %if.end.433

if.else.428:                                      ; preds = %if.end.420
  %286 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp429 = icmp slt i32 %286, 0
  br i1 %cmp429, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %if.else.428
  %287 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %287, i32* %last_error, align 4, !tbaa !28
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.431, %if.else.428
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.then.426
  %288 = bitcast i32* %temp422 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call434 = call i32 @param_read_string(%struct.gs_param_list_s* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call434, i32* %rc, align 4, !tbaa !28
  %cmp435 = icmp eq i32 %call434, 0
  br i1 %cmp435, label %if.then.437, label %if.else.475

if.then.437:                                      ; preds = %if.end.433
  %call438 = call i32 @get_int_for_string(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([13 x %struct.eprn_StringAndInt], [13 x %struct.eprn_StringAndInt]* @media_type_list, i32 0, i32 0), i32* %temp) #7
  store i32 %call438, i32* %rc, align 4, !tbaa !28
  %290 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp439 = icmp ne i32 %290, 0
  br i1 %cmp439, label %if.then.441, label %if.else.462

if.then.441:                                      ; preds = %if.then.437
  %291 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp442 = icmp ne i32 %291, -25
  br i1 %cmp442, label %if.then.444, label %if.end.458

if.then.444:                                      ; preds = %if.then.441
  %call445 = call i8* @gs_program_name() #7
  %call446 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call445, i64 %call446) #7
  %292 = load i8*, i8** %epref, align 8, !tbaa !1
  %call447 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i8* %292) #7
  %293 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %memory448 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %293, i32 0, i32 3
  %294 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory448, align 8, !tbaa !91
  %data449 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %295 = load i8*, i8** %data449, align 8, !tbaa !78
  %size450 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %296 = load i32, i32* %size450, align 4, !tbaa !80
  %conv451 = zext i32 %296 to i64
  %mul452 = mul i64 1, %conv451
  %conv453 = trunc i64 %mul452 to i32
  %call454 = call i32 @errwrite(%struct.gs_memory_s* %294, i8* %295, i32 %conv453) #7
  %call455 = call i8* @gs_program_name() #7
  %call456 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call455, i64 %call456) #7
  %call457 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #7
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.444, %if.then.441
  %297 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %297, i32* %last_error, align 4, !tbaa !28
  %298 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs459 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %298, i32 0, i32 0
  %299 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs459, align 8, !tbaa !92
  %signal_error460 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %299, i32 0, i32 7
  %300 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error460, align 8, !tbaa !94
  %301 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %302 = load i8*, i8** %pname, align 8, !tbaa !1
  %303 = load i32, i32* %last_error, align 4, !tbaa !28
  %call461 = call i32 %300(%struct.gs_param_list_s* %301, i8* %302, i32 %303) #7
  br label %if.end.474

if.else.462:                                      ; preds = %if.then.437
  store i32 1, i32* %new_quality, align 4, !tbaa !28
  %304 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp463 = icmp slt i32 %304, 0
  br i1 %cmp463, label %if.then.468, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %if.else.462
  %305 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp466 = icmp slt i32 6, %305
  br i1 %cmp466, label %if.then.468, label %if.end.472

if.then.468:                                      ; preds = %lor.lhs.false.465, %if.else.462
  %call469 = call i8* @gs_program_name() #7
  %call470 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call469, i64 %call470) #7
  %306 = load i8*, i8** %wpref, align 8, !tbaa !1
  %307 = load i32, i32* %temp, align 4, !tbaa !28
  %call471 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i32 0, i32 0), i8* %306, i32 %307) #7
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.468, %lor.lhs.false.465
  %308 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %309 = load i32, i32* %temp, align 4, !tbaa !28
  %call473 = call i32 @pcl3_set_mediatype(%struct.pcl_FileData* %308, i32 %309) #7
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.472, %if.end.458
  br label %if.end.480

if.else.475:                                      ; preds = %if.end.433
  %310 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp476 = icmp slt i32 %310, 0
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %if.else.475
  %311 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %311, i32* %last_error, align 4, !tbaa !28
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.478, %if.else.475
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.end.474
  %312 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %313 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %media_destination = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %313, i32 0, i32 9
  %call481 = call i32 @param_read_int(%struct.gs_param_list_s* %312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32* %media_destination) #7
  store i32 %call481, i32* %rc, align 4, !tbaa !28
  %cmp482 = icmp slt i32 %call481, 0
  br i1 %cmp482, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %if.end.480
  %314 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %314, i32* %last_error, align 4, !tbaa !28
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.484, %if.end.480
  %315 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %316 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %media_source = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %316, i32 0, i32 8
  %call486 = call i32 @param_read_int(%struct.gs_param_list_s* %315, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32* %media_source) #7
  store i32 %call486, i32* %rc, align 4, !tbaa !28
  %cmp487 = icmp slt i32 %call486, 0
  br i1 %cmp487, label %if.then.489, label %if.else.490

if.then.489:                                      ; preds = %if.end.485
  %317 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %317, i32* %last_error, align 4, !tbaa !28
  br label %if.end.499

if.else.490:                                      ; preds = %if.end.485
  %318 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp491 = icmp eq i32 %318, 0
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.498

land.lhs.true.493:                                ; preds = %if.else.490
  %319 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %is_open494 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %319, i32 0, i32 9
  %320 = load i32, i32* %is_open494, align 4, !tbaa !90
  %tobool495 = icmp ne i32 %320, 0
  br i1 %tobool495, label %if.then.496, label %if.end.498

if.then.496:                                      ; preds = %land.lhs.true.493
  %321 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call497 = call i32 @gs_closedevice(%struct.gx_device_s* %321) #7
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.496, %land.lhs.true.493, %if.else.490
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %if.then.489
  %322 = bitcast i64* %__s1_len501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %322) #2
  %323 = bitcast i64* %__s2_len503 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %323) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.505, label %cond.false.553

land.lhs.true.505:                                ; preds = %if.end.499
  %call506 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call506, i64* %__s2_len503, align 8, !tbaa !71
  %324 = load i64, i64* %__s2_len503, align 8, !tbaa !71
  %cmp507 = icmp ult i64 %324, 4
  br i1 %cmp507, label %cond.true.509, label %cond.false.553

cond.true.509:                                    ; preds = %land.lhs.true.505
  %325 = bitcast i8** %__s1511 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %325) #2
  %326 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname512 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %326, i32 0, i32 2
  %327 = load i8*, i8** %dname512, align 8, !tbaa !72
  store i8* %327, i8** %__s1511, align 8, !tbaa !1
  %328 = bitcast i32* %__result514 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #2
  %329 = load i8*, i8** %__s1511, align 8, !tbaa !1
  %arrayidx515 = getelementptr inbounds i8, i8* %329, i64 0
  %330 = load i8, i8* %arrayidx515, align 1, !tbaa !39
  %conv516 = zext i8 %330 to i32
  %331 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv517 = zext i8 %331 to i32
  %sub518 = sub nsw i32 %conv516, %conv517
  store i32 %sub518, i32* %__result514, align 4, !tbaa !28
  %332 = load i64, i64* %__s2_len503, align 8, !tbaa !71
  %cmp519 = icmp ugt i64 %332, 0
  br i1 %cmp519, label %land.lhs.true.521, label %if.end.551

land.lhs.true.521:                                ; preds = %cond.true.509
  %333 = load i32, i32* %__result514, align 4, !tbaa !28
  %cmp522 = icmp eq i32 %333, 0
  br i1 %cmp522, label %if.then.524, label %if.end.551

if.then.524:                                      ; preds = %land.lhs.true.521
  %334 = load i8*, i8** %__s1511, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds i8, i8* %334, i64 1
  %335 = load i8, i8* %arrayidx525, align 1, !tbaa !39
  %conv526 = zext i8 %335 to i32
  %336 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv527 = zext i8 %336 to i32
  %sub528 = sub nsw i32 %conv526, %conv527
  store i32 %sub528, i32* %__result514, align 4, !tbaa !28
  %337 = load i64, i64* %__s2_len503, align 8, !tbaa !71
  %cmp529 = icmp ugt i64 %337, 1
  br i1 %cmp529, label %land.lhs.true.531, label %if.end.550

land.lhs.true.531:                                ; preds = %if.then.524
  %338 = load i32, i32* %__result514, align 4, !tbaa !28
  %cmp532 = icmp eq i32 %338, 0
  br i1 %cmp532, label %if.then.534, label %if.end.550

if.then.534:                                      ; preds = %land.lhs.true.531
  %339 = load i8*, i8** %__s1511, align 8, !tbaa !1
  %arrayidx535 = getelementptr inbounds i8, i8* %339, i64 2
  %340 = load i8, i8* %arrayidx535, align 1, !tbaa !39
  %conv536 = zext i8 %340 to i32
  %341 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv537 = zext i8 %341 to i32
  %sub538 = sub nsw i32 %conv536, %conv537
  store i32 %sub538, i32* %__result514, align 4, !tbaa !28
  %342 = load i64, i64* %__s2_len503, align 8, !tbaa !71
  %cmp539 = icmp ugt i64 %342, 2
  br i1 %cmp539, label %land.lhs.true.541, label %if.end.549

land.lhs.true.541:                                ; preds = %if.then.534
  %343 = load i32, i32* %__result514, align 4, !tbaa !28
  %cmp542 = icmp eq i32 %343, 0
  br i1 %cmp542, label %if.then.544, label %if.end.549

if.then.544:                                      ; preds = %land.lhs.true.541
  %344 = load i8*, i8** %__s1511, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i8, i8* %344, i64 3
  %345 = load i8, i8* %arrayidx545, align 1, !tbaa !39
  %conv546 = zext i8 %345 to i32
  %346 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv547 = zext i8 %346 to i32
  %sub548 = sub nsw i32 %conv546, %conv547
  store i32 %sub548, i32* %__result514, align 4, !tbaa !28
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.544, %land.lhs.true.541, %if.then.534
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %land.lhs.true.531, %if.then.524
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %land.lhs.true.521, %cond.true.509
  %347 = load i32, i32* %__result514, align 4, !tbaa !28
  store i32 %347, i32* %tmp552, !tbaa !28
  %348 = bitcast i32* %__result514 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #2
  %349 = bitcast i8** %__s1511 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #2
  %350 = load i32, i32* %tmp552, !tbaa !28
  br label %cond.end.556

cond.false.553:                                   ; preds = %land.lhs.true.505, %if.end.499
  %351 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname554 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %351, i32 0, i32 2
  %352 = load i8*, i8** %dname554, align 8, !tbaa !72
  %call555 = call i32 @strcmp(i8* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.556

cond.end.556:                                     ; preds = %cond.false.553, %if.end.551
  %cond557 = phi i32 [ %350, %if.end.551 ], [ %call555, %cond.false.553 ]
  store i32 %cond557, i32* %tmp504, !tbaa !28
  %353 = bitcast i64* %__s2_len503 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #2
  %354 = bitcast i64* %__s1_len501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #2
  %355 = load i32, i32* %tmp504, !tbaa !28
  %cmp558 = icmp eq i32 %355, 0
  br i1 %cmp558, label %if.then.563, label %lor.lhs.false.560

lor.lhs.false.560:                                ; preds = %cond.end.556
  %356 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %356, i32 0, i32 0
  %357 = load i32, i32* %level, align 4, !tbaa !75
  %cmp561 = icmp uge i32 %357, 3
  br i1 %cmp561, label %if.then.563, label %if.end.595

if.then.563:                                      ; preds = %lor.lhs.false.560, %cond.end.556
  %358 = bitcast i32* %temp565 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #2
  %359 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call566 = call i32 @param_read_bool(%struct.gs_param_list_s* %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32* %temp565) #7
  store i32 %call566, i32* %rc, align 4, !tbaa !28
  %cmp567 = icmp eq i32 %call566, 0
  br i1 %cmp567, label %if.then.569, label %if.else.589

if.then.569:                                      ; preds = %if.then.563
  %360 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level570 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %360, i32 0, i32 0
  %361 = load i32, i32* %level570, align 4, !tbaa !75
  %cmp571 = icmp uge i32 %361, 3
  br i1 %cmp571, label %if.then.573, label %if.else.577

if.then.573:                                      ; preds = %if.then.569
  %362 = load i32, i32* %temp565, align 4, !tbaa !28
  %tobool574 = icmp ne i32 %362, 0
  %cond575 = select i1 %tobool574, i32 4, i32 3
  %363 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level576 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %363, i32 0, i32 0
  store i32 %cond575, i32* %level576, align 4, !tbaa !75
  br label %if.end.588

if.else.577:                                      ; preds = %if.then.569
  %364 = load i32, i32* %temp565, align 4, !tbaa !28
  %cmp578 = icmp eq i32 %364, 1
  br i1 %cmp578, label %if.then.580, label %if.end.587

if.then.580:                                      ; preds = %if.else.577
  %call581 = call i8* @gs_program_name() #7
  %call582 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call581, i64 %call582) #7
  %365 = load i8*, i8** %epref, align 8, !tbaa !1
  %call583 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.100, i32 0, i32 0), i8* %365) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %366 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs584 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %366, i32 0, i32 0
  %367 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs584, align 8, !tbaa !92
  %signal_error585 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %367, i32 0, i32 7
  %368 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error585, align 8, !tbaa !94
  %369 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %370 = load i8*, i8** %pname, align 8, !tbaa !1
  %371 = load i32, i32* %last_error, align 4, !tbaa !28
  %call586 = call i32 %368(%struct.gs_param_list_s* %369, i8* %370, i32 %371) #7
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.580, %if.else.577
  br label %if.end.588

if.end.588:                                       ; preds = %if.end.587, %if.then.573
  br label %if.end.594

if.else.589:                                      ; preds = %if.then.563
  %372 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp590 = icmp slt i32 %372, 0
  br i1 %cmp590, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %if.else.589
  %373 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %373, i32* %last_error, align 4, !tbaa !28
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.592, %if.else.589
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %if.end.588
  %374 = bitcast i32* %temp565 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #2
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %lor.lhs.false.560
  %375 = load i8*, i8** %epref, align 8, !tbaa !1
  %376 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %377 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init1 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %377, i32 0, i32 4
  %call596 = call i32 @fetch_octets(i8* %375, %struct.gs_param_list_s* %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %struct.pcl_OctetString* %init1) #7
  store i32 %call596, i32* %rc, align 4, !tbaa !28
  %378 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp597 = icmp slt i32 %378, 0
  br i1 %cmp597, label %if.then.599, label %if.end.600

if.then.599:                                      ; preds = %if.end.595
  %379 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %379, i32* %last_error, align 4, !tbaa !28
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.599, %if.end.595
  %380 = load i8*, i8** %epref, align 8, !tbaa !1
  %381 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %382 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %init2 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %382, i32 0, i32 5
  %call601 = call i32 @fetch_octets(i8* %380, %struct.gs_param_list_s* %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), %struct.pcl_OctetString* %init2) #7
  store i32 %call601, i32* %rc, align 4, !tbaa !28
  %383 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp602 = icmp slt i32 %383, 0
  br i1 %cmp602, label %if.then.604, label %if.end.605

if.then.604:                                      ; preds = %if.end.600
  %384 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %384, i32* %last_error, align 4, !tbaa !28
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.604, %if.end.600
  %385 = load i8*, i8** %epref, align 8, !tbaa !1
  %386 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %387 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_job = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %387, i32 0, i32 2
  %call606 = call i32 @fetch_cstring(i8* %385, %struct.gs_param_list_s* %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8** %PJL_job) #7
  store i32 %call606, i32* %rc, align 4, !tbaa !28
  %388 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp607 = icmp slt i32 %388, 0
  br i1 %cmp607, label %if.then.609, label %if.end.610

if.then.609:                                      ; preds = %if.end.605
  %389 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %389, i32* %last_error, align 4, !tbaa !28
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.609, %if.end.605
  %390 = load i8*, i8** %epref, align 8, !tbaa !1
  %391 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %392 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %PJL_language = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %392, i32 0, i32 3
  %call611 = call i32 @fetch_cstring(i8* %390, %struct.gs_param_list_s* %391, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8** %PJL_language) #7
  store i32 %call611, i32* %rc, align 4, !tbaa !28
  %393 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp612 = icmp slt i32 %393, 0
  br i1 %cmp612, label %if.then.614, label %if.end.615

if.then.614:                                      ; preds = %if.end.610
  %394 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %394, i32* %last_error, align 4, !tbaa !28
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.614, %if.end.610
  %395 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call616 = call i32 @param_read_string(%struct.gs_param_list_s* %395, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #7
  store i32 %call616, i32* %rc, align 4, !tbaa !28
  %cmp617 = icmp eq i32 %call616, 0
  br i1 %cmp617, label %if.then.619, label %if.else.657

if.then.619:                                      ; preds = %if.end.615
  %call620 = call i32 @get_int_for_string(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([6 x %struct.eprn_StringAndInt], [6 x %struct.eprn_StringAndInt]* @print_quality_list, i32 0, i32 0), i32* %temp) #7
  store i32 %call620, i32* %rc, align 4, !tbaa !28
  %396 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp621 = icmp ne i32 %396, 0
  br i1 %cmp621, label %if.then.623, label %if.else.644

if.then.623:                                      ; preds = %if.then.619
  %397 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp624 = icmp ne i32 %397, -25
  br i1 %cmp624, label %if.then.626, label %if.end.640

if.then.626:                                      ; preds = %if.then.623
  %call627 = call i8* @gs_program_name() #7
  %call628 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call627, i64 %call628) #7
  %398 = load i8*, i8** %epref, align 8, !tbaa !1
  %call629 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i32 0, i32 0), i8* %398) #7
  %399 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %memory630 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %399, i32 0, i32 3
  %400 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory630, align 8, !tbaa !91
  %data631 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %401 = load i8*, i8** %data631, align 8, !tbaa !78
  %size632 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %402 = load i32, i32* %size632, align 4, !tbaa !80
  %conv633 = zext i32 %402 to i64
  %mul634 = mul i64 1, %conv633
  %conv635 = trunc i64 %mul634 to i32
  %call636 = call i32 @errwrite(%struct.gs_memory_s* %400, i8* %401, i32 %conv635) #7
  %call637 = call i8* @gs_program_name() #7
  %call638 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call637, i64 %call638) #7
  %call639 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #7
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.626, %if.then.623
  %403 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %403, i32* %last_error, align 4, !tbaa !28
  %404 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs641 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %404, i32 0, i32 0
  %405 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs641, align 8, !tbaa !92
  %signal_error642 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %405, i32 0, i32 7
  %406 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error642, align 8, !tbaa !94
  %407 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %408 = load i8*, i8** %pname, align 8, !tbaa !1
  %409 = load i32, i32* %last_error, align 4, !tbaa !28
  %call643 = call i32 %406(%struct.gs_param_list_s* %407, i8* %408, i32 %409) #7
  br label %if.end.656

if.else.644:                                      ; preds = %if.then.619
  store i32 1, i32* %new_quality, align 4, !tbaa !28
  %410 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp645 = icmp slt i32 %410, -1
  br i1 %cmp645, label %if.then.650, label %lor.lhs.false.647

lor.lhs.false.647:                                ; preds = %if.else.644
  %411 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp648 = icmp slt i32 1, %411
  br i1 %cmp648, label %if.then.650, label %if.end.654

if.then.650:                                      ; preds = %lor.lhs.false.647, %if.else.644
  %call651 = call i8* @gs_program_name() #7
  %call652 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call651, i64 %call652) #7
  %412 = load i8*, i8** %wpref, align 8, !tbaa !1
  %413 = load i32, i32* %temp, align 4, !tbaa !28
  %call653 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.102, i32 0, i32 0), i8* %412, i32 %413) #7
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.650, %lor.lhs.false.647
  %414 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %415 = load i32, i32* %temp, align 4, !tbaa !28
  %call655 = call i32 @pcl3_set_printquality(%struct.pcl_FileData* %414, i32 %415) #7
  br label %if.end.656

if.end.656:                                       ; preds = %if.end.654, %if.end.640
  br label %if.end.662

if.else.657:                                      ; preds = %if.end.615
  %416 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp658 = icmp slt i32 %416, 0
  br i1 %cmp658, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %if.else.657
  %417 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %417, i32* %last_error, align 4, !tbaa !28
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.660, %if.else.657
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %if.end.656
  %418 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call663 = call i32 @param_read_null(%struct.gs_param_list_s* %418, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0)) #7
  store i32 %call663, i32* %rc, align 4, !tbaa !28
  %cmp664 = icmp eq i32 %call663, 0
  br i1 %cmp664, label %if.then.666, label %if.else.667

if.then.666:                                      ; preds = %if.end.662
  br label %if.end.695

if.else.667:                                      ; preds = %if.end.662
  %419 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp668 = icmp slt i32 %419, 0
  br i1 %cmp668, label %land.lhs.true.670, label %if.else.689

land.lhs.true.670:                                ; preds = %if.else.667
  %420 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call671 = call i32 @param_read_int(%struct.gs_param_list_s* %420, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i32* %temp) #7
  store i32 %call671, i32* %rc, align 4, !tbaa !28
  %cmp672 = icmp eq i32 %call671, 0
  br i1 %cmp672, label %if.then.674, label %if.else.689

if.then.674:                                      ; preds = %land.lhs.true.670
  %421 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp675 = icmp sle i32 0, %421
  br i1 %cmp675, label %land.lhs.true.677, label %if.else.681

land.lhs.true.677:                                ; preds = %if.then.674
  %422 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp678 = icmp sle i32 %422, 2
  br i1 %cmp678, label %if.then.680, label %if.else.681

if.then.680:                                      ; preds = %land.lhs.true.677
  %423 = load i32, i32* %temp, align 4, !tbaa !28
  %quality = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 1
  store i32 %423, i32* %quality, align 4, !tbaa !65
  br label %if.end.688

if.else.681:                                      ; preds = %land.lhs.true.677, %if.then.674
  %call682 = call i8* @gs_program_name() #7
  %call683 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call682, i64 %call683) #7
  %424 = load i8*, i8** %epref, align 8, !tbaa !1
  %425 = load i32, i32* %temp, align 4, !tbaa !28
  %call684 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.103, i32 0, i32 0), i8* %424, i32 %425) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %426 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs685 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %426, i32 0, i32 0
  %427 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs685, align 8, !tbaa !92
  %signal_error686 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %427, i32 0, i32 7
  %428 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error686, align 8, !tbaa !94
  %429 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %430 = load i8*, i8** %pname, align 8, !tbaa !1
  %431 = load i32, i32* %last_error, align 4, !tbaa !28
  %call687 = call i32 %428(%struct.gs_param_list_s* %429, i8* %430, i32 %431) #7
  br label %if.end.688

if.end.688:                                       ; preds = %if.else.681, %if.then.680
  br label %if.end.694

if.else.689:                                      ; preds = %land.lhs.true.670, %if.else.667
  %432 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp690 = icmp slt i32 %432, 0
  br i1 %cmp690, label %if.then.692, label %if.end.693

if.then.692:                                      ; preds = %if.else.689
  %433 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %433, i32* %last_error, align 4, !tbaa !28
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.692, %if.else.689
  br label %if.end.694

if.end.694:                                       ; preds = %if.end.693, %if.end.688
  br label %if.end.695

if.end.695:                                       ; preds = %if.end.694, %if.then.666
  %434 = bitcast i32* %temp697 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %434) #2
  %435 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call698 = call i32 @param_read_bool(%struct.gs_param_list_s* %435, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32* %temp697) #7
  store i32 %call698, i32* %rc, align 4, !tbaa !28
  %cmp699 = icmp eq i32 %call698, 0
  br i1 %cmp699, label %if.then.701, label %if.else.702

if.then.701:                                      ; preds = %if.end.695
  %436 = load i32, i32* %temp697, align 4, !tbaa !28
  %437 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %order_CMYK = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %437, i32 0, i32 20
  store i32 %436, i32* %order_CMYK, align 4, !tbaa !87
  br label %if.end.707

if.else.702:                                      ; preds = %if.end.695
  %438 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp703 = icmp slt i32 %438, 0
  br i1 %cmp703, label %if.then.705, label %if.end.706

if.then.705:                                      ; preds = %if.else.702
  %439 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %439, i32* %last_error, align 4, !tbaa !28
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.705, %if.else.702
  br label %if.end.707

if.end.707:                                       ; preds = %if.end.706, %if.then.701
  %440 = bitcast i32* %temp697 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #2
  %441 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call708 = call i32 @param_read_int(%struct.gs_param_list_s* %441, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32* %temp) #7
  store i32 %call708, i32* %rc, align 4, !tbaa !28
  %cmp709 = icmp eq i32 %call708, 0
  br i1 %cmp709, label %if.then.711, label %if.else.724

if.then.711:                                      ; preds = %if.end.707
  %442 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %NULs_to_send = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %442, i32 0, i32 1
  %443 = load i32, i32* %NULs_to_send, align 4, !tbaa !97
  %cmp712 = icmp sge i32 %443, 0
  br i1 %cmp712, label %if.then.714, label %if.else.716

if.then.714:                                      ; preds = %if.then.711
  %444 = load i32, i32* %temp, align 4, !tbaa !28
  %445 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %NULs_to_send715 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %445, i32 0, i32 1
  store i32 %444, i32* %NULs_to_send715, align 4, !tbaa !97
  br label %if.end.723

if.else.716:                                      ; preds = %if.then.711
  %call717 = call i8* @gs_program_name() #7
  %call718 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call717, i64 %call718) #7
  %446 = load i8*, i8** %epref, align 8, !tbaa !1
  %447 = load i32, i32* %temp, align 4, !tbaa !28
  %call719 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.104, i32 0, i32 0), i8* %446, i32 %447) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %448 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs720 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %448, i32 0, i32 0
  %449 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs720, align 8, !tbaa !92
  %signal_error721 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %449, i32 0, i32 7
  %450 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error721, align 8, !tbaa !94
  %451 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %452 = load i8*, i8** %pname, align 8, !tbaa !1
  %453 = load i32, i32* %last_error, align 4, !tbaa !28
  %call722 = call i32 %450(%struct.gs_param_list_s* %451, i8* %452, i32 %453) #7
  br label %if.end.723

if.end.723:                                       ; preds = %if.else.716, %if.then.714
  br label %if.end.729

if.else.724:                                      ; preds = %if.end.707
  %454 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp725 = icmp slt i32 %454, 0
  br i1 %cmp725, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %if.else.724
  %455 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %455, i32* %last_error, align 4, !tbaa !28
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.727, %if.else.724
  br label %if.end.729

if.end.729:                                       ; preds = %if.end.728, %if.end.723
  %456 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call730 = call i32 @param_read_null(%struct.gs_param_list_s* %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7
  store i32 %call730, i32* %rc, align 4, !tbaa !28
  %cmp731 = icmp eq i32 %call730, 0
  br i1 %cmp731, label %if.then.733, label %if.else.734

if.then.733:                                      ; preds = %if.end.729
  br label %if.end.762

if.else.734:                                      ; preds = %if.end.729
  %457 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp735 = icmp slt i32 %457, 0
  br i1 %cmp735, label %land.lhs.true.737, label %if.else.756

land.lhs.true.737:                                ; preds = %if.else.734
  %458 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %459 = load i8*, i8** %pname, align 8, !tbaa !1
  %call738 = call i32 @param_read_int(%struct.gs_param_list_s* %458, i8* %459, i32* %temp) #7
  store i32 %call738, i32* %rc, align 4, !tbaa !28
  %cmp739 = icmp eq i32 %call738, 0
  br i1 %cmp739, label %if.then.741, label %if.else.756

if.then.741:                                      ; preds = %land.lhs.true.737
  %460 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp742 = icmp sle i32 0, %460
  br i1 %cmp742, label %land.lhs.true.744, label %if.else.748

land.lhs.true.744:                                ; preds = %if.then.741
  %461 = load i32, i32* %temp, align 4, !tbaa !28
  %cmp745 = icmp sle i32 %461, 2
  br i1 %cmp745, label %if.then.747, label %if.else.748

if.then.747:                                      ; preds = %land.lhs.true.744
  %462 = load i32, i32* %temp, align 4, !tbaa !28
  %shingling = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 2
  store i32 %462, i32* %shingling, align 4, !tbaa !67
  br label %if.end.755

if.else.748:                                      ; preds = %land.lhs.true.744, %if.then.741
  %call749 = call i8* @gs_program_name() #7
  %call750 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call749, i64 %call750) #7
  %463 = load i8*, i8** %epref, align 8, !tbaa !1
  %464 = load i32, i32* %temp, align 4, !tbaa !28
  %call751 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.105, i32 0, i32 0), i8* %463, i32 %464) #7
  store i32 -15, i32* %last_error, align 4, !tbaa !28
  %465 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs752 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %465, i32 0, i32 0
  %466 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs752, align 8, !tbaa !92
  %signal_error753 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %466, i32 0, i32 7
  %467 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error753, align 8, !tbaa !94
  %468 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %469 = load i8*, i8** %pname, align 8, !tbaa !1
  %470 = load i32, i32* %last_error, align 4, !tbaa !28
  %call754 = call i32 %467(%struct.gs_param_list_s* %468, i8* %469, i32 %470) #7
  br label %if.end.755

if.end.755:                                       ; preds = %if.else.748, %if.then.747
  br label %if.end.761

if.else.756:                                      ; preds = %land.lhs.true.737, %if.else.734
  %471 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp757 = icmp slt i32 %471, 0
  br i1 %cmp757, label %if.then.759, label %if.end.760

if.then.759:                                      ; preds = %if.else.756
  %472 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %472, i32* %last_error, align 4, !tbaa !28
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.759, %if.else.756
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.755
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.761, %if.then.733
  %473 = bitcast i64* %__s1_len764 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %473) #2
  %474 = bitcast i64* %__s2_len766 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %474) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true.768, label %cond.false.816

land.lhs.true.768:                                ; preds = %if.end.762
  %call769 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call769, i64* %__s2_len766, align 8, !tbaa !71
  %475 = load i64, i64* %__s2_len766, align 8, !tbaa !71
  %cmp770 = icmp ult i64 %475, 4
  br i1 %cmp770, label %cond.true.772, label %cond.false.816

cond.true.772:                                    ; preds = %land.lhs.true.768
  %476 = bitcast i8** %__s1774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %476) #2
  %477 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname775 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %477, i32 0, i32 2
  %478 = load i8*, i8** %dname775, align 8, !tbaa !72
  store i8* %478, i8** %__s1774, align 8, !tbaa !1
  %479 = bitcast i32* %__result777 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %479) #2
  %480 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx778 = getelementptr inbounds i8, i8* %480, i64 0
  %481 = load i8, i8* %arrayidx778, align 1, !tbaa !39
  %conv779 = zext i8 %481 to i32
  %482 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv780 = zext i8 %482 to i32
  %sub781 = sub nsw i32 %conv779, %conv780
  store i32 %sub781, i32* %__result777, align 4, !tbaa !28
  %483 = load i64, i64* %__s2_len766, align 8, !tbaa !71
  %cmp782 = icmp ugt i64 %483, 0
  br i1 %cmp782, label %land.lhs.true.784, label %if.end.814

land.lhs.true.784:                                ; preds = %cond.true.772
  %484 = load i32, i32* %__result777, align 4, !tbaa !28
  %cmp785 = icmp eq i32 %484, 0
  br i1 %cmp785, label %if.then.787, label %if.end.814

if.then.787:                                      ; preds = %land.lhs.true.784
  %485 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx788 = getelementptr inbounds i8, i8* %485, i64 1
  %486 = load i8, i8* %arrayidx788, align 1, !tbaa !39
  %conv789 = zext i8 %486 to i32
  %487 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv790 = zext i8 %487 to i32
  %sub791 = sub nsw i32 %conv789, %conv790
  store i32 %sub791, i32* %__result777, align 4, !tbaa !28
  %488 = load i64, i64* %__s2_len766, align 8, !tbaa !71
  %cmp792 = icmp ugt i64 %488, 1
  br i1 %cmp792, label %land.lhs.true.794, label %if.end.813

land.lhs.true.794:                                ; preds = %if.then.787
  %489 = load i32, i32* %__result777, align 4, !tbaa !28
  %cmp795 = icmp eq i32 %489, 0
  br i1 %cmp795, label %if.then.797, label %if.end.813

if.then.797:                                      ; preds = %land.lhs.true.794
  %490 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx798 = getelementptr inbounds i8, i8* %490, i64 2
  %491 = load i8, i8* %arrayidx798, align 1, !tbaa !39
  %conv799 = zext i8 %491 to i32
  %492 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv800 = zext i8 %492 to i32
  %sub801 = sub nsw i32 %conv799, %conv800
  store i32 %sub801, i32* %__result777, align 4, !tbaa !28
  %493 = load i64, i64* %__s2_len766, align 8, !tbaa !71
  %cmp802 = icmp ugt i64 %493, 2
  br i1 %cmp802, label %land.lhs.true.804, label %if.end.812

land.lhs.true.804:                                ; preds = %if.then.797
  %494 = load i32, i32* %__result777, align 4, !tbaa !28
  %cmp805 = icmp eq i32 %494, 0
  br i1 %cmp805, label %if.then.807, label %if.end.812

if.then.807:                                      ; preds = %land.lhs.true.804
  %495 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx808 = getelementptr inbounds i8, i8* %495, i64 3
  %496 = load i8, i8* %arrayidx808, align 1, !tbaa !39
  %conv809 = zext i8 %496 to i32
  %497 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv810 = zext i8 %497 to i32
  %sub811 = sub nsw i32 %conv809, %conv810
  store i32 %sub811, i32* %__result777, align 4, !tbaa !28
  br label %if.end.812

if.end.812:                                       ; preds = %if.then.807, %land.lhs.true.804, %if.then.797
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.812, %land.lhs.true.794, %if.then.787
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %land.lhs.true.784, %cond.true.772
  %498 = load i32, i32* %__result777, align 4, !tbaa !28
  store i32 %498, i32* %tmp815, !tbaa !28
  %499 = bitcast i32* %__result777 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #2
  %500 = bitcast i8** %__s1774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #2
  %501 = load i32, i32* %tmp815, !tbaa !28
  br label %cond.end.819

cond.false.816:                                   ; preds = %land.lhs.true.768, %if.end.762
  %502 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %dname817 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %502, i32 0, i32 2
  %503 = load i8*, i8** %dname817, align 8, !tbaa !72
  %call818 = call i32 @strcmp(i8* %503, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.819

cond.end.819:                                     ; preds = %cond.false.816, %if.end.814
  %cond820 = phi i32 [ %501, %if.end.814 ], [ %call818, %cond.false.816 ]
  store i32 %cond820, i32* %tmp767, !tbaa !28
  %504 = bitcast i64* %__s2_len766 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %504) #2
  %505 = bitcast i64* %__s1_len764 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %505) #2
  %506 = load i32, i32* %tmp767, !tbaa !28
  %cmp821 = icmp eq i32 %506, 0
  br i1 %cmp821, label %if.then.823, label %if.end.829

if.then.823:                                      ; preds = %cond.end.819
  %507 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %508 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %tumble = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %508, i32 0, i32 72
  %call824 = call i32 @param_read_bool(%struct.gs_param_list_s* %507, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32* %tumble) #7
  store i32 %call824, i32* %rc, align 4, !tbaa !28
  %cmp825 = icmp slt i32 %call824, 0
  br i1 %cmp825, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %if.then.823
  %509 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %509, i32* %last_error, align 4, !tbaa !28
  br label %if.end.828

if.end.828:                                       ; preds = %if.then.827, %if.then.823
  br label %if.end.829

if.end.829:                                       ; preds = %if.end.828, %cond.end.819
  %510 = bitcast i32* %temp831 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %510) #2
  %511 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8** %pname, align 8, !tbaa !1
  %call832 = call i32 @param_read_null(%struct.gs_param_list_s* %511, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0)) #7
  store i32 %call832, i32* %rc, align 4, !tbaa !28
  %cmp833 = icmp eq i32 %call832, 0
  br i1 %cmp833, label %if.then.835, label %if.else.836

if.then.835:                                      ; preds = %if.end.829
  %512 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %512, i32 0, i32 70
  store i32 0, i32* %use_card, align 4, !tbaa !50
  br label %if.end.853

if.else.836:                                      ; preds = %if.end.829
  %513 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp837 = icmp slt i32 %513, 0
  br i1 %cmp837, label %land.lhs.true.839, label %if.else.847

land.lhs.true.839:                                ; preds = %if.else.836
  %514 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %515 = load i8*, i8** %pname, align 8, !tbaa !1
  %call840 = call i32 @param_read_bool(%struct.gs_param_list_s* %514, i8* %515, i32* %temp831) #7
  store i32 %call840, i32* %rc, align 4, !tbaa !28
  %cmp841 = icmp eq i32 %call840, 0
  br i1 %cmp841, label %if.then.843, label %if.else.847

if.then.843:                                      ; preds = %land.lhs.true.839
  %516 = load i32, i32* %temp831, align 4, !tbaa !28
  %tobool844 = icmp ne i32 %516, 0
  %cond845 = select i1 %tobool844, i32 1, i32 2
  %517 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %use_card846 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %517, i32 0, i32 70
  store i32 %cond845, i32* %use_card846, align 4, !tbaa !50
  br label %if.end.852

if.else.847:                                      ; preds = %land.lhs.true.839, %if.else.836
  %518 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp848 = icmp slt i32 %518, 0
  br i1 %cmp848, label %if.then.850, label %if.end.851

if.then.850:                                      ; preds = %if.else.847
  %519 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %519, i32* %last_error, align 4, !tbaa !28
  br label %if.end.851

if.end.851:                                       ; preds = %if.then.850, %if.else.847
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.then.843
  br label %if.end.853

if.end.853:                                       ; preds = %if.end.852, %if.then.835
  %520 = bitcast i32* %temp831 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #2
  %521 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %522 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call854 = call i32 @eprn_put_params(%struct.gx_device_s* %521, %struct.gs_param_list_s* %522) #7
  store i32 %call854, i32* %rc, align 4, !tbaa !28
  %cmp855 = icmp slt i32 %call854, 0
  br i1 %cmp855, label %if.then.863, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %if.end.853
  %523 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp858 = icmp sgt i32 %523, 0
  br i1 %cmp858, label %land.lhs.true.860, label %if.end.864

land.lhs.true.860:                                ; preds = %lor.lhs.false.857
  %524 = load i32, i32* %last_error, align 4, !tbaa !28
  %cmp861 = icmp sge i32 %524, 0
  br i1 %cmp861, label %if.then.863, label %if.end.864

if.then.863:                                      ; preds = %land.lhs.true.860, %if.end.853
  %525 = load i32, i32* %rc, align 4, !tbaa !28
  store i32 %525, i32* %last_error, align 4, !tbaa !28
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.863, %land.lhs.true.860, %lor.lhs.false.857
  %526 = load i32, i32* %previous_colour_model, align 4, !tbaa !39
  %527 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  %eprn865 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %527, i32 0, i32 68
  %colour_model866 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn865, i32 0, i32 14
  %528 = load i32, i32* %colour_model866, align 4, !tbaa !37
  %cmp867 = icmp ne i32 %526, %528
  br i1 %cmp867, label %if.then.869, label %if.end.870

if.then.869:                                      ; preds = %if.end.864
  %529 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev, align 8, !tbaa !1
  call void @set_palette(%struct.pcl3_Device* %529) #7
  br label %if.end.870

if.end.870:                                       ; preds = %if.then.869, %if.end.864
  %530 = load i32, i32* %last_error, align 4, !tbaa !28
  %cmp871 = icmp slt i32 %530, 0
  br i1 %cmp871, label %if.then.873, label %if.end.874

if.then.873:                                      ; preds = %if.end.870
  %531 = load i32, i32* %last_error, align 4, !tbaa !28
  store i32 %531, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.874:                                       ; preds = %if.end.870
  %532 = load i32, i32* %new_quality, align 4, !tbaa !28
  %tobool875 = icmp ne i32 %532, 0
  br i1 %tobool875, label %if.then.876, label %if.end.878

if.then.876:                                      ; preds = %if.end.874
  %533 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %call877 = call i32 @pcl3_set_oldquality(%struct.pcl_FileData* %533) #7
  br label %if.end.878

if.end.878:                                       ; preds = %if.then.876, %if.end.874
  %534 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %level879 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %534, i32 0, i32 0
  %535 = load i32, i32* %level879, align 4, !tbaa !75
  %cmp880 = icmp ule i32 %535, 2
  br i1 %cmp880, label %if.then.882, label %if.end.903

if.then.882:                                      ; preds = %if.end.878
  %depletion883 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 0
  %536 = load i32, i32* %depletion883, align 4, !tbaa !63
  %cmp884 = icmp sge i32 %536, 0
  br i1 %cmp884, label %if.then.886, label %if.end.889

if.then.886:                                      ; preds = %if.then.882
  %depletion887 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 0
  %537 = load i32, i32* %depletion887, align 4, !tbaa !63
  %538 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %depletion888 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %538, i32 0, i32 13
  store i32 %537, i32* %depletion888, align 4, !tbaa !89
  br label %if.end.889

if.end.889:                                       ; preds = %if.then.886, %if.then.882
  %quality890 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 1
  %539 = load i32, i32* %quality890, align 4, !tbaa !65
  %cmp891 = icmp sge i32 %539, 0
  br i1 %cmp891, label %if.then.893, label %if.end.895

if.then.893:                                      ; preds = %if.end.889
  %quality894 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 1
  %540 = load i32, i32* %quality894, align 4, !tbaa !65
  %541 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %raster_graphics_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %541, i32 0, i32 15
  store i32 %540, i32* %raster_graphics_quality, align 4, !tbaa !98
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.893, %if.end.889
  %shingling896 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 2
  %542 = load i32, i32* %shingling896, align 4, !tbaa !67
  %cmp897 = icmp sge i32 %542, 0
  br i1 %cmp897, label %if.then.899, label %if.end.902

if.then.899:                                      ; preds = %if.end.895
  %shingling900 = getelementptr inbounds %struct.anon, %struct.anon* %requested, i32 0, i32 2
  %543 = load i32, i32* %shingling900, align 4, !tbaa !67
  %544 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %shingling901 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %544, i32 0, i32 14
  store i32 %543, i32* %shingling901, align 4, !tbaa !99
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.899, %if.end.895
  br label %if.end.903

if.end.903:                                       ; preds = %if.end.902, %if.end.878
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.903, %if.then.873
  %545 = bitcast %struct.anon* %requested to i8*
  call void @llvm.lifetime.end(i64 12, i8* %545) #2
  %546 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #2
  %547 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #2
  %548 = bitcast i32* %last_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #2
  %549 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %549) #2
  %550 = bitcast i32* %previous_colour_model to i8*
  call void @llvm.lifetime.end(i64 4, i8* %550) #2
  %551 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %551) #2
  %552 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %552) #2
  %553 = bitcast %struct.pcl3_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %553) #2
  %554 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %554) #2
  %555 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #2
  %556 = bitcast i32* %new_quality to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #2
  %557 = load i32, i32* %retval
  ret i32 %557
}

declare i64 @eprn_map_cmyk_color_glob(%struct.gx_device_s*, i16*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @init(%struct.pcl3_Device* %dev) #1 {
entry:
  %dev.addr = alloca %struct.pcl3_Device*, align 8
  %j = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  store %struct.pcl3_Device* %dev, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !tbaa !28
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4, !tbaa !28
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* getelementptr inbounds ([27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i32 0), i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %add.ptr, i64 -1
  %3 = bitcast %struct.eprn_StringAndInt* %add.ptr2 to i8*
  %4 = load i32, i32* %j, align 4, !tbaa !28
  %idx.ext3 = sext i32 %4 to i64
  %add.ptr4 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* getelementptr inbounds ([27 x %struct.eprn_StringAndInt], [27 x %struct.eprn_StringAndInt]* @subdevice_list, i32 0, i32 0), i64 %idx.ext3
  %5 = bitcast %struct.eprn_StringAndInt* %add.ptr4 to i8*
  %call = call i32 @cmp_by_value(i8* %3, i8* %5) #7
  %cmp5 = icmp sle i32 %call, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i32 397, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.init, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %7 = load i32, i32* %j, align 4, !tbaa !28
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false.47

land.lhs.true:                                    ; preds = %for.end
  %call7 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call7, i64* %__s2_len, align 8, !tbaa !71
  %11 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp8 = icmp ult i64 %11, 4
  br i1 %cmp8, label %cond.true.10, label %cond.false.47

cond.true.10:                                     ; preds = %land.lhs.true
  %12 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %13, i32 0, i32 2
  %14 = load i8*, i8** %dname, align 8, !tbaa !72
  store i8* %14, i8** %__s1, align 8, !tbaa !1
  %15 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv13 = zext i8 %17 to i32
  %18 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !39
  %conv14 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv13, %conv14
  store i32 %sub, i32* %__result, align 4, !tbaa !28
  %19 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp15 = icmp ugt i64 %19, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.45

land.lhs.true.17:                                 ; preds = %cond.true.10
  %20 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %if.then, label %if.end.45

if.then:                                          ; preds = %land.lhs.true.17
  %21 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx20, align 1, !tbaa !39
  %conv21 = zext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !39
  %conv22 = zext i8 %23 to i32
  %sub23 = sub nsw i32 %conv21, %conv22
  store i32 %sub23, i32* %__result, align 4, !tbaa !28
  %24 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp24 = icmp ugt i64 %24, 1
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.44

land.lhs.true.26:                                 ; preds = %if.then
  %25 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp27 = icmp eq i32 %25, 0
  br i1 %cmp27, label %if.then.29, label %if.end.44

if.then.29:                                       ; preds = %land.lhs.true.26
  %26 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx30, align 1, !tbaa !39
  %conv31 = zext i8 %27 to i32
  %28 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !39
  %conv32 = zext i8 %28 to i32
  %sub33 = sub nsw i32 %conv31, %conv32
  store i32 %sub33, i32* %__result, align 4, !tbaa !28
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !71
  %cmp34 = icmp ugt i64 %29, 2
  br i1 %cmp34, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %if.then.29
  %30 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true.36
  %31 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 3
  %32 = load i8, i8* %arrayidx40, align 1, !tbaa !39
  %conv41 = zext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !39
  %conv42 = zext i8 %33 to i32
  %sub43 = sub nsw i32 %conv41, %conv42
  store i32 %sub43, i32* %__result, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then.39, %land.lhs.true.36, %if.then.29
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %land.lhs.true.26, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.17, %cond.true.10
  %34 = load i32, i32* %__result, align 4, !tbaa !28
  store i32 %34, i32* %tmp46, !tbaa !28
  %35 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %tmp46, !tbaa !28
  br label %cond.end.50

cond.false.47:                                    ; preds = %land.lhs.true, %for.end
  %38 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %dname48 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %38, i32 0, i32 2
  %39 = load i8*, i8** %dname48, align 8, !tbaa !72
  %call49 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %if.end.45
  %cond = phi i32 [ %37, %if.end.45 ], [ %call49, %cond.false.47 ]
  store i32 %cond, i32* %tmp, !tbaa !28
  %40 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %tmp, !tbaa !28
  %cmp51 = icmp eq i32 %42, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cond.end.50
  %43 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %43, i32 0, i32 50
  store i32 0, i32* %Duplex_set, align 4, !tbaa !57
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %cond.end.50
  %44 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %use_card = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %44, i32 0, i32 70
  store i32 0, i32* %use_card, align 4, !tbaa !50
  %45 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %duplex_capability = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %45, i32 0, i32 71
  store i32 0, i32* %duplex_capability, align 4, !tbaa !61
  %46 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %tumble = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %46, i32 0, i32 72
  store i32 0, i32* %tumble, align 4, !tbaa !60
  %47 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %configured = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %47, i32 0, i32 74
  store i32 0, i32* %configured, align 4, !tbaa !26
  %48 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %configure_every_page = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %48, i32 0, i32 75
  store i32 0, i32* %configure_every_page, align 4, !tbaa !27
  %49 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %printer = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %49, i32 0, i32 69
  %50 = load i32, i32* %printer, align 4, !tbaa !88
  %51 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %51, i32 0, i32 76
  call void @pcl3_fill_defaults(i32 %50, %struct.pcl_FileData* %file_data) #7
  %52 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %52, i32 0, i32 73
  store i32 1, i32* %initialized, align 4, !tbaa !45
  ret void
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare void @eprn_set_media_flags(%struct.eprn_Device*, i32, i32*) #0

declare i32 @eprn_open_device(%struct.gx_device_s*) #0

declare i32 @pcl3_page_size(i32) #0

declare i32 @ms_find_name_from_code(i8*, i64, i32, %struct.ms_Flag*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @set_palette(%struct.pcl3_Device* %dev) #1 {
entry:
  %dev.addr = alloca %struct.pcl3_Device*, align 8
  %data = alloca %struct.pcl_FileData*, align 8
  %ci = alloca %struct.eprn_ColourInfo*, align 8
  store %struct.pcl3_Device* %dev, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %file_data = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %1, i32 0, i32 76
  store %struct.pcl_FileData* %file_data, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %2 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %2, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %3 = load i32, i32* %colour_model, align 4, !tbaa !37
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.8
    i32 1, label %sw.bb.11
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = bitcast %struct.eprn_ColourInfo** %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.pcl3_Device*, %struct.pcl3_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.pcl3_Device, %struct.pcl3_Device* %5, i32 0, i32 68
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 0
  %6 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !96
  %colour_info = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %6, i32 0, i32 4
  %7 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %colour_info, align 8, !tbaa !100
  store %struct.eprn_ColourInfo* %7, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %8 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info, i32 0, i64 0
  %9 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne %struct.eprn_ResLev* %9, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  %colour_model2 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %colour_model2, align 4, !tbaa !101
  %cmp3 = icmp eq i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %13, i32 1
  store %struct.eprn_ColourInfo* %incdec.ptr, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %ci, align 8, !tbaa !1
  %info4 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %14, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info4, i32 0, i64 0
  %15 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx5, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.eprn_ResLev* %15, null
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %16 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %16, i32 0, i32 16
  store i32 1, i32* %palette, align 4, !tbaa !66
  br label %if.end

if.else:                                          ; preds = %while.end
  %17 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette7 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %17, i32 0, i32 16
  store i32 0, i32* %palette7, align 4, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = bitcast %struct.eprn_ColourInfo** %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %19, i32 0, i32 17
  store i32 1, i32* %number_of_colorants, align 4, !tbaa !62
  %20 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %depletion = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %20, i32 0, i32 13
  store i32 0, i32* %depletion, align 4, !tbaa !89
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %21 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette9 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %21, i32 0, i32 16
  store i32 2, i32* %palette9, align 4, !tbaa !66
  %22 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants10 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %22, i32 0, i32 17
  store i32 3, i32* %number_of_colorants10, align 4, !tbaa !62
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %23 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette12 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %23, i32 0, i32 16
  store i32 4, i32* %palette12, align 4, !tbaa !66
  %24 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants13 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %24, i32 0, i32 17
  store i32 3, i32* %number_of_colorants13, align 4, !tbaa !62
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %25 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %palette15 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %25, i32 0, i32 16
  store i32 3, i32* %palette15, align 4, !tbaa !66
  %26 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data, align 8, !tbaa !1
  %number_of_colorants16 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %26, i32 0, i32 17
  store i32 4, i32* %number_of_colorants16, align 4, !tbaa !62
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i32 843, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.set_palette, i32 0, i32 0)) #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb.14, %sw.bb.11, %sw.bb.8, %if.end
  %27 = bitcast %struct.pcl_FileData** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_by_value(i8* %a, i8* %b) #1 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.eprn_StringAndInt*
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %1, i32 0, i32 1
  %2 = load i32, i32* %value, align 4, !tbaa !38
  %3 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.eprn_StringAndInt*
  %value1 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %4, i32 0, i32 1
  %5 = load i32, i32* %value1, align 4, !tbaa !38
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

declare void @pcl3_fill_defaults(i32, %struct.pcl_FileData*) #0

declare i32 @pcl3_end_file(%struct._IO_FILE*, %struct.pcl_FileData*) #0

declare i32 @eprn_close_device(%struct.gx_device_s*) #0

declare i32 @eprn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #0

declare i32 @eprn_get_string(i32, %struct.eprn_StringAndInt*, %struct.gs_param_string_s*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind uwtable
define internal void @get_string_for_int(i32 %in_value, %struct.eprn_StringAndInt* %table, %struct.gs_param_string_s* %out_value) #1 {
entry:
  %in_value.addr = alloca i32, align 4
  %table.addr = alloca %struct.eprn_StringAndInt*, align 8
  %out_value.addr = alloca %struct.gs_param_string_s*, align 8
  store i32 %in_value, i32* %in_value.addr, align 4, !tbaa !28
  store %struct.eprn_StringAndInt* %table, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %out_value, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !35
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %2, i32 0, i32 1
  %3 = load i32, i32* %value, align 4, !tbaa !38
  %4 = load i32, i32* %in_value.addr, align 4, !tbaa !28
  %cmp1 = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %6, i32 1
  store %struct.eprn_StringAndInt* %incdec.ptr, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name2 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %7, i32 0, i32 0
  %8 = load i8*, i8** %name2, align 8, !tbaa !35
  %cmp3 = icmp ne i8* %8, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %9 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name4 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %9, i32 0, i32 0
  %10 = load i8*, i8** %name4, align 8, !tbaa !35
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  store i8* %10, i8** %data, align 8, !tbaa !78
  %12 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name5 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8, !tbaa !35
  %call = call i64 @strlen(i8* %13) #9
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !80
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !81
  br label %if.end

if.else:                                          ; preds = %while.end
  %16 = load i32, i32* %in_value.addr, align 4, !tbaa !28
  %call6 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_string_for_int.buffer, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i32 %16) #7
  %call7 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_string_for_int.buffer, i32 0, i32 0)) #9
  %cmp8 = icmp ult i64 %call7, 22
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i32 306, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.get_string_for_int, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %17, %cond.true
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_string_for_int.buffer, i32 0, i32 0), i8** %data10, align 8, !tbaa !78
  %call11 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_string_for_int.buffer, i32 0, i32 0)) #9
  %conv12 = trunc i64 %call11 to i32
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %19, i32 0, i32 1
  store i32 %conv12, i32* %size13, align 4, !tbaa !80
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !1
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %20, i32 0, i32 2
  store i32 0, i32* %persistent14, align 4, !tbaa !81
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @find_subdevice_name(i32 %subdev) #1 {
entry:
  %subdev.addr = alloca i32, align 4
  %key = alloca %struct.eprn_StringAndInt, align 8
  %found = alloca %struct.eprn_StringAndInt*, align 8
  store i32 %subdev, i32* %subdev.addr, align 4, !tbaa !28
  %0 = bitcast %struct.eprn_StringAndInt* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.eprn_StringAndInt* %key to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.eprn_StringAndInt** %found to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %subdev.addr, align 4, !tbaa !28
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %key, i32 0, i32 1
  store i32 %3, i32* %value, align 4, !tbaa !38
  %4 = bitcast %struct.eprn_StringAndInt* %key to i8*
  %call = call i8* @bsearch(i8* %4, i8* bitcast ([27 x %struct.eprn_StringAndInt]* @subdevice_list to i8*), i64 26, i64 16, i32 (i8*, i8*)* @cmp_by_value) #7
  %5 = bitcast i8* %call to %struct.eprn_StringAndInt*
  store %struct.eprn_StringAndInt* %5, %struct.eprn_StringAndInt** %found, align 8, !tbaa !1
  %6 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %found, align 8, !tbaa !1
  %cmp = icmp ne %struct.eprn_StringAndInt* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i32 485, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.find_subdevice_name, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %found, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8, !tbaa !35
  %10 = bitcast %struct.eprn_StringAndInt** %found to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct.eprn_StringAndInt* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #2
  ret i8* %9
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

declare void @eprn_init_device(%struct.eprn_Device*, %struct.eprn_PrinterDescription*) #0

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #0

declare i32 @eprn_get_int(%struct.gs_param_string_s*, %struct.eprn_StringAndInt*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @get_int_for_string(%struct.gs_param_string_s* %in_value, %struct.eprn_StringAndInt* %table, i32* %out_value) #1 {
entry:
  %retval = alloca i32, align 4
  %in_value.addr = alloca %struct.gs_param_string_s*, align 8
  %table.addr = alloca %struct.eprn_StringAndInt*, align 8
  %out_value.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %t = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.gs_param_string_s* %in_value, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !1
  store %struct.eprn_StringAndInt* %table, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  store i32* %out_value, i32** %out_value.addr, align 8, !tbaa !1
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !80
  %add = add i32 %3, 1
  %conv = zext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  store i8* %call, i8** %s, align 8, !tbaa !1
  %4 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i8* @gs_program_name() #7
  %call3 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call2, i64 %call3) #7
  %call4 = call i32* @__errno_location() #11
  %5 = load i32, i32* %call4, align 4, !tbaa !28
  %call5 = call i8* @strerror(i32 %5) #8
  %call6 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.106, i32 0, i32 0), i8* %call5) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %s, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !78
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !1
  %size7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i32 0, i32 1
  %10 = load i32, i32* %size7, align 4, !tbaa !80
  %conv8 = zext i32 %10 to i64
  %call9 = call i8* @strncpy(i8* %6, i8* %8, i64 %conv8) #8
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !1
  %size10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size10, align 4, !tbaa !80
  %idxprom = zext i32 %12 to i64
  %13 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !39
  %14 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i8*, i8** %s, align 8, !tbaa !1
  %call11 = call i8* @__rawmemchr(i8* %15, i32 0) #7
  store i8* %call11, i8** %t, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load i8*, i8** %s, align 8, !tbaa !1
  %17 = load i8*, i8** %t, align 8, !tbaa !1
  %cmp12 = icmp ult i8* %16, %17
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load i8, i8* %add.ptr, align 1, !tbaa !39
  %conv14 = sext i8 %19 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #11
  %20 = load i16*, i16** %call16, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %20, i64 %idxprom15
  %21 = load i16, i16* %arrayidx17, align 2, !tbaa !103
  %conv18 = zext i16 %21 to i32
  %and = and i32 %conv18, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %t, align 8, !tbaa !1
  store i8 0, i8* %24, align 1, !tbaa !39
  %25 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i8*, i8** %s, align 8, !tbaa !1
  %27 = load i32*, i32** %out_value.addr, align 8, !tbaa !1
  %call19 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32* %27, i32* %read) #8
  %cmp20 = icmp ne i32 %call19, 1
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %28 = load i32, i32* %read, align 4, !tbaa !28
  %idxprom22 = sext i32 %28 to i64
  %29 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 %idxprom22
  %30 = load i8, i8* %arrayidx23, align 1, !tbaa !39
  %conv24 = sext i8 %30 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %lor.lhs.false, %while.end
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.37, %if.then.27
  %31 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %31, i32 0, i32 0
  %32 = load i8*, i8** %name, align 8, !tbaa !35
  %cmp29 = icmp ne i8* %32, null
  br i1 %cmp29, label %land.rhs.31, label %land.end.36

land.rhs.31:                                      ; preds = %while.cond.28
  %33 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name32 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %35, i32 0, i32 0
  %36 = load i8*, i8** %name32, align 8, !tbaa !35
  %37 = load i8*, i8** %s, align 8, !tbaa !1
  %call33 = call i32 @strcmp(i8* %36, i8* %37) #8
  store i32 %call33, i32* %tmp, !tbaa !28
  %38 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %tmp, !tbaa !28
  %cmp34 = icmp ne i32 %40, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.31, %while.cond.28
  %41 = phi i1 [ false, %while.cond.28 ], [ %cmp34, %land.rhs.31 ]
  br i1 %41, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %land.end.36
  %42 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %42, i32 1
  store %struct.eprn_StringAndInt* %incdec.ptr38, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  br label %while.cond.28

while.end.39:                                     ; preds = %land.end.36
  %43 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %name40 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %43, i32 0, i32 0
  %44 = load i8*, i8** %name40, align 8, !tbaa !35
  %cmp41 = icmp eq i8* %44, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %while.end.39
  %45 = load i8*, i8** %s, align 8, !tbaa !1
  call void @free(i8* %45) #8
  store i8* null, i8** %s, align 8, !tbaa !1
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %while.end.39
  %46 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %46, i32 0, i32 1
  %47 = load i32, i32* %value, align 4, !tbaa !38
  %48 = load i32*, i32** %out_value.addr, align 8, !tbaa !1
  store i32 %47, i32* %48, align 4, !tbaa !28
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false
  %49 = load i8*, i8** %s, align 8, !tbaa !1
  call void @free(i8* %49) #8
  store i8* null, i8** %s, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.43, %if.then
  %50 = bitcast i32* %read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @pcl3_set_mediatype(%struct.pcl_FileData*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @fetch_octets(i8* %epref, %struct.gs_param_list_s* %plist, i8* %pname, %struct.pcl_OctetString* %s) #1 {
entry:
  %epref.addr = alloca i8*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %s.addr = alloca %struct.pcl_OctetString*, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %rc = alloca i32, align 4
  store i8* %epref, i8** %epref.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.pcl_OctetString* %s, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_null(%struct.gs_param_list_s* %2, i8* %3) #7
  store i32 %call, i32* %rc, align 4, !tbaa !28
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %4, i32 0, i32 1
  %5 = load i32, i32* %length, align 4, !tbaa !38
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !105
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !105
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !108
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !104
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !105
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !105
  %15 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %15, i32 0, i32 0
  %16 = load i8*, i8** %str, align 8, !tbaa !35
  call void %10(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %17 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str7 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %17, i32 0, i32 0
  store i8* null, i8** %str7, align 8, !tbaa !35
  %18 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %length8 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %18, i32 0, i32 1
  store i32 0, i32* %length8, align 4, !tbaa !38
  br label %if.end.57

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call10 = call i32 @param_read_string(%struct.gs_param_list_s* %20, i8* %21, %struct.gs_param_string_s* %string_value) #7
  store i32 %call10, i32* %rc, align 4, !tbaa !28
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.51

if.then.12:                                       ; preds = %land.lhs.true
  %22 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %length13 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %22, i32 0, i32 1
  %23 = load i32, i32* %length13, align 4, !tbaa !38
  %cmp14 = icmp ne i32 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.then.12
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %24, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !104
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !105
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !105
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !108
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %29, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !104
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !105
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !105
  %33 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str24 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %33, i32 0, i32 0
  %34 = load i8*, i8** %str24, align 8, !tbaa !35
  call void %28(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0)) #7
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.15, %if.then.12
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !104
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !105
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !105
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 10
  %39 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !109
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !104
  %non_gc_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !105
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !105
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %44 = load i32, i32* %size, align 4, !tbaa !80
  %call33 = call i8* %39(%struct.gs_memory_s* %43, i32 %44, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0)) #7
  %45 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str34 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %45, i32 0, i32 0
  store i8* %call33, i8** %str34, align 8, !tbaa !35
  %46 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str35 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %46, i32 0, i32 0
  %47 = load i8*, i8** %str35, align 8, !tbaa !35
  %cmp36 = icmp eq i8* %47, null
  br i1 %cmp36, label %if.then.37, label %if.else.44

if.then.37:                                       ; preds = %if.end.25
  %48 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %length38 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %48, i32 0, i32 1
  store i32 0, i32* %length38, align 4, !tbaa !38
  %call39 = call i8* @gs_program_name() #7
  %call40 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call39, i64 %call40) #7
  %49 = load i8*, i8** %epref.addr, align 8, !tbaa !1
  %call41 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.109, i32 0, i32 0), i8* %49) #7
  store i32 -25, i32* %rc, align 4, !tbaa !28
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %50, i32 0, i32 0
  %51 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs42, align 8, !tbaa !92
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %51, i32 0, i32 7
  %52 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !94
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %55 = load i32, i32* %rc, align 4, !tbaa !28
  %call43 = call i32 %52(%struct.gs_param_list_s* %53, i8* %54, i32 %55) #7
  br label %if.end.50

if.else.44:                                       ; preds = %if.end.25
  %56 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %str45 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %56, i32 0, i32 0
  %57 = load i8*, i8** %str45, align 8, !tbaa !35
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %58 = load i8*, i8** %data, align 8, !tbaa !78
  %size46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %59 = load i32, i32* %size46, align 4, !tbaa !80
  %conv = zext i32 %59 to i64
  %call47 = call i8* @memcpy(i8* %57, i8* %58, i64 %conv) #8
  %size48 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %60 = load i32, i32* %size48, align 4, !tbaa !80
  %61 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %s.addr, align 8, !tbaa !1
  %length49 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %61, i32 0, i32 1
  store i32 %60, i32* %length49, align 4, !tbaa !38
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.44, %if.then.37
  br label %if.end.56

if.else.51:                                       ; preds = %land.lhs.true, %if.else
  %62 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp52 = icmp sgt i32 %62, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  store i32 0, i32* %rc, align 4, !tbaa !28
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  %63 = load i32, i32* %rc, align 4, !tbaa !28
  %64 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #2
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @fetch_cstring(i8* %epref, %struct.gs_param_list_s* %plist, i8* %pname, i8** %s) #1 {
entry:
  %epref.addr = alloca i8*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %s.addr = alloca i8**, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %rc = alloca i32, align 4
  store i8* %epref, i8** %epref.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i8** %s, i8*** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_null(%struct.gs_param_list_s* %2, i8* %3) #7
  store i32 %call, i32* %rc, align 4, !tbaa !28
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !105
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !105
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !108
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !104
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !105
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !105
  %15 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  call void %10(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %17 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  store i8* null, i8** %17, align 8, !tbaa !1
  br label %if.end.48

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call8 = call i32 @param_read_string(%struct.gs_param_list_s* %19, i8* %20, %struct.gs_param_string_s* %string_value) #7
  store i32 %call8, i32* %rc, align 4, !tbaa !28
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.42

if.then.10:                                       ; preds = %land.lhs.true
  %21 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %21, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %22, null
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.then.10
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !104
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !105
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !105
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !108
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %28, i32 0, i32 1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !104
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !105
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !105
  %32 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %32, align 8, !tbaa !1
  call void %27(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0)) #7
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %if.then.10
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !104
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !105
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !105
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !109
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !104
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !105
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !105
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %43 = load i32, i32* %size, align 4, !tbaa !80
  %add = add i32 %43, 1
  %call29 = call i8* %38(%struct.gs_memory_s* %42, i32 %add, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0)) #7
  %44 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  store i8* %call29, i8** %44, align 8, !tbaa !1
  %45 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %45, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %46, null
  br i1 %cmp30, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.end.21
  %call32 = call i8* @gs_program_name() #7
  %call33 = call i64 @gs_revision_number() #7
  call void @eprintf_program_ident(i8* %call32, i64 %call33) #7
  %47 = load i8*, i8** %epref.addr, align 8, !tbaa !1
  %call34 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.109, i32 0, i32 0), i8* %47) #7
  store i32 -25, i32* %rc, align 4, !tbaa !28
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %48, i32 0, i32 0
  %49 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs35, align 8, !tbaa !92
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %49, i32 0, i32 7
  %50 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !94
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %53 = load i32, i32* %rc, align 4, !tbaa !28
  %call36 = call i32 %50(%struct.gs_param_list_s* %51, i8* %52, i32 %53) #7
  br label %if.end.41

if.else.37:                                       ; preds = %if.end.21
  %54 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %54, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %56 = load i8*, i8** %data, align 8, !tbaa !78
  %size38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %57 = load i32, i32* %size38, align 4, !tbaa !80
  %conv = zext i32 %57 to i64
  %call39 = call i8* @strncpy(i8* %55, i8* %56, i64 %conv) #8
  %size40 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %58 = load i32, i32* %size40, align 4, !tbaa !80
  %idxprom = zext i32 %58 to i64
  %59 = load i8**, i8*** %s.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %59, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !39
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.31
  br label %if.end.47

if.else.42:                                       ; preds = %land.lhs.true, %if.else
  %61 = load i32, i32* %rc, align 4, !tbaa !28
  %cmp43 = icmp sgt i32 %61, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else.42
  store i32 0, i32* %rc, align 4, !tbaa !28
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.else.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %62 = load i32, i32* %rc, align 4, !tbaa !28
  %63 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #2
  ret i32 %62
}

declare i32 @pcl3_set_printquality(%struct.pcl_FileData*, i32) #0

declare i32 @eprn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @pcl3_set_oldquality(%struct.pcl_FileData*) #0

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare i8* @__rawmemchr(i8*, i32) #0

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #5

declare i32 @gdev_prn_file_is_new(%struct.gx_device_printer_s*) #0

declare i32 @pcl3_init_file(%struct._IO_FILE*, %struct.pcl_FileData*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #5

declare i32 @eprn_number_of_bitplanes(%struct.eprn_Device*) #0

declare void @eprn_number_of_octets(%struct.eprn_Device*, i32*) #0

declare i32 @pcl3_begin_page(%struct._IO_FILE*, %struct.pcl_FileData*) #0

declare i32 @pcl3_begin_raster(%struct._IO_FILE*, %struct.pcl_RasterData*) #0

declare i32 @eprn_get_planes(%struct.eprn_Device*, %struct.eprn_OctetString*) #0

declare i32 @pcl3_skip_groups(%struct._IO_FILE*, %struct.pcl_RasterData*, i32) #0

declare i32 @pcl3_transfer_group(%struct._IO_FILE*, %struct.pcl_RasterData*) #0

declare i32 @pcl3_end_raster(%struct._IO_FILE*, %struct.pcl_RasterData*) #0

declare i32 @pcl3_end_page(%struct._IO_FILE*, %struct.pcl_FileData*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin noreturn nounwind }
attributes #11 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 18588}
!6 = !{!"", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !22, i64 18472, !3, i64 18656, !3, i64 18660, !3, i64 18664, !7, i64 18668, !7, i64 18672, !7, i64 18676, !7, i64 18680, !25, i64 18688}
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
!22 = !{!"s_eprn_Device", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !2, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !23, i64 68, !23, i64 72, !7, i64 76, !7, i64 80, !3, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !24, i64 136, !24, i64 152, !7, i64 168, !7, i64 172, !7, i64 176}
!23 = !{!"float", !3, i64 0}
!24 = !{!"", !2, i64 0, !7, i64 8}
!25 = !{!"", !3, i64 0, !7, i64 4, !2, i64 8, !2, i64 16, !24, i64 24, !24, i64 40, !3, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !7, i64 100, !2, i64 104, !3, i64 112, !7, i64 160, !7, i64 164, !3, i64 168, !11, i64 172, !11, i64 174, !7, i64 176}
!26 = !{!6, !7, i64 18676}
!27 = !{!6, !7, i64 18680}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !2, i64 8}
!30 = !{!"", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !9, i64 48, !3, i64 56, !2, i64 64}
!31 = !{!30, !2, i64 24}
!32 = !{!6, !3, i64 18856}
!33 = !{!30, !2, i64 16}
!34 = !{!30, !7, i64 0}
!35 = !{!24, !2, i64 0}
!36 = !{!30, !9, i64 48}
!37 = !{!6, !3, i64 18556}
!38 = !{!24, !7, i64 8}
!39 = !{!3, !3, i64 0}
!40 = !{!22, !7, i64 116}
!41 = !{!22, !7, i64 32}
!42 = !{!22, !2, i64 0}
!43 = !{!44, !2, i64 0}
!44 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !2, i64 32}
!45 = !{!6, !7, i64 18672}
!46 = !{!6, !7, i64 18560}
!47 = !{!6, !7, i64 18564}
!48 = !{!6, !7, i64 18768}
!49 = !{!6, !7, i64 18752}
!50 = !{!6, !3, i64 18660}
!51 = !{!6, !7, i64 18552}
!52 = !{!6, !7, i64 18528}
!53 = !{!25, !3, i64 56}
!54 = !{!23, !23, i64 0}
!55 = !{!6, !2, i64 18480}
!56 = !{!25, !7, i64 72}
!57 = !{!6, !7, i64 17168}
!58 = !{!6, !7, i64 17164}
!59 = !{!6, !7, i64 18532}
!60 = !{!6, !7, i64 18668}
!61 = !{!6, !3, i64 18664}
!62 = !{!25, !7, i64 100}
!63 = !{!64, !7, i64 0}
!64 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!65 = !{!64, !7, i64 4}
!66 = !{!25, !3, i64 96}
!67 = !{!64, !7, i64 8}
!68 = !{!6, !2, i64 17176}
!69 = !{!25, !3, i64 168}
!70 = !{!25, !7, i64 164}
!71 = !{!9, !9, i64 0}
!72 = !{!6, !2, i64 16}
!73 = !{!6, !7, i64 18764}
!74 = !{!25, !7, i64 60}
!75 = !{!25, !3, i64 0}
!76 = !{!25, !7, i64 32}
!77 = !{!25, !2, i64 24}
!78 = !{!79, !2, i64 0}
!79 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!80 = !{!79, !7, i64 8}
!81 = !{!79, !7, i64 12}
!82 = !{!25, !7, i64 48}
!83 = !{!25, !2, i64 40}
!84 = !{!25, !2, i64 8}
!85 = !{!25, !2, i64 16}
!86 = !{!25, !7, i64 80}
!87 = !{!25, !7, i64 160}
!88 = !{!6, !3, i64 18656}
!89 = !{!25, !7, i64 84}
!90 = !{!6, !7, i64 84}
!91 = !{!6, !2, i64 24}
!92 = !{!93, !2, i64 0}
!93 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!94 = !{!95, !2, i64 56}
!95 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!96 = !{!6, !2, i64 18472}
!97 = !{!25, !7, i64 4}
!98 = !{!25, !7, i64 92}
!99 = !{!25, !7, i64 88}
!100 = !{!44, !2, i64 32}
!101 = !{!102, !3, i64 0}
!102 = !{!"", !3, i64 0, !3, i64 8}
!103 = !{!11, !11, i64 0}
!104 = !{!93, !2, i64 8}
!105 = !{!106, !2, i64 200}
!106 = !{!"gs_memory_s", !2, i64 0, !107, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!107 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!108 = !{!106, !2, i64 24}
!109 = !{!106, !2, i64 88}
