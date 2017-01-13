; ModuleID = './gdevbj10.bc'
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

@prn_bj200_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @bj200_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"bj200\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_bj200_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bj200_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bj10e_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@prn_bj10e_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @bj10e_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"bj10e\00", align 1
@gs_bj10e_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bj10e_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3060, i32 3960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bj10e_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@bj200_open.a4_margins = internal constant [4 x float] [float 0x3FC0A3D700000000, float 0x3FD28F5C20000000, float 0x3FC0A3D700000000, float 0x3FBEB851E0000000], align 16
@bj200_open.letter_margins = internal constant [4 x float] [float 2.500000e-01, float 0x3FD28F5C20000000, float 2.500000e-01, float 0x3FBEB851E0000000], align 16
@bj10e_open.a4_margins = internal constant [4 x float] [float 0x3FC0A3D700000000, float 0x3FE147AE20000000, float 0x3FC0A3D700000000, float 0x3FD51EB860000000], align 16
@bj10e_open.letter_margins = internal constant [4 x float] [float 2.500000e-01, float 0x3FE147AE20000000, float 2.500000e-01, float 0x3FD51EB860000000], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"bj10e_print_page(in)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bj10e_print_page(out)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\1B[K\02\00\00$\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\1B5\00\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\1B[\5C\04\00\00\00\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\1BC\00\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\1Bd%c%c\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\1B[g%c%c%c\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bj10e_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %mode = alloca i32, align 4
  %bytes_per_column = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %skip_unit = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %skip = alloca i32, align 4
  %code = alloca i32, align 4
  %last_row = alloca i32, align 4
  %limit = alloca i32, align 4
  %in_data = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_beg = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %outl = alloca i8*, align 8
  %bnum = alloca i32, align 4
  %zip = alloca i64*, align 8
  %zcnt = alloca i32, align 4
  %zipb = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %lcnt = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  %out_ptr = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xres, align 4, !tbaa !5
  %6 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %8 = load float, float* %arrayidx2, align 4, !tbaa !7
  %conv3 = fptosi float %8 to i32
  store i32 %conv3, i32* %yres, align 4, !tbaa !5
  %9 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 180
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %11, 180
  %cond = select i1 %cmp5, i32 11, i32 12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %12, 180
  %cond9 = select i1 %cmp7, i32 14, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ %cond, %cond.true ], [ %cond9, %cond.false ]
  store i32 %cond10, i32* %mode, align 4, !tbaa !5
  %13 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %14, 180
  %cond13 = select i1 %cmp11, i32 3, i32 6
  store i32 %cond13, i32* %bytes_per_column, align 4, !tbaa !5
  %15 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %mul = mul nsw i32 %16, 8
  store i32 %mul, i32* %bits_per_column, align 4, !tbaa !5
  %17 = bitcast i32* %skip_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %mul14 = mul nsw i32 %18, 3
  store i32 %mul14, i32* %skip_unit, align 4, !tbaa !5
  %19 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !9
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !25
  %27 = load i32, i32* %line_size, align 4, !tbaa !5
  %call17 = call i8* %23(%struct.gs_memory_s* %26, i32 8, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call17, i8** %in, align 8, !tbaa !1
  %28 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !9
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !25
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array21 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array21, align 8, !tbaa !28
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !9
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !25
  %36 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %37 = load i32, i32* %line_size, align 4, !tbaa !5
  %call24 = call i8* %32(%struct.gs_memory_s* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call24, i8** %out, align 8, !tbaa !1
  %38 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %39 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %skip, align 4, !tbaa !5
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %41 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_s*
  %call25 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %43) #4
  store i32 %call25, i32* %last_row, align 4, !tbaa !5
  %44 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load i32, i32* %last_row, align 4, !tbaa !5
  %46 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %sub = sub nsw i32 %45, %46
  store i32 %sub, i32* %limit, align 4, !tbaa !5
  %47 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %47, null
  br i1 %cmp26, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %48 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp28 = icmp eq i8* %48, null
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fin

if.end:                                           ; preds = %lor.lhs.false
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call30 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %49) #4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %50) #4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call32 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %51) #4
  %52 = load i32, i32* %yres, align 4, !tbaa !5
  %and = and i32 %52, 255
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call33 = call i32 @fputc(i32 %and, %struct._IO_FILE* %53) #4
  %54 = load i32, i32* %yres, align 4, !tbaa !5
  %shr = ashr i32 %54, 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call34 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %55) #4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call35 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 3, %struct._IO_FILE* %56) #4
  %57 = load i32, i32* %last_row, align 4, !tbaa !5
  %58 = load i32, i32* %yres, align 4, !tbaa !5
  %add = add nsw i32 %57, %58
  %sub36 = sub nsw i32 %add, 1
  %59 = load i32, i32* %yres, align 4, !tbaa !5
  %div = sdiv i32 %sub36, %59
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call37 = call i32 @fputc(i32 %div, %struct._IO_FILE* %60) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.262, %cleanup.255, %if.end
  %61 = load i32, i32* %lnum, align 4, !tbaa !5
  %62 = load i32, i32* %last_row, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %61, %62
  br i1 %cmp38, label %while.body, label %while.end.263

while.body:                                       ; preds = %while.cond
  %63 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i8*, i8** %in, align 8, !tbaa !1
  %66 = load i32, i32* %line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8, !tbaa !1
  %67 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %68, i8** %out_beg, align 8, !tbaa !1
  %69 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #2
  %70 = load i8*, i8** %out, align 8, !tbaa !1
  %71 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 13
  %73 = load i32, i32* %width, align 4, !tbaa !29
  %mul40 = mul nsw i32 %71, %73
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %70, i64 %idx.ext41
  store i8* %add.ptr42, i8** %out_end, align 8, !tbaa !1
  %74 = bitcast i8** %outl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #2
  %75 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %75, i8** %outl, align 8, !tbaa !1
  %76 = bitcast i32* %bnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = load i32, i32* %lnum, align 4, !tbaa !5
  %79 = load i8*, i8** %in, align 8, !tbaa !1
  %call43 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %77, i32 %78, i8* %79, i8** %in_data) #4
  store i32 %call43, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %80, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %while.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.47:                                        ; preds = %while.body
  %81 = bitcast i64** %zip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = load i8*, i8** %in_data, align 8, !tbaa !1
  %83 = bitcast i8* %82 to i64*
  store i64* %83, i64** %zip, align 8, !tbaa !1
  %84 = bitcast i32* %zcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %85 = load i32, i32* %line_size, align 4, !tbaa !5
  store i32 %85, i32* %zcnt, align 4, !tbaa !5
  %86 = bitcast i8** %zipb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %87 = load i32, i32* %zcnt, align 4, !tbaa !5
  %conv48 = sext i32 %87 to i64
  %cmp49 = icmp uge i64 %conv48, 32
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i64, i64* %88, i64 0
  %89 = load i64, i64* %arrayidx51, align 8, !tbaa !30
  %90 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i64, i64* %90, i64 1
  %91 = load i64, i64* %arrayidx52, align 8, !tbaa !30
  %or = or i64 %89, %91
  %92 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i64, i64* %92, i64 2
  %93 = load i64, i64* %arrayidx53, align 8, !tbaa !30
  %or54 = or i64 %or, %93
  %94 = load i64*, i64** %zip, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i64, i64* %94, i64 3
  %95 = load i64, i64* %arrayidx55, align 8, !tbaa !30
  %or56 = or i64 %or54, %95
  %tobool = icmp ne i64 %or56, 0
  br i1 %tobool, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body
  br label %notz

if.end.58:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %96 = load i64*, i64** %zip, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds i64, i64* %96, i64 4
  store i64* %add.ptr59, i64** %zip, align 8, !tbaa !1
  %97 = load i32, i32* %zcnt, align 4, !tbaa !5
  %conv60 = sext i32 %97 to i64
  %sub61 = sub i64 %conv60, 32
  %conv62 = trunc i64 %sub61 to i32
  store i32 %conv62, i32* %zcnt, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %98 = load i64*, i64** %zip, align 8, !tbaa !1
  %99 = bitcast i64* %98 to i8*
  store i8* %99, i8** %zipb, align 8, !tbaa !1
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.69, %for.end
  %100 = load i32, i32* %zcnt, align 4, !tbaa !5
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %zcnt, align 4, !tbaa !5
  %cmp64 = icmp sge i32 %dec, 0
  br i1 %cmp64, label %while.body.66, label %while.end

while.body.66:                                    ; preds = %while.cond.63
  %101 = load i8*, i8** %zipb, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr, i8** %zipb, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !31
  %tobool67 = icmp ne i8 %102, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.body.66
  br label %notz

if.end.69:                                        ; preds = %while.body.66
  br label %while.cond.63

while.end:                                        ; preds = %while.cond.63
  %103 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %104 = load i32, i32* %skip, align 4, !tbaa !5
  %inc70 = add nsw i32 %104, 1
  store i32 %inc70, i32* %skip, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

notz:                                             ; preds = %if.then.68, %if.then.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %notz, %while.end
  %105 = bitcast i8** %zipb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i32* %zcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i64** %zip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.255 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %108 = load i32, i32* %lnum, align 4, !tbaa !5
  %109 = load i32, i32* %limit, align 4, !tbaa !5
  %cmp73 = icmp sgt i32 %108, %109
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %cleanup.cont
  %110 = load i32, i32* %lnum, align 4, !tbaa !5
  %111 = load i32, i32* %limit, align 4, !tbaa !5
  %sub76 = sub nsw i32 %110, %111
  %112 = load i32, i32* %skip, align 4, !tbaa !5
  %sub77 = sub nsw i32 %112, %sub76
  store i32 %sub77, i32* %skip, align 4, !tbaa !5
  %113 = load i32, i32* %limit, align 4, !tbaa !5
  store i32 %113, i32* %lnum, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %cleanup.cont
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.82, %if.end.78
  %114 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %114, 255
  br i1 %cmp80, label %while.body.82, label %while.end.85

while.body.82:                                    ; preds = %while.cond.79
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call83 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %115) #4
  %116 = load i32, i32* %skip, align 4, !tbaa !5
  %sub84 = sub nsw i32 %116, 255
  store i32 %sub84, i32* %skip, align 4, !tbaa !5
  br label %while.cond.79

while.end.85:                                     ; preds = %while.cond.79
  %117 = load i32, i32* %skip, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %117, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %while.end.85
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %119 = load i32, i32* %skip, align 4, !tbaa !5
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %119) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %while.end.85
  %120 = load i32, i32* %lnum, align 4, !tbaa !5
  %121 = load i32, i32* %limit, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %120, %121
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.89
  %122 = load i32, i32* %last_row, align 4, !tbaa !5
  store i32 %122, i32* %limit, align 4, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.89
  store i32 0, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %bnum, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.140, %if.end.93
  %123 = load i32, i32* %bnum, align 4, !tbaa !5
  %124 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %123, %124
  br i1 %cmp95, label %for.body.97, label %for.end.142

for.body.97:                                      ; preds = %for.cond.94
  %125 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #2
  %126 = load i32, i32* %limit, align 4, !tbaa !5
  %127 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub98 = sub nsw i32 %126, %127
  %cmp99 = icmp slt i32 8, %sub98
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %for.body.97
  br label %cond.end.104

cond.false.102:                                   ; preds = %for.body.97
  %128 = load i32, i32* %limit, align 4, !tbaa !5
  %129 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub103 = sub nsw i32 %128, %129
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.101
  %cond105 = phi i32 [ 8, %cond.true.101 ], [ %sub103, %cond.false.102 ]
  store i32 %cond105, i32* %lcnt, align 4, !tbaa !5
  %130 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #2
  %131 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %131, i8** %inp, align 8, !tbaa !1
  %132 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #2
  %133 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %133, i8** %outp, align 8, !tbaa !1
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %135 = load i32, i32* %lnum, align 4, !tbaa !5
  %136 = load i8*, i8** %in, align 8, !tbaa !1
  %137 = load i32, i32* %lcnt, align 4, !tbaa !5
  %138 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul106 = mul nsw i32 %137, %138
  %call107 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %134, i32 %135, i8* %136, i32 %mul106) #4
  store i32 %call107, i32* %lcnt, align 4, !tbaa !5
  %139 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %139, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %cond.end.104
  %140 = load i32, i32* %lcnt, align 4, !tbaa !5
  store i32 %140, i32* %code, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.111:                                       ; preds = %cond.end.104
  %141 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %141, 8
  br i1 %cmp112, label %if.then.114, label %if.end.122

if.then.114:                                      ; preds = %if.end.111
  %142 = load i8*, i8** %in, align 8, !tbaa !1
  %143 = load i32, i32* %lcnt, align 4, !tbaa !5
  %144 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul115 = mul nsw i32 %143, %144
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %142, i64 %idx.ext116
  %145 = load i32, i32* %lcnt, align 4, !tbaa !5
  %sub118 = sub nsw i32 8, %145
  %146 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul119 = mul nsw i32 %sub118, %146
  %conv120 = sext i32 %mul119 to i64
  %call121 = call i8* @memset(i8* %add.ptr117, i32 0, i64 %conv120) #5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.114, %if.end.111
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.127, %if.end.122
  %147 = load i8*, i8** %inp, align 8, !tbaa !1
  %148 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp124 = icmp ult i8* %147, %148
  br i1 %cmp124, label %for.body.126, label %for.end.131

for.body.126:                                     ; preds = %for.cond.123
  %149 = load i8*, i8** %inp, align 8, !tbaa !1
  %150 = load i32, i32* %line_size, align 4, !tbaa !5
  %151 = load i8*, i8** %outp, align 8, !tbaa !1
  %152 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  call void @memflip8x8(i8* %149, i32 %150, i8* %151, i32 %152) #4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.126
  %153 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr128 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr128, i8** %inp, align 8, !tbaa !1
  %154 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %155 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext129 = sext i32 %154 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %155, i64 %idx.ext129
  store i8* %add.ptr130, i8** %outp, align 8, !tbaa !1
  br label %for.cond.123

for.end.131:                                      ; preds = %for.cond.123
  %156 = load i8*, i8** %outl, align 8, !tbaa !1
  %incdec.ptr132 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr132, i8** %outl, align 8, !tbaa !1
  %157 = load i32, i32* %lcnt, align 4, !tbaa !5
  %158 = load i32, i32* %lnum, align 4, !tbaa !5
  %add133 = add nsw i32 %158, %157
  store i32 %add133, i32* %lnum, align 4, !tbaa !5
  %159 = load i32, i32* %lcnt, align 4, !tbaa !5
  %160 = load i32, i32* %skip, align 4, !tbaa !5
  %add134 = add nsw i32 %160, %159
  store i32 %add134, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.then.110, %for.end.131
  %161 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %cleanup.dest.138 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.138, label %cleanup.255 [
    i32 0, label %cleanup.cont.139
  ]

cleanup.cont.139:                                 ; preds = %cleanup.135
  br label %for.inc.140

for.inc.140:                                      ; preds = %cleanup.cont.139
  %164 = load i32, i32* %bnum, align 4, !tbaa !5
  %add141 = add nsw i32 %164, 8
  store i32 %add141, i32* %bnum, align 4, !tbaa !5
  br label %for.cond.94

for.end.142:                                      ; preds = %for.cond.94
  %165 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %165, i8** %outl, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.142
  %166 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #2
  %167 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #2
  %168 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #2
  br label %while.cond.143

while.cond.143:                                   ; preds = %if.end.172, %do.body
  %169 = load i8*, i8** %outl, align 8, !tbaa !1
  %170 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp144 = icmp ult i8* %169, %170
  br i1 %cmp144, label %while.body.146, label %while.end.173

while.body.146:                                   ; preds = %while.cond.143
  %171 = load i8*, i8** %out_end, align 8, !tbaa !1
  %172 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %171 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %172 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %173 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv147 = sext i32 %173 to i64
  %cmp148 = icmp slt i64 %sub.ptr.sub, %conv147
  br i1 %cmp148, label %cond.true.150, label %cond.false.154

cond.true.150:                                    ; preds = %while.body.146
  %174 = load i8*, i8** %out_end, align 8, !tbaa !1
  %175 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast151 = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast152 = ptrtoint i8* %175 to i64
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast152
  br label %cond.end.156

cond.false.154:                                   ; preds = %while.body.146
  %176 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv155 = sext i32 %176 to i64
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.150
  %cond157 = phi i64 [ %sub.ptr.sub153, %cond.true.150 ], [ %conv155, %cond.false.154 ]
  %conv158 = trunc i64 %cond157 to i32
  store i32 %conv158, i32* %count, align 4, !tbaa !5
  store i32 %conv158, i32* %n, align 4, !tbaa !5
  %177 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %177, i8** %out_ptr, align 8, !tbaa !1
  br label %while.cond.159

while.cond.159:                                   ; preds = %if.end.167, %cond.end.156
  %178 = load i32, i32* %count, align 4, !tbaa !5
  %dec160 = add nsw i32 %178, -1
  store i32 %dec160, i32* %count, align 4, !tbaa !5
  %cmp161 = icmp sge i32 %dec160, 0
  br i1 %cmp161, label %while.body.163, label %while.end.168

while.body.163:                                   ; preds = %while.cond.159
  %179 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  %incdec.ptr164 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr164, i8** %out_ptr, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !31
  %tobool165 = icmp ne i8 %180, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %while.body.163
  br label %while.end.168

if.end.167:                                       ; preds = %while.body.163
  br label %while.cond.159

while.end.168:                                    ; preds = %if.then.166, %while.cond.159
  %181 = load i32, i32* %count, align 4, !tbaa !5
  %cmp169 = icmp sge i32 %181, 0
  br i1 %cmp169, label %if.then.171, label %if.else

if.then.171:                                      ; preds = %while.end.168
  br label %while.end.173

if.else:                                          ; preds = %while.end.168
  %182 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  store i8* %182, i8** %outl, align 8, !tbaa !1
  br label %if.end.172

if.end.172:                                       ; preds = %if.else
  br label %while.cond.143

while.end.173:                                    ; preds = %if.then.171, %while.cond.143
  %183 = load i8*, i8** %outl, align 8, !tbaa !1
  %184 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp174 = icmp uge i8* %183, %184
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %while.end.173
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.177:                                       ; preds = %while.end.173
  %185 = load i8*, i8** %outl, align 8, !tbaa !1
  %186 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %cmp178 = icmp ugt i8* %185, %186
  br i1 %cmp178, label %if.then.180, label %if.end.194

if.then.180:                                      ; preds = %if.end.177
  %187 = load i8*, i8** %outl, align 8, !tbaa !1
  %188 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast181 = ptrtoint i8* %187 to i64
  %sub.ptr.rhs.cast182 = ptrtoint i8* %188 to i64
  %sub.ptr.sub183 = sub i64 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %189 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv184 = sext i32 %189 to i64
  %div185 = sdiv i64 %sub.ptr.sub183, %conv184
  %conv186 = trunc i64 %div185 to i32
  store i32 %conv186, i32* %count, align 4, !tbaa !5
  %190 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %190, 180
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.180
  %191 = load i32, i32* %count, align 4, !tbaa !5
  %shl = shl i32 %191, 1
  store i32 %shl, i32* %count, align 4, !tbaa !5
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.then.180
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %193 = load i32, i32* %count, align 4, !tbaa !5
  %and191 = and i32 %193, 255
  %194 = load i32, i32* %count, align 4, !tbaa !5
  %shr192 = ashr i32 %194, 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %and191, i32 %shr192) #4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.190, %if.end.177
  %195 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %195, i8** %out_beg, align 8, !tbaa !1
  %196 = load i32, i32* %n, align 4, !tbaa !5
  %197 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext195 = sext i32 %196 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %197, i64 %idx.ext195
  store i8* %add.ptr196, i8** %outl, align 8, !tbaa !1
  br label %while.cond.197

while.cond.197:                                   ; preds = %if.end.232, %if.end.194
  %198 = load i8*, i8** %outl, align 8, !tbaa !1
  %199 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp198 = icmp ult i8* %198, %199
  br i1 %cmp198, label %while.body.200, label %while.end.233

while.body.200:                                   ; preds = %while.cond.197
  %200 = load i8*, i8** %out_end, align 8, !tbaa !1
  %201 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast201 = ptrtoint i8* %200 to i64
  %sub.ptr.rhs.cast202 = ptrtoint i8* %201 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %202 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv204 = sext i32 %202 to i64
  %cmp205 = icmp slt i64 %sub.ptr.sub203, %conv204
  br i1 %cmp205, label %cond.true.207, label %cond.false.211

cond.true.207:                                    ; preds = %while.body.200
  %203 = load i8*, i8** %out_end, align 8, !tbaa !1
  %204 = load i8*, i8** %outl, align 8, !tbaa !1
  %sub.ptr.lhs.cast208 = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast209 = ptrtoint i8* %204 to i64
  %sub.ptr.sub210 = sub i64 %sub.ptr.lhs.cast208, %sub.ptr.rhs.cast209
  br label %cond.end.213

cond.false.211:                                   ; preds = %while.body.200
  %205 = load i32, i32* %skip_unit, align 4, !tbaa !5
  %conv212 = sext i32 %205 to i64
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.211, %cond.true.207
  %cond214 = phi i64 [ %sub.ptr.sub210, %cond.true.207 ], [ %conv212, %cond.false.211 ]
  %conv215 = trunc i64 %cond214 to i32
  store i32 %conv215, i32* %count, align 4, !tbaa !5
  store i32 %conv215, i32* %n, align 4, !tbaa !5
  %206 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %206, i8** %out_ptr, align 8, !tbaa !1
  br label %while.cond.216

while.cond.216:                                   ; preds = %if.end.224, %cond.end.213
  %207 = load i32, i32* %count, align 4, !tbaa !5
  %dec217 = add nsw i32 %207, -1
  store i32 %dec217, i32* %count, align 4, !tbaa !5
  %cmp218 = icmp sge i32 %dec217, 0
  br i1 %cmp218, label %while.body.220, label %while.end.225

while.body.220:                                   ; preds = %while.cond.216
  %208 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  %incdec.ptr221 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr221, i8** %out_ptr, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !31
  %tobool222 = icmp ne i8 %209, 0
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %while.body.220
  br label %while.end.225

if.end.224:                                       ; preds = %while.body.220
  br label %while.cond.216

while.end.225:                                    ; preds = %if.then.223, %while.cond.216
  %210 = load i32, i32* %count, align 4, !tbaa !5
  %cmp226 = icmp slt i32 %210, 0
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %while.end.225
  br label %while.end.233

if.else.229:                                      ; preds = %while.end.225
  %211 = load i32, i32* %n, align 4, !tbaa !5
  %212 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext230 = sext i32 %211 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %212, i64 %idx.ext230
  store i8* %add.ptr231, i8** %outl, align 8, !tbaa !1
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.229
  br label %while.cond.197

while.end.233:                                    ; preds = %if.then.228, %while.cond.197
  %213 = load i8*, i8** %outl, align 8, !tbaa !1
  %214 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast234 = ptrtoint i8* %213 to i64
  %sub.ptr.rhs.cast235 = ptrtoint i8* %214 to i64
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %add237 = add nsw i64 %sub.ptr.sub236, 1
  %conv238 = trunc i64 %add237 to i32
  store i32 %conv238, i32* %count, align 4, !tbaa !5
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %216 = load i32, i32* %count, align 4, !tbaa !5
  %and239 = and i32 %216, 255
  %217 = load i32, i32* %count, align 4, !tbaa !5
  %shr240 = ashr i32 %217, 8
  %218 = load i32, i32* %mode, align 4, !tbaa !5
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %and239, i32 %shr240, i32 %218) #4
  %219 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %220 = load i32, i32* %count, align 4, !tbaa !5
  %sub242 = sub nsw i32 %220, 1
  %conv243 = sext i32 %sub242 to i64
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call244 = call i64 @fwrite(i8* %219, i64 1, i64 %conv243, %struct._IO_FILE* %221) #4
  %222 = load i8*, i8** %outl, align 8, !tbaa !1
  store i8* %222, i8** %out_beg, align 8, !tbaa !1
  %223 = load i32, i32* %n, align 4, !tbaa !5
  %224 = load i8*, i8** %outl, align 8, !tbaa !1
  %idx.ext245 = sext i32 %223 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %224, i64 %idx.ext245
  store i8* %add.ptr246, i8** %outl, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.247

cleanup.247:                                      ; preds = %while.end.233, %if.then.176
  %225 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %cleanup.dest.250 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.250, label %unreachable [
    i32 0, label %cleanup.cont.251
    i32 20, label %do.end
  ]

cleanup.cont.251:                                 ; preds = %cleanup.247
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.251
  %228 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %229 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp252 = icmp ult i8* %228, %229
  br i1 %cmp252, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup.247
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call254 = call i32 @fputc(i32 13, %struct._IO_FILE* %230) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.255

cleanup.255:                                      ; preds = %if.then.46, %do.end, %cleanup.135, %cleanup
  %231 = bitcast i32* %bnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i8** %outl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  %235 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #2
  %236 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %cleanup.dest.261 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.261, label %cleanup.285 [
    i32 0, label %cleanup.cont.262
    i32 3, label %while.cond
    i32 5, label %xit
  ]

cleanup.cont.262:                                 ; preds = %cleanup.255
  br label %while.cond

while.end.263:                                    ; preds = %while.cond
  br label %xit

xit:                                              ; preds = %while.end.263, %cleanup.255
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call264 = call i32 @fputc(i32 12, %struct._IO_FILE* %237) #4
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call265 = call i32 @fflush(%struct._IO_FILE* %238) #4
  br label %fin

fin:                                              ; preds = %xit, %if.then
  %239 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp266 = icmp ne i8* %239, null
  br i1 %cmp266, label %if.then.268, label %if.end.274

if.then.268:                                      ; preds = %fin
  %240 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory269 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %240, i32 0, i32 3
  %241 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory269, align 8, !tbaa !9
  %non_gc_memory270 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %241, i32 0, i32 3
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory270, align 8, !tbaa !25
  %procs271 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %242, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs271, i32 0, i32 2
  %243 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %244 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory272 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %244, i32 0, i32 3
  %245 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory272, align 8, !tbaa !9
  %non_gc_memory273 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %245, i32 0, i32 3
  %246 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory273, align 8, !tbaa !25
  %247 = load i8*, i8** %out, align 8, !tbaa !1
  call void %243(%struct.gs_memory_s* %246, i8* %247, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.268, %fin
  %248 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp275 = icmp ne i8* %248, null
  br i1 %cmp275, label %if.then.277, label %if.end.284

if.then.277:                                      ; preds = %if.end.274
  %249 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory278 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory278, align 8, !tbaa !9
  %non_gc_memory279 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %250, i32 0, i32 3
  %251 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory279, align 8, !tbaa !25
  %procs280 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %251, i32 0, i32 1
  %free_object281 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs280, i32 0, i32 2
  %252 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object281, align 8, !tbaa !32
  %253 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory282 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %253, i32 0, i32 3
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory282, align 8, !tbaa !9
  %non_gc_memory283 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory283, align 8, !tbaa !25
  %256 = load i8*, i8** %in, align 8, !tbaa !1
  call void %252(%struct.gs_memory_s* %255, i8* %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.277, %if.end.274
  %257 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %257, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.285

cleanup.285:                                      ; preds = %if.end.284, %cleanup.255
  %258 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #2
  %264 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #2
  %265 = bitcast i32* %skip_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #2
  %269 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = load i32, i32* %retval
  ret i32 %272

unreachable:                                      ; preds = %cleanup.247
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
define internal i32 @bj200_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !33
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !7
  %div = fdiv float %conv, %4
  %conv1 = fpext float %div to double
  %cmp = fcmp ole double %conv1, 8.400000e+00
  %cond = select i1 %cmp, float* getelementptr inbounds ([4 x float], [4 x float]* @bj200_open.a4_margins, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @bj200_open.letter_margins, i32 0, i32 0)
  call void @gx_device_set_margins(%struct.gx_device_s* %0, float* %cond, i32 1) #4
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %5) #4
  ret i32 %call
}

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bj10e_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !33
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !7
  %div = fdiv float %conv, %4
  %conv1 = fpext float %div to double
  %cmp = fcmp ole double %conv1, 8.400000e+00
  %cond = select i1 %cmp, float* getelementptr inbounds ([4 x float], [4 x float]* @bj10e_open.a4_margins, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @bj10e_open.letter_margins, i32 0, i32 0)
  call void @gx_device_set_margins(%struct.gx_device_s* %0, float* %cond, i32 1) #4
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %5) #4
  ret i32 %call
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @memflip8x8(i8*, i32, i8*, i32) #0

declare i32 @fflush(%struct._IO_FILE*) #0

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
!30 = !{!12, !12, i64 0}
!31 = !{!3, !3, i64 0}
!32 = !{!26, !2, i64 24}
!33 = !{!34, !6, i64 832}
!34 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
