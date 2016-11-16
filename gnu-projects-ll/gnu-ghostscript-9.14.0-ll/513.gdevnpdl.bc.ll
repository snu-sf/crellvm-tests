; ModuleID = './gdevnpdl.bc'
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
%struct.gx_device_lprn_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 }

@npdl_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @npdl_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @npdl_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @npdl_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"npdl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_npdl_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 } { i32 18576, %struct.gx_device_procs_s* @npdl_prn_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1968, i32 2784, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @npdl_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @npdl_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"\1Bc1\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"npdl_print_page_copies(CompBuf)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\1Cd240.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"B5\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ENV4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"UPPC\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\1Cf%cM0.\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\1Cf%c%s.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"\1C<1/%d,i.\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\1C'B,,1,0.\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"\1C'B,,2,0.\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"\1C'S,,,0.\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\1Cx%d.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\1Ce0,0.\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\1CY\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"SU1,%d,0;\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"SG0,0;\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"NP;\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"PA%d,0,%d,%d,0,%d;\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"EP;\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"FL0;\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\1CZ\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\1C\22R.\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"\1Ce%d,%d.\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"\1Ci%d,%d,0,1/1,1/1,%d,%d.\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"\1Ci%d,%d,1,1/1,1/1,%d,%d.\00", align 1
@mask = internal global [8 x i8] c"\80@ \10\08\04\02\01", align 1
@eol = internal global [13 x i8] c"000000000001\00", align 1
@makeup = internal global [2 x [40 x [14 x i8]]] [[40 x [14 x i8]] [[14 x i8] c"11011\00\00\00\00\00\00\00\00\00", [14 x i8] c"10010\00\00\00\00\00\00\00\00\00", [14 x i8] c"010111\00\00\00\00\00\00\00\00", [14 x i8] c"0110111\00\00\00\00\00\00\00", [14 x i8] c"00110110\00\00\00\00\00\00", [14 x i8] c"00110111\00\00\00\00\00\00", [14 x i8] c"01100100\00\00\00\00\00\00", [14 x i8] c"01100101\00\00\00\00\00\00", [14 x i8] c"01101000\00\00\00\00\00\00", [14 x i8] c"01100111\00\00\00\00\00\00", [14 x i8] c"011001100\00\00\00\00\00", [14 x i8] c"011001101\00\00\00\00\00", [14 x i8] c"011010010\00\00\00\00\00", [14 x i8] c"011010011\00\00\00\00\00", [14 x i8] c"011010100\00\00\00\00\00", [14 x i8] c"011010101\00\00\00\00\00", [14 x i8] c"011010110\00\00\00\00\00", [14 x i8] c"011010111\00\00\00\00\00", [14 x i8] c"011011000\00\00\00\00\00", [14 x i8] c"011011001\00\00\00\00\00", [14 x i8] c"011011010\00\00\00\00\00", [14 x i8] c"011011011\00\00\00\00\00", [14 x i8] c"010011000\00\00\00\00\00", [14 x i8] c"010011001\00\00\00\00\00", [14 x i8] c"010011010\00\00\00\00\00", [14 x i8] c"011000\00\00\00\00\00\00\00\00", [14 x i8] c"010011011\00\00\00\00\00", [14 x i8] c"00000001000\00\00\00", [14 x i8] c"00000001100\00\00\00", [14 x i8] c"00000001101\00\00\00", [14 x i8] c"000000010010\00\00", [14 x i8] c"000000010011\00\00", [14 x i8] c"000000010100\00\00", [14 x i8] c"000000010101\00\00", [14 x i8] c"000000010110\00\00", [14 x i8] c"000000010111\00\00", [14 x i8] c"000000011100\00\00", [14 x i8] c"000000011101\00\00", [14 x i8] c"000000011110\00\00", [14 x i8] c"000000011111\00\00"], [40 x [14 x i8]] [[14 x i8] c"0000001111\00\00\00\00", [14 x i8] c"000011001000\00\00", [14 x i8] c"000011001001\00\00", [14 x i8] c"000001011011\00\00", [14 x i8] c"000000110011\00\00", [14 x i8] c"000000110100\00\00", [14 x i8] c"000000110101\00\00", [14 x i8] c"0000001101100\00", [14 x i8] c"0000001101101\00", [14 x i8] c"0000001001010\00", [14 x i8] c"0000001001011\00", [14 x i8] c"0000001001100\00", [14 x i8] c"0000001001101\00", [14 x i8] c"0000001110010\00", [14 x i8] c"0000001110011\00", [14 x i8] c"0000001110100\00", [14 x i8] c"0000001110101\00", [14 x i8] c"0000001110110\00", [14 x i8] c"0000001110111\00", [14 x i8] c"0000001010010\00", [14 x i8] c"0000001010011\00", [14 x i8] c"0000001010100\00", [14 x i8] c"0000001010101\00", [14 x i8] c"0000001011010\00", [14 x i8] c"0000001011011\00", [14 x i8] c"0000001100100\00", [14 x i8] c"0000001100101\00", [14 x i8] c"00000001000\00\00\00", [14 x i8] c"00000001100\00\00\00", [14 x i8] c"00000001101\00\00\00", [14 x i8] c"000000010010\00\00", [14 x i8] c"000000010011\00\00", [14 x i8] c"000000010100\00\00", [14 x i8] c"000000010101\00\00", [14 x i8] c"000000010110\00\00", [14 x i8] c"000000010111\00\00", [14 x i8] c"000000011100\00\00", [14 x i8] c"000000011101\00\00", [14 x i8] c"000000011110\00\00", [14 x i8] c"000000011111\00\00"]], align 16
@terminating = internal global [2 x [64 x [13 x i8]]] [[64 x [13 x i8]] [[13 x i8] c"00110101\00\00\00\00\00", [13 x i8] c"000111\00\00\00\00\00\00\00", [13 x i8] c"0111\00\00\00\00\00\00\00\00\00", [13 x i8] c"1000\00\00\00\00\00\00\00\00\00", [13 x i8] c"1011\00\00\00\00\00\00\00\00\00", [13 x i8] c"1100\00\00\00\00\00\00\00\00\00", [13 x i8] c"1110\00\00\00\00\00\00\00\00\00", [13 x i8] c"1111\00\00\00\00\00\00\00\00\00", [13 x i8] c"10011\00\00\00\00\00\00\00\00", [13 x i8] c"10100\00\00\00\00\00\00\00\00", [13 x i8] c"00111\00\00\00\00\00\00\00\00", [13 x i8] c"01000\00\00\00\00\00\00\00\00", [13 x i8] c"001000\00\00\00\00\00\00\00", [13 x i8] c"000011\00\00\00\00\00\00\00", [13 x i8] c"110100\00\00\00\00\00\00\00", [13 x i8] c"110101\00\00\00\00\00\00\00", [13 x i8] c"101010\00\00\00\00\00\00\00", [13 x i8] c"101011\00\00\00\00\00\00\00", [13 x i8] c"0100111\00\00\00\00\00\00", [13 x i8] c"0001100\00\00\00\00\00\00", [13 x i8] c"0001000\00\00\00\00\00\00", [13 x i8] c"0010111\00\00\00\00\00\00", [13 x i8] c"0000011\00\00\00\00\00\00", [13 x i8] c"0000100\00\00\00\00\00\00", [13 x i8] c"0101000\00\00\00\00\00\00", [13 x i8] c"0101011\00\00\00\00\00\00", [13 x i8] c"0010011\00\00\00\00\00\00", [13 x i8] c"0100100\00\00\00\00\00\00", [13 x i8] c"0011000\00\00\00\00\00\00", [13 x i8] c"00000010\00\00\00\00\00", [13 x i8] c"00000011\00\00\00\00\00", [13 x i8] c"00011010\00\00\00\00\00", [13 x i8] c"00011011\00\00\00\00\00", [13 x i8] c"00010010\00\00\00\00\00", [13 x i8] c"00010011\00\00\00\00\00", [13 x i8] c"00010100\00\00\00\00\00", [13 x i8] c"00010101\00\00\00\00\00", [13 x i8] c"00010110\00\00\00\00\00", [13 x i8] c"00010111\00\00\00\00\00", [13 x i8] c"00101000\00\00\00\00\00", [13 x i8] c"00101001\00\00\00\00\00", [13 x i8] c"00101010\00\00\00\00\00", [13 x i8] c"00101011\00\00\00\00\00", [13 x i8] c"00101100\00\00\00\00\00", [13 x i8] c"00101101\00\00\00\00\00", [13 x i8] c"00000100\00\00\00\00\00", [13 x i8] c"00000101\00\00\00\00\00", [13 x i8] c"00001010\00\00\00\00\00", [13 x i8] c"00001011\00\00\00\00\00", [13 x i8] c"01010010\00\00\00\00\00", [13 x i8] c"01010011\00\00\00\00\00", [13 x i8] c"01010100\00\00\00\00\00", [13 x i8] c"01010101\00\00\00\00\00", [13 x i8] c"00100100\00\00\00\00\00", [13 x i8] c"00100101\00\00\00\00\00", [13 x i8] c"01011000\00\00\00\00\00", [13 x i8] c"01011001\00\00\00\00\00", [13 x i8] c"01011010\00\00\00\00\00", [13 x i8] c"01011011\00\00\00\00\00", [13 x i8] c"01001010\00\00\00\00\00", [13 x i8] c"01001011\00\00\00\00\00", [13 x i8] c"00110010\00\00\00\00\00", [13 x i8] c"00110011\00\00\00\00\00", [13 x i8] c"00110100\00\00\00\00\00"], [64 x [13 x i8]] [[13 x i8] c"0000110111\00\00\00", [13 x i8] c"010\00\00\00\00\00\00\00\00\00\00", [13 x i8] c"11\00\00\00\00\00\00\00\00\00\00\00", [13 x i8] c"10\00\00\00\00\00\00\00\00\00\00\00", [13 x i8] c"011\00\00\00\00\00\00\00\00\00\00", [13 x i8] c"0011\00\00\00\00\00\00\00\00\00", [13 x i8] c"0010\00\00\00\00\00\00\00\00\00", [13 x i8] c"00011\00\00\00\00\00\00\00\00", [13 x i8] c"000101\00\00\00\00\00\00\00", [13 x i8] c"000100\00\00\00\00\00\00\00", [13 x i8] c"0000100\00\00\00\00\00\00", [13 x i8] c"0000101\00\00\00\00\00\00", [13 x i8] c"0000111\00\00\00\00\00\00", [13 x i8] c"00000100\00\00\00\00\00", [13 x i8] c"00000111\00\00\00\00\00", [13 x i8] c"000011000\00\00\00\00", [13 x i8] c"0000010111\00\00\00", [13 x i8] c"0000011000\00\00\00", [13 x i8] c"0000001000\00\00\00", [13 x i8] c"00001100111\00\00", [13 x i8] c"00001101000\00\00", [13 x i8] c"00001101100\00\00", [13 x i8] c"00000110111\00\00", [13 x i8] c"00000101000\00\00", [13 x i8] c"00000010111\00\00", [13 x i8] c"00000011000\00\00", [13 x i8] c"000011001010\00", [13 x i8] c"000011001011\00", [13 x i8] c"000011001100\00", [13 x i8] c"000011001101\00", [13 x i8] c"000001101000\00", [13 x i8] c"000001101001\00", [13 x i8] c"000001101010\00", [13 x i8] c"000001101011\00", [13 x i8] c"000011010010\00", [13 x i8] c"000011010011\00", [13 x i8] c"000011010100\00", [13 x i8] c"000011010101\00", [13 x i8] c"000011010110\00", [13 x i8] c"000011010111\00", [13 x i8] c"000001101100\00", [13 x i8] c"000001101101\00", [13 x i8] c"000011011010\00", [13 x i8] c"000011011011\00", [13 x i8] c"000001010100\00", [13 x i8] c"000001010101\00", [13 x i8] c"000001010110\00", [13 x i8] c"000001010111\00", [13 x i8] c"000001100100\00", [13 x i8] c"000001100101\00", [13 x i8] c"000001010010\00", [13 x i8] c"000001010011\00", [13 x i8] c"000000100100\00", [13 x i8] c"000000110111\00", [13 x i8] c"000000111000\00", [13 x i8] c"000000100111\00", [13 x i8] c"000000101000\00", [13 x i8] c"000001011000\00", [13 x i8] c"000001011001\00", [13 x i8] c"000000101011\00", [13 x i8] c"000000101100\00", [13 x i8] c"000001011010\00", [13 x i8] c"000001100110\00", [13 x i8] c"000001100111\00"]], align 16
@fill = internal global [2 x i8] c"0\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @npdl_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %line_size = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %paper_command = alloca [5 x i8], align 1
  %code = alloca i32, align 4
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 0) #3
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %6 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %8 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !5
  %9 = bitcast [5 x i8]* %paper_command to i8*
  call void @llvm.lifetime.start(i64 5, i8* %9) #2
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 76
  %13 = load i32, i32* %BlockLine, align 4, !tbaa !9
  %14 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %14, i32 0, i32 82
  %15 = load i32, i32* %nBh, align 4, !tbaa !25
  %div = sdiv i32 %13, %15
  %16 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %16, i32 0, i32 82
  %17 = load i32, i32* %nBh1, align 4, !tbaa !25
  %mul = mul nsw i32 %div, %17
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !28
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !28
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !31
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !26
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !28
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !28
  %27 = load i32, i32* %line_size, align 4, !tbaa !5
  %28 = load i32, i32* %maxY, align 4, !tbaa !5
  %mul6 = mul nsw i32 %27, %28
  %call7 = call i8* %22(%struct.gs_memory_s* %26, i32 %mul6, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  %29 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %29, i32 0, i32 79
  store i8* %call7, i8** %CompBuf, align 8, !tbaa !32
  %tobool = icmp ne i8* %call7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 26
  %31 = load i64, i64* %PageCount, align 8, !tbaa !33
  %cmp = icmp eq i64 %31, 0
  br i1 %cmp, label %if.then.9, label %if.end.73

if.then.9:                                        ; preds = %if.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %32) #3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %33) #3
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_printer_s* %34 to %struct.gx_device_s*
  %call12 = call i32 @npdl_get_paper_size(%struct.gx_device_s* %35) #3
  switch i32 %call12, label %sw.epilog [
    i32 32, label %sw.bb
    i32 25, label %sw.bb.14
    i32 26, label %sw.bb.17
    i32 27, label %sw.bb.20
    i32 31, label %sw.bb.23
    i32 30, label %sw.bb.26
    i32 2, label %sw.bb.29
    i32 34, label %sw.bb.32
    i32 33, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.then.9
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call13 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then.9
  %arraydecay15 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.9
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.9
  %arraydecay21 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.9
  %arraydecay24 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call25 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.then.9
  %arraydecay27 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call28 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.9
  %arraydecay30 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call31 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then.9
  %arraydecay33 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call34 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.then.9
  %arraydecay36 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call37 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.9, %sw.bb.35, %sw.bb.32, %sw.bb.29, %sw.bb.26, %sw.bb.23, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb
  %36 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %36, i32 0, i32 70
  %37 = load i32, i32* %ManualFeed, align 4, !tbaa !34
  %tobool38 = icmp ne i32 %37, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %sw.epilog
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 19
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %40 = load float, float* %arrayidx40, align 4, !tbaa !7
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize41 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 19
  %arrayidx42 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize41, i32 0, i64 1
  %42 = load float, float* %arrayidx42, align 4, !tbaa !7
  %cmp43 = fcmp ogt float %40, %42
  %cond = select i1 %cmp43, i32 76, i32 80
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %cond) #3
  br label %if.end.55

if.else:                                          ; preds = %sw.epilog
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 19
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize46, i32 0, i64 0
  %45 = load float, float* %arrayidx47, align 4, !tbaa !7
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize48 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 19
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize48, i32 0, i64 1
  %47 = load float, float* %arrayidx49, align 4, !tbaa !7
  %cmp50 = fcmp ogt float %45, %47
  %cond52 = select i1 %cmp50, i32 76, i32 80
  %arraydecay53 = getelementptr inbounds [5 x i8], [5 x i8]* %paper_command, i32 0, i32 0
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %cond52, i8* %arraydecay53) #3
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.39
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %49 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %49) #3
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 50
  %51 = load i32, i32* %Duplex_set, align 4, !tbaa !35
  %cmp57 = icmp sgt i32 %51, 0
  br i1 %cmp57, label %if.then.59, label %if.end.72

if.then.59:                                       ; preds = %if.end.55
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 49
  %53 = load i32, i32* %Duplex, align 4, !tbaa !36
  %tobool60 = icmp ne i32 %53, 0
  br i1 %tobool60, label %if.then.61, label %if.else.69

if.then.61:                                       ; preds = %if.then.59
  %54 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %54, i32 0, i32 72
  %55 = load i32, i32* %Tumble, align 4, !tbaa !37
  %cmp62 = icmp eq i32 %55, 0
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.then.61
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %if.end.68

if.else.66:                                       ; preds = %if.then.61
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.71

if.else.69:                                       ; preds = %if.then.59
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.55
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end
  %59 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %59, 99
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  store i32 99, i32* %num_copies.addr, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %61 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %61) #3
  %62 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %62, i32 0, i32 69
  store i32 0, i32* %initialized, align 4, !tbaa !38
  %63 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %63, i32 0, i32 71
  %64 = load i32, i32* %NegativePrint, align 4, !tbaa !39
  %tobool79 = icmp ne i32 %64, 0
  br i1 %tobool79, label %if.then.80, label %if.end.97

if.then.80:                                       ; preds = %if.end.77
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #3
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #3
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution83 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %68, i32 0, i32 22
  %arrayidx84 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution83, i32 0, i64 0
  %69 = load float, float* %arrayidx84, align 4, !tbaa !7
  %conv85 = fptosi float %69 to i32
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 %conv85) #3
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #3
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #3
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 13
  %74 = load i32, i32* %width, align 4, !tbaa !40
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width89 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 13
  %76 = load i32, i32* %width89, align 4, !tbaa !40
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height, align 4, !tbaa !41
  %79 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height90 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %79, i32 0, i32 14
  %80 = load i32, i32* %height90, align 4, !tbaa !41
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 %74, i32 %76, i32 %78, i32 %80) #3
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)) #3
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #3
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #3
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)) #3
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)) #3
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.80, %if.end.77
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i32 @lprn_print_image(%struct.gx_device_printer_s* %86, %struct._IO_FILE* %87) #3
  store i32 %call98, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %88, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  %89 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.97
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call103 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %90) #3
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory104 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory104, align 8, !tbaa !26
  %non_gc_memory105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 3
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory105, align 8, !tbaa !28
  %non_gc_memory106 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory106, align 8, !tbaa !28
  %procs107 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs107, i32 0, i32 2
  %95 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory108, align 8, !tbaa !26
  %non_gc_memory109 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory109, align 8, !tbaa !28
  %non_gc_memory110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory110, align 8, !tbaa !28
  %100 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf111 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %100, i32 0, i32 79
  %101 = load i8*, i8** %CompBuf111, align 8, !tbaa !32
  call void %95(%struct.gs_memory_s* %99, i8* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %if.then.101, %if.then
  %102 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast [5 x i8]* %paper_command to i8*
  call void @llvm.lifetime.end(i64 5, i8* %104) #2
  %105 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = load i32, i32* %retval
  ret i32 %108
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
define internal void @npdl_image_out(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %num_bytes = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %6 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %8, i32 %9) #3
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 78
  %11 = load i8*, i8** %TmpBuf, align 8, !tbaa !43
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 79
  %13 = load i8*, i8** %CompBuf, align 8, !tbaa !32
  %14 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %14, 8
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call1 = call i32 @mh_compression(i8* %11, i8* %13, i32 %div, i32 %15) #3
  store i32 %call1, i32* %num_bytes, align 4, !tbaa !5
  %16 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %19 = load i32, i32* %height.addr, align 4, !tbaa !5
  %20 = load i32, i32* %width.addr, align 4, !tbaa !5
  %21 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %20, %21
  %div3 = sdiv i32 %mul, 8
  %22 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i32 %18, i32 %19, i32 %div3, i32 %22) #3
  %23 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf5 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %23, i32 0, i32 78
  %24 = load i8*, i8** %TmpBuf5, align 8, !tbaa !43
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  %26 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul6 = mul nsw i32 %25, %26
  %div7 = sdiv i32 %mul6, 8
  %conv8 = sext i32 %div7 to i64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i64 @fwrite(i8* %24, i64 1, i64 %conv8, %struct._IO_FILE* %27) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %29 = load i32, i32* %width.addr, align 4, !tbaa !5
  %30 = load i32, i32* %height.addr, align 4, !tbaa !5
  %31 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %32 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i32 %29, i32 %30, i32 %31, i32 %32) #3
  %33 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf11 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %33, i32 0, i32 79
  %34 = load i8*, i8** %CompBuf11, align 8, !tbaa !32
  %35 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv12 = sext i32 %35 to i64
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call13 = call i64 @fwrite(i8* %34, i64 1, i64 %conv12, %struct._IO_FILE* %36) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @npdl_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !5
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !7
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !5
  %6 = load i32, i32* %xdpi, align 4, !tbaa !5
  %7 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %8, 160
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %9 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %9, 200
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %10, 240
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %11 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %11, 400
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %12 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %12, 600
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @npdl_set_page_layout(%struct.gx_device_s* %13) #3
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call20 = call i32 @gdev_prn_open(%struct.gx_device_s* %14) #3
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %15 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @npdl_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %3, i32 1) #3
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 52
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !44
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %5) #3
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_close(%struct.gx_device_s* %6) #3
  %7 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call2
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @lprn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @npdl_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @lprn_put_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 9
  %9 = load i32, i32* %is_open, align 4, !tbaa !45
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 69
  %11 = load i32, i32* %initialized, align 4, !tbaa !38
  %tobool1 = icmp ne i32 %11, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @npdl_set_page_layout(%struct.gx_device_s* %12) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @npdl_set_page_layout(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %margins = alloca [4 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @npdl_get_paper_size(%struct.gx_device_s* %2) #3
  switch i32 %call, label %sw.default [
    i32 27, label %sw.bb
    i32 25, label %sw.bb.11
    i32 31, label %sw.bb.28
    i32 2, label %sw.bb.45
    i32 32, label %sw.bb.62
    i32 34, label %sw.bb.79
    i32 33, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !7
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %6 = load float, float* %arrayidx2, align 4, !tbaa !7
  %cmp = fcmp ogt float %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %arrayidx3 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx3, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FCEB851E0000000, float* %arrayidx4, align 4, !tbaa !7
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC99999A0000000, float* %arrayidx5, align 4, !tbaa !7
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx6, align 4, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FC99999A0000000, float* %arrayidx7, align 4, !tbaa !7
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FCEB851E0000000, float* %arrayidx8, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx9, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx10, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 19
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize12, i32 0, i64 0
  %8 = load float, float* %arrayidx13, align 4, !tbaa !7
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 19
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize14, i32 0, i64 1
  %10 = load float, float* %arrayidx15, align 4, !tbaa !7
  %cmp16 = fcmp ogt float %8, %10
  br i1 %cmp16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %sw.bb.11
  %arrayidx18 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FD3D70A40000000, float* %arrayidx18, align 4, !tbaa !7
  %arrayidx19 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FC47AE140000000, float* %arrayidx19, align 4, !tbaa !7
  %arrayidx20 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC47AE140000000, float* %arrayidx20, align 4, !tbaa !7
  %arrayidx21 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx21, align 4, !tbaa !7
  br label %if.end.27

if.else.22:                                       ; preds = %sw.bb.11
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FD3D70A40000000, float* %arrayidx23, align 4, !tbaa !7
  %arrayidx24 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC47AE140000000, float* %arrayidx24, align 4, !tbaa !7
  %arrayidx25 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC47AE140000000, float* %arrayidx25, align 4, !tbaa !7
  %arrayidx26 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx26, align 4, !tbaa !7
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %if.then.17
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 19
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize29, i32 0, i64 0
  %12 = load float, float* %arrayidx30, align 4, !tbaa !7
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 19
  %arrayidx32 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize31, i32 0, i64 1
  %14 = load float, float* %arrayidx32, align 4, !tbaa !7
  %cmp33 = fcmp ogt float %12, %14
  br i1 %cmp33, label %if.then.34, label %if.else.39

if.then.34:                                       ; preds = %sw.bb.28
  %arrayidx35 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FD3D70A40000000, float* %arrayidx35, align 4, !tbaa !7
  %arrayidx36 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FCEB851E0000000, float* %arrayidx36, align 4, !tbaa !7
  %arrayidx37 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC47AE140000000, float* %arrayidx37, align 4, !tbaa !7
  %arrayidx38 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx38, align 4, !tbaa !7
  br label %if.end.44

if.else.39:                                       ; preds = %sw.bb.28
  %arrayidx40 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FD3D70A40000000, float* %arrayidx40, align 4, !tbaa !7
  %arrayidx41 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FCEB851E0000000, float* %arrayidx41, align 4, !tbaa !7
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC47AE140000000, float* %arrayidx42, align 4, !tbaa !7
  %arrayidx43 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx43, align 4, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39, %if.then.34
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize46 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 19
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize46, i32 0, i64 0
  %16 = load float, float* %arrayidx47, align 4, !tbaa !7
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 19
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize48, i32 0, i64 1
  %18 = load float, float* %arrayidx49, align 4, !tbaa !7
  %cmp50 = fcmp ogt float %16, %18
  br i1 %cmp50, label %if.then.51, label %if.else.56

if.then.51:                                       ; preds = %sw.bb.45
  %arrayidx52 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FD3D70A40000000, float* %arrayidx52, align 4, !tbaa !7
  %arrayidx53 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FCEB851E0000000, float* %arrayidx53, align 4, !tbaa !7
  %arrayidx54 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx54, align 4, !tbaa !7
  %arrayidx55 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx55, align 4, !tbaa !7
  br label %if.end.61

if.else.56:                                       ; preds = %sw.bb.45
  %arrayidx57 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FD3D70A40000000, float* %arrayidx57, align 4, !tbaa !7
  %arrayidx58 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FCEB851E0000000, float* %arrayidx58, align 4, !tbaa !7
  %arrayidx59 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC99999A0000000, float* %arrayidx59, align 4, !tbaa !7
  %arrayidx60 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx60, align 4, !tbaa !7
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56, %if.then.51
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 19
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize63, i32 0, i64 0
  %20 = load float, float* %arrayidx64, align 4, !tbaa !7
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 19
  %arrayidx66 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize65, i32 0, i64 1
  %22 = load float, float* %arrayidx66, align 4, !tbaa !7
  %cmp67 = fcmp ogt float %20, %22
  br i1 %cmp67, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %sw.bb.62
  %arrayidx69 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FD3D70A40000000, float* %arrayidx69, align 4, !tbaa !7
  %arrayidx70 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FBEB851E0000000, float* %arrayidx70, align 4, !tbaa !7
  %arrayidx71 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FCEB851E0000000, float* %arrayidx71, align 4, !tbaa !7
  %arrayidx72 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx72, align 4, !tbaa !7
  br label %if.end.78

if.else.73:                                       ; preds = %sw.bb.62
  %arrayidx74 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FD3D70A40000000, float* %arrayidx74, align 4, !tbaa !7
  %arrayidx75 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FBEB851E0000000, float* %arrayidx75, align 4, !tbaa !7
  %arrayidx76 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FCEB851E0000000, float* %arrayidx76, align 4, !tbaa !7
  %arrayidx77 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx77, align 4, !tbaa !7
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.73, %if.then.68
  br label %sw.epilog

sw.bb.79:                                         ; preds = %entry, %entry
  %arrayidx80 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FC99999A0000000, float* %arrayidx80, align 4, !tbaa !7
  %arrayidx81 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC99999A0000000, float* %arrayidx81, align 4, !tbaa !7
  %arrayidx82 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx82, align 4, !tbaa !7
  %arrayidx83 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx83, align 4, !tbaa !7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 19
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize84, i32 0, i64 0
  %24 = load float, float* %arrayidx85, align 4, !tbaa !7
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize86 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 19
  %arrayidx87 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize86, i32 0, i64 1
  %26 = load float, float* %arrayidx87, align 4, !tbaa !7
  %cmp88 = fcmp ogt float %24, %26
  br i1 %cmp88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %sw.default
  %arrayidx90 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FD3D70A40000000, float* %arrayidx90, align 4, !tbaa !7
  %arrayidx91 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC99999A0000000, float* %arrayidx91, align 4, !tbaa !7
  %arrayidx92 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC47AE140000000, float* %arrayidx92, align 4, !tbaa !7
  %arrayidx93 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FC99999A0000000, float* %arrayidx93, align 4, !tbaa !7
  br label %if.end.99

if.else.94:                                       ; preds = %sw.default
  %arrayidx95 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FD3D70A40000000, float* %arrayidx95, align 4, !tbaa !7
  %arrayidx96 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 0x3FC99999A0000000, float* %arrayidx96, align 4, !tbaa !7
  %arrayidx97 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FC47AE140000000, float* %arrayidx97, align 4, !tbaa !7
  %arrayidx98 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float 0x3FC99999A0000000, float* %arrayidx98, align 4, !tbaa !7
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.94, %if.then.89
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.99, %sw.bb.79, %if.end.78, %if.end.61, %if.end.44, %if.end.27, %if.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i32 0
  call void @gx_device_set_margins(%struct.gx_device_s* %27, float* %arraydecay, i32 1) #3
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 9
  %29 = load i32, i32* %is_open, align 4, !tbaa !45
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.100, label %if.end.106

if.then.100:                                      ; preds = %sw.epilog
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call101 = call i32 @gdev_prn_close(%struct.gx_device_s* %30) #3
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call102 = call i32 @gdev_prn_open(%struct.gx_device_s* %31) #3
  store i32 %call102, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %32, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.100
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.then.100
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then.104
  %34 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @npdl_get_paper_size(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %media_height = alloca float, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast float* %media_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %4 = load float, float* %arrayidx2, align 4, !tbaa !7
  %cmp = fcmp ogt float %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize3, i32 0, i64 0
  %6 = load float, float* %arrayidx4, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize5, i32 0, i64 1
  %8 = load float, float* %arrayidx6, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %6, %cond.true ], [ %8, %cond.false ]
  store float %cond, float* %media_height, align 4, !tbaa !7
  %9 = load float, float* %media_height, align 4, !tbaa !7
  %cmp7 = fcmp ogt float %9, 1.032000e+03
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.42

cond.false.9:                                     ; preds = %cond.end
  %10 = load float, float* %media_height, align 4, !tbaa !7
  %cmp10 = fcmp ogt float %10, 8.420000e+02
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false.9
  br label %cond.end.40

cond.false.12:                                    ; preds = %cond.false.9
  %11 = load float, float* %media_height, align 4, !tbaa !7
  %cmp13 = fcmp ogt float %11, 7.920000e+02
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false.12
  br label %cond.end.38

cond.false.15:                                    ; preds = %cond.false.12
  %12 = load float, float* %media_height, align 4, !tbaa !7
  %cmp16 = fcmp ogt float %12, 7.560000e+02
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false.15
  br label %cond.end.36

cond.false.18:                                    ; preds = %cond.false.15
  %13 = load float, float* %media_height, align 4, !tbaa !7
  %cmp19 = fcmp ogt float %13, 7.290000e+02
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.18
  br label %cond.end.34

cond.false.21:                                    ; preds = %cond.false.18
  %14 = load float, float* %media_height, align 4, !tbaa !7
  %cmp22 = fcmp ogt float %14, 5.950000e+02
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.21
  br label %cond.end.32

cond.false.24:                                    ; preds = %cond.false.21
  %15 = load float, float* %media_height, align 4, !tbaa !7
  %cmp25 = fcmp ogt float %15, 5.680000e+02
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.24
  br label %cond.end.30

cond.false.27:                                    ; preds = %cond.false.24
  %16 = load float, float* %media_height, align 4, !tbaa !7
  %cmp28 = fcmp ogt float %16, 4.190000e+02
  %cond29 = select i1 %cmp28, i32 25, i32 32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ 31, %cond.true.26 ], [ %cond29, %cond.false.27 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.23
  %cond33 = phi i32 [ 33, %cond.true.23 ], [ %cond31, %cond.end.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.20
  %cond35 = phi i32 [ 34, %cond.true.20 ], [ %cond33, %cond.end.32 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.17
  %cond37 = phi i32 [ 2, %cond.true.17 ], [ %cond35, %cond.end.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.14
  %cond39 = phi i32 [ 26, %cond.true.14 ], [ %cond37, %cond.end.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.11
  %cond41 = phi i32 [ 30, %cond.true.11 ], [ %cond39, %cond.end.38 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true.8
  %cond43 = phi i32 [ 27, %cond.true.8 ], [ %cond41, %cond.end.40 ]
  %17 = bitcast float* %media_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  ret i32 %cond43
}

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @lprn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @lprn_print_image(%struct.gx_device_printer_s*, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mh_compression(i8* %in, i8* %out, i32 %line_size, i32 %column_size) #1 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %line_size.addr = alloca i32, align 4
  %column_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %phase = alloca i32, align 4
  %count = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %src = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %line_size, i32* %line_size.addr, align 4, !tbaa !5
  store i32 %column_size, i32* %column_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %10 = load i32, i32* %column_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %9, %10
  store i32 %mul, i32* %chunk_size, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %src) #2
  store i32 0, i32* %num_bits, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* %column_size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 %13, %14
  store i32 %mul1, i32* %r, align 4, !tbaa !5
  %15 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %16 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %17 = load i32, i32* %num_bits, align 4, !tbaa !5
  %call = call i32 @mh_set_eol(i8* %15, i32 %16, i32 %17) #3
  store i32 %call, i32* %n, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %18 = load i32, i32* %n, align 4, !tbaa !5
  %19 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %num_bits, align 4, !tbaa !5
  store i32 0, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %phase, align 4, !tbaa !5
  store i32 0, i32* %p, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.60, %if.end
  %20 = load i32, i32* %p, align 4, !tbaa !5
  %21 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %20, %21
  br i1 %cmp4, label %for.body.5, label %for.end.62

for.body.5:                                       ; preds = %for.cond.3
  %22 = load i32, i32* %phase, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %22, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body.5
  %23 = load i32, i32* %r, align 4, !tbaa !5
  %24 = load i32, i32* %p, align 4, !tbaa !5
  %add8 = add nsw i32 %23, %24
  %idxprom = sext i32 %add8 to i64
  %25 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv = zext i8 %26 to i32
  %neg = xor i32 %conv, -1
  %conv9 = trunc i32 %neg to i8
  store i8 %conv9, i8* %src, align 1, !tbaa !47
  br label %if.end.13

if.else:                                          ; preds = %for.body.5
  %27 = load i32, i32* %r, align 4, !tbaa !5
  %28 = load i32, i32* %p, align 4, !tbaa !5
  %add10 = add nsw i32 %27, %28
  %idxprom11 = sext i32 %add10 to i64
  %29 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 %idxprom11
  %30 = load i8, i8* %arrayidx12, align 1, !tbaa !47
  store i8 %30, i8* %src, align 1, !tbaa !47
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.7
  store i32 0, i32* %q, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.13
  %31 = load i32, i32* %q, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %31, 8
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %32 = load i8, i8* %src, align 1, !tbaa !47
  %conv18 = zext i8 %32 to i32
  %33 = load i32, i32* %q, align 4, !tbaa !5
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* @mask, i32 0, i64 %idxprom19
  %34 = load i8, i8* %arrayidx20, align 1, !tbaa !47
  %conv21 = zext i8 %34 to i32
  %and = and i32 %conv18, %conv21
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.34, label %if.then.22

if.then.22:                                       ; preds = %for.body.17
  %35 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %36 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %37 = load i32, i32* %num_bits, align 4, !tbaa !5
  %38 = load i32, i32* %phase, align 4, !tbaa !5
  %39 = load i32, i32* %count, align 4, !tbaa !5
  %call23 = call i32 @mh_set_runlength(i8* %35, i32 %36, i32 %37, i32 %38, i32 %39) #3
  store i32 %call23, i32* %n, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.22
  %40 = load i32, i32* %n, align 4, !tbaa !5
  %41 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add28 = add nsw i32 %41, %40
  store i32 %add28, i32* %num_bits, align 4, !tbaa !5
  %42 = load i32, i32* %phase, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %42, 0
  %cond = select i1 %cmp29, i32 1, i32 0
  store i32 %cond, i32* %phase, align 4, !tbaa !5
  store i32 1, i32* %count, align 4, !tbaa !5
  %43 = load i8, i8* %src, align 1, !tbaa !47
  %conv31 = zext i8 %43 to i32
  %neg32 = xor i32 %conv31, -1
  %conv33 = trunc i32 %neg32 to i8
  store i8 %conv33, i8* %src, align 1, !tbaa !47
  br label %if.end.58

if.else.34:                                       ; preds = %for.body.17
  %44 = load i32, i32* %count, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %44, 2623
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  %45 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %if.end.57

if.else.38:                                       ; preds = %if.else.34
  %46 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %47 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %48 = load i32, i32* %num_bits, align 4, !tbaa !5
  %49 = load i32, i32* %phase, align 4, !tbaa !5
  %call39 = call i32 @mh_set_runlength(i8* %46, i32 %47, i32 %48, i32 %49, i32 2623) #3
  store i32 %call39, i32* %n, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.else.38
  %50 = load i32, i32* %n, align 4, !tbaa !5
  %51 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add44 = add nsw i32 %51, %50
  store i32 %add44, i32* %num_bits, align 4, !tbaa !5
  %52 = load i32, i32* %phase, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %52, 0
  %cond47 = select i1 %cmp45, i32 1, i32 0
  store i32 %cond47, i32* %phase, align 4, !tbaa !5
  %53 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %54 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %55 = load i32, i32* %num_bits, align 4, !tbaa !5
  %56 = load i32, i32* %phase, align 4, !tbaa !5
  %call48 = call i32 @mh_set_runlength(i8* %53, i32 %54, i32 %55, i32 %56, i32 0) #3
  store i32 %call48, i32* %n, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.43
  %57 = load i32, i32* %n, align 4, !tbaa !5
  %58 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add53 = add nsw i32 %58, %57
  store i32 %add53, i32* %num_bits, align 4, !tbaa !5
  %59 = load i32, i32* %phase, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %59, 0
  %cond56 = select i1 %cmp54, i32 1, i32 0
  store i32 %cond56, i32* %phase, align 4, !tbaa !5
  store i32 1, i32* %count, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.52, %if.then.37
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %60 = load i32, i32* %q, align 4, !tbaa !5
  %inc59 = add nsw i32 %60, 1
  store i32 %inc59, i32* %q, align 4, !tbaa !5
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end
  %61 = load i32, i32* %p, align 4, !tbaa !5
  %inc61 = add nsw i32 %61, 1
  store i32 %inc61, i32* %p, align 4, !tbaa !5
  br label %for.cond.3

for.end.62:                                       ; preds = %for.cond.3
  %62 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %63 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %64 = load i32, i32* %num_bits, align 4, !tbaa !5
  %65 = load i32, i32* %phase, align 4, !tbaa !5
  %66 = load i32, i32* %count, align 4, !tbaa !5
  %call63 = call i32 @mh_set_runlength(i8* %62, i32 %63, i32 %64, i32 %65, i32 %66) #3
  store i32 %call63, i32* %n, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.end.62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %for.end.62
  %67 = load i32, i32* %n, align 4, !tbaa !5
  %68 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add68 = add nsw i32 %68, %67
  store i32 %add68, i32* %num_bits, align 4, !tbaa !5
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.67
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %69, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %70 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %71 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %72 = load i32, i32* %num_bits, align 4, !tbaa !5
  %call72 = call i32 @mh_set_rtc(i8* %70, i32 %71, i32 %72) #3
  store i32 %call72, i32* %n, align 4, !tbaa !5
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end.71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %for.end.71
  %73 = load i32, i32* %n, align 4, !tbaa !5
  %74 = load i32, i32* %num_bits, align 4, !tbaa !5
  %add77 = add nsw i32 %74, %73
  store i32 %add77, i32* %num_bits, align 4, !tbaa !5
  %75 = load i32, i32* %num_bits, align 4, !tbaa !5
  %div = sdiv i32 %75, 8
  store i32 %div, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.75, %if.then.66, %if.then.51, %if.then.42, %if.then.26, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %src) #2
  %76 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mh_set_eol(i8* %out, i32 %chunk_size, i32 %num_bits) #1 {
entry:
  %out.addr = alloca i8*, align 8
  %chunk_size.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %1 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %2 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %call = call i32 @mh_write_to_buffer(i8* %0, i32 %1, i32 %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @eol, i32 0, i32 0)) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mh_set_runlength(i8* %out, i32 %chunk_size, i32 %num_bits, i32 %phase, i32 %count) #1 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %chunk_size.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %phase.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %code_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  store i32 %phase, i32* %phase.addr, align 4, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code_length, align 4, !tbaa !5
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %div = sdiv i32 %2, 64
  %cmp = icmp sgt i32 %div, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %4 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %5 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  %div1 = sdiv i32 %6, 64
  %sub = sub nsw i32 %div1, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i32, i32* %phase.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [40 x [14 x i8]]], [2 x [40 x [14 x i8]]]* @makeup, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [40 x [14 x i8]], [40 x [14 x i8]]* %arrayidx, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %arrayidx3, i32 0, i32 0
  %call = call i32 @mh_write_to_buffer(i8* %3, i32 %4, i32 %5, i8* %arraydecay) #3
  store i32 %call, i32* %n, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %n, align 4, !tbaa !5
  %9 = load i32, i32* %code_length, align 4, !tbaa !5
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %code_length, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %11 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %12 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %13 = load i32, i32* %code_length, align 4, !tbaa !5
  %add7 = add nsw i32 %12, %13
  %14 = load i32, i32* %count.addr, align 4, !tbaa !5
  %rem = srem i32 %14, 64
  %idxprom8 = sext i32 %rem to i64
  %15 = load i32, i32* %phase.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [2 x [64 x [13 x i8]]], [2 x [64 x [13 x i8]]]* @terminating, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [64 x [13 x i8]], [64 x [13 x i8]]* %arrayidx10, i32 0, i64 %idxprom8
  %arraydecay12 = getelementptr inbounds [13 x i8], [13 x i8]* %arrayidx11, i32 0, i32 0
  %call13 = call i32 @mh_write_to_buffer(i8* %10, i32 %11, i32 %add7, i8* %arraydecay12) #3
  store i32 %call13, i32* %n, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.6
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %17 = load i32, i32* %code_length, align 4, !tbaa !5
  %add17 = add nsw i32 %17, %16
  store i32 %add17, i32* %code_length, align 4, !tbaa !5
  %18 = load i32, i32* %code_length, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.5
  %19 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @mh_set_rtc(i8* %out, i32 %chunk_size, i32 %num_bits) #1 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %chunk_size.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %code_length = alloca i32, align 4
  %num_fills = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %num_fills to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code_length, align 4, !tbaa !5
  %4 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %rem = srem i32 %4, 8
  %add = add nsw i32 72, %rem
  %rem1 = srem i32 %add, 8
  store i32 %rem1, i32* %num_fills, align 4, !tbaa !5
  %5 = load i32, i32* %num_fills, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %num_fills, align 4, !tbaa !5
  %sub = sub nsw i32 8, %7
  %cmp2 = icmp slt i32 %6, %sub
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %9 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %10 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %11 = load i32, i32* %code_length, align 4, !tbaa !5
  %add3 = add nsw i32 %10, %11
  %call = call i32 @mh_write_to_buffer(i8* %8, i32 %9, i32 %add3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @fill, i32 0, i32 0)) #3
  store i32 %call, i32* %n, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load i32, i32* %n, align 4, !tbaa !5
  %13 = load i32, i32* %code_length, align 4, !tbaa !5
  %add6 = add nsw i32 %13, %12
  store i32 %add6, i32* %code_length, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %if.end.7
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %15, 6
  br i1 %cmp9, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %17 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %18 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %19 = load i32, i32* %code_length, align 4, !tbaa !5
  %add11 = add nsw i32 %18, %19
  %call12 = call i32 @mh_write_to_buffer(i8* %16, i32 %17, i32 %add11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @eol, i32 0, i32 0)) #3
  store i32 %call12, i32* %n, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.body.10
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %21 = load i32, i32* %code_length, align 4, !tbaa !5
  %add16 = add nsw i32 %21, %20
  store i32 %add16, i32* %code_length, align 4, !tbaa !5
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.15
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.end.19:                                       ; preds = %for.cond.8
  %23 = load i32, i32* %code_length, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.19, %if.then.14, %if.then.5
  %24 = bitcast i32* %num_fills to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @mh_write_to_buffer(i8* %out, i32 %chunk_size, i32 %num_bits, i8* %code) #1 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %chunk_size.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %code.addr = alloca i8*, align 8
  %code_length = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !5
  store i8* %code, i8** %code.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code_length, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %code_length, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %code.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %code_length, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %code_length, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %9 = load i32, i32* %code_length, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 8
  %10 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %div, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %11 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %div4 = sdiv i32 %11, 8
  store i32 %div4, i32* %p, align 4, !tbaa !5
  %12 = load i32, i32* %num_bits.addr, align 4, !tbaa !5
  %rem = srem i32 %12, 8
  store i32 %rem, i32* %q, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.38, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* %code_length, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body.8, label %for.end.40

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8*, i8** %code.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx10, align 1, !tbaa !47
  %conv11 = sext i8 %17 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body.8
  %18 = load i32, i32* %q, align 4, !tbaa !5
  %sub = sub nsw i32 7, %18
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* @mask, i32 0, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1, !tbaa !47
  %conv17 = zext i8 %19 to i32
  %neg = xor i32 %conv17, -1
  %20 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom18 = sext i32 %20 to i64
  %21 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 %idxprom18
  %22 = load i8, i8* %arrayidx19, align 1, !tbaa !47
  %conv20 = zext i8 %22 to i32
  %and = and i32 %conv20, %neg
  %conv21 = trunc i32 %and to i8
  store i8 %conv21, i8* %arrayidx19, align 1, !tbaa !47
  br label %if.end.30

if.else:                                          ; preds = %for.body.8
  %23 = load i32, i32* %q, align 4, !tbaa !5
  %sub22 = sub nsw i32 7, %23
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [8 x i8], [8 x i8]* @mask, i32 0, i64 %idxprom23
  %24 = load i8, i8* %arrayidx24, align 1, !tbaa !47
  %conv25 = zext i8 %24 to i32
  %25 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom26 = sext i32 %25 to i64
  %26 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1, !tbaa !47
  %conv28 = zext i8 %27 to i32
  %or = or i32 %conv28, %conv25
  %conv29 = trunc i32 %or to i8
  store i8 %conv29, i8* %arrayidx27, align 1, !tbaa !47
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.14
  %28 = load i32, i32* %q, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %28, 7
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.30
  %29 = load i32, i32* %q, align 4, !tbaa !5
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %q, align 4, !tbaa !5
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.30
  %30 = load i32, i32* %p, align 4, !tbaa !5
  %inc36 = add nsw i32 %30, 1
  store i32 %inc36, i32* %p, align 4, !tbaa !5
  store i32 0, i32* %q, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end.40:                                       ; preds = %for.cond.5
  %32 = load i32, i32* %code_length, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.40, %if.then
  %33 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %code_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!10, !6, i64 18508}
!10 = !{!"gx_device_lprn_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568}
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
!25 = !{!10, !6, i64 18548}
!26 = !{!27, !2, i64 24}
!27 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!28 = !{!29, !2, i64 200}
!29 = !{!"gs_memory_s", !2, i64 0, !30, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!30 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!31 = !{!29, !2, i64 88}
!32 = !{!10, !2, i64 18528}
!33 = !{!27, !12, i64 928}
!34 = !{!10, !6, i64 18484}
!35 = !{!27, !6, i64 17168}
!36 = !{!27, !6, i64 17164}
!37 = !{!10, !6, i64 18492}
!38 = !{!10, !6, i64 18480}
!39 = !{!10, !6, i64 18488}
!40 = !{!27, !6, i64 832}
!41 = !{!27, !6, i64 836}
!42 = !{!29, !2, i64 24}
!43 = !{!10, !2, i64 18520}
!44 = !{!27, !2, i64 17176}
!45 = !{!46, !6, i64 84}
!46 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!47 = !{!3, !3, i64 0}
