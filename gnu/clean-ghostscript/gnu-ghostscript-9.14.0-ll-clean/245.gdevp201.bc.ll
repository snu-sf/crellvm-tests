; ModuleID = './gdevp201.bc'
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

@prn_std_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [6 x i8] c"pr201\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_pr201_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1280, i32 1760, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.600000e+02, float 1.600000e+02], [2 x float] [float 1.600000e+02, float 1.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pr201_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"pr1000\00", align 1
@gs_pr1000_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1920, i32 2640, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pr201_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"pr150\00", align 1
@gs_pr150_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2560, i32 3520, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.200000e+02, float 3.200000e+02], [2 x float] [float 3.200000e+02, float 3.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pr201_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"pr1000_4\00", align 1
@gs_pr1000_4_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 3200, i32 4400, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 4.000000e+02, float 4.000000e+02], [2 x float] [float 4.000000e+02, float 4.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @pr201_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"pr201_print_page(in)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"pr201_print_page(out)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\1Bcl\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\1BP\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\1Cd%d.\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1BT%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\1F%c\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\1BF%04d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\1BJ%04d\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\1CbP,48,%04d.\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pr201_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %height = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %bytes_per_column = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %skip = alloca i32, align 4
  %head_pins = alloca i32, align 4
  %lr_pitch = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %out_beg = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %num_lines = alloca i32, align 4
  %size = alloca i32, align 4
  %mod = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %head_pins to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %lr_pitch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %dname, align 8, !tbaa !5
  %call = call i32 @check_mode(i8* %13) #5
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 24, i32* %head_pins, align 4, !tbaa !22
  store i32 18, i32* %lr_pitch, align 4, !tbaa !22
  store i32 160, i32* %x_dpi, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 40, i32* %head_pins, align 4, !tbaa !22
  store i32 20, i32* %lr_pitch, align 4, !tbaa !22
  store i32 240, i32* %x_dpi, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 48, i32* %head_pins, align 4, !tbaa !22
  store i32 18, i32* %lr_pitch, align 4, !tbaa !22
  store i32 320, i32* %x_dpi, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 60, i32* %head_pins, align 4, !tbaa !22
  store i32 18, i32* %lr_pitch, align 4, !tbaa !22
  store i32 400, i32* %x_dpi, align 4, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_printer_s* %14 to %struct.gx_device_s*
  %16 = bitcast %struct.gx_device_s* %15 to %struct.gx_device_printer_s*
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.gx_device_s*
  %call4 = call i32 @gx_device_raster(%struct.gx_device_s* %17, i32 0) #5
  store i32 %call4, i32* %line_size, align 4, !tbaa !22
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 14
  %19 = load i32, i32* %height5, align 4, !tbaa !23
  store i32 %19, i32* %height, align 4, !tbaa !22
  %20 = load i32, i32* %head_pins, align 4, !tbaa !22
  store i32 %20, i32* %bits_per_column, align 4, !tbaa !22
  %21 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %div = sdiv i32 %21, 8
  store i32 %div, i32* %bytes_per_column, align 4, !tbaa !22
  %22 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %23 = load i32, i32* %line_size, align 4, !tbaa !22
  %mul = mul nsw i32 %22, %23
  store i32 %mul, i32* %chunk_size, align 4, !tbaa !22
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %28 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !24
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !25
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !25
  %33 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %34 = load i32, i32* %line_size, align 4, !tbaa !22
  %call10 = call i8* %28(%struct.gs_memory_s* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call10, i8** %in, align 8, !tbaa !1
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !24
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !25
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !25
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_byte_array15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 10
  %39 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array15, align 8, !tbaa !28
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !24
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !25
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !25
  %44 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %45 = load i32, i32* %line_size, align 4, !tbaa !22
  %call19 = call i8* %39(%struct.gs_memory_s* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call19, i8** %out, align 8, !tbaa !1
  %46 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp = icmp eq i8* %46, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %47 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp20 = icmp eq i8* %47, null
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.186

if.end:                                           ; preds = %lor.lhs.false
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 52
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !29
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %49) #5
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 52
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file22, align 8, !tbaa !29
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %51) #5
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 2
  %53 = load i8*, i8** %dname24, align 8, !tbaa !5
  %call25 = call i32 @check_mode(i8* %53) #5
  %cmp26 = icmp eq i32 %call25, 2
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 52
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file28, align 8, !tbaa !29
  %56 = load i32, i32* %x_dpi, align 4, !tbaa !22
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %56) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %file31, align 8, !tbaa !29
  %59 = load i32, i32* %lr_pitch, align 4, !tbaa !22
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %59) #5
  store i32 0, i32* %lnum, align 4, !tbaa !22
  store i32 0, i32* %skip, align 4, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.30
  %60 = load i32, i32* %lnum, align 4, !tbaa !22
  %61 = load i32, i32* %height, align 4, !tbaa !22
  %cmp33 = icmp slt i32 %60, %61
  br i1 %cmp33, label %while.body, label %while.end.166

while.body:                                       ; preds = %while.cond
  %62 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %72 = load i32, i32* %lnum, align 4, !tbaa !22
  %73 = load i8*, i8** %in, align 8, !tbaa !1
  %74 = load i32, i32* %chunk_size, align 4, !tbaa !22
  %call34 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %71, i32 %72, i8* %73, i32 %74) #5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %while.body
  %75 = load i32, i32* %height, align 4, !tbaa !22
  %76 = load i32, i32* %lnum, align 4, !tbaa !22
  %sub = sub nsw i32 %75, %76
  store i32 %sub, i32* %num_lines, align 4, !tbaa !22
  %77 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %cmp38 = icmp sgt i32 %sub, %77
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %78 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  store i32 %78, i32* %num_lines, align 4, !tbaa !22
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  %79 = load i32, i32* %line_size, align 4, !tbaa !22
  %80 = load i32, i32* %num_lines, align 4, !tbaa !22
  %mul41 = mul nsw i32 %79, %80
  store i32 %mul41, i32* %size, align 4, !tbaa !22
  %81 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %82 to i32
  %cmp42 = icmp eq i32 %conv, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.40
  %83 = load i8*, i8** %in, align 8, !tbaa !1
  %84 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i32, i32* %size, align 4, !tbaa !22
  %sub44 = sub nsw i32 %85, 1
  %conv45 = sext i32 %sub44 to i64
  %call46 = call i32 @memcmp(i8* %83, i8* %add.ptr, i64 %conv45) #6
  %tobool = icmp ne i32 %call46, 0
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true
  %86 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %87 = load i32, i32* %lnum, align 4, !tbaa !22
  %add = add nsw i32 %87, %86
  store i32 %add, i32* %lnum, align 4, !tbaa !22
  %88 = load i32, i32* %skip, align 4, !tbaa !22
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %skip, align 4, !tbaa !22
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %land.lhs.true, %if.end.40
  %89 = load i32, i32* %num_lines, align 4, !tbaa !22
  %90 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %cmp49 = icmp slt i32 %89, %90
  br i1 %cmp49, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %if.end.48
  %91 = load i32, i32* %line_size, align 4, !tbaa !22
  %92 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %93 = load i32, i32* %num_lines, align 4, !tbaa !22
  %sub52 = sub nsw i32 %92, %93
  %mul53 = mul nsw i32 %91, %sub52
  store i32 %mul53, i32* %size, align 4, !tbaa !22
  %94 = load i8*, i8** %in, align 8, !tbaa !1
  %95 = load i32, i32* %line_size, align 4, !tbaa !22
  %96 = load i32, i32* %num_lines, align 4, !tbaa !22
  %mul54 = mul nsw i32 %95, %96
  %idx.ext = sext i32 %mul54 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  %97 = load i32, i32* %size, align 4, !tbaa !22
  %conv56 = sext i32 %97 to i64
  %call57 = call i8* @memset(i8* %add.ptr55, i32 0, i64 %conv56) #7
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.51, %if.end.48
  %98 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %99 = load i32, i32* %lnum, align 4, !tbaa !22
  %add59 = add nsw i32 %99, %98
  store i32 %add59, i32* %lnum, align 4, !tbaa !22
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.63, %if.end.58
  %100 = load i32, i32* %skip, align 4, !tbaa !22
  %cmp61 = icmp sgt i32 %100, 72
  br i1 %cmp61, label %while.body.63, label %while.end

while.body.63:                                    ; preds = %while.cond.60
  %101 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file64 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %101, i32 0, i32 52
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %file64, align 8, !tbaa !29
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 88) #5
  %103 = load i32, i32* %skip, align 4, !tbaa !22
  %sub66 = sub nsw i32 %103, 72
  store i32 %sub66, i32* %skip, align 4, !tbaa !22
  br label %while.cond.60

while.end:                                        ; preds = %while.cond.60
  %104 = load i32, i32* %skip, align 4, !tbaa !22
  %cmp67 = icmp sgt i32 %104, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %while.end
  %105 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file70 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %105, i32 0, i32 52
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %file70, align 8, !tbaa !29
  %107 = load i32, i32* %skip, align 4, !tbaa !22
  %add71 = add nsw i32 16, %107
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %add71) #5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %while.end
  store i32 0, i32* %y, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end.73
  %108 = load i32, i32* %y, align 4, !tbaa !22
  %109 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %cmp74 = icmp slt i32 %108, %109
  br i1 %cmp74, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %110 = load i8*, i8** %in, align 8, !tbaa !1
  %111 = load i32, i32* %line_size, align 4, !tbaa !22
  %mul76 = mul nsw i32 %111, 8
  %112 = load i32, i32* %y, align 4, !tbaa !22
  %mul77 = mul nsw i32 %mul76, %112
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %110, i64 %idx.ext78
  store i8* %add.ptr79, i8** %inp, align 8, !tbaa !1
  %113 = load i8*, i8** %out, align 8, !tbaa !1
  %114 = load i32, i32* %y, align 4, !tbaa !22
  %idx.ext80 = sext i32 %114 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %113, i64 %idx.ext80
  store i8* %add.ptr81, i8** %outp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !22
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc, %for.body
  %115 = load i32, i32* %x, align 4, !tbaa !22
  %116 = load i32, i32* %line_size, align 4, !tbaa !22
  %cmp83 = icmp slt i32 %115, %116
  br i1 %cmp83, label %for.body.85, label %for.end

for.body.85:                                      ; preds = %for.cond.82
  %117 = load i8*, i8** %inp, align 8, !tbaa !1
  %118 = load i32, i32* %line_size, align 4, !tbaa !22
  %119 = load i8*, i8** %outp, align 8, !tbaa !1
  %120 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %call86 = call i32 @pr201_transpose_8x8(i8* %117, i32 %118, i8* %119, i32 %120) #5
  %121 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %122 = load i32, i32* %bits_per_column, align 4, !tbaa !22
  %123 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext87 = sext i32 %122 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %123, i64 %idx.ext87
  store i8* %add.ptr88, i8** %outp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.85
  %124 = load i32, i32* %x, align 4, !tbaa !22
  %inc89 = add nsw i32 %124, 1
  store i32 %inc89, i32* %x, align 4, !tbaa !22
  br label %for.cond.82

for.end:                                          ; preds = %for.cond.82
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end
  %125 = load i32, i32* %y, align 4, !tbaa !22
  %inc91 = add nsw i32 %125, 1
  store i32 %inc91, i32* %y, align 4, !tbaa !22
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %126 = load i8*, i8** %out, align 8, !tbaa !1
  %127 = load i32, i32* %chunk_size, align 4, !tbaa !22
  %idx.ext93 = sext i32 %127 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %126, i64 %idx.ext93
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr94, i64 -1
  store i8* %add.ptr95, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.96

while.cond.96:                                    ; preds = %if.end.102, %for.end.92
  %128 = load i8*, i8** %out_end, align 8, !tbaa !1
  %129 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp97 = icmp uge i8* %128, %129
  br i1 %cmp97, label %while.body.99, label %while.end.104

while.body.99:                                    ; preds = %while.cond.96
  %130 = load i8*, i8** %out_end, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !30
  %tobool100 = icmp ne i8 %131, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %while.body.99
  br label %while.end.104

if.end.102:                                       ; preds = %while.body.99
  %132 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %incdec.ptr103, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.96

while.end.104:                                    ; preds = %if.then.101, %while.cond.96
  %133 = load i8*, i8** %out_end, align 8, !tbaa !1
  %134 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %134 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add105 = add nsw i64 %sub.ptr.sub, 1
  %conv106 = trunc i64 %add105 to i32
  store i32 %conv106, i32* %size, align 4, !tbaa !22
  %135 = load i32, i32* %size, align 4, !tbaa !22
  %136 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %rem = srem i32 %135, %136
  store i32 %rem, i32* %mod, align 4, !tbaa !22
  %cmp107 = icmp ne i32 %rem, 0
  br i1 %cmp107, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %while.end.104
  %137 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %138 = load i32, i32* %mod, align 4, !tbaa !22
  %sub110 = sub nsw i32 %137, %138
  %139 = load i8*, i8** %out_end, align 8, !tbaa !1
  %idx.ext111 = sext i32 %sub110 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %139, i64 %idx.ext111
  store i8* %add.ptr112, i8** %out_end, align 8, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %while.end.104
  %140 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %140, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.114

while.cond.114:                                   ; preds = %if.end.120, %if.end.113
  %141 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %142 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp115 = icmp ule i8* %141, %142
  br i1 %cmp115, label %while.body.117, label %while.end.122

while.body.117:                                   ; preds = %while.cond.114
  %143 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %144 = load i8, i8* %143, align 1, !tbaa !30
  %tobool118 = icmp ne i8 %144, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %while.body.117
  br label %while.end.122

if.end.120:                                       ; preds = %while.body.117
  %145 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr121, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.114

while.end.122:                                    ; preds = %if.then.119, %while.cond.114
  %146 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %147 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast123 = ptrtoint i8* %146 to i64
  %sub.ptr.rhs.cast124 = ptrtoint i8* %147 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %148 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %conv126 = sext i32 %148 to i64
  %rem127 = srem i64 %sub.ptr.sub125, %conv126
  %149 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %idx.neg = sub i64 0, %rem127
  %add.ptr128 = getelementptr inbounds i8, i8* %149, i64 %idx.neg
  store i8* %add.ptr128, i8** %out_beg, align 8, !tbaa !1
  %150 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file129 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %150, i32 0, i32 52
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %file129, align 8, !tbaa !29
  %152 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %153 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast130 = ptrtoint i8* %152 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %153 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %154 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %conv133 = sext i32 %154 to i64
  %div134 = sdiv i64 %sub.ptr.sub132, %conv133
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 %div134) #5
  %155 = load i8*, i8** %out_end, align 8, !tbaa !1
  %156 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast136 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast137 = ptrtoint i8* %156 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %add139 = add nsw i64 %sub.ptr.sub138, 1
  %conv140 = trunc i64 %add139 to i32
  store i32 %conv140, i32* %size, align 4, !tbaa !22
  %157 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname141 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %157, i32 0, i32 2
  %158 = load i8*, i8** %dname141, align 8, !tbaa !5
  %call142 = call i32 @check_mode(i8* %158) #5
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.else

if.then.145:                                      ; preds = %while.end.122
  %159 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file146 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %159, i32 0, i32 52
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %file146, align 8, !tbaa !29
  %161 = load i32, i32* %size, align 4, !tbaa !22
  %162 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %div147 = sdiv i32 %161, %162
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %div147) #5
  br label %if.end.152

if.else:                                          ; preds = %while.end.122
  %163 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file149 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %163, i32 0, i32 52
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %file149, align 8, !tbaa !29
  %165 = load i32, i32* %size, align 4, !tbaa !22
  %166 = load i32, i32* %bytes_per_column, align 4, !tbaa !22
  %div150 = sdiv i32 %165, %166
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %div150) #5
  br label %if.end.152

if.end.152:                                       ; preds = %if.else, %if.then.145
  %167 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %168 = load i32, i32* %size, align 4, !tbaa !22
  %conv153 = sext i32 %168 to i64
  %169 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file154 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %169, i32 0, i32 52
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %file154, align 8, !tbaa !29
  %call155 = call i64 @fwrite(i8* %167, i64 %conv153, i64 1, %struct._IO_FILE* %170) #5
  %171 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file156 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %171, i32 0, i32 52
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %file156, align 8, !tbaa !29
  %call157 = call i32 @fputc(i32 13, %struct._IO_FILE* %172) #5
  store i32 1, i32* %skip, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.152, %if.then.47, %if.then.36
  %173 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %while.end.166
    i32 3, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.166:                                    ; preds = %cleanup, %while.cond
  %182 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file167 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %182, i32 0, i32 52
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %file167, align 8, !tbaa !29
  %call168 = call i32 @fputc(i32 12, %struct._IO_FILE* %183) #5
  %184 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file169 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %184, i32 0, i32 52
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %file169, align 8, !tbaa !29
  %call170 = call i32 @fflush(%struct._IO_FILE* %185) #5
  %186 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory171 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %186, i32 0, i32 3
  %187 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory171, align 8, !tbaa !24
  %non_gc_memory172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %187, i32 0, i32 3
  %188 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory172, align 8, !tbaa !25
  %non_gc_memory173 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %188, i32 0, i32 3
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory173, align 8, !tbaa !25
  %procs174 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %189, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs174, i32 0, i32 2
  %190 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %191 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory175 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %191, i32 0, i32 3
  %192 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory175, align 8, !tbaa !24
  %non_gc_memory176 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %192, i32 0, i32 3
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory176, align 8, !tbaa !25
  %non_gc_memory177 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %193, i32 0, i32 3
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory177, align 8, !tbaa !25
  %195 = load i8*, i8** %out, align 8, !tbaa !1
  call void %190(%struct.gs_memory_s* %194, i8* %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %196 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !24
  %non_gc_memory179 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory179, align 8, !tbaa !25
  %non_gc_memory180 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory180, align 8, !tbaa !25
  %procs181 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 1
  %free_object182 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs181, i32 0, i32 2
  %200 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object182, align 8, !tbaa !31
  %201 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory183 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory183, align 8, !tbaa !24
  %non_gc_memory184 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %202, i32 0, i32 3
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory184, align 8, !tbaa !25
  %non_gc_memory185 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %203, i32 0, i32 3
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory185, align 8, !tbaa !25
  %205 = load i8*, i8** %in, align 8, !tbaa !1
  call void %200(%struct.gs_memory_s* %204, i8* %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.186

cleanup.186:                                      ; preds = %while.end.166, %if.then
  %206 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %207 = bitcast i32* %lr_pitch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #2
  %208 = bitcast i32* %head_pins to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #2
  %211 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #2
  %212 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #2
  %213 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  %216 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #2
  %217 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #2
  %218 = load i32, i32* %retval
  ret i32 %218

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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_mode(i8* %modename) #1 {
entry:
  %retval = alloca i32, align 4
  %modename.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__s1_len39 = alloca i64, align 8
  %__s2_len41 = alloca i64, align 8
  %tmp42 = alloca i32, align 4
  %__s149 = alloca i8*, align 8
  %__result51 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %__s1_len98 = alloca i64, align 8
  %__s2_len100 = alloca i64, align 8
  %tmp101 = alloca i32, align 4
  %__s1108 = alloca i8*, align 8
  %__result110 = alloca i32, align 4
  %tmp148 = alloca i32, align 4
  store i8* %modename, i8** %modename.addr, align 8, !tbaa !1
  %0 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  store i64 %call, i64* %__s2_len, align 8, !tbaa !32
  %2 = load i64, i64* %__s2_len, align 8, !tbaa !32
  %cmp = icmp ult i64 %2, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  store i8* %4, i8** %__s1, align 8, !tbaa !1
  %5 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %7 to i32
  %8 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !30
  %conv3 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %__result, align 4, !tbaa !22
  %9 = load i64, i64* %__s2_len, align 8, !tbaa !32
  %cmp4 = icmp ugt i64 %9, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.34

land.lhs.true.6:                                  ; preds = %cond.true
  %10 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.6
  %11 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx9, align 1, !tbaa !30
  %conv10 = zext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !30
  %conv11 = zext i8 %13 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, i32* %__result, align 4, !tbaa !22
  %14 = load i64, i64* %__s2_len, align 8, !tbaa !32
  %cmp13 = icmp ugt i64 %14, 1
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %if.then
  %15 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %land.lhs.true.15
  %16 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx19, align 1, !tbaa !30
  %conv20 = zext i8 %17 to i32
  %18 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !30
  %conv21 = zext i8 %18 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %__result, align 4, !tbaa !22
  %19 = load i64, i64* %__s2_len, align 8, !tbaa !32
  %cmp23 = icmp ugt i64 %19, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.18
  %20 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %21 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i64 3
  %22 = load i8, i8* %arrayidx29, align 1, !tbaa !30
  %conv30 = zext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !30
  %conv31 = zext i8 %23 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.15, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.6, %cond.true
  %24 = load i32, i32* %__result, align 4, !tbaa !22
  store i32 %24, i32* %tmp35, !tbaa !22
  %25 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %tmp35, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %28 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  %call36 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.34
  %cond = phi i32 [ %27, %if.end.34 ], [ %call36, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !22
  %29 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %tmp, !tbaa !22
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %32 = bitcast i64* %__s1_len39 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = bitcast i64* %__s2_len41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.43, label %cond.false.90

land.lhs.true.43:                                 ; preds = %if.else
  %call44 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  store i64 %call44, i64* %__s2_len41, align 8, !tbaa !32
  %34 = load i64, i64* %__s2_len41, align 8, !tbaa !32
  %cmp45 = icmp ult i64 %34, 4
  br i1 %cmp45, label %cond.true.47, label %cond.false.90

cond.true.47:                                     ; preds = %land.lhs.true.43
  %35 = bitcast i8** %__s149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  store i8* %36, i8** %__s149, align 8, !tbaa !1
  %37 = bitcast i32* %__result51 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i8*, i8** %__s149, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx52, align 1, !tbaa !30
  %conv53 = zext i8 %39 to i32
  %40 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !30
  %conv54 = zext i8 %40 to i32
  %sub55 = sub nsw i32 %conv53, %conv54
  store i32 %sub55, i32* %__result51, align 4, !tbaa !22
  %41 = load i64, i64* %__s2_len41, align 8, !tbaa !32
  %cmp56 = icmp ugt i64 %41, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.88

land.lhs.true.58:                                 ; preds = %cond.true.47
  %42 = load i32, i32* %__result51, align 4, !tbaa !22
  %cmp59 = icmp eq i32 %42, 0
  br i1 %cmp59, label %if.then.61, label %if.end.88

if.then.61:                                       ; preds = %land.lhs.true.58
  %43 = load i8*, i8** %__s149, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx62, align 1, !tbaa !30
  %conv63 = zext i8 %44 to i32
  %45 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !30
  %conv64 = zext i8 %45 to i32
  %sub65 = sub nsw i32 %conv63, %conv64
  store i32 %sub65, i32* %__result51, align 4, !tbaa !22
  %46 = load i64, i64* %__s2_len41, align 8, !tbaa !32
  %cmp66 = icmp ugt i64 %46, 1
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.87

land.lhs.true.68:                                 ; preds = %if.then.61
  %47 = load i32, i32* %__result51, align 4, !tbaa !22
  %cmp69 = icmp eq i32 %47, 0
  br i1 %cmp69, label %if.then.71, label %if.end.87

if.then.71:                                       ; preds = %land.lhs.true.68
  %48 = load i8*, i8** %__s149, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx72, align 1, !tbaa !30
  %conv73 = zext i8 %49 to i32
  %50 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !30
  %conv74 = zext i8 %50 to i32
  %sub75 = sub nsw i32 %conv73, %conv74
  store i32 %sub75, i32* %__result51, align 4, !tbaa !22
  %51 = load i64, i64* %__s2_len41, align 8, !tbaa !32
  %cmp76 = icmp ugt i64 %51, 2
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.86

land.lhs.true.78:                                 ; preds = %if.then.71
  %52 = load i32, i32* %__result51, align 4, !tbaa !22
  %cmp79 = icmp eq i32 %52, 0
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %land.lhs.true.78
  %53 = load i8*, i8** %__s149, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %53, i64 3
  %54 = load i8, i8* %arrayidx82, align 1, !tbaa !30
  %conv83 = zext i8 %54 to i32
  %55 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !30
  %conv84 = zext i8 %55 to i32
  %sub85 = sub nsw i32 %conv83, %conv84
  store i32 %sub85, i32* %__result51, align 4, !tbaa !22
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %land.lhs.true.78, %if.then.71
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.68, %if.then.61
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.58, %cond.true.47
  %56 = load i32, i32* %__result51, align 4, !tbaa !22
  store i32 %56, i32* %tmp89, !tbaa !22
  %57 = bitcast i32* %__result51 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i8** %__s149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %tmp89, !tbaa !22
  br label %cond.end.92

cond.false.90:                                    ; preds = %land.lhs.true.43, %if.else
  %60 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  %call91 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %if.end.88
  %cond93 = phi i32 [ %59, %if.end.88 ], [ %call91, %cond.false.90 ]
  store i32 %cond93, i32* %tmp42, !tbaa !22
  %61 = bitcast i64* %__s2_len41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i64* %__s1_len39 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %tmp42, !tbaa !22
  %tobool94 = icmp ne i32 %63, 0
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %cond.end.92
  store i32 1, i32* %retval
  br label %return

if.else.96:                                       ; preds = %cond.end.92
  %64 = bitcast i64* %__s1_len98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i64* %__s2_len100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.102, label %cond.false.149

land.lhs.true.102:                                ; preds = %if.else.96
  %call103 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #6
  store i64 %call103, i64* %__s2_len100, align 8, !tbaa !32
  %66 = load i64, i64* %__s2_len100, align 8, !tbaa !32
  %cmp104 = icmp ult i64 %66, 4
  br i1 %cmp104, label %cond.true.106, label %cond.false.149

cond.true.106:                                    ; preds = %land.lhs.true.102
  %67 = bitcast i8** %__s1108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  store i8* %68, i8** %__s1108, align 8, !tbaa !1
  %69 = bitcast i32* %__result110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx111, align 1, !tbaa !30
  %conv112 = zext i8 %71 to i32
  %72 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !30
  %conv113 = zext i8 %72 to i32
  %sub114 = sub nsw i32 %conv112, %conv113
  store i32 %sub114, i32* %__result110, align 4, !tbaa !22
  %73 = load i64, i64* %__s2_len100, align 8, !tbaa !32
  %cmp115 = icmp ugt i64 %73, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.147

land.lhs.true.117:                                ; preds = %cond.true.106
  %74 = load i32, i32* %__result110, align 4, !tbaa !22
  %cmp118 = icmp eq i32 %74, 0
  br i1 %cmp118, label %if.then.120, label %if.end.147

if.then.120:                                      ; preds = %land.lhs.true.117
  %75 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx121, align 1, !tbaa !30
  %conv122 = zext i8 %76 to i32
  %77 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !30
  %conv123 = zext i8 %77 to i32
  %sub124 = sub nsw i32 %conv122, %conv123
  store i32 %sub124, i32* %__result110, align 4, !tbaa !22
  %78 = load i64, i64* %__s2_len100, align 8, !tbaa !32
  %cmp125 = icmp ugt i64 %78, 1
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.146

land.lhs.true.127:                                ; preds = %if.then.120
  %79 = load i32, i32* %__result110, align 4, !tbaa !22
  %cmp128 = icmp eq i32 %79, 0
  br i1 %cmp128, label %if.then.130, label %if.end.146

if.then.130:                                      ; preds = %land.lhs.true.127
  %80 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx131, align 1, !tbaa !30
  %conv132 = zext i8 %81 to i32
  %82 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !30
  %conv133 = zext i8 %82 to i32
  %sub134 = sub nsw i32 %conv132, %conv133
  store i32 %sub134, i32* %__result110, align 4, !tbaa !22
  %83 = load i64, i64* %__s2_len100, align 8, !tbaa !32
  %cmp135 = icmp ugt i64 %83, 2
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.145

land.lhs.true.137:                                ; preds = %if.then.130
  %84 = load i32, i32* %__result110, align 4, !tbaa !22
  %cmp138 = icmp eq i32 %84, 0
  br i1 %cmp138, label %if.then.140, label %if.end.145

if.then.140:                                      ; preds = %land.lhs.true.137
  %85 = load i8*, i8** %__s1108, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %85, i64 3
  %86 = load i8, i8* %arrayidx141, align 1, !tbaa !30
  %conv142 = zext i8 %86 to i32
  %87 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i64 3), align 1, !tbaa !30
  %conv143 = zext i8 %87 to i32
  %sub144 = sub nsw i32 %conv142, %conv143
  store i32 %sub144, i32* %__result110, align 4, !tbaa !22
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.140, %land.lhs.true.137, %if.then.130
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %land.lhs.true.127, %if.then.120
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.117, %cond.true.106
  %88 = load i32, i32* %__result110, align 4, !tbaa !22
  store i32 %88, i32* %tmp148, !tbaa !22
  %89 = bitcast i32* %__result110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i8** %__s1108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = load i32, i32* %tmp148, !tbaa !22
  br label %cond.end.151

cond.false.149:                                   ; preds = %land.lhs.true.102, %if.else.96
  %92 = load i8*, i8** %modename.addr, align 8, !tbaa !1
  %call150 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %if.end.147
  %cond152 = phi i32 [ %91, %if.end.147 ], [ %call150, %cond.false.149 ]
  store i32 %cond152, i32* %tmp101, !tbaa !22
  %93 = bitcast i64* %__s2_len100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i64* %__s1_len98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = load i32, i32* %tmp101, !tbaa !22
  %tobool153 = icmp ne i32 %95, 0
  br i1 %tobool153, label %if.else.155, label %if.then.154

if.then.154:                                      ; preds = %cond.end.151
  store i32 2, i32* %retval
  br label %return

if.else.155:                                      ; preds = %cond.end.151
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.else.155, %if.then.154, %if.then.95, %if.then.37
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @pr201_transpose_8x8(i8* %src, i32 %src_step, i8* %dst, i32 %dst_step) #1 {
entry:
  %src.addr = alloca i8*, align 8
  %src_step.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_step.addr = alloca i32, align 4
  %mask = alloca i8, align 1
  %s = alloca i8, align 1
  %d0 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %d2 = alloca i8, align 1
  %d3 = alloca i8, align 1
  %d4 = alloca i8, align 1
  %d5 = alloca i8, align 1
  %d6 = alloca i8, align 1
  %d7 = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %src_step, i32* %src_step.addr, align 4, !tbaa !22
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i32 %dst_step, i32* %dst_step.addr, align 4, !tbaa !22
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  call void @llvm.lifetime.start(i64 1, i8* %s) #2
  call void @llvm.lifetime.start(i64 1, i8* %d0) #2
  call void @llvm.lifetime.start(i64 1, i8* %d1) #2
  call void @llvm.lifetime.start(i64 1, i8* %d2) #2
  call void @llvm.lifetime.start(i64 1, i8* %d3) #2
  call void @llvm.lifetime.start(i64 1, i8* %d4) #2
  call void @llvm.lifetime.start(i64 1, i8* %d5) #2
  call void @llvm.lifetime.start(i64 1, i8* %d6) #2
  call void @llvm.lifetime.start(i64 1, i8* %d7) #2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i8 0, i8* %d7, align 1, !tbaa !30
  store i8 0, i8* %d6, align 1, !tbaa !30
  store i8 0, i8* %d5, align 1, !tbaa !30
  store i8 0, i8* %d4, align 1, !tbaa !30
  store i8 0, i8* %d3, align 1, !tbaa !30
  store i8 0, i8* %d2, align 1, !tbaa !30
  store i8 0, i8* %d1, align 1, !tbaa !30
  store i8 0, i8* %d0, align 1, !tbaa !30
  store i32 0, i32* %i, align 4, !tbaa !22
  store i8 1, i8* %mask, align 1, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !30
  store i8 %3, i8* %s, align 1, !tbaa !30
  %4 = load i8, i8* %s, align 1, !tbaa !30
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8, i8* %mask, align 1, !tbaa !30
  %conv1 = zext i8 %5 to i32
  %6 = load i8, i8* %d0, align 1, !tbaa !30
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv1
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %d0, align 1, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8, i8* %s, align 1, !tbaa !30
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 64
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %8 = load i8, i8* %mask, align 1, !tbaa !30
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %d1, align 1, !tbaa !30
  %conv9 = zext i8 %9 to i32
  %or10 = or i32 %conv9, %conv8
  %conv11 = trunc i32 %or10 to i8
  store i8 %conv11, i8* %d1, align 1, !tbaa !30
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %10 = load i8, i8* %s, align 1, !tbaa !30
  %conv13 = zext i8 %10 to i32
  %and14 = and i32 %conv13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %11 = load i8, i8* %mask, align 1, !tbaa !30
  %conv17 = zext i8 %11 to i32
  %12 = load i8, i8* %d2, align 1, !tbaa !30
  %conv18 = zext i8 %12 to i32
  %or19 = or i32 %conv18, %conv17
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %d2, align 1, !tbaa !30
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.12
  %13 = load i8, i8* %s, align 1, !tbaa !30
  %conv22 = zext i8 %13 to i32
  %and23 = and i32 %conv22, 16
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %14 = load i8, i8* %mask, align 1, !tbaa !30
  %conv26 = zext i8 %14 to i32
  %15 = load i8, i8* %d3, align 1, !tbaa !30
  %conv27 = zext i8 %15 to i32
  %or28 = or i32 %conv27, %conv26
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %d3, align 1, !tbaa !30
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.21
  %16 = load i8, i8* %s, align 1, !tbaa !30
  %conv31 = zext i8 %16 to i32
  %and32 = and i32 %conv31, 8
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.30
  %17 = load i8, i8* %mask, align 1, !tbaa !30
  %conv35 = zext i8 %17 to i32
  %18 = load i8, i8* %d4, align 1, !tbaa !30
  %conv36 = zext i8 %18 to i32
  %or37 = or i32 %conv36, %conv35
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, i8* %d4, align 1, !tbaa !30
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.30
  %19 = load i8, i8* %s, align 1, !tbaa !30
  %conv40 = zext i8 %19 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.39
  %20 = load i8, i8* %mask, align 1, !tbaa !30
  %conv44 = zext i8 %20 to i32
  %21 = load i8, i8* %d5, align 1, !tbaa !30
  %conv45 = zext i8 %21 to i32
  %or46 = or i32 %conv45, %conv44
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %d5, align 1, !tbaa !30
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.39
  %22 = load i8, i8* %s, align 1, !tbaa !30
  %conv49 = zext i8 %22 to i32
  %and50 = and i32 %conv49, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.end.48
  %23 = load i8, i8* %mask, align 1, !tbaa !30
  %conv53 = zext i8 %23 to i32
  %24 = load i8, i8* %d6, align 1, !tbaa !30
  %conv54 = zext i8 %24 to i32
  %or55 = or i32 %conv54, %conv53
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, i8* %d6, align 1, !tbaa !30
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.end.48
  %25 = load i8, i8* %s, align 1, !tbaa !30
  %conv58 = zext i8 %25 to i32
  %and59 = and i32 %conv58, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.57
  %26 = load i8, i8* %mask, align 1, !tbaa !30
  %conv62 = zext i8 %26 to i32
  %27 = load i8, i8* %d7, align 1, !tbaa !30
  %conv63 = zext i8 %27 to i32
  %or64 = or i32 %conv63, %conv62
  %conv65 = trunc i32 %or64 to i8
  store i8 %conv65, i8* %d7, align 1, !tbaa !30
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.57
  %28 = load i32, i32* %src_step.addr, align 4, !tbaa !22
  %29 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %30 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  %31 = load i8, i8* %mask, align 1, !tbaa !30
  %conv67 = zext i8 %31 to i32
  %shl = shl i32 %conv67, 1
  %conv68 = trunc i32 %shl to i8
  store i8 %conv68, i8* %mask, align 1, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i8, i8* %d0, align 1, !tbaa !30
  %33 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  store i8 %32, i8* %33, align 1, !tbaa !30
  %34 = load i8, i8* %d1, align 1, !tbaa !30
  %35 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %36 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext69 = sext i32 %35 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %36, i64 %idx.ext69
  store i8* %add.ptr70, i8** %dst.addr, align 8, !tbaa !1
  store i8 %34, i8* %add.ptr70, align 1, !tbaa !30
  %37 = load i8, i8* %d2, align 1, !tbaa !30
  %38 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %39 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext71 = sext i32 %38 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %39, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dst.addr, align 8, !tbaa !1
  store i8 %37, i8* %add.ptr72, align 1, !tbaa !30
  %40 = load i8, i8* %d3, align 1, !tbaa !30
  %41 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %42 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext73 = sext i32 %41 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %42, i64 %idx.ext73
  store i8* %add.ptr74, i8** %dst.addr, align 8, !tbaa !1
  store i8 %40, i8* %add.ptr74, align 1, !tbaa !30
  %43 = load i8, i8* %d4, align 1, !tbaa !30
  %44 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %45 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext75 = sext i32 %44 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %45, i64 %idx.ext75
  store i8* %add.ptr76, i8** %dst.addr, align 8, !tbaa !1
  store i8 %43, i8* %add.ptr76, align 1, !tbaa !30
  %46 = load i8, i8* %d5, align 1, !tbaa !30
  %47 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %48 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext77 = sext i32 %47 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %48, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dst.addr, align 8, !tbaa !1
  store i8 %46, i8* %add.ptr78, align 1, !tbaa !30
  %49 = load i8, i8* %d6, align 1, !tbaa !30
  %50 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %51 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext79 = sext i32 %50 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %51, i64 %idx.ext79
  store i8* %add.ptr80, i8** %dst.addr, align 8, !tbaa !1
  store i8 %49, i8* %add.ptr80, align 1, !tbaa !30
  %52 = load i8, i8* %d7, align 1, !tbaa !30
  %53 = load i32, i32* %dst_step.addr, align 4, !tbaa !22
  %54 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext81 = sext i32 %53 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %54, i64 %idx.ext81
  store i8* %add.ptr82, i8** %dst.addr, align 8, !tbaa !1
  store i8 %52, i8* %add.ptr82, align 1, !tbaa !30
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  call void @llvm.lifetime.end(i64 1, i8* %d7) #2
  call void @llvm.lifetime.end(i64 1, i8* %d6) #2
  call void @llvm.lifetime.end(i64 1, i8* %d5) #2
  call void @llvm.lifetime.end(i64 1, i8* %d4) #2
  call void @llvm.lifetime.end(i64 1, i8* %d3) #2
  call void @llvm.lifetime.end(i64 1, i8* %d2) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1) #2
  call void @llvm.lifetime.end(i64 1, i8* %d0) #2
  call void @llvm.lifetime.end(i64 1, i8* %s) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  ret i32 0
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fflush(%struct._IO_FILE*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

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
!5 = !{!6, !2, i64 16}
!6 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
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
!22 = !{!7, !7, i64 0}
!23 = !{!6, !7, i64 836}
!24 = !{!6, !2, i64 24}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!6, !2, i64 17176}
!30 = !{!3, !3, i64 0}
!31 = !{!26, !2, i64 24}
!32 = !{!9, !9, i64 0}
