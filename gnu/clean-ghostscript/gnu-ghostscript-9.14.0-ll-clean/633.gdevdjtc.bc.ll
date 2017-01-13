; ModuleID = './gdevdjtc.bc'
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

@djet500c_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_pcl_3bit_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_pcl_3bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"djet500c\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_djet500c_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @djet500c_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 0, i32 1, i32 1, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 8.640000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -7.500000e+01, float -7.500000e+01], [4 x float] [float 1.800000e+01, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @djet500c_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\1BE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\1B*rbC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\1B*t300R\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\1B&l26a0l1H\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B*r3U\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\1B*o%dD\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\1B*o%dQ\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\1B*p0x0Y\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\1B*b2M\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B*r0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\1B*r%dS\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\1B*b%dV\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\1B*b%dW\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"\1B*r1U\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @djet500c_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fprn) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fprn.addr = alloca %struct._IO_FILE*, align 8
  %bitData = alloca i8*, align 8
  %plane1 = alloca i8*, align 8
  %plane2 = alloca i8*, align 8
  %plane3 = alloca i8*, align 8
  %bitSize = alloca i32, align 4
  %planeSize = alloca i32, align 4
  %lnum = alloca i32, align 4
  %num_blank_lines = alloca i32, align 4
  %lineSize = alloca i32, align 4
  %endData = alloca i8*, align 8
  %count = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %lineLen = alloca i32, align 4
  %t = alloca i16, align 2
  %c = alloca i16, align 2
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fprn, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bitData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i8* null, i8** %bitData, align 8, !tbaa !1
  %1 = bitcast i8** %plane1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i8* null, i8** %plane1, align 8, !tbaa !1
  %2 = bitcast i8** %plane2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store i8* null, i8** %plane2, align 8, !tbaa !1
  %3 = bitcast i8** %plane3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i8* null, i8** %plane3, align 8, !tbaa !1
  %4 = bitcast i32* %bitSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %bitSize, align 4, !tbaa !5
  %5 = bitcast i32* %planeSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %planeSize, align 4, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %6) #4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %7) #4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %8) #4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %9) #4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %10) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 1) #4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 1) #4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %13) #4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %14) #4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %15) #4
  %16 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %18 = bitcast i32* %lineSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_s*
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_printer_s*
  %22 = bitcast %struct.gx_device_printer_s* %21 to %struct.gx_device_s*
  %call10 = call i32 @gx_device_raster(%struct.gx_device_s* %22, i32 0) #4
  store i32 %call10, i32* %lineSize, align 4, !tbaa !5
  %23 = load i32, i32* %lineSize, align 4, !tbaa !5
  %24 = load i32, i32* %bitSize, align 4, !tbaa !5
  %cmp = icmp sgt i32 %23, %24
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %25 = load i8*, i8** %bitData, align 8, !tbaa !1
  %tobool = icmp ne i8* %25, null
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %26 = load i8*, i8** %bitData, align 8, !tbaa !1
  call void @free(i8* %26) #5
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %27 = load i32, i32* %lineSize, align 4, !tbaa !5
  store i32 %27, i32* %bitSize, align 4, !tbaa !5
  %28 = load i32, i32* %bitSize, align 4, !tbaa !5
  %add = add nsw i32 %28, 16
  %conv = sext i32 %add to i64
  %call12 = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call12, i8** %bitData, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.153, %if.end.13
  %29 = load i32, i32* %lnum, align 4, !tbaa !5
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !7
  %cmp14 = icmp slt i32 %29, %31
  br i1 %cmp14, label %for.body, label %for.end.155

for.body:                                         ; preds = %for.cond
  %32 = bitcast i8** %endData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = load i32, i32* %lnum, align 4, !tbaa !5
  %35 = load i8*, i8** %bitData, align 8, !tbaa !1
  %36 = load i32, i32* %lineSize, align 4, !tbaa !5
  %call16 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %33, i32 %34, i8* %35, i32 %36) #4
  %37 = load i8*, i8** %bitData, align 8, !tbaa !1
  %38 = load i32, i32* %lineSize, align 4, !tbaa !5
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %endData, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %39 = load i8*, i8** %endData, align 8, !tbaa !1
  %40 = load i8*, i8** %bitData, align 8, !tbaa !1
  %cmp17 = icmp ugt i8* %39, %40
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load i8*, i8** %endData, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 -1
  %42 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv19 = zext i8 %42 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %43, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %44 = load i8*, i8** %endData, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr, i8** %endData, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load i8*, i8** %endData, align 8, !tbaa !1
  %46 = load i8*, i8** %bitData, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %45, %46
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %while.end
  %47 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %num_blank_lines, align 4, !tbaa !5
  br label %if.end.152

if.else:                                          ; preds = %while.end
  %48 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = bitcast i32* %lineLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i8*, i8** %bitData, align 8, !tbaa !1
  %53 = load i32, i32* %lineSize, align 4, !tbaa !5
  %idx.ext25 = sext i32 %53 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %52, i64 %idx.ext25
  store i8* %add.ptr26, i8** %endData, align 8, !tbaa !1
  %54 = load i8*, i8** %endData, align 8, !tbaa !1
  %call27 = call i8* @memset(i8* %54, i32 0, i64 7) #5
  %55 = load i8*, i8** %endData, align 8, !tbaa !1
  %56 = load i8*, i8** %bitData, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add28 = add nsw i64 %sub.ptr.sub, 7
  %div = sdiv i64 %add28, 8
  %conv29 = trunc i64 %div to i32
  store i32 %conv29, i32* %lineLen, align 4, !tbaa !5
  %57 = load i32, i32* %planeSize, align 4, !tbaa !5
  %58 = load i32, i32* %lineLen, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %57, %58
  br i1 %cmp30, label %if.then.32, label %if.end.51

if.then.32:                                       ; preds = %if.else
  %59 = load i8*, i8** %plane1, align 8, !tbaa !1
  %tobool33 = icmp ne i8* %59, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.32
  %60 = load i8*, i8** %plane1, align 8, !tbaa !1
  call void @free(i8* %60) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.32
  %61 = load i8*, i8** %plane2, align 8, !tbaa !1
  %tobool36 = icmp ne i8* %61, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %62 = load i8*, i8** %plane2, align 8, !tbaa !1
  call void @free(i8* %62) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  %63 = load i8*, i8** %plane3, align 8, !tbaa !1
  %tobool39 = icmp ne i8* %63, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %64 = load i8*, i8** %plane3, align 8, !tbaa !1
  call void @free(i8* %64) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  %65 = load i32, i32* %lineLen, align 4, !tbaa !5
  store i32 %65, i32* %planeSize, align 4, !tbaa !5
  %66 = load i32, i32* %planeSize, align 4, !tbaa !5
  %add42 = add nsw i32 %66, 8
  %conv43 = sext i32 %add42 to i64
  %call44 = call noalias i8* @malloc(i64 %conv43) #5
  store i8* %call44, i8** %plane1, align 8, !tbaa !1
  %67 = load i32, i32* %planeSize, align 4, !tbaa !5
  %add45 = add nsw i32 %67, 8
  %conv46 = sext i32 %add45 to i64
  %call47 = call noalias i8* @malloc(i64 %conv46) #5
  store i8* %call47, i8** %plane2, align 8, !tbaa !1
  %68 = load i32, i32* %planeSize, align 4, !tbaa !5
  %add48 = add nsw i32 %68, 8
  %conv49 = sext i32 %add48 to i64
  %call50 = call noalias i8* @malloc(i64 %conv49) #5
  store i8* %call50, i8** %plane3, align 8, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.41, %if.else
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.124, %if.end.51
  %69 = load i32, i32* %k, align 4, !tbaa !5
  %70 = load i32, i32* %lineLen, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %69, %70
  br i1 %cmp53, label %for.body.55, label %for.end.127

for.body.55:                                      ; preds = %for.cond.52
  %71 = bitcast i16* %t to i8*
  call void @llvm.lifetime.start(i64 2, i8* %71) #2
  %72 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %72) #2
  store i16 0, i16* %t, align 2, !tbaa !24
  store i16 0, i16* %c, align 2, !tbaa !24
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %for.body.55
  %73 = load i16, i16* %t, align 2, !tbaa !24
  %conv57 = zext i16 %73 to i32
  %cmp58 = icmp slt i32 %conv57, 8
  br i1 %cmp58, label %for.body.60, label %for.end

for.body.60:                                      ; preds = %for.cond.56
  %74 = load i16, i16* %c, align 2, !tbaa !24
  %conv61 = zext i16 %74 to i32
  %shl = shl i32 %conv61, 1
  %75 = load i16, i16* %t, align 2, !tbaa !24
  %conv62 = zext i16 %75 to i32
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %add63 = add nsw i32 %conv62, %76
  %idxprom = sext i32 %add63 to i64
  %77 = load i8*, i8** %bitData, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %78 = load i8, i8* %arrayidx64, align 1, !tbaa !23
  %conv65 = zext i8 %78 to i32
  %and = and i32 %conv65, 4
  %or = or i32 %shl, %and
  %conv66 = trunc i32 %or to i16
  store i16 %conv66, i16* %c, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body.60
  %79 = load i16, i16* %t, align 2, !tbaa !24
  %inc67 = add i16 %79, 1
  store i16 %inc67, i16* %t, align 2, !tbaa !24
  br label %for.cond.56

for.end:                                          ; preds = %for.cond.56
  %80 = load i16, i16* %c, align 2, !tbaa !24
  %conv68 = zext i16 %80 to i32
  %shr = ashr i32 %conv68, 2
  %conv69 = trunc i32 %shr to i8
  %conv70 = zext i8 %conv69 to i32
  %neg = xor i32 %conv70, -1
  %conv71 = trunc i32 %neg to i8
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom72 = sext i32 %81 to i64
  %82 = load i8*, i8** %plane3, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %82, i64 %idxprom72
  store i8 %conv71, i8* %arrayidx73, align 1, !tbaa !23
  store i16 0, i16* %t, align 2, !tbaa !24
  store i16 0, i16* %c, align 2, !tbaa !24
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.89, %for.end
  %83 = load i16, i16* %t, align 2, !tbaa !24
  %conv75 = zext i16 %83 to i32
  %cmp76 = icmp slt i32 %conv75, 8
  br i1 %cmp76, label %for.body.78, label %for.end.91

for.body.78:                                      ; preds = %for.cond.74
  %84 = load i16, i16* %c, align 2, !tbaa !24
  %conv79 = zext i16 %84 to i32
  %shl80 = shl i32 %conv79, 1
  %85 = load i16, i16* %t, align 2, !tbaa !24
  %conv81 = zext i16 %85 to i32
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %add82 = add nsw i32 %conv81, %86
  %idxprom83 = sext i32 %add82 to i64
  %87 = load i8*, i8** %bitData, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %87, i64 %idxprom83
  %88 = load i8, i8* %arrayidx84, align 1, !tbaa !23
  %conv85 = zext i8 %88 to i32
  %and86 = and i32 %conv85, 2
  %or87 = or i32 %shl80, %and86
  %conv88 = trunc i32 %or87 to i16
  store i16 %conv88, i16* %c, align 2, !tbaa !24
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.78
  %89 = load i16, i16* %t, align 2, !tbaa !24
  %inc90 = add i16 %89, 1
  store i16 %inc90, i16* %t, align 2, !tbaa !24
  br label %for.cond.74

for.end.91:                                       ; preds = %for.cond.74
  %90 = load i16, i16* %c, align 2, !tbaa !24
  %conv92 = zext i16 %90 to i32
  %shr93 = ashr i32 %conv92, 1
  %conv94 = trunc i32 %shr93 to i8
  %conv95 = zext i8 %conv94 to i32
  %neg96 = xor i32 %conv95, -1
  %conv97 = trunc i32 %neg96 to i8
  %91 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom98 = sext i32 %91 to i64
  %92 = load i8*, i8** %plane2, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %92, i64 %idxprom98
  store i8 %conv97, i8* %arrayidx99, align 1, !tbaa !23
  store i16 0, i16* %t, align 2, !tbaa !24
  store i16 0, i16* %c, align 2, !tbaa !24
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.115, %for.end.91
  %93 = load i16, i16* %t, align 2, !tbaa !24
  %conv101 = zext i16 %93 to i32
  %cmp102 = icmp slt i32 %conv101, 8
  br i1 %cmp102, label %for.body.104, label %for.end.117

for.body.104:                                     ; preds = %for.cond.100
  %94 = load i16, i16* %c, align 2, !tbaa !24
  %conv105 = zext i16 %94 to i32
  %shl106 = shl i32 %conv105, 1
  %95 = load i16, i16* %t, align 2, !tbaa !24
  %conv107 = zext i16 %95 to i32
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %add108 = add nsw i32 %conv107, %96
  %idxprom109 = sext i32 %add108 to i64
  %97 = load i8*, i8** %bitData, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %97, i64 %idxprom109
  %98 = load i8, i8* %arrayidx110, align 1, !tbaa !23
  %conv111 = zext i8 %98 to i32
  %and112 = and i32 %conv111, 1
  %or113 = or i32 %shl106, %and112
  %conv114 = trunc i32 %or113 to i16
  store i16 %conv114, i16* %c, align 2, !tbaa !24
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.104
  %99 = load i16, i16* %t, align 2, !tbaa !24
  %inc116 = add i16 %99, 1
  store i16 %inc116, i16* %t, align 2, !tbaa !24
  br label %for.cond.100

for.end.117:                                      ; preds = %for.cond.100
  %100 = load i16, i16* %c, align 2, !tbaa !24
  %conv118 = trunc i16 %100 to i8
  %conv119 = zext i8 %conv118 to i32
  %neg120 = xor i32 %conv119, -1
  %conv121 = trunc i32 %neg120 to i8
  %101 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom122 = sext i32 %101 to i64
  %102 = load i8*, i8** %plane1, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %102, i64 %idxprom122
  store i8 %conv121, i8* %arrayidx123, align 1, !tbaa !23
  %103 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %103) #2
  %104 = bitcast i16* %t to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #2
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.117
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %add125 = add nsw i32 %105, 8
  store i32 %add125, i32* %i, align 4, !tbaa !5
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %inc126 = add nsw i32 %106, 1
  store i32 %inc126, i32* %k, align 4, !tbaa !5
  br label %for.cond.52

for.end.127:                                      ; preds = %for.cond.52
  %107 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp128 = icmp sgt i32 %107, 0
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %for.end.127
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %109 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %109) #4
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %for.end.127
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %111 = load i32, i32* %lineLen, align 4, !tbaa !5
  %mul = mul nsw i32 %111, 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %mul) #4
  %112 = load i8*, i8** %plane1, align 8, !tbaa !1
  %113 = load i8*, i8** %plane1, align 8, !tbaa !1
  %114 = load i32, i32* %lineLen, align 4, !tbaa !5
  %idx.ext134 = sext i32 %114 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %113, i64 %idx.ext134
  %115 = load i8*, i8** %bitData, align 8, !tbaa !1
  %call136 = call i32 @mode2compress(i8* %112, i8* %add.ptr135, i8* %115) #4
  store i32 %call136, i32* %count, align 4, !tbaa !5
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %117 = load i32, i32* %count, align 4, !tbaa !5
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %117) #4
  %118 = load i8*, i8** %bitData, align 8, !tbaa !1
  %119 = load i32, i32* %count, align 4, !tbaa !5
  %conv138 = sext i32 %119 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call139 = call i64 @fwrite(i8* %118, i64 1, i64 %conv138, %struct._IO_FILE* %120) #4
  %121 = load i8*, i8** %plane2, align 8, !tbaa !1
  %122 = load i8*, i8** %plane2, align 8, !tbaa !1
  %123 = load i32, i32* %lineLen, align 4, !tbaa !5
  %idx.ext140 = sext i32 %123 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %122, i64 %idx.ext140
  %124 = load i8*, i8** %bitData, align 8, !tbaa !1
  %call142 = call i32 @mode2compress(i8* %121, i8* %add.ptr141, i8* %124) #4
  store i32 %call142, i32* %count, align 4, !tbaa !5
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %126 = load i32, i32* %count, align 4, !tbaa !5
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %126) #4
  %127 = load i8*, i8** %bitData, align 8, !tbaa !1
  %128 = load i32, i32* %count, align 4, !tbaa !5
  %conv144 = sext i32 %128 to i64
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call145 = call i64 @fwrite(i8* %127, i64 1, i64 %conv144, %struct._IO_FILE* %129) #4
  %130 = load i8*, i8** %plane3, align 8, !tbaa !1
  %131 = load i8*, i8** %plane3, align 8, !tbaa !1
  %132 = load i32, i32* %lineLen, align 4, !tbaa !5
  %idx.ext146 = sext i32 %132 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %131, i64 %idx.ext146
  %133 = load i8*, i8** %bitData, align 8, !tbaa !1
  %call148 = call i32 @mode2compress(i8* %130, i8* %add.ptr147, i8* %133) #4
  store i32 %call148, i32* %count, align 4, !tbaa !5
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %135 = load i32, i32* %count, align 4, !tbaa !5
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %135) #4
  %136 = load i8*, i8** %bitData, align 8, !tbaa !1
  %137 = load i32, i32* %count, align 4, !tbaa !5
  %conv150 = sext i32 %137 to i64
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call151 = call i64 @fwrite(i8* %136, i64 1, i64 %conv150, %struct._IO_FILE* %138) #4
  %139 = bitcast i32* %lineLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.132, %if.then.24
  %143 = bitcast i8** %endData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %144 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc154 = add nsw i32 %144, 1
  store i32 %inc154, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end.155:                                      ; preds = %for.cond
  %145 = bitcast i32* %lineSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call156 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %148) #4
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call157 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %149) #4
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call158 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %150) #4
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %fprn.addr, align 8, !tbaa !1
  %call159 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %151) #4
  %152 = load i8*, i8** %bitData, align 8, !tbaa !1
  %tobool160 = icmp ne i8* %152, null
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.end.155
  %153 = load i8*, i8** %bitData, align 8, !tbaa !1
  call void @free(i8* %153) #5
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %for.end.155
  %154 = load i8*, i8** %plane1, align 8, !tbaa !1
  %tobool163 = icmp ne i8* %154, null
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.162
  %155 = load i8*, i8** %plane1, align 8, !tbaa !1
  call void @free(i8* %155) #5
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.end.162
  %156 = load i8*, i8** %plane2, align 8, !tbaa !1
  %tobool166 = icmp ne i8* %156, null
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.165
  %157 = load i8*, i8** %plane2, align 8, !tbaa !1
  call void @free(i8* %157) #5
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end.165
  %158 = load i8*, i8** %plane3, align 8, !tbaa !1
  %tobool169 = icmp ne i8* %158, null
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.168
  %159 = load i8*, i8** %plane3, align 8, !tbaa !1
  call void @free(i8* %159) #5
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.168
  %160 = bitcast i32* %planeSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %bitSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i8** %plane3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i8** %plane2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast i8** %plane1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  %165 = bitcast i8** %bitData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  ret i32 0
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

declare i64 @gdev_pcl_3bit_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gdev_pcl_3bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @mode2compress(i8* %row, i8* %end_row, i8* %compressed) #1 {
entry:
  %row.addr = alloca i8*, align 8
  %end_row.addr = alloca i8*, align 8
  %compressed.addr = alloca i8*, align 8
  %exam = alloca i8*, align 8
  %cptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %len = alloca i32, align 4
  %test = alloca i8, align 1
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i8* %end_row, i8** %end_row.addr, align 8, !tbaa !1
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %2, i8** %cptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  call void @llvm.lifetime.start(i64 1, i8* %test) #2
  %6 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8* %6, i8** %exam, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %exam, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !23
  store i8 %8, i8* %test, align 1, !tbaa !23
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.6, %while.body
  %9 = load i8, i8* %test, align 1, !tbaa !23
  %conv = zext i8 %9 to i32
  %10 = load i8*, i8** %exam, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !23
  %conv2 = zext i8 %11 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %12 = load i8*, i8** %exam, align 8, !tbaa !1
  %13 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp4 = icmp ult i8* %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %14 = phi i1 [ false, %while.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %14, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  %15 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %exam, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !23
  store i8 %16, i8* %test, align 1, !tbaa !23
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %exam, align 8, !tbaa !1
  %18 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp8 = icmp ult i8* %17, %18
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %19 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr10, i8** %exam, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %20 = load i8*, i8** %exam, align 8, !tbaa !1
  %21 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv11, i32* %len, align 4, !tbaa !5
  br label %while.cond.12

while.cond.12:                                    ; preds = %for.end, %if.end
  %22 = load i32, i32* %len, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %while.body.15, label %while.end.27

while.body.15:                                    ; preds = %while.cond.12
  %23 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %23, i32* %count, align 4, !tbaa !5
  %24 = load i32, i32* %count, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %24, 127
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body.15
  store i32 127, i32* %count, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %while.body.15
  %25 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub nsw i32 %25, 1
  %conv20 = trunc i32 %sub to i8
  %26 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %cptr, align 8, !tbaa !1
  store i8 %conv20, i8* %26, align 1, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %count, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr24, i8** %row.addr, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !23
  %31 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr25, i8** %cptr, align 8, !tbaa !1
  store i8 %30, i8* %31, align 1, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %count, align 4, !tbaa !5
  %34 = load i32, i32* %len, align 4, !tbaa !5
  %sub26 = sub nsw i32 %34, %33
  store i32 %sub26, i32* %len, align 4, !tbaa !5
  br label %while.cond.12

while.end.27:                                     ; preds = %while.cond.12
  %35 = load i8*, i8** %exam, align 8, !tbaa !1
  %36 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp28 = icmp uge i8* %35, %36
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.end.27
  br label %while.end.67

if.end.31:                                        ; preds = %while.end.27
  %37 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr32, i8** %exam, align 8, !tbaa !1
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.42, %if.end.31
  %38 = load i8, i8* %test, align 1, !tbaa !23
  %conv34 = zext i8 %38 to i32
  %39 = load i8*, i8** %exam, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !23
  %conv35 = zext i8 %40 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %land.rhs.38, label %land.end.41

land.rhs.38:                                      ; preds = %while.cond.33
  %41 = load i8*, i8** %exam, align 8, !tbaa !1
  %42 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp39 = icmp ult i8* %41, %42
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.38, %while.cond.33
  %43 = phi i1 [ false, %while.cond.33 ], [ %cmp39, %land.rhs.38 ]
  br i1 %43, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %land.end.41
  %44 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr43, i8** %exam, align 8, !tbaa !1
  br label %while.cond.33

while.end.44:                                     ; preds = %land.end.41
  %45 = load i8*, i8** %exam, align 8, !tbaa !1
  %46 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast45 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %46 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %conv48 = trunc i64 %sub.ptr.sub47 to i32
  store i32 %conv48, i32* %len, align 4, !tbaa !5
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.56, %while.end.44
  %47 = load i32, i32* %len, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %47, 0
  br i1 %cmp50, label %while.body.52, label %while.end.62

while.body.52:                                    ; preds = %while.cond.49
  %48 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %48, i32* %count, align 4, !tbaa !5
  %49 = load i32, i32* %count, align 4, !tbaa !5
  %cmp53 = icmp sgt i32 %49, 127
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.body.52
  store i32 127, i32* %count, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %while.body.52
  %50 = load i32, i32* %count, align 4, !tbaa !5
  %sub57 = sub nsw i32 257, %50
  %conv58 = trunc i32 %sub57 to i8
  %51 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr59, i8** %cptr, align 8, !tbaa !1
  store i8 %conv58, i8* %51, align 1, !tbaa !23
  %52 = load i8, i8* %test, align 1, !tbaa !23
  %53 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr60, i8** %cptr, align 8, !tbaa !1
  store i8 %52, i8* %53, align 1, !tbaa !23
  %54 = load i32, i32* %count, align 4, !tbaa !5
  %55 = load i32, i32* %len, align 4, !tbaa !5
  %sub61 = sub nsw i32 %55, %54
  store i32 %sub61, i32* %len, align 4, !tbaa !5
  br label %while.cond.49

while.end.62:                                     ; preds = %while.cond.49
  %56 = load i8*, i8** %exam, align 8, !tbaa !1
  %57 = load i8*, i8** %end_row.addr, align 8, !tbaa !1
  %cmp63 = icmp uge i8* %56, %57
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.end.62
  br label %while.end.67

if.end.66:                                        ; preds = %while.end.62
  %58 = load i8*, i8** %exam, align 8, !tbaa !1
  store i8* %58, i8** %row.addr, align 8, !tbaa !1
  br label %while.cond

while.end.67:                                     ; preds = %if.then.65, %if.then.30
  %59 = load i8*, i8** %cptr, align 8, !tbaa !1
  %60 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast68 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %60 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %conv71 = trunc i64 %sub.ptr.sub70 to i32
  call void @llvm.lifetime.end(i64 1, i8* %test) #2
  %61 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  ret i32 %conv71
}

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
!23 = !{!3, !3, i64 0}
!24 = !{!12, !12, i64 0}
