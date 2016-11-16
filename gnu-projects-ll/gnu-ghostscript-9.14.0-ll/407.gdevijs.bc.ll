; ModuleID = './gdevijs.bc'
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
%struct._IjsClientCtx = type opaque
%struct.gx_device_ijs_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [4096 x i8], i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, %struct._IjsClientCtx*, i32, i32, i32, i32, i32, i32, i8*, %struct.gx_device_procs_s }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@gsijs_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gsijs_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gsijs_output_page, i32 (%struct.gx_device_s*)* @gsijs_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gsijs_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gsijs_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gsijs_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"ijs\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_ijs_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, [4096 x i8], i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, %struct._IjsClientCtx*, i32, i32, i32, i32, i32, i32, i8*, %struct.gx_device_procs_s } { i32 23272, %struct.gx_device_procs_s* @gsijs_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 0, i32 255, i32 1, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 629, i32 814, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.400000e+01, float 7.400000e+01], [2 x float] [float 7.400000e+01, float 7.400000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, [4096 x i8] zeroinitializer, i8* null, i32 0, i32 8, i8* null, i32 0, i8* null, i32 0, i8* null, i32 0, i32 0, i32 0, %struct._IjsClientCtx* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8* null, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ijs server not specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dup() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't start ijs server \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Can't open ijs\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Can't begin ijs job 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"OutputFD\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"DeviceManufacturer\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"DeviceModel\00", align 1
@xmask = internal global [8 x i8] c"\80@ \10\08\04\02\01", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"PS:Duplex\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"PS:Tumble\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ijs: Can't set parameter %s=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Dpi\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%gx%g\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"PaperSize\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"PrintableArea\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"PrintableTopLeft\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"TopLeft\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"KRGB\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"KxRGB\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gsijs_output_page\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"NumChan\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"gsijs_read_string_malloc\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"IjsServer\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"IjsParams\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"IjsUseOutputFD\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gsijs_finish_copydevice.rgb = internal constant [10 x i8] c"DeviceRGB\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"gsijs_finish_copydevice\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

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
define internal i32 @gsijs_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %use_outputfd = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #2
  %5 = bitcast i32* %use_outputfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 -1, i32* %fd, align 4, !tbaa !5
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsServer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 69
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %IjsServer, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call1 = call i8* @gs_program_name() #6
  %call2 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %9, i8* %call1, i64 %call2) #6
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %12, i32 0, i32 38
  %banding_type = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 4
  store i32 1, i32* %banding_type, align 4, !tbaa !20
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %printer_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 44
  %buf_procs = getelementptr inbounds %struct.gx_printer_device_procs_s, %struct.gx_printer_device_procs_s* %printer_procs, i32 0, i32 2
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  store i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gsijs_create_buf_device, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !25
  %14 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsUseOutputFD = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %14, i32 0, i32 68
  %15 = load i32, i32* %IjsUseOutputFD, align 4, !tbaa !26
  store i32 %15, i32* %use_outputfd, align 4, !tbaa !5
  %16 = load i32, i32* %use_outputfd, align 4, !tbaa !5
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %OpenOutputFile = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 47
  store i32 %16, i32* %OpenOutputFile, align 4, !tbaa !27
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @gdev_prn_open(%struct.gx_device_s* %18) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %21 = load i32, i32* %use_outputfd, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end.8
  %22 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %22, i32 0, i32 52
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !28
  %call10 = call i32 @fileno(%struct._IO_FILE* %23) #7
  %call11 = call i32 @dup(i32 %call10) #7
  store i32 %call11, i32* %fd, align 4, !tbaa !5
  %24 = load i32, i32* %fd, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.then.9
  %25 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !29
  %call15 = call i8* @gs_program_name() #6
  %call16 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %26, i8* %call15, i64 %call16) #6
  %27 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !29
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.8
  %29 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsServer21 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %29, i32 0, i32 69
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %IjsServer21, i32 0, i32 0
  %call23 = call %struct._IjsClientCtx* @ijs_invoke_server(i8* %arraydecay22) #6
  %30 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %30, i32 0, i32 81
  store %struct._IjsClientCtx* %call23, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %31 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx24 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %31, i32 0, i32 81
  %32 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx24, align 8, !tbaa !30
  %cmp25 = icmp eq %struct._IjsClientCtx* %32, null
  br i1 %cmp25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.20
  %33 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !29
  %call28 = call i8* @gs_program_name() #6
  %call29 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %34, i8* %call28, i64 %call29) #6
  %35 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !29
  %37 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsServer31 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %37, i32 0, i32 69
  %arraydecay32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %IjsServer31, i32 0, i32 0
  %call33 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay32) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.20
  %38 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx35 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %38, i32 0, i32 81
  %39 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx35, align 8, !tbaa !30
  %call36 = call i32 @ijs_client_get_version(%struct._IjsClientCtx* %39) #6
  %40 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ijs_version = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %40, i32 0, i32 82
  store i32 %call36, i32* %ijs_version, align 4, !tbaa !31
  %41 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx37 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %41, i32 0, i32 81
  %42 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx37, align 8, !tbaa !30
  %call38 = call i32 @ijs_client_open(%struct._IjsClientCtx* %42) #6
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.end.34
  %43 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !29
  %call42 = call i8* @gs_program_name() #6
  %call43 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %44, i8* %call42, i64 %call43) #6
  %45 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !29
  %call45 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end.34
  %47 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx47 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %47, i32 0, i32 81
  %48 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx47, align 8, !tbaa !30
  %call48 = call i32 @ijs_client_begin_job(%struct._IjsClientCtx* %48, i32 0) #6
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.end.46
  %49 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !29
  %call52 = call i8* @gs_program_name() #6
  %call53 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %50, i8* %call52, i64 %call53) #6
  %51 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !29
  %call55 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #6
  %53 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx56 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %53, i32 0, i32 81
  %54 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx56, align 8, !tbaa !30
  %call57 = call i32 @ijs_client_close(%struct._IjsClientCtx* %54) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.46
  %55 = load i32, i32* %use_outputfd, align 4, !tbaa !5
  %tobool59 = icmp ne i32 %55, 0
  br i1 %tobool59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %if.end.58
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %56 = load i32, i32* %fd, align 4, !tbaa !5
  %call62 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %56) #6
  %57 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx63 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %57, i32 0, i32 81
  %58 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx63, align 8, !tbaa !30
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call66 = call i64 @strlen(i8* %arraydecay65) #5
  %conv = trunc i64 %call66 to i32
  %call67 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %58, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay64, i32 %conv) #6
  %59 = load i32, i32* %fd, align 4, !tbaa !5
  %call68 = call i32 @close(i32 %59) #6
  br label %if.end.76

if.else:                                          ; preds = %if.end.58
  %60 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx69 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %60, i32 0, i32 81
  %61 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx69, align 8, !tbaa !30
  %62 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %62, i32 0, i32 45
  %arraydecay70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %63 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %fname71 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %63, i32 0, i32 45
  %arraydecay72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname71, i32 0, i32 0
  %call73 = call i64 @strlen(i8* %arraydecay72) #5
  %conv74 = trunc i64 %call73 to i32
  %call75 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %61, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay70, i32 %conv74) #6
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.60
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp sge i32 %64, 0
  br i1 %cmp77, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %if.end.76
  %65 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %65, i32 0, i32 73
  %66 = load i8*, i8** %DeviceManufacturer, align 8, !tbaa !32
  %tobool79 = icmp ne i8* %66, null
  br i1 %tobool79, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %land.lhs.true
  %67 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx81 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %67, i32 0, i32 81
  %68 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx81, align 8, !tbaa !30
  %69 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer82 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %69, i32 0, i32 73
  %70 = load i8*, i8** %DeviceManufacturer82, align 8, !tbaa !32
  %71 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer83 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %71, i32 0, i32 73
  %72 = load i8*, i8** %DeviceManufacturer83, align 8, !tbaa !32
  %call84 = call i64 @strlen(i8* %72) #5
  %conv85 = trunc i64 %call84 to i32
  %call86 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %68, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %70, i32 %conv85) #6
  store i32 %call86, i32* %code, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.80, %land.lhs.true, %if.end.76
  %73 = load i32, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp sge i32 %73, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.99

land.lhs.true.90:                                 ; preds = %if.end.87
  %74 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %74, i32 0, i32 75
  %75 = load i8*, i8** %DeviceModel, align 8, !tbaa !33
  %tobool91 = icmp ne i8* %75, null
  br i1 %tobool91, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %land.lhs.true.90
  %76 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx93 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %76, i32 0, i32 81
  %77 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx93, align 8, !tbaa !30
  %78 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel94 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %78, i32 0, i32 75
  %79 = load i8*, i8** %DeviceModel94, align 8, !tbaa !33
  %80 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel95 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %80, i32 0, i32 75
  %81 = load i8*, i8** %DeviceModel95, align 8, !tbaa !33
  %call96 = call i64 @strlen(i8* %81) #5
  %conv97 = trunc i64 %call96 to i32
  %call98 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %77, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %79, i32 %conv97) #6
  store i32 %call98, i32* %code, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %land.lhs.true.90, %if.end.87
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp sge i32 %82, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.99
  %83 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call103 = call i32 @gsijs_set_generic_params(%struct.gx_device_ijs_s* %83) #6
  store i32 %call103, i32* %code, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.99
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp105 = icmp sge i32 %84, 0
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.104
  %85 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call108 = call i32 @gsijs_set_resolution(%struct.gx_device_ijs_s* %85) #6
  store i32 %call108, i32* %code, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.104
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp110 = icmp sge i32 %86, 0
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.109
  %87 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call113 = call i32 @gsijs_set_margin_params(%struct.gx_device_ijs_s* %87) #6
  store i32 %call113, i32* %code, align 4, !tbaa !5
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.109
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp115 = icmp sge i32 %88, 0
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %89 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call118 = call i32 @gsijs_set_krgb_mode(%struct.gx_device_ijs_s* %89) #6
  store i32 %call118, i32* %code, align 4, !tbaa !5
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  %90 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.119, %if.then.50, %if.then.40, %if.then.26, %if.then.13, %if.then.7, %if.then
  %91 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %use_outputfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %93) #2
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %pdev = alloca %struct.gx_device_printer_s*, align 8
  %raster = alloca i32, align 4
  %ijs_width = alloca i32, align 4
  %ijs_height = alloca i32, align 4
  %row_bytes = alloca i32, align 4
  %k_row_bytes = alloca i32, align 4
  %n_chan = alloca i32, align 4
  %krgb_mode = alloca i32, align 4
  %k_bits = alloca i32, align 4
  %data = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %code = alloca i32, align 4
  %endcode = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %band_height = alloca i32, align 4
  %actual_data = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %5, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %6 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %8, i32 0) #6
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %9 = bitcast i32* %ijs_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %ijs_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %row_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %k_row_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %k_row_bytes, align 4, !tbaa !5
  %13 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %15 = load i32, i32* %num_components, align 4, !tbaa !34
  store i32 %15, i32* %n_chan, align 4, !tbaa !5
  %16 = bitcast i32* %krgb_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %krgb_mode1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 83
  %18 = load i32, i32* %krgb_mode1, align 4, !tbaa !36
  store i32 %18, i32* %krgb_mode, align 4, !tbaa !5
  %19 = bitcast i32* %k_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_bits2 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %20, i32 0, i32 84
  %21 = load i32, i32* %k_bits2, align 4, !tbaa !37
  store i32 %21, i32* %k_bits, align 4, !tbaa !5
  %22 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %23) #2
  %24 = bitcast double* %xres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %26 = load float, float* %arrayidx, align 4, !tbaa !38
  %conv = fpext float %26 to double
  store double %conv, double* %xres, align 8, !tbaa !40
  %27 = bitcast double* %yres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %HWResolution3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution3, i32 0, i64 1
  %29 = load float, float* %arrayidx4, align 4, !tbaa !38
  %conv5 = fpext float %29 to double
  store double %conv5, double* %yres, align 8, !tbaa !40
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %31 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  store i32 0, i32* %endcode, align 4, !tbaa !5
  %32 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %status, align 4, !tbaa !5
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !43
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !42
  %40 = load i32, i32* %raster, align 4, !tbaa !5
  %call7 = call i8* %37(%struct.gs_memory_s* %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %call7, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %call7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end:                                           ; preds = %entry
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call9 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %41) #6
  store i32 %call9, i32* %ijs_height, align 4, !tbaa !5
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call10 = call i32 @gsijs_raster_width(%struct.gx_device_s* %42) #6
  store i32 %call10, i32* %ijs_width, align 4, !tbaa !5
  %43 = load i32, i32* %ijs_width, align 4, !tbaa !5
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %45 = load i16, i16* %depth, align 2, !tbaa !46
  %conv12 = zext i16 %45 to i32
  %mul = mul nsw i32 %43, %conv12
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %row_bytes, align 4, !tbaa !5
  %46 = load i32, i32* %krgb_mode, align 4, !tbaa !5
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %if.end
  %47 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %49 = bitcast %struct.gx_device_s* %48 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %49, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %50 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %51, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %52 = load i32, i32* %BandHeight, align 4, !tbaa !47
  store i32 %52, i32* %band_height, align 4, !tbaa !5
  %53 = load i32, i32* %ijs_width, align 4, !tbaa !5
  %add14 = add nsw i32 %53, 7
  %shr15 = ashr i32 %add14, 3
  store i32 %shr15, i32* %k_row_bytes, align 4, !tbaa !5
  %54 = load i32, i32* %ijs_width, align 4, !tbaa !5
  %55 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %55, i32 0, i32 86
  store i32 %54, i32* %k_width, align 4, !tbaa !52
  %56 = load i32, i32* %band_height, align 4, !tbaa !5
  %57 = load i32, i32* %k_row_bytes, align 4, !tbaa !5
  %mul16 = mul nsw i32 %56, %57
  %58 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %58, i32 0, i32 87
  store i32 %mul16, i32* %k_band_size, align 4, !tbaa !53
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 3
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !42
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !54
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 10
  %62 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !55
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !42
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !54
  %66 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size21 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %66, i32 0, i32 87
  %67 = load i32, i32* %k_band_size21, align 4, !tbaa !53
  %call22 = call i8* %62(%struct.gs_memory_s* %65, i32 %67, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #6
  %68 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %68, i32 0, i32 88
  store i8* %call22, i8** %k_band, align 8, !tbaa !56
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %69 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.145 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %71 = load i32, i32* %n_chan, align 4, !tbaa !5
  %call29 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %71) #6
  %72 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay30) #6
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %73 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %73, i32 0, i32 72
  %74 = load i32, i32* %BitsPerSample, align 4, !tbaa !57
  %call33 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %74) #6
  %75 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay34) #6
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %76 = load i32, i32* %n_chan, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %76, 4
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  br label %cond.end.51

cond.false:                                       ; preds = %if.end.28
  %77 = load i32, i32* %n_chan, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %77, 3
  br i1 %cmp39, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %cond.false
  %78 = load i32, i32* %krgb_mode, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %78, 0
  br i1 %tobool42, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %cond.true.41
  %79 = load i32, i32* %k_bits, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %79, 1
  %cond = select i1 %cmp44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)
  br label %cond.end

cond.false.46:                                    ; preds = %cond.true.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.43
  %cond47 = phi i8* [ %cond, %cond.true.43 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %cond.false.46 ]
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.false
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.end
  %cond50 = phi i8* [ %cond47, %cond.end ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %cond.false.48 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true
  %cond52 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %cond.true ], [ %cond50, %cond.end.49 ]
  %call53 = call i8* @strcpy(i8* %arraydecay36, i8* %cond52) #7
  %80 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call55 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay54) #6
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %81 = load i32, i32* %ijs_width, align 4, !tbaa !5
  %call57 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %81) #6
  %82 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call59 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay58) #6
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %83 = load i32, i32* %ijs_height, align 4, !tbaa !5
  %call61 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %83) #6
  %84 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call63 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay62) #6
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %85 = load double, double* %xres, align 8, !tbaa !40
  %86 = load double, double* %yres, align 8, !tbaa !40
  %call65 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), double %85, double %86) #6
  %87 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call67 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay66) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.108, %cond.end.51
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %89 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %88, %89
  br i1 %cmp68, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %90 = bitcast i8** %actual_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #2
  %91 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %91, i32 0, i32 81
  %92 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %call70 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %92, i32 14) #6
  %93 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx71 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %93, i32 0, i32 81
  %94 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx71, align 8, !tbaa !30
  %call72 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %94) #6
  store i32 %call72, i32* %status, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %for.body
  %95 = load i32, i32* %y, align 4, !tbaa !5
  %96 = load i32, i32* %ijs_height, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %95, %96
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.73
  %97 = load i32, i32* %krgb_mode, align 4, !tbaa !5
  %tobool77 = icmp ne i32 %97, 0
  br i1 %tobool77, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %for.body.76
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %99 = load i32, i32* %y, align 4, !tbaa !5
  %100 = load i8*, i8** %data, align 8, !tbaa !1
  %call79 = call i32 @gsijs_get_bits(%struct.gx_device_printer_s* %98, i32 %99, i8* %100, i8** %actual_data) #6
  store i32 %call79, i32* %code, align 4, !tbaa !5
  br label %if.end.81

if.else:                                          ; preds = %for.body.76
  %101 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %102 = load i32, i32* %y, align 4, !tbaa !5
  %103 = load i8*, i8** %data, align 8, !tbaa !1
  %call80 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %101, i32 %102, i8* %103, i8** %actual_data) #6
  store i32 %call80, i32* %code, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.78
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %104, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  br label %for.end

if.end.85:                                        ; preds = %if.end.81
  %105 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx86 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %105, i32 0, i32 81
  %106 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx86, align 8, !tbaa !30
  %107 = load i8*, i8** %actual_data, align 8, !tbaa !1
  %108 = load i32, i32* %row_bytes, align 4, !tbaa !5
  %call87 = call i32 @ijs_client_send_data_wait(%struct._IjsClientCtx* %106, i32 0, i8* %107, i32 %108) #6
  store i32 %call87, i32* %status, align 4, !tbaa !5
  %109 = load i32, i32* %status, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %109, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.85
  br label %for.end

if.end.90:                                        ; preds = %if.end.85
  %110 = load i32, i32* %krgb_mode, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %110, 0
  br i1 %tobool91, label %if.then.92, label %if.end.103

if.then.92:                                       ; preds = %if.end.90
  %111 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %112 = load i32, i32* %y, align 4, !tbaa !5
  %call93 = call i32 @gsijs_k_get_bits(%struct.gx_device_printer_s* %111, i32 %112, i8** %actual_data) #6
  store i32 %call93, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %113, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.92
  br label %for.end

if.end.97:                                        ; preds = %if.then.92
  %114 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx98 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %114, i32 0, i32 81
  %115 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx98, align 8, !tbaa !30
  %116 = load i8*, i8** %actual_data, align 8, !tbaa !1
  %117 = load i32, i32* %k_row_bytes, align 4, !tbaa !5
  %call99 = call i32 @ijs_client_send_data_wait(%struct._IjsClientCtx* %115, i32 0, i8* %116, i32 %117) #6
  store i32 %call99, i32* %status, align 4, !tbaa !5
  %118 = load i32, i32* %status, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %118, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  br label %for.end

if.end.102:                                       ; preds = %if.end.97
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.90
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %119 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  br label %for.cond.73

for.end:                                          ; preds = %if.then.101, %if.then.96, %if.then.89, %if.then.84, %for.cond.73
  %120 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx104 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %120, i32 0, i32 81
  %121 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx104, align 8, !tbaa !30
  %call105 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %121, i32 16) #6
  %122 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx106 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %122, i32 0, i32 81
  %123 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx106, align 8, !tbaa !30
  %call107 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %123) #6
  store i32 %call107, i32* %status, align 4, !tbaa !5
  %124 = bitcast i8** %actual_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %inc109 = add nsw i32 %125, 1
  store i32 %inc109, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  %126 = load i32, i32* %krgb_mode, align 4, !tbaa !5
  %tobool111 = icmp ne i32 %126, 0
  br i1 %tobool111, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %for.end.110
  %127 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !42
  %non_gc_memory114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory114, align 8, !tbaa !54
  %procs115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs115, i32 0, i32 2
  %130 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory116, align 8, !tbaa !42
  %non_gc_memory117 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory117, align 8, !tbaa !54
  %134 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band118 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %134, i32 0, i32 88
  %135 = load i8*, i8** %k_band118, align 8, !tbaa !56
  call void %130(%struct.gs_memory_s* %133, i8* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.112, %for.end.110
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !42
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %137, i32 0, i32 1
  %free_object122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 2
  %138 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object122, align 8, !tbaa !58
  %139 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !42
  %141 = load i8*, i8** %data, align 8, !tbaa !1
  call void %138(%struct.gs_memory_s* %140, i8* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #6
  %142 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %142, i32 0, i32 53
  %143 = load i64, i64* %buffer_space, align 8, !tbaa !59
  %144 = inttoptr i64 %143 to %struct.gx_device_printer_s*
  %cmp124 = icmp ne %struct.gx_device_printer_s* %144, null
  br i1 %cmp124, label %land.lhs.true, label %cond.false.129

land.lhs.true:                                    ; preds = %if.end.119
  %145 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %146 = bitcast %struct.gx_device_printer_s* %145 to %struct.gx_device_clist_common_s*
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %146, i32 0, i32 49
  %147 = load i32, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !60
  %tobool126 = icmp ne i32 %147, 0
  br i1 %tobool126, label %cond.false.129, label %cond.true.127

cond.true.127:                                    ; preds = %land.lhs.true
  %148 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev, align 8, !tbaa !1
  %149 = bitcast %struct.gx_device_printer_s* %148 to %struct.gx_device_s*
  %150 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call128 = call i32 @clist_finish_page(%struct.gx_device_s* %149, i32 %150) #6
  br label %cond.end.130

cond.false.129:                                   ; preds = %land.lhs.true, %if.end.119
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.127
  %cond131 = phi i32 [ %call128, %cond.true.127 ], [ 0, %cond.false.129 ]
  store i32 %cond131, i32* %endcode, align 4, !tbaa !5
  %151 = load i32, i32* %endcode, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %151, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %cond.end.130
  %152 = load i32, i32* %endcode, align 4, !tbaa !5
  store i32 %152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.135:                                       ; preds = %cond.end.130
  %153 = load i32, i32* %code, align 4, !tbaa !5
  %cmp136 = icmp slt i32 %153, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.135
  %154 = load i32, i32* %endcode, align 4, !tbaa !5
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.139:                                       ; preds = %if.end.135
  %155 = load i32, i32* %status, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %155, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.143:                                       ; preds = %if.end.139
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %157 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %158 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call144 = call i32 @gx_finish_output_page(%struct.gx_device_s* %156, i32 %157, i32 %158) #6
  store i32 %call144, i32* %code, align 4, !tbaa !5
  %159 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %if.end.143, %if.then.142, %if.then.138, %if.then.134, %cleanup, %if.then
  %160 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast double* %yres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = bitcast double* %xres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %167) #2
  %168 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i32* %k_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %krgb_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %k_row_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %row_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %ijs_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %ijs_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast %struct.gx_device_printer_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = load i32, i32* %retval
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %4, i32 0, i32 81
  %5 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %call = call i32 @ijs_client_end_job(%struct._IjsClientCtx* %5, i32 0) #6
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 81
  %7 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx1, align 8, !tbaa !30
  %call2 = call i32 @ijs_client_close(%struct._IjsClientCtx* %7) #6
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx3 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 81
  %9 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx3, align 8, !tbaa !30
  %call4 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %9, i32 17) #6
  %10 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ctx5 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %10, i32 0, i32 81
  %11 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx5, align 8, !tbaa !30
  %call6 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %11) #6
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_prn_close(%struct.gx_device_s* %12) #6
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 77
  %14 = load i8*, i8** %IjsParams, align 8, !tbaa !61
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !54
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !54
  %22 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams10 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %22, i32 0, i32 77
  %23 = load i8*, i8** %IjsParams10, align 8, !tbaa !61
  call void %18(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %24, i32 0, i32 70
  %25 = load i8*, i8** %ColorSpace, align 8, !tbaa !62
  %tobool11 = icmp ne i8* %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !54
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !58
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !7
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !54
  %33 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace19 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %33, i32 0, i32 70
  %34 = load i8*, i8** %ColorSpace19, align 8, !tbaa !62
  call void %29(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %if.end
  %35 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %35, i32 0, i32 73
  %36 = load i8*, i8** %DeviceManufacturer, align 8, !tbaa !32
  %tobool21 = icmp ne i8* %36, null
  br i1 %tobool21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.end.20
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !7
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !54
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object26 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object26, align 8, !tbaa !58
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !7
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !54
  %44 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer29 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %44, i32 0, i32 73
  %45 = load i8*, i8** %DeviceManufacturer29, align 8, !tbaa !32
  call void %40(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %if.end.20
  %46 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %46, i32 0, i32 75
  %47 = load i8*, i8** %DeviceModel, align 8, !tbaa !33
  %tobool31 = icmp ne i8* %47, null
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.30
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !7
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !54
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object36, align 8, !tbaa !58
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !7
  %non_gc_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory38, align 8, !tbaa !54
  %55 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel39 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %55, i32 0, i32 75
  %56 = load i8*, i8** %DeviceModel39, align 8, !tbaa !33
  call void %51(%struct.gs_memory_s* %54, i8* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.32, %if.end.30
  %57 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams41 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %57, i32 0, i32 77
  store i8* null, i8** %IjsParams41, align 8, !tbaa !61
  %58 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %58, i32 0, i32 78
  store i32 0, i32* %IjsParams_size, align 4, !tbaa !63
  %59 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer42 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %59, i32 0, i32 73
  store i8* null, i8** %DeviceManufacturer42, align 8, !tbaa !32
  %60 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %60, i32 0, i32 74
  store i32 0, i32* %DeviceManufacturer_size, align 4, !tbaa !64
  %61 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel43 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %61, i32 0, i32 75
  store i8* null, i8** %DeviceModel43, align 8, !tbaa !33
  %62 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %62, i32 0, i32 76
  store i32 0, i32* %DeviceModel_size, align 4, !tbaa !65
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  ret i32 %63
}

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %gps = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_string_s* %gps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsServer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 69
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %IjsServer, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !66
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8, !tbaa !66
  %call2 = call i64 @strlen(i8* %9) #5
  %conv = trunc i64 %call2 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !68
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !69
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_string(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %struct.gs_param_string_s* %gps) #6
  store i32 %call3, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %12, i32 0, i32 73
  %13 = load i8*, i8** %DeviceManufacturer, align 8, !tbaa !32
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.6
  %14 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer8 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %14, i32 0, i32 73
  %15 = load i8*, i8** %DeviceManufacturer8, align 8, !tbaa !32
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  store i8* %15, i8** %data9, align 8, !tbaa !66
  %data10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  %16 = load i8*, i8** %data10, align 8, !tbaa !66
  %call11 = call i64 @strlen(i8* %16) #5
  %conv12 = trunc i64 %call11 to i32
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 1
  store i32 %conv12, i32* %size13, align 4, !tbaa !68
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 2
  store i32 0, i32* %persistent14, align 4, !tbaa !69
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_string(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %gps) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %if.then.6
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @param_write_null(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end.18
  %20 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %20, i32 0, i32 75
  %21 = load i8*, i8** %DeviceModel, align 8, !tbaa !33
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %if.then.23, label %if.else.32

if.then.23:                                       ; preds = %if.then.21
  %22 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel24 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %22, i32 0, i32 75
  %23 = load i8*, i8** %DeviceModel24, align 8, !tbaa !33
  %data25 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  store i8* %23, i8** %data25, align 8, !tbaa !66
  %data26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  %24 = load i8*, i8** %data26, align 8, !tbaa !66
  %call27 = call i64 @strlen(i8* %24) #5
  %conv28 = trunc i64 %call27 to i32
  %size29 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 1
  store i32 %conv28, i32* %size29, align 4, !tbaa !68
  %persistent30 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 2
  store i32 0, i32* %persistent30, align 4, !tbaa !69
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call31 = call i32 @param_write_string(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct.gs_param_string_s* %gps) #6
  store i32 %call31, i32* %code, align 4, !tbaa !5
  br label %if.end.34

if.else.32:                                       ; preds = %if.then.21
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call33 = call i32 @param_write_null(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #6
  store i32 %call33, i32* %code, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.18
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %27, 0
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.35
  %28 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %28, i32 0, i32 77
  %29 = load i8*, i8** %IjsParams, align 8, !tbaa !61
  %tobool39 = icmp ne i8* %29, null
  br i1 %tobool39, label %if.then.40, label %if.else.49

if.then.40:                                       ; preds = %if.then.38
  %30 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams41 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %30, i32 0, i32 77
  %31 = load i8*, i8** %IjsParams41, align 8, !tbaa !61
  %data42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  store i8* %31, i8** %data42, align 8, !tbaa !66
  %data43 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 0
  %32 = load i8*, i8** %data43, align 8, !tbaa !66
  %call44 = call i64 @strlen(i8* %32) #5
  %conv45 = trunc i64 %call44 to i32
  %size46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 1
  store i32 %conv45, i32* %size46, align 4, !tbaa !68
  %persistent47 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %gps, i32 0, i32 2
  store i32 0, i32* %persistent47, align 4, !tbaa !69
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call48 = call i32 @param_write_string(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %struct.gs_param_string_s* %gps) #6
  store i32 %call48, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.else.49:                                       ; preds = %if.then.38
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call50 = call i32 @param_write_null(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0)) #6
  store i32 %call50, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.40
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.35
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp sge i32 %35, 0
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %37, i32 0, i32 72
  %call56 = call i32 @param_write_int(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32* %BitsPerSample) #6
  store i32 %call56, i32* %code, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %38, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.57
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsUseOutputFD = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %40, i32 0, i32 68
  %call61 = call i32 @param_write_bool(%struct.gs_param_list_s* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32* %IjsUseOutputFD) #6
  store i32 %call61, i32* %code, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.57
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp sge i32 %41, 0
  br i1 %cmp63, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.end.62
  %42 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsTumble_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %42, i32 0, i32 80
  %43 = load i32, i32* %IjsTumble_set, align 4, !tbaa !70
  %tobool66 = icmp ne i32 %43, 0
  br i1 %tobool66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.then.65
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsTumble = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %45, i32 0, i32 79
  %call68 = call i32 @param_write_bool(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32* %IjsTumble) #6
  store i32 %call68, i32* %code, align 4, !tbaa !5
  br label %if.end.71

if.else.69:                                       ; preds = %if.then.65
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call70 = call i32 @param_write_null(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #6
  store i32 %call70, i32* %code, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.62
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast %struct.gs_param_string_s* %gps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #2
  %50 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  %is_open = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %is_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 9
  %6 = load i32, i32* %is_open1, align 4, !tbaa !71
  store i32 %6, i32* %is_open, align 4, !tbaa !5
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 50
  %8 = load i32, i32* %Duplex_set, align 4, !tbaa !72
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %9, i32 0, i32 49
  store i32 1, i32* %Duplex, align 4, !tbaa !73
  %10 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %Duplex_set2 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %10, i32 0, i32 50
  store i32 0, i32* %Duplex_set2, align 4, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsServer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 69
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %IjsServer, i32 0, i32 0
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 32
  %15 = load i32, i32* %LockSafetyParams, align 4, !tbaa !74
  %16 = load i32, i32* %is_open, align 4, !tbaa !5
  %call = call i32 @gsijs_read_string(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay, i32 4096, i32 %15, i32 %16) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %17, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %19, i32 0, i32 73
  %20 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceManufacturer_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %20, i32 0, i32 74
  %21 = load i32, i32* %is_open, align 4, !tbaa !5
  %call8 = call i32 @gsijs_read_string_malloc(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8** %DeviceManufacturer, i32* %DeviceManufacturer_size, i32 %21) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %22, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %24, i32 0, i32 75
  %25 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %DeviceModel_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %25, i32 0, i32 76
  %26 = load i32, i32* %is_open, align 4, !tbaa !5
  %call12 = call i32 @gsijs_read_string_malloc(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8** %DeviceModel, i32* %DeviceModel_size, i32 %26) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %27, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %29, i32 0, i32 77
  %30 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsParams_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %30, i32 0, i32 78
  %31 = load i32, i32* %is_open, align 4, !tbaa !5
  %call16 = call i32 @gsijs_read_string_malloc(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8** %IjsParams, i32* %IjsParams_size, i32 %31) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %32, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %34, i32 0, i32 72
  %35 = load i32, i32* %is_open, align 4, !tbaa !5
  %call20 = call i32 @gsijs_read_int(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32* %BitsPerSample, i32 1, i32 16, i32 %35) #6
  store i32 %call20, i32* %code, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %36, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsUseOutputFD = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %38, i32 0, i32 68
  %39 = load i32, i32* %is_open, align 4, !tbaa !5
  %call24 = call i32 @gsijs_read_bool(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32* %IjsUseOutputFD, i32 %39) #6
  store i32 %call24, i32* %code, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %40, 0
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %42, i32 0, i32 70
  %43 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %43, i32 0, i32 71
  %44 = load i32, i32* %is_open, align 4, !tbaa !5
  %call28 = call i32 @gsijs_read_string_malloc(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8** %ColorSpace, i32* %ColorSpace_size, i32 %44) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %45, 0
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsTumble = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %47, i32 0, i32 79
  %call32 = call i32 @gsijs_read_bool(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32* %IjsTumble, i32 0) #6
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %48, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  %49 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %IjsTumble_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %49, i32 0, i32 80
  store i32 1, i32* %IjsTumble_set, align 4, !tbaa !70
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.29
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp sge i32 %50, 0
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %51 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call39 = call i32 @gsijs_set_color_format(%struct.gx_device_ijs_s* %51) #6
  store i32 %call39, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.36
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp sge i32 %52, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call43 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %53, %struct.gs_param_list_s* %54) #6
  store i32 %call43, i32* %code, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %55, 0
  br i1 %cmp45, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.44
  %56 = load i32, i32* %is_open, align 4, !tbaa !5
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then.46, label %if.end.55

if.then.46:                                       ; preds = %land.lhs.true
  %57 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call47 = call i32 @gsijs_set_generic_params(%struct.gx_device_ijs_s* %57) #6
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp sge i32 %58, 0
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.46
  %59 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %call50 = call i32 @gsijs_set_margin_params(%struct.gx_device_ijs_s* %59) #6
  store i32 %call50, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %60, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.51
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %if.end.44
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.53
  %62 = bitcast i32* %is_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_finish_copydevice(%struct.gx_device_s* %dev, %struct.gx_device_s* %from_dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %from_dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %from_dev, %struct.gx_device_s** %from_dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %3, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %from_dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_finish_copydevice(%struct.gx_device_s* %4, %struct.gx_device_s* %5) #6
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
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 70
  %9 = load i8*, i8** %ColorSpace, align 8, !tbaa !62
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end.12, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !54
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %13 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !55
  %14 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !29
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !54
  %call4 = call i8* %13(%struct.gs_memory_s* %16, i32 10, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0)) #6
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace5 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 70
  store i8* %call4, i8** %ColorSpace5, align 8, !tbaa !62
  %18 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace6 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %18, i32 0, i32 70
  %19 = load i8*, i8** %ColorSpace6, align 8, !tbaa !62
  %tobool7 = icmp ne i8* %19, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.1
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.1
  %20 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %20, i32 0, i32 71
  store i32 10, i32* %ColorSpace_size, align 4, !tbaa !75
  %21 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %ColorSpace10 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %21, i32 0, i32 70
  %22 = load i8*, i8** %ColorSpace10, align 8, !tbaa !62
  %call11 = call i8* @memcpy(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @gsijs_finish_copydevice.rgb, i32 0, i32 0), i64 10) #7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.8, %if.then
  %24 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_create_buf_device(%struct.gx_device_s** %pbdev, %struct.gx_device_s* %target, i32 %y, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %mem, %struct.gx_colors_usage_s* %for_band) #1 {
entry:
  %retval = alloca i32, align 4
  %pbdev.addr = alloca %struct.gx_device_s**, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %for_band.addr = alloca %struct.gx_colors_usage_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %n_chan = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pbdev, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_colors_usage_s* %for_band, %struct.gx_colors_usage_s** %for_band.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %5, i32* %n_chan, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %for_band.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_create_buf_device(%struct.gx_device_s** %7, %struct.gx_device_s* %8, i32 %9, %struct.gx_render_plane_s* %10, %struct.gs_memory_s* %11, %struct.gx_colors_usage_s* %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %n_chan, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %14, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %16, i32 0, i32 89
  %17 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %17, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %19 = bitcast %struct.gx_device_procs_s* %prn_procs to i8*
  %20 = bitcast %struct.gx_device_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 584, i32 8, i1 false), !tbaa.struct !77
  %21 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %21, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gsijs_fill_rectangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !78
  %23 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %23, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gsijs_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !79
  %25 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %25, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 26
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gsijs_fill_mask, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !80
  %27 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %27, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 24
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gsijs_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !81
  %29 = load %struct.gx_device_s**, %struct.gx_device_s*** %pbdev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %29, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 25
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gsijs_stroke_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !82
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare i32 @dup(i32) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare %struct._IjsClientCtx* @ijs_invoke_server(i8*) #0

declare i32 @ijs_client_get_version(%struct._IjsClientCtx*) #0

declare i32 @ijs_client_open(%struct._IjsClientCtx*) #0

declare i32 @ijs_client_begin_job(%struct._IjsClientCtx*, i32) #0

declare i32 @ijs_client_close(%struct._IjsClientCtx*) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i32 @ijs_client_set_param(%struct._IjsClientCtx*, i32, i8*, i8*, i32) #0

declare i32 @close(i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_set_generic_params(%struct.gx_device_ijs_s* %ijsdev) #1 {
entry:
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %buf = alloca [256 x i8], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %value = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i8* null, i8** %value, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !tbaa !5
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 78
  %7 = load i32, i32* %IjsParams_size, align 4, !tbaa !63
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %cmp1 = icmp ult i64 %conv, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2
  %10 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %11, i32 0, i32 77
  %12 = load i8*, i8** %IjsParams, align 8, !tbaa !61
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !83
  store i8 %13, i8* %ch, align 1, !tbaa !83
  %14 = load i8, i8* %ch, align 1, !tbaa !83
  %conv3 = sext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams7 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 77
  %18 = load i8*, i8** %IjsParams7, align 8, !tbaa !61
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  %19 = load i8, i8* %arrayidx8, align 1, !tbaa !83
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom10
  store i8 %19, i8* %arrayidx11, align 1, !tbaa !83
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %21 = load i8, i8* %ch, align 1, !tbaa !83
  %conv12 = sext i8 %21 to i32
  %cmp13 = icmp eq i32 %conv12, 61
  br i1 %cmp13, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1, !tbaa !83
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom19
  store i8* %arrayidx20, i8** %value, align 8, !tbaa !1
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %24 = load i8, i8* %ch, align 1, !tbaa !83
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom23
  store i8 %24, i8* %arrayidx24, align 1, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.15
  %26 = load i8, i8* %ch, align 1, !tbaa !83
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 44
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %27, 1
  %idxprom29 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom29
  store i8 0, i8* %arrayidx30, align 1, !tbaa !83
  %28 = load i8*, i8** %value, align 8, !tbaa !1
  %tobool = icmp ne i8* %28, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %29 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %30 = load i8*, i8** %value, align 8, !tbaa !1
  %call = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %29, i8* %arraydecay, i8* %30) #6
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  store i32 0, i32* %i, align 4, !tbaa !5
  store i8* null, i8** %value, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %31, 1
  store i32 %inc35, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %32 = load i8*, i8** %value, align 8, !tbaa !1
  %tobool36 = icmp ne i8* %32, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %for.end
  %33 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %34 = load i8*, i8** %value, align 8, !tbaa !1
  %call39 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %33, i8* %arraydecay38, i8* %34) #6
  store i32 %call39, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %for.end
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %35, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.40
  %36 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %36, i32 0, i32 50
  %37 = load i32, i32* %Duplex_set, align 4, !tbaa !72
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true
  %38 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %39, i32 0, i32 49
  %40 = load i32, i32* %Duplex, align 4, !tbaa !73
  %tobool45 = icmp ne i32 %40, 0
  %cond = select i1 %tobool45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)
  %call46 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %cond) #6
  store i32 %call46, i32* %code, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.40
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %if.end.47
  %42 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsTumble_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %42, i32 0, i32 80
  %43 = load i32, i32* %IjsTumble_set, align 4, !tbaa !70
  %tobool51 = icmp ne i32 %43, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %land.lhs.true.50
  %44 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsTumble = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %45, i32 0, i32 79
  %46 = load i32, i32* %IjsTumble, align 4, !tbaa !84
  %tobool53 = icmp ne i32 %46, 0
  %cond54 = select i1 %tobool53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)
  %call55 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %cond54) #6
  store i32 %call55, i32* %code, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %land.lhs.true.50, %if.end.47
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %48 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %52) #2
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_set_resolution(%struct.gx_device_ijs_s* %ijsdev) #1 {
entry:
  %retval = alloca i32, align 4
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %buf = alloca [256 x i8], align 16
  %code = alloca i32, align 4
  %x_dpi = alloca double, align 8
  %y_dpi = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %save_is_open = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %tail = alloca i8*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast double* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %y_dpi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %5, i32 0, i32 13
  %6 = load i32, i32* %width1, align 4, !tbaa !85
  store i32 %6, i32* %width, align 4, !tbaa !5
  %7 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 14
  %9 = load i32, i32* %height2, align 4, !tbaa !86
  store i32 %9, i32* %height, align 4, !tbaa !5
  %10 = bitcast i32* %save_is_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %11, i32 0, i32 9
  %12 = load i32, i32* %is_open, align 4, !tbaa !87
  store i32 %12, i32* %save_is_open, align 4, !tbaa !5
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %14 = load float, float* %arrayidx, align 4, !tbaa !38
  %cmp = fcmp une float %14, 7.400000e+01
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %HWResolution3 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %15, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution3, i32 0, i64 1
  %16 = load float, float* %arrayidx4, align 4, !tbaa !38
  %cmp5 = fcmp une float %16, 7.400000e+01
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 81
  %18 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 @ijs_client_get_param(%struct._IjsClientCtx* %18, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay, i32 256) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.34

if.then.7:                                        ; preds = %if.end
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %21, %22
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx9, align 1, !tbaa !83
  %conv = sext i8 %24 to i32
  %cmp10 = icmp eq i32 %conv, 120
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %26, %27
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.end
  %28 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %conv17 = sext i32 %29 to i64
  %cmp18 = icmp eq i64 %conv17, 256
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  store i32 -12, i32* %code, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom22
  store i8 0, i8* %arrayidx23, align 1, !tbaa !83
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call25 = call double @strtod(i8* %arraydecay24, i8** %tail) #7
  store double %call25, double* %y_dpi, align 8, !tbaa !40
  store double %call25, double* %x_dpi, align 8, !tbaa !40
  %31 = load i8*, i8** %tail, align 8, !tbaa !1
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %cmp27 = icmp eq i8* %31, %arraydecay26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.21
  store i32 -7, i32* %code, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.21
  %32 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  br label %if.end.33

if.else:                                          ; preds = %for.end
  %33 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %call32 = call i32 @gsijs_parse_wxh(i8* %arraydecay31, i32 %35, double* %x, double* %y) #6
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %36 = load double, double* %x, align 8, !tbaa !40
  store double %36, double* %x_dpi, align 8, !tbaa !40
  %37 = load double, double* %y, align 8, !tbaa !40
  store double %37, double* %y_dpi, align 8, !tbaa !40
  %38 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.30
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %41, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store double 7.200000e+01, double* %x_dpi, align 8, !tbaa !40
  store double 7.200000e+01, double* %y_dpi, align 8, !tbaa !40
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %42 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_ijs_s* %42 to %struct.gx_device_s*
  %44 = load double, double* %x_dpi, align 8, !tbaa !40
  %45 = load double, double* %y_dpi, align 8, !tbaa !40
  call void @gx_device_set_resolution(%struct.gx_device_s* %43, double %44, double %45) #6
  %46 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %is_open39 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %46, i32 0, i32 9
  store i32 1, i32* %is_open39, align 4, !tbaa !87
  %47 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_ijs_s* %47 to %struct.gx_device_printer_s*
  %49 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %49, i32 0, i32 38
  %50 = load i32, i32* %width, align 4, !tbaa !5
  %51 = load i32, i32* %height, align 4, !tbaa !5
  %52 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %52, i32 0, i32 37
  %53 = load i32, i32* %page_uses_transparency, align 4, !tbaa !88
  %call40 = call i32 @gdev_prn_maybe_realloc_memory(%struct.gx_device_printer_s* %48, %struct.gdev_space_params_s* %space_params, i32 %50, i32 %51, i32 %53) #6
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %54 = load i32, i32* %save_is_open, align 4, !tbaa !5
  %55 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %is_open41 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %55, i32 0, i32 9
  store i32 %54, i32* %is_open41, align 4, !tbaa !87
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then
  %57 = bitcast i32* %save_is_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast double* %y_dpi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast double* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_set_margin_params(%struct.gx_device_ijs_s* %ijsdev) #1 {
entry:
  %retval = alloca i32, align 4
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %buf = alloca [256 x i8], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %value = alloca i8*, align 8
  %ch = alloca i8, align 1
  %printable_width = alloca double, align 8
  %printable_height = alloca double, align 8
  %printable_left = alloca double, align 8
  %printable_top = alloca double, align 8
  %m = alloca [4 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i8* null, i8** %value, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !tbaa !5
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 78
  %7 = load i32, i32* %IjsParams_size, align 4, !tbaa !63
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %cmp1 = icmp ult i64 %conv, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2
  %10 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %11, i32 0, i32 77
  %12 = load i8*, i8** %IjsParams, align 8, !tbaa !61
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !83
  store i8 %13, i8* %ch, align 1, !tbaa !83
  %14 = load i8, i8* %ch, align 1, !tbaa !83
  %conv3 = sext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsParams7 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %17, i32 0, i32 77
  %18 = load i8*, i8** %IjsParams7, align 8, !tbaa !61
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  %19 = load i8, i8* %arrayidx8, align 1, !tbaa !83
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom10
  store i8 %19, i8* %arrayidx11, align 1, !tbaa !83
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %21 = load i8, i8* %ch, align 1, !tbaa !83
  %conv12 = sext i8 %21 to i32
  %cmp13 = icmp eq i32 %conv12, 61
  br i1 %cmp13, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1, !tbaa !83
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom19
  store i8* %arrayidx20, i8** %value, align 8, !tbaa !1
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %24 = load i8, i8* %ch, align 1, !tbaa !83
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom23
  store i8 %24, i8* %arrayidx24, align 1, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.15
  %26 = load i8, i8* %ch, align 1, !tbaa !83
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 44
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %27, 1
  %idxprom29 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom29
  store i8 0, i8* %arrayidx30, align 1, !tbaa !83
  %28 = load i8*, i8** %value, align 8, !tbaa !1
  %tobool = icmp ne i8* %28, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %29 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %30 = load i8*, i8** %value, align 8, !tbaa !1
  %call = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %29, i8* %arraydecay, i8* %30) #6
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  store i32 0, i32* %i, align 4, !tbaa !5
  store i8* null, i8** %value, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %31, 1
  store i32 %inc35, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %32 = load i8*, i8** %value, align 8, !tbaa !1
  %tobool36 = icmp ne i8* %32, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %for.end
  %33 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %34 = load i8*, i8** %value, align 8, !tbaa !1
  %call39 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %33, i8* %arraydecay38, i8* %34) #6
  store i32 %call39, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %for.end
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %35, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.40
  %36 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %36, i32 0, i32 50
  %37 = load i32, i32* %Duplex_set, align 4, !tbaa !72
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true
  %38 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %39, i32 0, i32 49
  %40 = load i32, i32* %Duplex, align 4, !tbaa !73
  %tobool45 = icmp ne i32 %40, 0
  %cond = select i1 %tobool45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)
  %call46 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %cond) #6
  store i32 %call46, i32* %code, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.40
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %if.end.47
  %42 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsTumble_set = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %42, i32 0, i32 80
  %43 = load i32, i32* %IjsTumble_set, align 4, !tbaa !70
  %tobool51 = icmp ne i32 %43, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %land.lhs.true.50
  %44 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %IjsTumble = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %45, i32 0, i32 79
  %46 = load i32, i32* %IjsTumble, align 4, !tbaa !84
  %tobool53 = icmp ne i32 %46, 0
  %cond54 = select i1 %tobool53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)
  %call55 = call i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* %cond54) #6
  store i32 %call55, i32* %code, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %land.lhs.true.50, %if.end.47
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %47, 0
  br i1 %cmp57, label %if.then.59, label %if.end.73

if.then.59:                                       ; preds = %if.end.56
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %48 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %48, i32 0, i32 19
  %arrayidx61 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %49 = load float, float* %arrayidx61, align 4, !tbaa !38
  %conv62 = fpext float %49 to double
  %mul = fmul double %conv62, 0x3F8C71C71C71C71C
  %50 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %MediaSize63 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %50, i32 0, i32 19
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize63, i32 0, i64 1
  %51 = load float, float* %arrayidx64, align 4, !tbaa !38
  %conv65 = fpext float %51 to double
  %mul66 = fmul double %conv65, 0x3F8C71C71C71C71C
  %call67 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), double %mul, double %mul66) #6
  %52 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %52, i32 0, i32 81
  %53 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call70 = call i64 @strlen(i8* %arraydecay69) #5
  %conv71 = trunc i64 %call70 to i32
  %call72 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %53, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %arraydecay68, i32 %conv71) #6
  store i32 %call72, i32* %code, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.59, %if.end.56
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %54, 0
  br i1 %cmp74, label %if.then.76, label %if.end.146

if.then.76:                                       ; preds = %if.end.73
  %55 = bitcast double* %printable_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = bitcast double* %printable_height to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = bitcast double* %printable_left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %58 = bitcast double* %printable_top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = bitcast [4 x float]* %m to i8*
  call void @llvm.lifetime.start(i64 16, i8* %59) #2
  %60 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx77 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %60, i32 0, i32 81
  %61 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx77, align 8, !tbaa !30
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call79 = call i32 @ijs_client_get_param(%struct._IjsClientCtx* %61, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay78, i32 256) #6
  store i32 %call79, i32* %code, align 4, !tbaa !5
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %62, -9
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.then.76
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.83:                                       ; preds = %if.then.76
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp84 = icmp sge i32 %63, 0
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.else.83
  %arraydecay87 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %call88 = call i32 @gsijs_parse_wxh(i8* %arraydecay87, i32 %64, double* %printable_width, double* %printable_height) #6
  store i32 %call88, i32* %code, align 4, !tbaa !5
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.else.83
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %65, 0
  br i1 %cmp91, label %if.then.93, label %if.end.108

if.then.93:                                       ; preds = %if.end.90
  %66 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx94 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %66, i32 0, i32 81
  %67 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx94, align 8, !tbaa !30
  %arraydecay95 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call96 = call i32 @ijs_client_get_param(%struct._IjsClientCtx* %67, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay95, i32 256) #6
  store i32 %call96, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %68, -9
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.then.93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.100:                                      ; preds = %if.then.93
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp101 = icmp sge i32 %69, 0
  br i1 %cmp101, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.else.100
  %arraydecay104 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %call105 = call i32 @gsijs_parse_wxh(i8* %arraydecay104, i32 %70, double* %printable_left, double* %printable_top) #6
  store i32 %call105, i32* %code, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.else.100
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.90
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp eq i32 %71, 0
  br i1 %cmp109, label %if.then.111, label %if.end.141

if.then.111:                                      ; preds = %if.end.108
  %72 = load double, double* %printable_left, align 8, !tbaa !40
  %conv112 = fptrunc double %72 to float
  %arrayidx113 = getelementptr inbounds [4 x float], [4 x float]* %m, i32 0, i64 0
  store float %conv112, float* %arrayidx113, align 4, !tbaa !38
  %73 = load double, double* %printable_top, align 8, !tbaa !40
  %conv114 = fptrunc double %73 to float
  %arrayidx115 = getelementptr inbounds [4 x float], [4 x float]* %m, i32 0, i64 3
  store float %conv114, float* %arrayidx115, align 4, !tbaa !38
  %74 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %MediaSize116 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %74, i32 0, i32 19
  %arrayidx117 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize116, i32 0, i64 0
  %75 = load float, float* %arrayidx117, align 4, !tbaa !38
  %conv118 = fpext float %75 to double
  %mul119 = fmul double %conv118, 0x3F8C71C71C71C71C
  %76 = load double, double* %printable_left, align 8, !tbaa !40
  %sub120 = fsub double %mul119, %76
  %77 = load double, double* %printable_width, align 8, !tbaa !40
  %sub121 = fsub double %sub120, %77
  %conv122 = fptrunc double %sub121 to float
  %arrayidx123 = getelementptr inbounds [4 x float], [4 x float]* %m, i32 0, i64 2
  store float %conv122, float* %arrayidx123, align 4, !tbaa !38
  %78 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %MediaSize124 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %78, i32 0, i32 19
  %arrayidx125 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize124, i32 0, i64 1
  %79 = load float, float* %arrayidx125, align 4, !tbaa !38
  %conv126 = fpext float %79 to double
  %mul127 = fmul double %conv126, 0x3F8C71C71C71C71C
  %80 = load double, double* %printable_top, align 8, !tbaa !40
  %sub128 = fsub double %mul127, %80
  %81 = load double, double* %printable_height, align 8, !tbaa !40
  %sub129 = fsub double %sub128, %81
  %conv130 = fptrunc double %sub129 to float
  %arrayidx131 = getelementptr inbounds [4 x float], [4 x float]* %m, i32 0, i64 1
  store float %conv130, float* %arrayidx131, align 4, !tbaa !38
  %82 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_ijs_s* %82 to %struct.gx_device_s*
  %arraydecay132 = getelementptr inbounds [4 x float], [4 x float]* %m, i32 0, i32 0
  call void @gx_device_set_margins(%struct.gx_device_s* %83, float* %arraydecay132, i32 1) #6
  %arraydecay133 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %84 = load double, double* %printable_left, align 8, !tbaa !40
  %85 = load double, double* %printable_top, align 8, !tbaa !40
  %call134 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), double %84, double %85) #6
  %86 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx135 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %86, i32 0, i32 81
  %87 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx135, align 8, !tbaa !30
  %arraydecay136 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call138 = call i64 @strlen(i8* %arraydecay137) #5
  %conv139 = trunc i64 %call138 to i32
  %call140 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %87, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %arraydecay136, i32 %conv139) #6
  store i32 %call140, i32* %code, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.111, %if.end.108
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.141, %if.then.99, %if.then.82
  %88 = bitcast [4 x float]* %m to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #2
  %89 = bitcast double* %printable_top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast double* %printable_left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast double* %printable_height to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast double* %printable_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.147 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.146

if.end.146:                                       ; preds = %cleanup.cont, %if.end.73
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %if.end.146, %cleanup
  %94 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %98) #2
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_set_krgb_mode(%struct.gx_device_ijs_s* %ijsdev) #1 {
entry:
  %retval = alloca i32, align 4
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %buf = alloca [256 x i8], align 16
  %n_chan = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %3, i32* %n_chan, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %krgb_mode = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %5, i32 0, i32 83
  store i32 0, i32* %krgb_mode, align 4, !tbaa !36
  %6 = load i32, i32* %n_chan, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !83
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 81
  %8 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 @ijs_client_enum_param(%struct._IjsClientCtx* %8, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay, i32 255) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx3, align 1, !tbaa !83
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call6 = call i8* @strstr(i8* %arraydecay5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #5
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.4
  %11 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %krgb_mode9 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %11, i32 0, i32 83
  store i32 1, i32* %krgb_mode9, align 4, !tbaa !36
  %12 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %k_bits = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %12, i32 0, i32 84
  store i32 1, i32* %k_bits, align 4, !tbaa !37
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @strstr(i8* %arraydecay10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.else
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %krgb_mode14 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 83
  store i32 1, i32* %krgb_mode14, align 4, !tbaa !36
  %14 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %k_bits15 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %14, i32 0, i32 84
  store i32 8, i32* %k_bits15, align 4, !tbaa !37
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %n_chan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %cleanup.dest.slot = alloca i32
  %raster = alloca i32, align 4
  %dest = alloca i8*, align 8
  %dest_start_bit = alloca i32, align 4
  %band_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %beg = alloca i8*, align 8
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !89
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !90
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %4, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_ijs_s* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %krgb_mode = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 83
  %7 = load i32, i32* %krgb_mode, align 4, !tbaa !36
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 85
  %9 = load i32, i32* %k_path, align 4, !tbaa !92
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.93

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %land.lhs.true.4, label %if.end.93

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.93

if.then.6:                                        ; preds = %land.lhs.true.4
  %12 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 86
  %14 = load i32, i32* %k_width, align 4, !tbaa !52
  %add = add nsw i32 %14, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !5
  %15 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i32* %dest_start_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %18, i32 0, i32 87
  %19 = load i32, i32* %k_band_size, align 4, !tbaa !53
  %20 = load i32, i32* %raster, align 4, !tbaa !5
  %div = sdiv i32 %19, %20
  store i32 %div, i32* %band_height, align 4, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %24, i32 0, i32 88
  %25 = load i8*, i8** %k_band, align 8, !tbaa !56
  store i8* %25, i8** %beg, align 8, !tbaa !1
  %26 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band7 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %27, i32 0, i32 88
  %28 = load i8*, i8** %k_band7, align 8, !tbaa !56
  %29 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size8 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %29, i32 0, i32 87
  %30 = load i32, i32* %k_band_size8, align 4, !tbaa !53
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  %31 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp9 = icmp sle i32 %32, 0
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.6
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp10 = icmp sle i32 %33, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width13 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %35, i32 0, i32 86
  %36 = load i32, i32* %k_width13, align 4, !tbaa !52
  %cmp14 = icmp sge i32 %34, %36
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.12
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %38 = load i32, i32* %band_height, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %37, %38
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %lor.lhs.false.15
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %39, 7
  store i32 %and, i32* %dest_start_bit, align 4, !tbaa !5
  %40 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band19 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %40, i32 0, i32 88
  %41 = load i8*, i8** %k_band19, align 8, !tbaa !56
  %42 = load i32, i32* %raster, align 4, !tbaa !5
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %42, %43
  %idx.ext20 = sext i32 %mul to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %41, i64 %idx.ext20
  %44 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr22 = ashr i32 %44, 3
  %idx.ext23 = sext i32 %shr22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr21, i64 %idx.ext23
  store i8* %add.ptr24, i8** %dest, align 8, !tbaa !1
  %45 = load i64, i64* %color.addr, align 8, !tbaa !89
  %cmp25 = icmp eq i64 %45, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.18
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %if.then.26
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %47 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %46, %47
  br i1 %cmp27, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %48, %49
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %50 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %add31 = add nsw i32 %50, %51
  %shr32 = ashr i32 %add31, 3
  %idxprom = sext i32 %shr32 to i64
  %52 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %idxprom
  store i8* %arrayidx, i8** %p, align 8, !tbaa !1
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8*, i8** %beg, align 8, !tbaa !1
  %cmp33 = icmp uge i8* %53, %54
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.43

land.lhs.true.34:                                 ; preds = %for.body.30
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp35 = icmp ule i8* %55, %56
  br i1 %cmp35, label %if.then.36, label %if.end.43

if.then.36:                                       ; preds = %land.lhs.true.34
  %57 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %add37 = add nsw i32 %57, %58
  %and38 = and i32 %add37, 7
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom39
  %59 = load i8, i8* %arrayidx40, align 1, !tbaa !83
  %conv = zext i8 %59 to i32
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !83
  %conv41 = zext i8 %61 to i32
  %or = or i32 %conv41, %conv
  %conv42 = trunc i32 %or to i8
  store i8 %conv42, i8* %60, align 1, !tbaa !83
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.36, %land.lhs.true.34, %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %63 = load i32, i32* %raster, align 4, !tbaa !5
  %64 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext44 = sext i32 %63 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %64, i64 %idx.ext44
  store i8* %add.ptr45, i8** %dest, align 8, !tbaa !1
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %65 = load i32, i32* %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %65, 1
  store i32 %inc47, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.18
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.81, %if.else
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %66, %67
  br i1 %cmp50, label %for.body.52, label %for.end.83

for.body.52:                                      ; preds = %for.cond.49
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.76, %for.body.52
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %69 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %68, %69
  br i1 %cmp54, label %for.body.56, label %for.end.78

for.body.56:                                      ; preds = %for.cond.53
  %70 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %add57 = add nsw i32 %70, %71
  %shr58 = ashr i32 %add57, 3
  %idxprom59 = sext i32 %shr58 to i64
  %72 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %72, i64 %idxprom59
  store i8* %arrayidx60, i8** %p, align 8, !tbaa !1
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %74 = load i8*, i8** %beg, align 8, !tbaa !1
  %cmp61 = icmp uge i8* %73, %74
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.75

land.lhs.true.63:                                 ; preds = %for.body.56
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %76 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp64 = icmp ule i8* %75, %76
  br i1 %cmp64, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %land.lhs.true.63
  %77 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %add67 = add nsw i32 %77, %78
  %and68 = and i32 %add67, 7
  %idxprom69 = sext i32 %and68 to i64
  %arrayidx70 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom69
  %79 = load i8, i8* %arrayidx70, align 1, !tbaa !83
  %conv71 = zext i8 %79 to i32
  %neg = xor i32 %conv71, -1
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !83
  %conv72 = zext i8 %81 to i32
  %and73 = and i32 %conv72, %neg
  %conv74 = trunc i32 %and73 to i8
  store i8 %conv74, i8* %80, align 1, !tbaa !83
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.66, %land.lhs.true.63, %for.body.56
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %inc77 = add nsw i32 %82, 1
  store i32 %inc77, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.end.78:                                       ; preds = %for.cond.53
  %83 = load i32, i32* %raster, align 4, !tbaa !5
  %84 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext79 = sext i32 %83 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %84, i64 %idx.ext79
  store i8* %add.ptr80, i8** %dest, align 8, !tbaa !1
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.78
  %85 = load i32, i32* %j, align 4, !tbaa !5
  %inc82 = add nsw i32 %85, 1
  store i32 %inc82, i32* %j, align 4, !tbaa !5
  br label %for.cond.49

for.end.83:                                       ; preds = %for.cond.49
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %for.end.48, %if.then.17, %if.then.11
  %86 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %dest_start_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.93

if.end.93:                                        ; preds = %cleanup.cont, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true, %if.end
  %95 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %95, i32 0, i32 89
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %prn_procs, i32 0, i32 7
  %96 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !93
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %98 = load i32, i32* %x.addr, align 4, !tbaa !5
  %99 = load i32, i32* %y.addr, align 4, !tbaa !5
  %100 = load i32, i32* %w.addr, align 4, !tbaa !5
  %101 = load i32, i32* %h.addr, align 4, !tbaa !5
  %102 = load i64, i64* %color.addr, align 8, !tbaa !89
  %call = call i32 %96(%struct.gx_device_s* %97, i32 %98, i32 %99, i32 %100, i32 %101, i64 %102) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.end.93, %cleanup, %if.then
  %103 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %draster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %height, i64 %zero, i64 %one) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %draster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %cleanup.dest.slot = alloca i32
  %raster = alloca i32, align 4
  %dest = alloca i8*, align 8
  %scan = alloca i8*, align 8
  %dest_start_bit = alloca i32, align 4
  %scan_start_bit = alloca i32, align 4
  %band_height = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %beg = alloca i8*, align 8
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %draster, i32* %draster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !89
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !89
  store i64 %one, i64* %one.addr, align 8, !tbaa !89
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !90
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %4, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_ijs_s* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %krgb_mode = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 83
  %7 = load i32, i32* %krgb_mode, align 4, !tbaa !36
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.123

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 85
  %9 = load i32, i32* %k_path, align 4, !tbaa !92
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.123

if.then.3:                                        ; preds = %land.lhs.true
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %11, i32 0, i32 86
  %12 = load i32, i32* %k_width, align 4, !tbaa !52
  %add = add nsw i32 %12, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !5
  %13 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32* %dest_start_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %scan_start_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %18, i32 0, i32 87
  %19 = load i32, i32* %k_band_size, align 4, !tbaa !53
  %20 = load i32, i32* %raster, align 4, !tbaa !5
  %div = sdiv i32 %19, %20
  store i32 %div, i32* %band_height, align 4, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %23, i32* %h, align 4, !tbaa !5
  %24 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %25, i32 0, i32 88
  %26 = load i8*, i8** %k_band, align 8, !tbaa !56
  store i8* %26, i8** %beg, align 8, !tbaa !1
  %27 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band4 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %28, i32 0, i32 88
  %29 = load i8*, i8** %k_band4, align 8, !tbaa !56
  %30 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size5 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %30, i32 0, i32 87
  %31 = load i32, i32* %k_band_size5, align 4, !tbaa !53
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  %32 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load i32, i32* %h, align 4, !tbaa !5
  %cmp = icmp sle i32 %33, 0
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %34 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %34, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  %35 = load i32, i32* %x.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width9 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %36, i32 0, i32 86
  %37 = load i32, i32* %k_width9, align 4, !tbaa !52
  %cmp10 = icmp sge i32 %35, %37
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.8
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %39 = load i32, i32* %band_height, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %38, %39
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false.11
  %40 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %41 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %shr15 = ashr i32 %41, 3
  %idx.ext16 = sext i32 %shr15 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %40, i64 %idx.ext16
  store i8* %add.ptr17, i8** %scan, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %42, 7
  store i32 %and, i32* %dest_start_bit, align 4, !tbaa !5
  %43 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %and18 = and i32 %43, 7
  store i32 %and18, i32* %scan_start_bit, align 4, !tbaa !5
  %44 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band19 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %44, i32 0, i32 88
  %45 = load i8*, i8** %k_band19, align 8, !tbaa !56
  %46 = load i32, i32* %raster, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %46, %47
  %idx.ext20 = sext i32 %mul to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %45, i64 %idx.ext20
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr22 = ashr i32 %48, 3
  %idx.ext23 = sext i32 %shr22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr21, i64 %idx.ext23
  store i8* %add.ptr24, i8** %dest, align 8, !tbaa !1
  %49 = load i64, i64* %one.addr, align 8, !tbaa !89
  %cmp25 = icmp eq i64 %49, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.26
  %50 = load i32, i32* %h, align 4, !tbaa !5
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %h, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %50, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %52 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %51, %52
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %scan_start_bit, align 4, !tbaa !5
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %add29 = add nsw i32 %53, %54
  %shr30 = ashr i32 %add29, 3
  %idxprom = sext i32 %shr30 to i64
  %55 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %55, i64 %idxprom
  %56 = load i8, i8* %arrayidx, align 1, !tbaa !83
  %conv = zext i8 %56 to i32
  %57 = load i32, i32* %scan_start_bit, align 4, !tbaa !5
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %add31 = add nsw i32 %57, %58
  %and32 = and i32 %add31, 7
  %idxprom33 = sext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom33
  %59 = load i8, i8* %arrayidx34, align 1, !tbaa !83
  %conv35 = zext i8 %59 to i32
  %and36 = and i32 %conv, %conv35
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %for.body
  %60 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %add39 = add nsw i32 %60, %61
  %shr40 = ashr i32 %add39, 3
  %idxprom41 = sext i32 %shr40 to i64
  %62 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %62, i64 %idxprom41
  store i8* %arrayidx42, i8** %p, align 8, !tbaa !1
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load i8*, i8** %beg, align 8, !tbaa !1
  %cmp43 = icmp uge i8* %63, %64
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.56

land.lhs.true.45:                                 ; preds = %if.then.38
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp46 = icmp ule i8* %65, %66
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %land.lhs.true.45
  %67 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %add49 = add nsw i32 %67, %68
  %and50 = and i32 %add49, 7
  %idxprom51 = sext i32 %and50 to i64
  %arrayidx52 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom51
  %69 = load i8, i8* %arrayidx52, align 1, !tbaa !83
  %conv53 = zext i8 %69 to i32
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !83
  %conv54 = zext i8 %71 to i32
  %or = or i32 %conv54, %conv53
  %conv55 = trunc i32 %or to i8
  store i8 %conv55, i8* %70, align 1, !tbaa !83
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.48, %land.lhs.true.45, %if.then.38
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %74 = load i8*, i8** %scan, align 8, !tbaa !1
  %idx.ext58 = sext i32 %73 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %74, i64 %idx.ext58
  store i8* %add.ptr59, i8** %scan, align 8, !tbaa !1
  %75 = load i32, i32* %raster, align 4, !tbaa !5
  %76 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext60 = sext i32 %75 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %76, i64 %idx.ext60
  store i8* %add.ptr61, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.14
  br label %while.cond.62

while.cond.62:                                    ; preds = %for.end.106, %if.else
  %77 = load i32, i32* %h, align 4, !tbaa !5
  %dec63 = add nsw i32 %77, -1
  store i32 %dec63, i32* %h, align 4, !tbaa !5
  %cmp64 = icmp sgt i32 %77, 0
  br i1 %cmp64, label %while.body.66, label %while.end.111

while.body.66:                                    ; preds = %while.cond.62
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.104, %while.body.66
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %79 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %78, %79
  br i1 %cmp68, label %for.body.70, label %for.end.106

for.body.70:                                      ; preds = %for.cond.67
  %80 = load i32, i32* %scan_start_bit, align 4, !tbaa !5
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %add71 = add nsw i32 %80, %81
  %shr72 = ashr i32 %add71, 3
  %idxprom73 = sext i32 %shr72 to i64
  %82 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %82, i64 %idxprom73
  %83 = load i8, i8* %arrayidx74, align 1, !tbaa !83
  %conv75 = zext i8 %83 to i32
  %84 = load i32, i32* %scan_start_bit, align 4, !tbaa !5
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %add76 = add nsw i32 %84, %85
  %and77 = and i32 %add76, 7
  %idxprom78 = sext i32 %and77 to i64
  %arrayidx79 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom78
  %86 = load i8, i8* %arrayidx79, align 1, !tbaa !83
  %conv80 = zext i8 %86 to i32
  %and81 = and i32 %conv75, %conv80
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.103

if.then.83:                                       ; preds = %for.body.70
  %87 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %add84 = add nsw i32 %87, %88
  %shr85 = ashr i32 %add84, 3
  %idxprom86 = sext i32 %shr85 to i64
  %89 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %89, i64 %idxprom86
  store i8* %arrayidx87, i8** %p, align 8, !tbaa !1
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %91 = load i8*, i8** %beg, align 8, !tbaa !1
  %cmp88 = icmp uge i8* %90, %91
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.102

land.lhs.true.90:                                 ; preds = %if.then.83
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %93 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp91 = icmp ule i8* %92, %93
  br i1 %cmp91, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %land.lhs.true.90
  %94 = load i32, i32* %dest_start_bit, align 4, !tbaa !5
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %add94 = add nsw i32 %94, %95
  %and95 = and i32 %add94, 7
  %idxprom96 = sext i32 %and95 to i64
  %arrayidx97 = getelementptr inbounds [8 x i8], [8 x i8]* @xmask, i32 0, i64 %idxprom96
  %96 = load i8, i8* %arrayidx97, align 1, !tbaa !83
  %conv98 = zext i8 %96 to i32
  %neg = xor i32 %conv98, -1
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !83
  %conv99 = zext i8 %98 to i32
  %and100 = and i32 %conv99, %neg
  %conv101 = trunc i32 %and100 to i8
  store i8 %conv101, i8* %97, align 1, !tbaa !83
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.93, %land.lhs.true.90, %if.then.83
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %for.body.70
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %inc105 = add nsw i32 %99, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !5
  br label %for.cond.67

for.end.106:                                      ; preds = %for.cond.67
  %100 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %101 = load i8*, i8** %scan, align 8, !tbaa !1
  %idx.ext107 = sext i32 %100 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %101, i64 %idx.ext107
  store i8* %add.ptr108, i8** %scan, align 8, !tbaa !1
  %102 = load i32, i32* %raster, align 4, !tbaa !5
  %103 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext109 = sext i32 %102 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %103, i64 %idx.ext109
  store i8* %add.ptr110, i8** %dest, align 8, !tbaa !1
  br label %while.cond.62

while.end.111:                                    ; preds = %while.cond.62
  br label %if.end.112

if.end.112:                                       ; preds = %while.end.111
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.112, %while.end, %if.then.13, %if.then.7
  %104 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %scan_start_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %dest_start_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.124 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.123

if.end.123:                                       ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %115 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %115, i32 0, i32 89
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %prn_procs, i32 0, i32 9
  %116 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !94
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %119 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %120 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %121 = load i64, i64* %id.addr, align 8, !tbaa !89
  %122 = load i32, i32* %x.addr, align 4, !tbaa !5
  %123 = load i32, i32* %y.addr, align 4, !tbaa !5
  %124 = load i32, i32* %w.addr, align 4, !tbaa !5
  %125 = load i32, i32* %height.addr, align 4, !tbaa !5
  %126 = load i64, i64* %zero.addr, align 8, !tbaa !89
  %127 = load i64, i64* %one.addr, align 8, !tbaa !89
  %call = call i32 %116(%struct.gx_device_s* %117, i8* %118, i32 %119, i32 %120, i64 %121, i32 %122, i32 %123, i32 %124, i32 %125, i64 %126, i64 %127) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

cleanup.124:                                      ; preds = %if.end.123, %cleanup, %if.then
  %128 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !89
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !90
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %4, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_ijs_s* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 85
  store i32 1, i32* %k_path, align 4, !tbaa !92
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 89
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %prn_procs, i32 0, i32 26
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !95
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %14 = load i64, i64* %id.addr, align 8, !tbaa !89
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %20 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %21 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_color_s* %19, i32 %20, i32 %21, %struct.gx_clip_path_s* %22) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %23 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %23, i32 0, i32 85
  store i32 0, i32* %k_path1, align 4, !tbaa !92
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !90
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %4, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_ijs_s* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 85
  store i32 1, i32* %k_path, align 4, !tbaa !92
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 89
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %prn_procs, i32 0, i32 24
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !96
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_path_s* %12, %struct.gx_fill_params_s* %13, %struct.gx_device_color_s* %14, %struct.gx_clip_path_s* %15) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %16, i32 0, i32 85
  store i32 0, i32* %k_path1, align 4, !tbaa !92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !90
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %4, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_ijs_s* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 85
  store i32 1, i32* %k_path, align 4, !tbaa !92
  %8 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %prn_procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %8, i32 0, i32 89
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %prn_procs, i32 0, i32 25
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !97
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_path_s* %12, %struct.gx_stroke_params_s* %13, %struct.gx_device_color_s* %14, %struct.gx_clip_path_s* %15) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_path1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %16, i32 0, i32 85
  store i32 0, i32* %k_path1, align 4, !tbaa !92
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_client_set_param(%struct.gx_device_ijs_s* %ijsdev, i8* %key, i8* %value) #1 {
entry:
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %1, i32 0, i32 81
  %2 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !30
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #5
  %conv = trunc i64 %call to i32
  %call1 = call i32 @ijs_client_set_param(%struct._IjsClientCtx* %2, i32 0, i8* %3, i8* %4, i32 %conv) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !29
  %9 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* %9, i8* %10) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %11
}

declare i32 @ijs_client_get_param(%struct._IjsClientCtx*, i32, i8*, i8*, i32) #0

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #4

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_parse_wxh(i8* %val, i32 %size, double* %pw, double* %ph) #1 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pw.addr = alloca double*, align 8
  %ph.addr = alloca double*, align 8
  %buf = alloca [256 x i8], align 16
  %tail = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store double* %pw, double** %pw.addr, align 8, !tbaa !1
  store double* %ph, double** %ph.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !83
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 120
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %add, %10
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %conv7 = sext i32 %11 to i64
  %cmp8 = icmp uge i64 %conv7, 256
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %12 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %conv12 = sext i32 %13 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %12, i64 %conv12) #7
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !83
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call16 = call double @strtod(i8* %arraydecay15, i8** %tail) #7
  %15 = load double*, double** %pw.addr, align 8, !tbaa !1
  store double %call16, double* %15, align 8, !tbaa !40
  %16 = load i8*, i8** %tail, align 8, !tbaa !1
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %cmp18 = icmp eq i8* %16, %arraydecay17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.11
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.11
  %17 = load i32, i32* %size.addr, align 4, !tbaa !5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %17, %18
  %conv22 = sext i32 %sub to i64
  %cmp23 = icmp ugt i64 %conv22, 256
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %19 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %21 = load i32, i32* %size.addr, align 4, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %sub29 = sub nsw i32 %21, %22
  %sub30 = sub nsw i32 %sub29, 1
  %conv31 = sext i32 %sub30 to i64
  %call32 = call i8* @memcpy(i8* %arraydecay27, i8* %add.ptr28, i64 %conv31) #7
  %23 = load i32, i32* %size.addr, align 4, !tbaa !5
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %sub33 = sub nsw i32 %23, %24
  %sub34 = sub nsw i32 %sub33, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1, !tbaa !83
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call38 = call double @strtod(i8* %arraydecay37, i8** %tail) #7
  %25 = load double*, double** %ph.addr, align 8, !tbaa !1
  store double %call38, double* %25, align 8, !tbaa !40
  %26 = load i8*, i8** %tail, align 8, !tbaa !1
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %cmp40 = icmp eq i8* %26, %arraydecay39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.26
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42, %if.then.25, %if.then.20, %if.then.10, %if.then.5
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare void @gx_device_set_resolution(%struct.gx_device_s*, double, double) #0

declare i32 @gdev_prn_maybe_realloc_memory(%struct.gx_device_printer_s*, %struct.gdev_space_params_s*, i32, i32, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @ijs_client_enum_param(%struct._IjsClientCtx*, i32, i8*, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_raster_width(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %width = alloca i32, align 4
  %imat = alloca %struct.gs_matrix_s, align 4
  %xscale = alloca float, align 4
  %right = alloca i32, align 4
  %offset = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width1, align 4, !tbaa !98
  store i32 %2, i32* %width, align 4, !tbaa !5
  %3 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast float* %xscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %9 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !99
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void %9(%struct.gx_device_s* %10, %struct.gs_matrix_s* %imat) #6
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 0
  %11 = load float, float* %xx, align 4, !tbaa !100
  %conv = fpext float %11 to double
  %mul = fmul double %conv, 7.200000e+01
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %xscale, align 4, !tbaa !38
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 2
  %13 = load float, float* %arrayidx, align 4, !tbaa !38
  %conv3 = fpext float %13 to double
  %div = fdiv double %conv3, 7.200000e+01
  %14 = load float, float* %xscale, align 4, !tbaa !38
  %conv4 = fpext float %14 to double
  %mul5 = fmul double %div, %conv4
  %conv6 = fptosi double %mul5 to i32
  store i32 %conv6, i32* %right, align 4, !tbaa !5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 24
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  %16 = load float, float* %arrayidx7, align 4, !tbaa !38
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %18 = load float, float* %arrayidx8, align 4, !tbaa !38
  %div9 = fdiv float %16, %18
  %19 = load float, float* %xscale, align 4, !tbaa !38
  %mul10 = fmul float %div9, %19
  %conv11 = fptosi float %mul10 to i32
  store i32 %conv11, i32* %offset, align 4, !tbaa !5
  %20 = load i32, i32* %offset, align 4, !tbaa !5
  %21 = load i32, i32* %width, align 4, !tbaa !5
  %add = add nsw i32 %20, %21
  %22 = load i32, i32* %right, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %22
  store i32 %sub, i32* %end, align 4, !tbaa !5
  %23 = load i32, i32* %width, align 4, !tbaa !5
  %24 = load i32, i32* %end, align 4, !tbaa !5
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load i32, i32* %width, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, i32* %end, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast float* %xscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %31) #2
  %32 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  ret i32 %cond
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @ijs_client_begin_cmd(%struct._IjsClientCtx*, i32) #0

declare i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_get_bits(%struct.gx_device_printer_s* %pdev, i32 %y, i8* %str, i8** %actual_data) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %band_height = alloca i32, align 4
  %band_number = alloca i32, align 4
  %raster = alloca i32, align 4
  %y1 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %5, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %6 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %7, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %8 = load i32, i32* %BandHeight, align 4, !tbaa !47
  store i32 %8, i32* %band_height, align 4, !tbaa !5
  %9 = bitcast i32* %band_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %10, %11
  store i32 %div, i32* %band_number, align 4, !tbaa !5
  %12 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 86
  %14 = load i32, i32* %k_width, align 4, !tbaa !52
  %add = add nsw i32 %14, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !5
  %15 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %raster, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %band_height, align 4, !tbaa !5
  %19 = load i32, i32* %band_number, align 4, !tbaa !5
  %mul = mul nsw i32 %18, %19
  %sub = sub nsw i32 %17, %mul
  %mul1 = mul nsw i32 %16, %sub
  store i32 %mul1, i32* %y1, align 4, !tbaa !5
  %20 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %21, i32 0, i32 88
  %22 = load i8*, i8** %k_band, align 8, !tbaa !56
  %23 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band_size = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %23, i32 0, i32 87
  %24 = load i32, i32* %k_band_size, align 4, !tbaa !53
  %conv = sext i32 %24 to i64
  %call = call i8* @memset(i8* %22, i32 0, i64 %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %28 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %25, i32 %26, i8* %27, i8** %28) #6
  %29 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %band_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  ret i32 %call2
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

declare i32 @ijs_client_send_data_wait(%struct._IjsClientCtx*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_k_get_bits(%struct.gx_device_printer_s* %pdev, i32 %y, i8** %actual_data) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %y.addr = alloca i32, align 4
  %actual_data.addr = alloca i8**, align 8
  %ijsdev = alloca %struct.gx_device_ijs_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %band_height = alloca i32, align 4
  %band_number = alloca i32, align 4
  %raster = alloca i32, align 4
  %y1 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_ijs_s*
  store %struct.gx_device_ijs_s* %2, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %5, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %6 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %7, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %8 = load i32, i32* %BandHeight, align 4, !tbaa !47
  store i32 %8, i32* %band_height, align 4, !tbaa !5
  %9 = bitcast i32* %band_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %10, %11
  store i32 %div, i32* %band_number, align 4, !tbaa !5
  %12 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_width = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %13, i32 0, i32 86
  %14 = load i32, i32* %k_width, align 4, !tbaa !52
  %add = add nsw i32 %14, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %raster, align 4, !tbaa !5
  %15 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %raster, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %band_height, align 4, !tbaa !5
  %19 = load i32, i32* %band_number, align 4, !tbaa !5
  %mul = mul nsw i32 %18, %19
  %sub = sub nsw i32 %17, %mul
  %mul1 = mul nsw i32 %16, %sub
  store i32 %mul1, i32* %y1, align 4, !tbaa !5
  %20 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev, align 8, !tbaa !1
  %k_band = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %20, i32 0, i32 88
  %21 = load i8*, i8** %k_band, align 8, !tbaa !56
  %22 = load i32, i32* %y1, align 4, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  store i8* %add.ptr, i8** %23, align 8, !tbaa !1
  %24 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %band_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_device_ijs_s** %ijsdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 0
}

declare i32 @clist_finish_page(%struct.gx_device_s*, i32) #0

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @ijs_client_end_job(%struct._IjsClientCtx*, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_read_string(%struct.gs_param_list_s* %plist, i8* %pname, i8* %str, i32 %size, i32 %safety, i32 %only_when_closed) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %safety.addr = alloca i32, align 4
  %only_when_closed.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca %struct.gs_param_string_s, align 8
  %differs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %safety, i32* %safety.addr, align 4, !tbaa !5
  store i32 %only_when_closed, i32* %only_when_closed.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %differs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_s* %new_value) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %6 = load i32, i32* %size1, align 4, !tbaa !68
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %8) #5
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @bytes_compare(i8* %5, i32 %6, i8* %7, i32 %conv) #6
  store i32 %call3, i32* %differs, align 4, !tbaa !5
  %9 = load i32, i32* %safety.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load i32, i32* %differs, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -7, i32* %code, align 4, !tbaa !5
  br label %e

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %11 = load i32, i32* %only_when_closed.addr, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %if.end
  %12 = load i32, i32* %differs, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

if.end.9:                                         ; preds = %land.lhs.true.6, %if.end
  %size10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %13 = load i32, i32* %size10, align 4, !tbaa !68
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %13, %14
  br i1 %cmp, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.9
  %15 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %16 = load i8*, i8** %data13, align 8, !tbaa !66
  %size14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %17 = load i32, i32* %size14, align 4, !tbaa !68
  %conv15 = zext i32 %17 to i64
  %call16 = call i8* @strncpy(i8* %15, i8* %16, i64 %conv15) #7
  %size17 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %18 = load i32, i32* %size17, align 4, !tbaa !68
  %add = add i32 %18, 1
  %idxprom = zext i32 %add to i64
  %19 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !83
  br label %sw.epilog

if.end.18:                                        ; preds = %if.end.9
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call19 = call i32 @param_read_null(%struct.gs_param_list_s* %20, i8* %21) #6
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.23, %if.end.18, %if.then.8, %if.then
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !102
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %23, i32 0, i32 7
  %24 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !104
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %call24 = call i32 %24(%struct.gs_param_list_s* %25, i8* %26, i32 %27) #6
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.25, %if.then.12
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.22
  %29 = bitcast i32* %differs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_read_string_malloc(%struct.gs_param_list_s* %plist, i8* %pname, i8** %str, i32* %size, i32 %only_when_closed) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %str.addr = alloca i8**, align 8
  %size.addr = alloca i32*, align 8
  %only_when_closed.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca %struct.gs_param_string_s, align 8
  %differs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i8** %str, i8*** %str.addr, align 8, !tbaa !1
  store i32* %size, i32** %size.addr, align 8, !tbaa !1
  store i32 %only_when_closed, i32* %only_when_closed.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %differs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_s* %new_value) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %6 = load i32, i32* %size1, align 4, !tbaa !68
  %7 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %9 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), %cond.false ]
  %11 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %12, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %13 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %14) #5
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i64 [ %call4, %cond.true.3 ], [ 0, %cond.false.5 ]
  %conv = trunc i64 %cond7 to i32
  %call8 = call i32 @bytes_compare(i8* %5, i32 %6, i8* %cond, i32 %conv) #6
  store i32 %call8, i32* %differs, align 4, !tbaa !5
  %15 = load i32, i32* %only_when_closed.addr, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.6
  %16 = load i32, i32* %differs, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

if.end:                                           ; preds = %land.lhs.true, %cond.end.6
  %size11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %17 = load i32, i32* %size11, align 4, !tbaa !68
  %add = add i32 %17, 1
  %18 = load i32*, i32** %size.addr, align 8, !tbaa !1
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %cmp = icmp ne i32 %add, %19
  br i1 %cmp, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %20 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %20, align 8, !tbaa !1
  %tobool14 = icmp ne i8* %21, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.13
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !106
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !54
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !106
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !54
  %29 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %29, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.13
  %31 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  store i8* null, i8** %31, align 8, !tbaa !1
  %32 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 0, i32* %32, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %33 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %33, align 8, !tbaa !1
  %cmp20 = icmp eq i8* %34, null
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end.19
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !106
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !54
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !55
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !106
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !54
  %size28 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %42 = load i32, i32* %size28, align 4, !tbaa !68
  %add29 = add i32 %42, 1
  %call30 = call i8* %38(%struct.gs_memory_s* %41, i32 %add29, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  %43 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  store i8* %call30, i8** %43, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.22, %if.end.19
  %44 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %44, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %45, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %e

if.end.35:                                        ; preds = %if.end.31
  %size36 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %46 = load i32, i32* %size36, align 4, !tbaa !68
  %add37 = add i32 %46, 1
  %47 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 %add37, i32* %47, align 4, !tbaa !5
  %48 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %48, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %50 = load i8*, i8** %data38, align 8, !tbaa !66
  %size39 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %51 = load i32, i32* %size39, align 4, !tbaa !68
  %conv40 = zext i32 %51 to i64
  %call41 = call i8* @strncpy(i8* %49, i8* %50, i64 %conv40) #7
  %size42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %52 = load i32, i32* %size42, align 4, !tbaa !68
  %idxprom = zext i32 %52 to i64
  %53 = load i8**, i8*** %str.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %53, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !83
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call43 = call i32 @param_read_null(%struct.gs_param_list_s* %55, i8* %56) #6
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.47, %if.then.34, %if.then
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %57, i32 0, i32 0
  %58 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs48, align 8, !tbaa !102
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %58, i32 0, i32 7
  %59 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !104
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %call49 = call i32 %59(%struct.gs_param_list_s* %60, i8* %61, i32 %62) #6
  br label %sw.bb.50

sw.bb.50:                                         ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.50, %if.end.35
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.46
  %64 = bitcast i32* %differs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #2
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_read_int(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pval, i32 %min_value, i32 %max_value, i32 %only_when_closed) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pval.addr = alloca i32*, align 8
  %min_value.addr = alloca i32, align 4
  %max_value.addr = alloca i32, align 4
  %only_when_closed.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !1
  store i32 %min_value, i32* %min_value.addr, align 4, !tbaa !5
  store i32 %max_value, i32* %max_value.addr, align 4, !tbaa !5
  store i32 %only_when_closed, i32* %only_when_closed.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %2, i8* %3, i32* %new_value) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %only_when_closed.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i32, i32* %new_value, align 4, !tbaa !5
  %6 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %8 = load i32, i32* %new_value, align 4, !tbaa !5
  %9 = load i32, i32* %min_value.addr, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %8, %9
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.5

land.lhs.true.2:                                  ; preds = %if.end
  %10 = load i32, i32* %new_value, align 4, !tbaa !5
  %11 = load i32, i32* %max_value.addr, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %10, %11
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true.2
  %12 = load i32, i32* %new_value, align 4, !tbaa !5
  %13 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  store i32 %12, i32* %13, align 4, !tbaa !5
  br label %sw.epilog

if.end.5:                                         ; preds = %land.lhs.true.2, %if.end
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call6 = call i32 @param_read_null(%struct.gs_param_list_s* %14, i8* %15) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.9, %if.end.5, %if.then
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %16, i32 0, i32 0
  %17 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !102
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %17, i32 0, i32 7
  %18 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !104
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %call10 = call i32 %18(%struct.gs_param_list_s* %19, i8* %20, i32 %21) #6
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.then.4
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.8
  %23 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_read_bool(%struct.gs_param_list_s* %plist, i8* %pname, i32* %pval, i32 %only_when_closed) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pval.addr = alloca i32*, align 8
  %only_when_closed.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32* %pval, i32** %pval.addr, align 8, !tbaa !1
  store i32 %only_when_closed, i32* %only_when_closed.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %2, i8* %3, i32* %new_value) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %only_when_closed.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i32, i32* %new_value, align 4, !tbaa !5
  %6 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %8 = load i32, i32* %new_value, align 4, !tbaa !5
  %9 = load i32*, i32** %pval.addr, align 8, !tbaa !1
  store i32 %8, i32* %9, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call1 = call i32 @param_read_null(%struct.gs_param_list_s* %10, i8* %11) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.4, %if.then
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !102
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !104
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, i32 %17) #6
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.3
  %19 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gsijs_set_color_format(%struct.gx_device_ijs_s* %ijsdev) #1 {
entry:
  %retval = alloca i32, align 4
  %ijsdev.addr = alloca %struct.gx_device_ijs_s*, align 8
  %dci = alloca %struct.gx_device_color_info_s, align 8
  %components = alloca i32, align 4
  %bpc = alloca i32, align 4
  %maxvalue = alloca i32, align 4
  %ColorSpace = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__s1_len55 = alloca i64, align 8
  %__s2_len57 = alloca i64, align 8
  %tmp58 = alloca i32, align 4
  %__s165 = alloca i8*, align 8
  %__result67 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %__s1_len124 = alloca i64, align 8
  %__s2_len126 = alloca i64, align 8
  %tmp127 = alloca i32, align 4
  %__s1134 = alloca i8*, align 8
  %__result136 = alloca i32, align 4
  %tmp174 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_ijs_s* %ijsdev, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_info_s* %dci to i8*
  call void @llvm.lifetime.start(i64 720, i8* %0) #2
  %1 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %1, i32 0, i32 11
  %2 = bitcast %struct.gx_device_color_info_s* %dci to i8*
  %3 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 720, i32 8, i1 false), !tbaa.struct !107
  %4 = bitcast i32* %components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %6, i32 0, i32 72
  %7 = load i32, i32* %BitsPerSample, align 4, !tbaa !57
  store i32 %7, i32* %bpc, align 4, !tbaa !5
  %8 = bitcast i32* %maxvalue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %ColorSpace1 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %10, i32 0, i32 70
  %11 = load i8*, i8** %ColorSpace1, align 8, !tbaa !62
  store i8* %11, i8** %ColorSpace, align 8, !tbaa !1
  %12 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %ColorSpace, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.32 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %call = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #5
  store i64 %call, i64* %__s2_len, align 8, !tbaa !89
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !89
  %cmp2 = icmp ult i64 %15, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %16 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  store i8* %17, i8** %__s1, align 8, !tbaa !1
  %18 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !83
  %conv = zext i8 %20 to i32
  %21 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), align 1, !tbaa !83
  %conv5 = zext i8 %21 to i32
  %sub = sub nsw i32 %conv, %conv5
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %22 = load i64, i64* %__s2_len, align 8, !tbaa !89
  %cmp6 = icmp ugt i64 %22, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.38

land.lhs.true.8:                                  ; preds = %cond.true
  %23 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %23, 0
  br i1 %cmp9, label %if.then.11, label %if.end.38

if.then.11:                                       ; preds = %land.lhs.true.8
  %24 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx12, align 1, !tbaa !83
  %conv13 = zext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 1), align 1, !tbaa !83
  %conv14 = zext i8 %26 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  store i32 %sub15, i32* %__result, align 4, !tbaa !5
  %27 = load i64, i64* %__s2_len, align 8, !tbaa !89
  %cmp16 = icmp ugt i64 %27, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.37

land.lhs.true.18:                                 ; preds = %if.then.11
  %28 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %28, 0
  br i1 %cmp19, label %if.then.21, label %if.end.37

if.then.21:                                       ; preds = %land.lhs.true.18
  %29 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx22, align 1, !tbaa !83
  %conv23 = zext i8 %30 to i32
  %31 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 2), align 1, !tbaa !83
  %conv24 = zext i8 %31 to i32
  %sub25 = sub nsw i32 %conv23, %conv24
  store i32 %sub25, i32* %__result, align 4, !tbaa !5
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !89
  %cmp26 = icmp ugt i64 %32, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.36

land.lhs.true.28:                                 ; preds = %if.then.21
  %33 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %33, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %land.lhs.true.28
  %34 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %arrayidx32, align 1, !tbaa !83
  %conv33 = zext i8 %35 to i32
  %36 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 3), align 1, !tbaa !83
  %conv34 = zext i8 %36 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.18, %if.then.11
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.8, %cond.true
  %37 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %37, i32* %tmp39, !tbaa !5
  %38 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %tmp39, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %41 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  %call40 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.38
  %cond = phi i32 [ %40, %if.end.38 ], [ %call40, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %42 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.else.53, label %if.then.41

if.then.41:                                       ; preds = %cond.end
  store i32 1, i32* %components, align 4, !tbaa !5
  %45 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %45, 1
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.41
  %46 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %46, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_w_b_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !109
  %47 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %47, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !110
  br label %if.end.50

if.else:                                          ; preds = %if.then.41
  %48 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs46 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %48, i32 0, i32 42
  %map_rgb_color47 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs46, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color47, align 8, !tbaa !109
  %49 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %49, i32 0, i32 42
  %map_color_rgb49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb49, align 8, !tbaa !110
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.44
  %50 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %50, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs51, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_fast_encode, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !111
  %51 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs52 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %51, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs52, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !112
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 2
  store i32 1, i32* %polarity, align 4, !tbaa !113
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 4
  store i8 0, i8* %gray_index, align 1, !tbaa !114
  br label %if.end.193

if.else.53:                                       ; preds = %cond.end
  %52 = bitcast i64* %__s1_len55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = bitcast i64* %__s2_len57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.59, label %cond.false.106

land.lhs.true.59:                                 ; preds = %if.else.53
  %call60 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #5
  store i64 %call60, i64* %__s2_len57, align 8, !tbaa !89
  %54 = load i64, i64* %__s2_len57, align 8, !tbaa !89
  %cmp61 = icmp ult i64 %54, 4
  br i1 %cmp61, label %cond.true.63, label %cond.false.106

cond.true.63:                                     ; preds = %land.lhs.true.59
  %55 = bitcast i8** %__s165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  store i8* %56, i8** %__s165, align 8, !tbaa !1
  %57 = bitcast i32* %__result67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i8*, i8** %__s165, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx68, align 1, !tbaa !83
  %conv69 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !83
  %conv70 = zext i8 %60 to i32
  %sub71 = sub nsw i32 %conv69, %conv70
  store i32 %sub71, i32* %__result67, align 4, !tbaa !5
  %61 = load i64, i64* %__s2_len57, align 8, !tbaa !89
  %cmp72 = icmp ugt i64 %61, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.104

land.lhs.true.74:                                 ; preds = %cond.true.63
  %62 = load i32, i32* %__result67, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %62, 0
  br i1 %cmp75, label %if.then.77, label %if.end.104

if.then.77:                                       ; preds = %land.lhs.true.74
  %63 = load i8*, i8** %__s165, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx78, align 1, !tbaa !83
  %conv79 = zext i8 %64 to i32
  %65 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !83
  %conv80 = zext i8 %65 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result67, align 4, !tbaa !5
  %66 = load i64, i64* %__s2_len57, align 8, !tbaa !89
  %cmp82 = icmp ugt i64 %66, 1
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.103

land.lhs.true.84:                                 ; preds = %if.then.77
  %67 = load i32, i32* %__result67, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %67, 0
  br i1 %cmp85, label %if.then.87, label %if.end.103

if.then.87:                                       ; preds = %land.lhs.true.84
  %68 = load i8*, i8** %__s165, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx88, align 1, !tbaa !83
  %conv89 = zext i8 %69 to i32
  %70 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !83
  %conv90 = zext i8 %70 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result67, align 4, !tbaa !5
  %71 = load i64, i64* %__s2_len57, align 8, !tbaa !89
  %cmp92 = icmp ugt i64 %71, 2
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.102

land.lhs.true.94:                                 ; preds = %if.then.87
  %72 = load i32, i32* %__result67, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %72, 0
  br i1 %cmp95, label %if.then.97, label %if.end.102

if.then.97:                                       ; preds = %land.lhs.true.94
  %73 = load i8*, i8** %__s165, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx98, align 1, !tbaa !83
  %conv99 = zext i8 %74 to i32
  %75 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !83
  %conv100 = zext i8 %75 to i32
  %sub101 = sub nsw i32 %conv99, %conv100
  store i32 %sub101, i32* %__result67, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.97, %land.lhs.true.94, %if.then.87
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.84, %if.then.77
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.74, %cond.true.63
  %76 = load i32, i32* %__result67, align 4, !tbaa !5
  store i32 %76, i32* %tmp105, !tbaa !5
  %77 = bitcast i32* %__result67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i8** %__s165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = load i32, i32* %tmp105, !tbaa !5
  br label %cond.end.108

cond.false.106:                                   ; preds = %land.lhs.true.59, %if.else.53
  %80 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  %call107 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %if.end.104
  %cond109 = phi i32 [ %79, %if.end.104 ], [ %call107, %cond.false.106 ]
  store i32 %cond109, i32* %tmp58, !tbaa !5
  %81 = bitcast i64* %__s2_len57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i64* %__s1_len55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = load i32, i32* %tmp58, !tbaa !5
  %tobool110 = icmp ne i32 %83, 0
  br i1 %tobool110, label %if.else.122, label %if.then.111

if.then.111:                                      ; preds = %cond.end.108
  store i32 3, i32* %components, align 4, !tbaa !5
  %84 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs112 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %84, i32 0, i32 42
  %map_rgb_color113 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs112, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color113, align 8, !tbaa !109
  %85 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %85, i32 0, i32 42
  %map_color_rgb115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb115, align 8, !tbaa !110
  %86 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs116 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %86, i32 0, i32 42
  %encode_color117 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %encode_color117, align 8, !tbaa !111
  %87 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs118 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %87, i32 0, i32 42
  %decode_color119 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color119, align 8, !tbaa !112
  %polarity120 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 2
  store i32 1, i32* %polarity120, align 4, !tbaa !113
  %gray_index121 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 4
  store i8 -1, i8* %gray_index121, align 1, !tbaa !114
  br label %if.end.192

if.else.122:                                      ; preds = %cond.end.108
  %88 = bitcast i64* %__s1_len124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #2
  %89 = bitcast i64* %__s2_len126 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.31 to i64)), i64 1), label %land.lhs.true.128, label %cond.false.175

land.lhs.true.128:                                ; preds = %if.else.122
  %call129 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #5
  store i64 %call129, i64* %__s2_len126, align 8, !tbaa !89
  %90 = load i64, i64* %__s2_len126, align 8, !tbaa !89
  %cmp130 = icmp ult i64 %90, 4
  br i1 %cmp130, label %cond.true.132, label %cond.false.175

cond.true.132:                                    ; preds = %land.lhs.true.128
  %91 = bitcast i8** %__s1134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  %92 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  store i8* %92, i8** %__s1134, align 8, !tbaa !1
  %93 = bitcast i32* %__result136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load i8*, i8** %__s1134, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx137, align 1, !tbaa !83
  %conv138 = zext i8 %95 to i32
  %96 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), align 1, !tbaa !83
  %conv139 = zext i8 %96 to i32
  %sub140 = sub nsw i32 %conv138, %conv139
  store i32 %sub140, i32* %__result136, align 4, !tbaa !5
  %97 = load i64, i64* %__s2_len126, align 8, !tbaa !89
  %cmp141 = icmp ugt i64 %97, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.173

land.lhs.true.143:                                ; preds = %cond.true.132
  %98 = load i32, i32* %__result136, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %98, 0
  br i1 %cmp144, label %if.then.146, label %if.end.173

if.then.146:                                      ; preds = %land.lhs.true.143
  %99 = load i8*, i8** %__s1134, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx147, align 1, !tbaa !83
  %conv148 = zext i8 %100 to i32
  %101 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i64 1), align 1, !tbaa !83
  %conv149 = zext i8 %101 to i32
  %sub150 = sub nsw i32 %conv148, %conv149
  store i32 %sub150, i32* %__result136, align 4, !tbaa !5
  %102 = load i64, i64* %__s2_len126, align 8, !tbaa !89
  %cmp151 = icmp ugt i64 %102, 1
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.172

land.lhs.true.153:                                ; preds = %if.then.146
  %103 = load i32, i32* %__result136, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %103, 0
  br i1 %cmp154, label %if.then.156, label %if.end.172

if.then.156:                                      ; preds = %land.lhs.true.153
  %104 = load i8*, i8** %__s1134, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %104, i64 2
  %105 = load i8, i8* %arrayidx157, align 1, !tbaa !83
  %conv158 = zext i8 %105 to i32
  %106 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i64 2), align 1, !tbaa !83
  %conv159 = zext i8 %106 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %__result136, align 4, !tbaa !5
  %107 = load i64, i64* %__s2_len126, align 8, !tbaa !89
  %cmp161 = icmp ugt i64 %107, 2
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.171

land.lhs.true.163:                                ; preds = %if.then.156
  %108 = load i32, i32* %__result136, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %108, 0
  br i1 %cmp164, label %if.then.166, label %if.end.171

if.then.166:                                      ; preds = %land.lhs.true.163
  %109 = load i8*, i8** %__s1134, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %109, i64 3
  %110 = load i8, i8* %arrayidx167, align 1, !tbaa !83
  %conv168 = zext i8 %110 to i32
  %111 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i64 3), align 1, !tbaa !83
  %conv169 = zext i8 %111 to i32
  %sub170 = sub nsw i32 %conv168, %conv169
  store i32 %sub170, i32* %__result136, align 4, !tbaa !5
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.166, %land.lhs.true.163, %if.then.156
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %land.lhs.true.153, %if.then.146
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %land.lhs.true.143, %cond.true.132
  %112 = load i32, i32* %__result136, align 4, !tbaa !5
  store i32 %112, i32* %tmp174, !tbaa !5
  %113 = bitcast i32* %__result136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i8** %__s1134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %tmp174, !tbaa !5
  br label %cond.end.177

cond.false.175:                                   ; preds = %land.lhs.true.128, %if.else.122
  %116 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  %call176 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #7
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.175, %if.end.173
  %cond178 = phi i32 [ %115, %if.end.173 ], [ %call176, %cond.false.175 ]
  store i32 %cond178, i32* %tmp127, !tbaa !5
  %117 = bitcast i64* %__s2_len126 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i64* %__s1_len124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = load i32, i32* %tmp127, !tbaa !5
  %tobool179 = icmp ne i32 %119, 0
  br i1 %tobool179, label %if.else.190, label %if.then.180

if.then.180:                                      ; preds = %cond.end.177
  store i32 4, i32* %components, align 4, !tbaa !5
  %120 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs181 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %120, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs181, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !115
  %121 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs182 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %121, i32 0, i32 42
  %map_color_rgb183 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs182, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @cmyk_8bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb183, align 8, !tbaa !110
  %122 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs184 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %122, i32 0, i32 42
  %encode_color185 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs184, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %encode_color185, align 8, !tbaa !111
  %123 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %123, i32 0, i32 42
  %decode_color187 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs186, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color187, align 8, !tbaa !112
  %polarity188 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 2
  store i32 0, i32* %polarity188, align 4, !tbaa !113
  %gray_index189 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 4
  store i8 3, i8* %gray_index189, align 1, !tbaa !114
  br label %if.end.191

if.else.190:                                      ; preds = %cond.end.177
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.191:                                       ; preds = %if.then.180
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.111
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.50
  %124 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %124
  %sub194 = sub nsw i32 %shl, 1
  store i32 %sub194, i32* %maxvalue, align 4, !tbaa !5
  %125 = load i32, i32* %components, align 4, !tbaa !5
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 0
  store i32 %125, i32* %max_components, align 4, !tbaa !116
  %126 = load i32, i32* %components, align 4, !tbaa !5
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 1
  store i32 %126, i32* %num_components, align 4, !tbaa !117
  %127 = load i32, i32* %bpc, align 4, !tbaa !5
  %128 = load i32, i32* %components, align 4, !tbaa !5
  %mul = mul nsw i32 %127, %128
  %conv195 = trunc i32 %mul to i16
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 3
  store i16 %conv195, i16* %depth, align 2, !tbaa !118
  %129 = load i32, i32* %maxvalue, align 4, !tbaa !5
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 5
  store i32 %129, i32* %max_gray, align 4, !tbaa !119
  %130 = load i32, i32* %components, align 4, !tbaa !5
  %cmp196 = icmp sgt i32 %130, 1
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %if.end.193
  %131 = load i32, i32* %maxvalue, align 4, !tbaa !5
  br label %cond.end.200

cond.false.199:                                   ; preds = %if.end.193
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.198
  %cond201 = phi i32 [ %131, %cond.true.198 ], [ 0, %cond.false.199 ]
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 6
  store i32 %cond201, i32* %max_color, align 4, !tbaa !120
  %132 = load i32, i32* %maxvalue, align 4, !tbaa !5
  %add = add nsw i32 %132, 1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 7
  store i32 %add, i32* %dither_grays, align 4, !tbaa !121
  %133 = load i32, i32* %components, align 4, !tbaa !5
  %cmp202 = icmp sgt i32 %133, 1
  br i1 %cmp202, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %cond.end.200
  %134 = load i32, i32* %maxvalue, align 4, !tbaa !5
  %add205 = add nsw i32 %134, 1
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.end.200
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.204
  %cond208 = phi i32 [ %add205, %cond.true.204 ], [ 0, %cond.false.206 ]
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 8
  store i32 %cond208, i32* %dither_colors, align 4, !tbaa !122
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !123
  %135 = load i8*, i8** %ColorSpace, align 8, !tbaa !1
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %dci, i32 0, i32 14
  store i8* %135, i8** %cm_name, align 8, !tbaa !124
  %136 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %color_info209 = getelementptr inbounds %struct.gx_device_ijs_s, %struct.gx_device_ijs_s* %136, i32 0, i32 11
  %137 = bitcast %struct.gx_device_color_info_s* %color_info209 to i8*
  %138 = bitcast %struct.gx_device_color_info_s* %dci to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 720, i32 8, i1 false), !tbaa.struct !107
  %139 = load %struct.gx_device_ijs_s*, %struct.gx_device_ijs_s** %ijsdev.addr, align 8, !tbaa !1
  %140 = bitcast %struct.gx_device_ijs_s* %139 to %struct.gx_device_s*
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %140) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.207, %if.else.190
  %141 = bitcast i8** %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i32* %maxvalue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast %struct.gx_device_color_info_s* %dci to i8*
  call void @llvm.lifetime.end(i64 720, i8* %145) #2
  %146 = load i32, i32* %retval
  ret i32 %146
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @gx_default_gray_fast_encode(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_decode_color(%struct.gx_device_s*, i64, i16*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #0

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
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
!20 = !{!21, !3, i64 1100}
!21 = !{!"gx_device_ijs_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !3, i64 18476, !2, i64 22576, !6, i64 22584, !6, i64 22588, !2, i64 22592, !6, i64 22600, !2, i64 22608, !6, i64 22616, !2, i64 22624, !6, i64 22632, !6, i64 22636, !6, i64 22640, !2, i64 22648, !6, i64 22656, !6, i64 22660, !6, i64 22664, !6, i64 22668, !6, i64 22672, !6, i64 22676, !2, i64 22680, !19, i64 22688}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!25 = !{!21, !2, i64 12984}
!26 = !{!21, !6, i64 18472}
!27 = !{!21, !6, i64 17156}
!28 = !{!21, !2, i64 17176}
!29 = !{!21, !2, i64 24}
!30 = !{!21, !2, i64 22648}
!31 = !{!21, !6, i64 22656}
!32 = !{!21, !2, i64 22592}
!33 = !{!21, !2, i64 22608}
!34 = !{!35, !6, i64 100}
!35 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!36 = !{!21, !6, i64 22660}
!37 = !{!21, !6, i64 22664}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !3, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"double", !3, i64 0}
!42 = !{!35, !2, i64 24}
!43 = !{!44, !2, i64 64}
!44 = !{!"gs_memory_s", !2, i64 0, !45, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!35, !12, i64 108}
!47 = !{!48, !6, i64 10132}
!48 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !23, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !17, i64 1792, !6, i64 1808, !6, i64 1812, !49, i64 1816, !50, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !51, i64 1888, !6, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!49 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!50 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!51 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !10, i64 8224, !10, i64 8232, !17, i64 8240}
!52 = !{!21, !6, i64 22672}
!53 = !{!21, !6, i64 22676}
!54 = !{!44, !2, i64 200}
!55 = !{!44, !2, i64 88}
!56 = !{!21, !2, i64 22680}
!57 = !{!21, !6, i64 22588}
!58 = !{!44, !2, i64 24}
!59 = !{!35, !10, i64 17184}
!60 = !{!48, !6, i64 1808}
!61 = !{!21, !2, i64 22624}
!62 = !{!21, !2, i64 22576}
!63 = !{!21, !6, i64 22632}
!64 = !{!21, !6, i64 22600}
!65 = !{!21, !6, i64 22616}
!66 = !{!67, !2, i64 0}
!67 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!68 = !{!67, !6, i64 8}
!69 = !{!67, !6, i64 12}
!70 = !{!21, !6, i64 22640}
!71 = !{!8, !6, i64 84}
!72 = !{!21, !6, i64 17168}
!73 = !{!21, !6, i64 17164}
!74 = !{!8, !6, i64 960}
!75 = !{!21, !6, i64 22584}
!76 = !{!21, !6, i64 100}
!77 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 8, !1, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !1, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 8, !1, i64 552, i64 8, !1, i64 560, i64 8, !1, i64 568, i64 8, !1, i64 576, i64 8, !1}
!78 = !{!8, !2, i64 1200}
!79 = !{!8, !2, i64 1216}
!80 = !{!8, !2, i64 1352}
!81 = !{!8, !2, i64 1336}
!82 = !{!8, !2, i64 1344}
!83 = !{!3, !3, i64 0}
!84 = !{!21, !6, i64 22636}
!85 = !{!21, !6, i64 832}
!86 = !{!21, !6, i64 836}
!87 = !{!21, !6, i64 84}
!88 = !{!21, !6, i64 1056}
!89 = !{!10, !10, i64 0}
!90 = !{!91, !2, i64 1728}
!91 = !{!"gx_device_forward_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728}
!92 = !{!21, !6, i64 22668}
!93 = !{!21, !2, i64 22744}
!94 = !{!21, !2, i64 22760}
!95 = !{!21, !2, i64 22896}
!96 = !{!21, !2, i64 22880}
!97 = !{!21, !2, i64 22888}
!98 = !{!8, !6, i64 832}
!99 = !{!8, !2, i64 1152}
!100 = !{!101, !39, i64 0}
!101 = !{!"gs_matrix_s", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!102 = !{!103, !2, i64 0}
!103 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!104 = !{!105, !2, i64 56}
!105 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!106 = !{!103, !2, i64 8}
!107 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !83, i64 12, i64 2, !108, i64 14, i64 1, !83, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !83, i64 44, i64 64, !83, i64 108, i64 64, !83, i64 176, i64 512, !83, i64 688, i64 8, !1, i64 696, i64 4, !83, i64 704, i64 8, !89, i64 712, i64 4, !5}
!108 = !{!12, !12, i64 0}
!109 = !{!21, !2, i64 1184}
!110 = !{!21, !2, i64 1192}
!111 = !{!21, !2, i64 1552}
!112 = !{!21, !2, i64 1560}
!113 = !{!11, !3, i64 8}
!114 = !{!11, !3, i64 14}
!115 = !{!21, !2, i64 1264}
!116 = !{!11, !6, i64 0}
!117 = !{!11, !6, i64 4}
!118 = !{!11, !12, i64 12}
!119 = !{!11, !6, i64 16}
!120 = !{!11, !6, i64 20}
!121 = !{!11, !6, i64 24}
!122 = !{!11, !6, i64 28}
!123 = !{!11, !3, i64 40}
!124 = !{!11, !2, i64 688}
