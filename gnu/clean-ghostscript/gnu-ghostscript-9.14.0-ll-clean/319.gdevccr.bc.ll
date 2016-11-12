; ModuleID = './gdevccr.bc'
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
%struct.cmyrow_s = type { i32, [3 x i32], i32, [4 x i8], [4 x i8], [4 x i8], [3 x i8*] }

@ccr_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @ccr_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @ccr_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"ccr\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_ccr_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @ccr_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3510, i32 4950, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x408A533340000000, float 1.188000e+03], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -6.000000e+01, float -6.000000e+01], [4 x float] [float 0x402CCCCCC0000000, float 0x402CCCCCC0000000, float 0x402CCCCCC0000000, float 0x402CCCCCC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @ccr_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"gsline\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"C%02x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"M%02x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Y%02x\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @ccr_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %linebuf = alloca %struct.cmyrow_s*, align 8
  %line_size = alloca i32, align 4
  %pixnum = alloca i32, align 4
  %lnum = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32, align 4
  %b = alloca i32, align 4
  %cmy = alloca i32, align 4
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %in = alloca i8*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmyrow_s** %linebuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #3
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %4 = bitcast i32* %pixnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 13
  %6 = load i32, i32* %width, align 4, !tbaa !7
  store i32 %6, i32* %pixnum, align 4, !tbaa !5
  %7 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 14
  %9 = load i32, i32* %height, align 4, !tbaa !23
  store i32 %9, i32* %lnum, align 4, !tbaa !5
  %10 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !24
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !25
  %26 = load i32, i32* %line_size, align 4, !tbaa !5
  %call3 = call i8* %22(%struct.gs_memory_s* %25, i32 %26, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #3
  store i8* %call3, i8** %in, align 8, !tbaa !1
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !24
  %29 = load i32, i32* %lnum, align 4, !tbaa !5
  %call5 = call i32 @alloc_rb(%struct.gs_memory_s* %28, %struct.cmyrow_s** %linebuf, i32 %29) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !24
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !25
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !24
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !25
  %37 = load i8*, i8** %in, align 8, !tbaa !1
  call void %33(%struct.gs_memory_s* %36, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.12
  %38 = load i32, i32* %l, align 4, !tbaa !5
  %39 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %38, %39
  br i1 %cmp13, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %l, align 4, !tbaa !5
  %42 = load i8*, i8** %in, align 8, !tbaa !1
  %call14 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %40, i32 %41, i8* %42, i8** %data) #3
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !24
  %45 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %46, i64 %idxprom
  %47 = load i32, i32* %pixnum, align 4, !tbaa !5
  %call16 = call i32 @alloc_line(%struct.gs_memory_s* %44, %struct.cmyrow_s* %arrayidx, i32 %47) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %for.body
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !24
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !25
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !29
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !24
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !25
  %55 = load i8*, i8** %in, align 8, !tbaa !1
  call void %51(%struct.gs_memory_s* %54, i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #3
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !24
  %58 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %59 = load i32, i32* %lnum, align 4, !tbaa !5
  %60 = load i32, i32* %pixnum, align 4, !tbaa !5
  call void @free_rb_line(%struct.gs_memory_s* %57, %struct.cmyrow_s* %58, i32 %59, i32 %60) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.body
  store i32 0, i32* %p, align 4, !tbaa !5
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.47, %if.end.26
  %61 = load i32, i32* %p, align 4, !tbaa !5
  %62 = load i32, i32* %pixnum, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %61, %62
  br i1 %cmp28, label %for.body.29, label %for.end.49

for.body.29:                                      ; preds = %for.cond.27
  store i32 0, i32* %y, align 4, !tbaa !5
  store i32 0, i32* %m, align 4, !tbaa !5
  store i32 0, i32* %c, align 4, !tbaa !5
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %for.body.29
  %63 = load i32, i32* %b, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %63, 8
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %64 = load i32, i32* %c, align 4, !tbaa !5
  %shl = shl i32 %64, 1
  store i32 %shl, i32* %c, align 4, !tbaa !5
  %65 = load i32, i32* %m, align 4, !tbaa !5
  %shl33 = shl i32 %65, 1
  store i32 %shl33, i32* %m, align 4, !tbaa !5
  %66 = load i32, i32* %y, align 4, !tbaa !5
  %shl34 = shl i32 %66, 1
  store i32 %shl34, i32* %y, align 4, !tbaa !5
  %67 = load i32, i32* %p, align 4, !tbaa !5
  %68 = load i32, i32* %b, align 4, !tbaa !5
  %add = add nsw i32 %67, %68
  %69 = load i32, i32* %pixnum, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %add, %69
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.32
  %70 = load i8*, i8** %data, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !30
  %conv = zext i8 %71 to i32
  store i32 %conv, i32* %cmy, align 4, !tbaa !5
  br label %if.end.37

if.else:                                          ; preds = %for.body.32
  store i32 0, i32* %cmy, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  %72 = load i32, i32* %cmy, align 4, !tbaa !5
  %shr = ashr i32 %72, 2
  %73 = load i32, i32* %c, align 4, !tbaa !5
  %or = or i32 %73, %shr
  store i32 %or, i32* %c, align 4, !tbaa !5
  %74 = load i32, i32* %cmy, align 4, !tbaa !5
  %shr38 = ashr i32 %74, 1
  %and = and i32 %shr38, 1
  %75 = load i32, i32* %m, align 4, !tbaa !5
  %or39 = or i32 %75, %and
  store i32 %or39, i32* %m, align 4, !tbaa !5
  %76 = load i32, i32* %cmy, align 4, !tbaa !5
  %and40 = and i32 %76, 1
  %77 = load i32, i32* %y, align 4, !tbaa !5
  %or41 = or i32 %77, %and40
  store i32 %or41, i32* %y, align 4, !tbaa !5
  %78 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %data, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %79 = load i32, i32* %b, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %b, align 4, !tbaa !5
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %80 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom42 = sext i32 %80 to i64
  %81 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %81, i64 %idxprom42
  %82 = load i32, i32* %c, align 4, !tbaa !5
  %conv44 = trunc i32 %82 to i8
  %83 = load i32, i32* %m, align 4, !tbaa !5
  %conv45 = trunc i32 %83 to i8
  %84 = load i32, i32* %y, align 4, !tbaa !5
  %conv46 = trunc i32 %84 to i8
  call void @add_cmy8(%struct.cmyrow_s* %arrayidx43, i8 signext %conv44, i8 signext %conv45, i8 signext %conv46) #3
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %85 = load i32, i32* %p, align 4, !tbaa !5
  %add48 = add nsw i32 %85, 8
  store i32 %add48, i32* %p, align 4, !tbaa !5
  br label %for.cond.27

for.end.49:                                       ; preds = %for.cond.27
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %86 = load i32, i32* %l, align 4, !tbaa !5
  %inc51 = add nsw i32 %86, 1
  store i32 %inc51, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call53 = call i32 @_IO_putc(i32 2, %struct._IO_FILE* %87) #3
  %88 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %89 = load i32, i32* %lnum, align 4, !tbaa !5
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  call void @write_cpass(%struct.cmyrow_s* %88, i32 %89, i32 2, %struct._IO_FILE* %90) #3
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call54 = call i32 @_IO_putc(i32 12, %struct._IO_FILE* %91) #3
  %92 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %93 = load i32, i32* %lnum, align 4, !tbaa !5
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  call void @write_cpass(%struct.cmyrow_s* %92, i32 %93, i32 1, %struct._IO_FILE* %94) #3
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call55 = call i32 @_IO_putc(i32 12, %struct._IO_FILE* %95) #3
  %96 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %97 = load i32, i32* %lnum, align 4, !tbaa !5
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  call void @write_cpass(%struct.cmyrow_s* %96, i32 %97, i32 0, %struct._IO_FILE* %98) #3
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call56 = call i32 @_IO_putc(i32 4, %struct._IO_FILE* %99) #3
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory57, align 8, !tbaa !24
  %non_gc_memory58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory58, align 8, !tbaa !25
  %procs59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 1
  %free_object60 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs59, i32 0, i32 2
  %103 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object60, align 8, !tbaa !29
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !24
  %non_gc_memory62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory62, align 8, !tbaa !25
  %107 = load i8*, i8** %in, align 8, !tbaa !1
  call void %103(%struct.gs_memory_s* %106, i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #3
  %108 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !24
  %110 = load %struct.cmyrow_s*, %struct.cmyrow_s** %linebuf, align 8, !tbaa !1
  %111 = load i32, i32* %lnum, align 4, !tbaa !5
  %112 = load i32, i32* %pixnum, align 4, !tbaa !5
  call void @free_rb_line(%struct.gs_memory_s* %109, %struct.cmyrow_s* %110, i32 %111, i32 %112) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.52, %if.then.18, %if.then.6, %if.then
  %113 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %cmy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %pixnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast %struct.cmyrow_s** %linebuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = load i32, i32* %retval
  ret i32 %126
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

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @ccr_map_rgb_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %shift = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 15, i32* %shift, align 4, !tbaa !5
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !31
  store i16 %5, i16* %r, align 2, !tbaa !31
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx1, align 2, !tbaa !31
  store i16 %7, i16* %g, align 2, !tbaa !31
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 2
  %9 = load i16, i16* %arrayidx2, align 2, !tbaa !31
  store i16 %9, i16* %b, align 2, !tbaa !31
  %10 = load i32, i32* %shift, align 4, !tbaa !5
  %11 = load i16, i16* %r, align 2, !tbaa !31
  %conv = zext i16 %11 to i32
  %shr = ashr i32 %conv, %10
  %conv3 = trunc i32 %shr to i16
  store i16 %conv3, i16* %r, align 2, !tbaa !31
  %12 = load i32, i32* %shift, align 4, !tbaa !5
  %13 = load i16, i16* %g, align 2, !tbaa !31
  %conv4 = zext i16 %13 to i32
  %shr5 = ashr i32 %conv4, %12
  %conv6 = trunc i32 %shr5 to i16
  store i16 %conv6, i16* %g, align 2, !tbaa !31
  %14 = load i32, i32* %shift, align 4, !tbaa !5
  %15 = load i16, i16* %b, align 2, !tbaa !31
  %conv7 = zext i16 %15 to i32
  %shr8 = ashr i32 %conv7, %14
  %conv9 = trunc i32 %shr8 to i16
  store i16 %conv9, i16* %b, align 2, !tbaa !31
  %16 = load i16, i16* %r, align 2, !tbaa !31
  %conv10 = zext i16 %16 to i32
  %sub = sub nsw i32 1, %conv10
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %r, align 2, !tbaa !31
  %17 = load i16, i16* %g, align 2, !tbaa !31
  %conv12 = zext i16 %17 to i32
  %sub13 = sub nsw i32 1, %conv12
  %conv14 = trunc i32 %sub13 to i16
  store i16 %conv14, i16* %g, align 2, !tbaa !31
  %18 = load i16, i16* %b, align 2, !tbaa !31
  %conv15 = zext i16 %18 to i32
  %sub16 = sub nsw i32 1, %conv15
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %b, align 2, !tbaa !31
  %19 = load i16, i16* %r, align 2, !tbaa !31
  %conv18 = zext i16 %19 to i32
  %shl = shl i32 %conv18, 2
  %20 = load i16, i16* %g, align 2, !tbaa !31
  %conv19 = zext i16 %20 to i32
  %shl20 = shl i32 %conv19, 1
  %or = or i32 %shl, %shl20
  %21 = load i16, i16* %b, align 2, !tbaa !31
  %conv21 = zext i16 %21 to i32
  %or22 = or i32 %or, %conv21
  %conv23 = sext i32 %or22 to i64
  %22 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #2
  %24 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #2
  %25 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #2
  ret i64 %conv23
}

; Function Attrs: nounwind uwtable
define internal i32 @ccr_map_color_rgb(%struct.gx_device_s* %pdev, i64 %color, i16* %rgb) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %0, 2
  %sub = sub i64 1, %shr
  %mul = mul i64 %sub, 65535
  %conv = trunc i64 %mul to i16
  %1 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !31
  %2 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and = and i64 %2, 2
  %shr1 = lshr i64 %and, 1
  %sub2 = sub i64 1, %shr1
  %mul3 = mul i64 %sub2, 65535
  %conv4 = trunc i64 %mul3 to i16
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !31
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and6 = and i64 %4, 1
  %sub7 = sub i64 1, %and6
  %mul8 = mul i64 %sub7, 65535
  %conv9 = trunc i64 %mul8 to i16
  %5 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !31
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

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @alloc_rb(%struct.gs_memory_s* %mem, %struct.cmyrow_s** %rb, i32 %rows) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rb.addr = alloca %struct.cmyrow_s**, align 8
  %rows.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cmyrow_s** %rb, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  store i32 %rows, i32* %rows.addr, align 4, !tbaa !5
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %2 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !25
  %5 = load i32, i32* %rows.addr, align 4, !tbaa !5
  %call = call i8* %2(%struct.gs_memory_s* %4, i32 %5, i32 56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #3
  %6 = bitcast i8* %call to %struct.cmyrow_s*
  %7 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  store %struct.cmyrow_s* %6, %struct.cmyrow_s** %7, align 8, !tbaa !1
  %8 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  %9 = load %struct.cmyrow_s*, %struct.cmyrow_s** %8, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmyrow_s* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %r, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %r, align 4, !tbaa !5
  %12 = load i32, i32* %rows.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %11, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %r, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  %15 = load %struct.cmyrow_s*, %struct.cmyrow_s** %14, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %15, i64 %idxprom
  %cname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %cname, i32 0, i32 0
  %16 = load i32, i32* %r, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %16) #3
  %17 = load i32, i32* %r, align 4, !tbaa !5
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  %19 = load %struct.cmyrow_s*, %struct.cmyrow_s** %18, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %19, i64 %idxprom4
  %mname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx5, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %mname, i32 0, i32 0
  %20 = load i32, i32* %r, align 4, !tbaa !5
  %call7 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %20) #3
  %21 = load i32, i32* %r, align 4, !tbaa !5
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  %23 = load %struct.cmyrow_s*, %struct.cmyrow_s** %22, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %23, i64 %idxprom8
  %yname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx9, i32 0, i32 5
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %yname, i32 0, i32 0
  %24 = load i32, i32* %r, align 4, !tbaa !5
  %call11 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %24) #3
  %25 = load i32, i32* %r, align 4, !tbaa !5
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.cmyrow_s**, %struct.cmyrow_s*** %rb.addr, align 8, !tbaa !1
  %27 = load %struct.cmyrow_s*, %struct.cmyrow_s** %26, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %27, i64 %idxprom12
  %is_used = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx13, i32 0, i32 2
  store i32 0, i32* %is_used, align 4, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %r, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %r, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  %29 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  br label %return

return:                                           ; preds = %for.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @alloc_line(%struct.gs_memory_s* %mem, %struct.cmyrow_s* %row, i32 %cols) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %row.addr = alloca %struct.cmyrow_s*, align 8
  %cols.addr = alloca i32, align 4
  %suc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cmyrow_s* %row, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  store i32 %cols, i32* %cols.addr, align 4, !tbaa !5
  %0 = bitcast i32* %suc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %3 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !25
  %6 = load i32, i32* %cols.addr, align 4, !tbaa !5
  %7 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %cname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %cname, i32 0, i32 0
  %call = call i8* %3(%struct.gs_memory_s* %5, i32 %6, i32 1, i8* %arraydecay) #3
  %8 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf, i32 0, i64 0
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !25
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_byte_array4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 10
  %11 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array4, align 8, !tbaa !28
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !25
  %14 = load i32, i32* %cols.addr, align 4, !tbaa !5
  %15 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %mname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %15, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %mname, i32 0, i32 0
  %call7 = call i8* %11(%struct.gs_memory_s* %13, i32 %14, i32 1, i8* %arraydecay6) #3
  %16 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf8 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %16, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf8, i32 0, i64 1
  store i8* %call7, i8** %arrayidx9, align 8, !tbaa !1
  %tobool10 = icmp ne i8* %call7, null
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !25
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_byte_array13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 10
  %19 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array13, align 8, !tbaa !28
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !25
  %22 = load i32, i32* %cols.addr, align 4, !tbaa !5
  %23 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %yname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %23, i32 0, i32 5
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %yname, i32 0, i32 0
  %call16 = call i8* %19(%struct.gs_memory_s* %21, i32 %22, i32 1, i8* %arraydecay15) #3
  %24 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf17 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %24, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf17, i32 0, i64 2
  store i8* %call16, i8** %arrayidx18, align 8, !tbaa !1
  %tobool19 = icmp ne i8* %call16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %25 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool19, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %suc, align 4, !tbaa !5
  %26 = load i32, i32* %suc, align 4, !tbaa !5
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !25
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !25
  %32 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf23 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %32, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf23, i32 0, i64 0
  %33 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %34 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %cname25 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %34, i32 0, i32 3
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %cname25, i32 0, i32 0
  call void %29(%struct.gs_memory_s* %31, i8* %33, i8* %arraydecay26) #3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !25
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object29, align 8, !tbaa !29
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory30, align 8, !tbaa !25
  %40 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf31 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %40, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf31, i32 0, i64 1
  %41 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %42 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %mname33 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %42, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %mname33, i32 0, i32 0
  call void %37(%struct.gs_memory_s* %39, i8* %41, i8* %arraydecay34) #3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !25
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object37 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object37, align 8, !tbaa !29
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory38, align 8, !tbaa !25
  %48 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmybuf39 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %48, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf39, i32 0, i64 2
  %49 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %50 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %yname41 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %50, i32 0, i32 5
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %yname41, i32 0, i32 0
  call void %45(%struct.gs_memory_s* %47, i8* %49, i8* %arraydecay42) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.end
  %51 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %is_used = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %51, i32 0, i32 2
  store i32 1, i32* %is_used, align 4, !tbaa !33
  %52 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmylen = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %52, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen, i32 0, i64 2
  store i32 0, i32* %arrayidx43, align 4, !tbaa !5
  %53 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmylen44 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %53, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen44, i32 0, i64 1
  store i32 0, i32* %arrayidx45, align 4, !tbaa !5
  %54 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %_cmylen46 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %54, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen46, i32 0, i64 0
  store i32 0, i32* %arrayidx47, align 4, !tbaa !5
  %55 = load %struct.cmyrow_s*, %struct.cmyrow_s** %row.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %55, i32 0, i32 0
  store i32 0, i32* %current, align 4, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %56 = bitcast i32* %suc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal void @free_rb_line(%struct.gs_memory_s* %mem, %struct.cmyrow_s* %rbuf, i32 %rows, i32 %cols) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rbuf.addr = alloca %struct.cmyrow_s*, align 8
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cmyrow_s* %rbuf, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  store i32 %rows, i32* %rows.addr, align 4, !tbaa !5
  store i32 %cols, i32* %cols.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %rows.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %4, i64 %idxprom
  %is_used = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %is_used, align 4, !tbaa !33
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !29
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !25
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %12, i64 %idxprom2
  %_cmybuf = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx3, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf, i32 0, i64 0
  %13 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %15, i64 %idxprom5
  %cname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %cname, i32 0, i32 0
  call void %8(%struct.gs_memory_s* %10, i8* %13, i8* %arraydecay) #3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !25
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !29
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !25
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %22, i64 %idxprom11
  %_cmybuf13 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx12, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf13, i32 0, i64 1
  %23 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %25, i64 %idxprom15
  %mname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx16, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %mname, i32 0, i32 0
  call void %18(%struct.gs_memory_s* %20, i8* %23, i8* %arraydecay17) #3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !25
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !29
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !25
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %31 to i64
  %32 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %32, i64 %idxprom22
  %_cmybuf24 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx23, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf24, i32 0, i64 2
  %33 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %34 to i64
  %35 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %35, i64 %idxprom26
  %yname = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx27, i32 0, i32 5
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %yname, i32 0, i32 0
  call void %28(%struct.gs_memory_s* %30, i8* %33, i8* %arraydecay28) #3
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %36 to i64
  %37 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %37, i64 %idxprom29
  %is_used31 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx30, i32 0, i32 2
  store i32 0, i32* %is_used31, align 4, !tbaa !33
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory32, align 8, !tbaa !25
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !29
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !25
  %44 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rbuf.addr, align 8, !tbaa !1
  %45 = bitcast %struct.cmyrow_s* %44 to i8*
  call void %41(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #3
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_cmy8(%struct.cmyrow_s* %rb, i8 signext %c, i8 signext %m, i8 signext %y) #1 {
entry:
  %rb.addr = alloca %struct.cmyrow_s*, align 8
  %c.addr = alloca i8, align 1
  %m.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  %cur = alloca i32, align 4
  store %struct.cmyrow_s* %rb, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  store i8 %c, i8* %c.addr, align 1, !tbaa !30
  store i8 %m, i8* %m.addr, align 1, !tbaa !30
  store i8 %y, i8* %y.addr, align 1, !tbaa !30
  %0 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %1, i32 0, i32 0
  %2 = load i32, i32* %current, align 4, !tbaa !35
  store i32 %2, i32* %cur, align 4, !tbaa !5
  %3 = load i8, i8* %c.addr, align 1, !tbaa !30
  %4 = load i32, i32* %cur, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmybuf = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf, i32 0, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %3, i8* %arrayidx1, align 1, !tbaa !30
  %7 = load i8, i8* %c.addr, align 1, !tbaa !30
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %cur, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %9 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmylen = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %9, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen, i32 0, i64 0
  store i32 %add, i32* %arrayidx2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8, i8* %m.addr, align 1, !tbaa !30
  %11 = load i32, i32* %cur, align 4, !tbaa !5
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmybuf4 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %12, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf4, i32 0, i64 1
  %13 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom3
  store i8 %10, i8* %arrayidx6, align 1, !tbaa !30
  %14 = load i8, i8* %m.addr, align 1, !tbaa !30
  %tobool7 = icmp ne i8 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %15 = load i32, i32* %cur, align 4, !tbaa !5
  %add9 = add nsw i32 %15, 1
  %16 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmylen10 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen10, i32 0, i64 1
  store i32 %add9, i32* %arrayidx11, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %17 = load i8, i8* %y.addr, align 1, !tbaa !30
  %18 = load i32, i32* %cur, align 4, !tbaa !5
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmybuf14 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %19, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf14, i32 0, i64 2
  %20 = load i8*, i8** %arrayidx15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  store i8 %17, i8* %arrayidx16, align 1, !tbaa !30
  %21 = load i8, i8* %y.addr, align 1, !tbaa !30
  %tobool17 = icmp ne i8 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.12
  %22 = load i32, i32* %cur, align 4, !tbaa !5
  %add19 = add nsw i32 %22, 1
  %23 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %_cmylen20 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %23, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen20, i32 0, i64 2
  store i32 %add19, i32* %arrayidx21, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.12
  %24 = load %struct.cmyrow_s*, %struct.cmyrow_s** %rb.addr, align 8, !tbaa !1
  %current23 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %24, i32 0, i32 0
  %25 = load i32, i32* %current23, align 4, !tbaa !35
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %current23, align 4, !tbaa !35
  %26 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @write_cpass(%struct.cmyrow_s* %buf, i32 %rows, i32 %pass, %struct._IO_FILE* %pstream) #1 {
entry:
  %buf.addr = alloca %struct.cmyrow_s*, align 8
  %rows.addr = alloca i32, align 4
  %pass.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %row = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.cmyrow_s* %buf, %struct.cmyrow_s** %buf.addr, align 8, !tbaa !1
  store i32 %rows, i32* %rows.addr, align 4, !tbaa !5
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %row, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %row, align 4, !tbaa !5
  %3 = load i32, i32* %rows.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pass.addr, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %row, align 4, !tbaa !5
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.cmyrow_s*, %struct.cmyrow_s** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %6, i64 %idxprom1
  %_cmylen = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %_cmylen, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  store i32 %7, i32* %len, align 4, !tbaa !5
  %8 = load i32, i32* %len, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %9) #3
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call4 = call i32 @_IO_putc(i32 27, %struct._IO_FILE* %10) #3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call5 = call i32 @_IO_putc(i32 75, %struct._IO_FILE* %11) #3
  %12 = load i32, i32* %len, align 4, !tbaa !5
  %shr = ashr i32 %12, 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call6 = call i32 @_IO_putc(i32 %shr, %struct._IO_FILE* %13) #3
  %14 = load i32, i32* %len, align 4, !tbaa !5
  %and = and i32 %14, 255
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call7 = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %15) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %pass.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32, i32* %row, align 4, !tbaa !5
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.cmyrow_s*, %struct.cmyrow_s** %buf.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %18, i64 %idxprom9
  %_cmybuf = getelementptr inbounds %struct.cmyrow_s, %struct.cmyrow_s* %arrayidx10, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_cmybuf, i32 0, i64 %idxprom8
  %19 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  %20 = load i32, i32* %len, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call12 = call i64 @fwrite(i8* %19, i64 %conv, i64 1, %struct._IO_FILE* %21) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %row, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %row, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret void
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

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
!7 = !{!8, !6, i64 832}
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
!23 = !{!8, !6, i64 836}
!24 = !{!8, !2, i64 24}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!26, !2, i64 24}
!30 = !{!3, !3, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !6, i64 16}
!34 = !{!"cmyrow_s", !6, i64 0, !3, i64 4, !6, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32}
!35 = !{!34, !6, i64 0}
