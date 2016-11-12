; ModuleID = './gdevl4r.bc'
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
%struct.gx_device_lips_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_device_lips4_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] }

@lips2p_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lips2p_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @lips_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"lips2p\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lips2p_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18624, %struct.gx_device_procs_s* @lips2p_prn_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1968, i32 2784, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float 0xC0479F3E80000000, float 0xC0479F3E80000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @lips2p_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @lips2p_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0, i32 0, [12 x i8] c"Ghostscript\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1 }, align 8
@lips3_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lips3_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @lips_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"lips3\00", align 1
@gs_lips3_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18624, %struct.gx_device_procs_s* @lips3_prn_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2460, i32 3480, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 0xC04D870E20000000, float 0xC04D870E20000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @lips3_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @lips2p_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0, i32 0, [12 x i8] c"Ghostscript\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1 }, align 8
@bjc880j_prn_color_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @bjc880j_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @lips_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"bjc880j\00", align 1
@gs_bjc880j_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] } { i32 18672, %struct.gx_device_procs_s* @bjc880j_prn_color_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2952, i32 4176, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 0xC051B76EE0000000, float 0xC03C58B160000000], [4 x float] [float 0x402C58B160000000, float 0x4036AD5AC0000000, float 0x402C58B160000000, float 0x4016AD5AC0000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @bjc880j_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @lips4_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0, i32 0, [12 x i8] c"Ghostscript\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 0, [32 x i8] c"Default\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8
@lips4_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lips4_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @lips_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"lips4\00", align 1
@gs_lips4_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] } { i32 18672, %struct.gx_device_procs_s* @lips4_prn_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 4920, i32 6960, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 0x408A1999A0000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 0xC05D870E20000000, float 0xC05D870E20000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @lips4_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @lips4_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0, i32 0, [12 x i8] c"Ghostscript\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 0, [32 x i8] c"Default\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"%c0J%c\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%c%%-12345X@PJL SET LPARM : LIPS SW2 = OFF\0A@PJL EOJ\0A%c%%-12345X\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Casset\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PJL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TonerDensity\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"TonerSaving\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Nup\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"OutputFaceUp\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"PlainPaper\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"OHP\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"TransparencyFilm\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"GlossyFilm\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"CardBoard\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"(CompBuf)\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%c%%-12345X@PJL CJLMODE\0A@PJL JOB\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"%c%%-12345X@PJL CJLMODE\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"@PJL SET RESOLUTION = SUPERFINE\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"@PJL SET RESOLUTION = FINE\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"@PJL SET RESOLUTION = QUICK\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"@PJL SET TONER-DENSITY=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"@PJL SET TONER-SAVING=\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ON\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"OFF\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"@PJL SET LPARM : LIPS SW2 = ON\0A@PJL ENTER LANGUAGE = LIPS\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%c%%@\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"%c21;%d;0Jlips2p:2.3.6%c\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"%c31;%d;0Jlips3:2.3.6%c\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"%c41;%d;0Jlips4:2.3.6%c\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"%c41;%d;0Jbjc880j:2.3.6%c\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%c1\22p\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%c0\22p\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%c<\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%c11h\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%c3&z\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%c4&z\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%c2&z\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%c20't\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%c40't\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%c30't\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%c41't\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%c10q\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"%c%dq\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"%c1q\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%c2 I\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"%c80;%d;%dp\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"%c81;%d;%dp\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"%c%dp\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%c%dv\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"%c11;12;12~\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"%c%d1;;%do\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"%c2;#x\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"%c0;#w\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%c2;#w\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%c0;#x\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"%c2y%s%c\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"%c?2;3h\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"%c?1;4;5;6l\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%c?7;%d I\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"%c7 I\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"%c%d G\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%c%dk\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%c%de\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%c%dj\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"%c%da\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"%c0;2t\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"%c1;3t\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"%c%dk\0D\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"\0D%c\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"(CompBuf2)\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"%c{%c%da%c%de%c;;;3}\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"%c%dj%c%dk\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"lips4c_compress_output_page(pBuff)\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"lips4c_compress_output_page(prevBuff)\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"lips4c_compress_output_page(ComBuff)\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"lips4c_compress_output_page(TotalBuff)\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"lips_print_page\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"%c%d;%d;%d;12;%d;;%d;%d;;1.r\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"%c%d;%d;%d.r\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"%c%d;%d;%d;9;%d.r\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"%c{%c%da%c%de%c}\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"%c%d;%d;%d;11;%d.r\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"%c%d;%d;%d;10;%d.r\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips2p_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call = call i32 @lips_print_page_copies(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 0, i32 %2) #5
  ret i32 %call
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
define internal void @lips2p_image_out(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %Len = alloca i32, align 4
  %raw_str = alloca [32 x i8], align 16
  %comp_str = alloca [32 x i8], align 16
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
  %3 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast [32 x i8]* %raw_str to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast [32 x i8]* %comp_str to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @move_cap(%struct.gx_device_printer_s* %6, %struct._IO_FILE* %7, i32 %8, i32 %9) #5
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 78
  %11 = load i8*, i8** %TmpBuf, align 8, !tbaa !7
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 79
  %13 = load i8*, i8** %CompBuf, align 8, !tbaa !23
  %14 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %14, 8
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %15
  %call = call i32 @lips_mode3format_encode(i8* %11, i8* %13, i32 %mul) #5
  store i32 %call, i32* %Len, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div1 = sdiv i32 %16, 8
  %17 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul2 = mul nsw i32 %div1, %17
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div3 = sdiv i32 %18, 8
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fptosi float %20 to i32
  %call4 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i32 155, i32 %mul2, i32 %div3, i32 %conv) #5
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %21 = load i32, i32* %Len, align 4, !tbaa !5
  %22 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div6 = sdiv i32 %22, 8
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 22
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution7, i32 0, i64 0
  %24 = load float, float* %arrayidx8, align 4, !tbaa !24
  %conv9 = fptosi float %24 to i32
  %25 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call10 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i32 155, i32 %21, i32 %div6, i32 %conv9, i32 %25) #5
  %26 = load i32, i32* %Len, align 4, !tbaa !5
  %conv11 = sext i32 %26 to i64
  %27 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div12 = sdiv i32 %27, 8
  %28 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %div12, %28
  %conv14 = sext i32 %mul13 to i64
  %arraydecay15 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call16 = call i64 @strlen(i8* %arraydecay15) #6
  %sub = sub i64 %conv14, %call16
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call18 = call i64 @strlen(i8* %arraydecay17) #6
  %add = add i64 %sub, %call18
  %cmp = icmp ult i64 %conv11, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay20) #5
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf22 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 79
  %31 = load i8*, i8** %CompBuf22, align 8, !tbaa !23
  %32 = load i32, i32* %Len, align 4, !tbaa !5
  %conv23 = sext i32 %32 to i64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call24 = call i64 @fwrite(i8* %31, i64 1, i64 %conv23, %struct._IO_FILE* %33) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay25) #5
  %35 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf27 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %35, i32 0, i32 78
  %36 = load i8*, i8** %TmpBuf27, align 8, !tbaa !7
  %37 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div28 = sdiv i32 %37, 8
  %38 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %div28, %38
  %conv30 = sext i32 %mul29 to i64
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i64 @fwrite(i8* %36, i64 1, i64 %conv30, %struct._IO_FILE* %39) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %40, i32 0, i32 85
  %41 = load i32, i32* %ShowBubble, align 4, !tbaa !26
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %43 = load i32, i32* %width.addr, align 4, !tbaa !5
  %44 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @draw_bubble(%struct._IO_FILE* %42, i32 %43, i32 %44) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  %45 = bitcast [32 x i8]* %comp_str to i8*
  call void @llvm.lifetime.end(i64 32, i8* %45) #2
  %46 = bitcast [32 x i8]* %raw_str to i8*
  call void @llvm.lifetime.end(i64 32, i8* %46) #2
  %47 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lips3_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call = call i32 @lips_print_page_copies(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 1, i32 %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc880j_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call = call i32 @lips4type_print_page_copies(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 %2, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @lips4_image_out(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %Len = alloca i32, align 4
  %Len_rle = alloca i32, align 4
  %raw_str = alloca [32 x i8], align 16
  %comp_str = alloca [32 x i8], align 16
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
  %3 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %Len_rle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast [32 x i8]* %raw_str to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = bitcast [32 x i8]* %comp_str to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @move_cap(%struct.gx_device_printer_s* %7, %struct._IO_FILE* %8, i32 %9, i32 %10) #5
  %11 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %11, i32 0, i32 78
  %12 = load i8*, i8** %TmpBuf, align 8, !tbaa !7
  %13 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %13, i32 0, i32 79
  %14 = load i8*, i8** %CompBuf, align 8, !tbaa !23
  %15 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %15, 8
  %16 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %16
  %call = call i32 @lips_packbits_encode(i8* %12, i8* %14, i32 %mul) #5
  store i32 %call, i32* %Len, align 4, !tbaa !5
  %17 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %17, i32 0, i32 78
  %18 = load i8*, i8** %TmpBuf1, align 8, !tbaa !7
  %19 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf2 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %19, i32 0, i32 80
  %20 = load i8*, i8** %CompBuf2, align 8, !tbaa !27
  %21 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div2 = sdiv i32 %21, 8
  %22 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul3 = mul nsw i32 %div2, %22
  %call4 = call i32 @lips_rle_encode(i8* %18, i8* %20, i32 %mul3) #5
  store i32 %call4, i32* %Len_rle, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %23 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div5 = sdiv i32 %23, 8
  %24 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul6 = mul nsw i32 %div5, %24
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div7 = sdiv i32 %25, 8
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %27 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fptosi float %27 to i32
  %call8 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i32 155, i32 %mul6, i32 %div7, i32 %conv) #5
  %28 = load i32, i32* %Len, align 4, !tbaa !5
  %29 = load i32, i32* %Len_rle, align 4, !tbaa !5
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %if.then, label %if.else.39

if.then:                                          ; preds = %entry
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %30 = load i32, i32* %Len, align 4, !tbaa !5
  %31 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div11 = sdiv i32 %31, 8
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 0
  %33 = load float, float* %arrayidx13, align 4, !tbaa !24
  %conv14 = fptosi float %33 to i32
  %34 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call15 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i32 155, i32 %30, i32 %div11, i32 %conv14, i32 %34) #5
  %35 = load i32, i32* %Len, align 4, !tbaa !5
  %conv16 = sext i32 %35 to i64
  %36 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div17 = sdiv i32 %36, 8
  %37 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul18 = mul nsw i32 %div17, %37
  %conv19 = sext i32 %mul18 to i64
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #6
  %sub = sub i64 %conv19, %call21
  %arraydecay22 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call23 = call i64 @strlen(i8* %arraydecay22) #6
  %add = add i64 %sub, %call23
  %cmp24 = icmp ult i64 %conv16, %add
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay27) #5
  %39 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf29 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %39, i32 0, i32 79
  %40 = load i8*, i8** %CompBuf29, align 8, !tbaa !23
  %41 = load i32, i32* %Len, align 4, !tbaa !5
  %conv30 = sext i32 %41 to i64
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i64 @fwrite(i8* %40, i64 1, i64 %conv30, %struct._IO_FILE* %42) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay32 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay32) #5
  %44 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf34 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %44, i32 0, i32 78
  %45 = load i8*, i8** %TmpBuf34, align 8, !tbaa !7
  %46 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div35 = sdiv i32 %46, 8
  %47 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %div35, %47
  %conv37 = sext i32 %mul36 to i64
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call38 = call i64 @fwrite(i8* %45, i64 1, i64 %conv37, %struct._IO_FILE* %48) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.26
  br label %if.end.73

if.else.39:                                       ; preds = %entry
  %arraydecay40 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %49 = load i32, i32* %Len, align 4, !tbaa !5
  %50 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div41 = sdiv i32 %50, 8
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution42 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 22
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution42, i32 0, i64 0
  %52 = load float, float* %arrayidx43, align 4, !tbaa !24
  %conv44 = fptosi float %52 to i32
  %53 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call45 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i32 155, i32 %49, i32 %div41, i32 %conv44, i32 %53) #5
  %54 = load i32, i32* %Len_rle, align 4, !tbaa !5
  %conv46 = sext i32 %54 to i64
  %55 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div47 = sdiv i32 %55, 8
  %56 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul48 = mul nsw i32 %div47, %56
  %conv49 = sext i32 %mul48 to i64
  %arraydecay50 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call51 = call i64 @strlen(i8* %arraydecay50) #6
  %sub52 = sub i64 %conv49, %call51
  %arraydecay53 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call54 = call i64 @strlen(i8* %arraydecay53) #6
  %add55 = add i64 %sub52, %call54
  %cmp56 = icmp ult i64 %conv46, %add55
  br i1 %cmp56, label %if.then.58, label %if.else.64

if.then.58:                                       ; preds = %if.else.39
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [32 x i8], [32 x i8]* %comp_str, i32 0, i32 0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay59) #5
  %58 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf261 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %58, i32 0, i32 80
  %59 = load i8*, i8** %CompBuf261, align 8, !tbaa !27
  %60 = load i32, i32* %Len, align 4, !tbaa !5
  %conv62 = sext i32 %60 to i64
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call63 = call i64 @fwrite(i8* %59, i64 1, i64 %conv62, %struct._IO_FILE* %61) #5
  br label %if.end.72

if.else.64:                                       ; preds = %if.else.39
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %arraydecay65 = getelementptr inbounds [32 x i8], [32 x i8]* %raw_str, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay65) #5
  %63 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf67 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %63, i32 0, i32 78
  %64 = load i8*, i8** %TmpBuf67, align 8, !tbaa !7
  %65 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div68 = sdiv i32 %65, 8
  %66 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul69 = mul nsw i32 %div68, %66
  %conv70 = sext i32 %mul69 to i64
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call71 = call i64 @fwrite(i8* %64, i64 1, i64 %conv70, %struct._IO_FILE* %67) #5
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.64, %if.then.58
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end
  %68 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %ShowBubble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %68, i32 0, i32 85
  %69 = load i32, i32* %ShowBubble, align 4, !tbaa !26
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.73
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %71 = load i32, i32* %width.addr, align 4, !tbaa !5
  %72 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @draw_bubble(%struct._IO_FILE* %70, i32 %71, i32 %72) #5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.73
  %73 = bitcast [32 x i8]* %comp_str to i8*
  call void @llvm.lifetime.end(i64 32, i8* %73) #2
  %74 = bitcast [32 x i8]* %raw_str to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #2
  %75 = bitcast i32* %Len_rle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call = call i32 @lips4type_print_page_copies(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 %2, i32 3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lips2p_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @lips_open(%struct.gx_device_s* %0, i32 0) #5
  ret i32 %call
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %lips = alloca %struct.gx_device_lips_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips_s*
  store %struct.gx_device_lips_s* %5, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %6, i32 1) #5
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !28
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 144, i32 156) #5
  %9 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %9, i32 0, i32 88
  %10 = load i32, i32* %pjl, align 4, !tbaa !30
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 52
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file2, align 8, !tbaa !28
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0), i32 27, i32 27) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 @gdev_prn_close(%struct.gx_device_s* %13) #5
  %14 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call4
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lips = alloca %struct.gx_device_lips_s*, align 8
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %usern = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips_s*
  store %struct.gx_device_lips_s* %2, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @lprn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %11, i32 0, i32 86
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* %cassetFeed) #5
  store i32 %call1, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %12, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %14, i32 0, i32 88
  %call5 = call i32 @param_write_bool(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32* %pjl) #5
  store i32 %call5, i32* %ncode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %15 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %15, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_density = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %17, i32 0, i32 89
  %call9 = call i32 @param_write_int(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32* %toner_density) #5
  store i32 %call9, i32* %ncode, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %18 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %18, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %19 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %19, i32 0, i32 91
  %20 = load i32, i32* %toner_saving_set, align 4, !tbaa !32
  %cmp13 = icmp sge i32 %20, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.12
  %21 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set14 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %21, i32 0, i32 91
  %22 = load i32, i32* %toner_saving_set14, align 4, !tbaa !32
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %24, i32 0, i32 90
  %call15 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32* %toner_saving) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @param_write_null(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call15, %cond.true ], [ %call16, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %cond, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end
  %26 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %26, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %cond.end, %if.end.12
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %27, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.19
  %29 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %29, i32 0, i32 87
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !33
  %30 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username23 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %30, i32 0, i32 87
  %arraydecay24 = getelementptr inbounds [12 x i8], [12 x i8]* %Username23, i32 0, i32 0
  %call25 = call i64 @strlen(i8* %arraydecay24) #6
  %conv = trunc i64 %call25 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !35
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !36
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call26 = call i32 @param_write_string(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.gs_param_string_s* %usern) #5
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then
  %32 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.end(i64 16, i8* %32) #2
  %33 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @lips_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lips = alloca %struct.gx_device_lips_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %cass = alloca i32, align 4
  %pjl = alloca i32, align 4
  %toner_density = alloca i32, align 4
  %toner_saving = alloca i32, align 4
  %toner_saving_set = alloca i32, align 4
  %usern = alloca %struct.gs_param_string_s, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips_s*
  store %struct.gx_device_lips_s* %2, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %cass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %7, i32 0, i32 86
  %8 = load i32, i32* %cassetFeed, align 4, !tbaa !37
  store i32 %8, i32* %cass, align 4, !tbaa !5
  %9 = bitcast i32* %pjl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %pjl1 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %10, i32 0, i32 88
  %11 = load i32, i32* %pjl1, align 4, !tbaa !30
  store i32 %11, i32* %pjl, align 4, !tbaa !5
  %12 = bitcast i32* %toner_density to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_density2 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %13, i32 0, i32 89
  %14 = load i32, i32* %toner_density2, align 4, !tbaa !38
  store i32 %14, i32* %toner_density, align 4, !tbaa !5
  %15 = bitcast i32* %toner_saving to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving3 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %16, i32 0, i32 90
  %17 = load i32, i32* %toner_saving3, align 4, !tbaa !39
  store i32 %17, i32* %toner_saving, align 4, !tbaa !5
  %18 = bitcast i32* %toner_saving_set to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set4 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %19, i32 0, i32 91
  %20 = load i32, i32* %toner_saving_set4, align 4, !tbaa !32
  store i32 %20, i32* %toner_saving_set, align 4, !tbaa !5
  %21 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #2
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* %cass) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %23 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp = icmp slt i32 %23, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %24 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %24, 17
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %25 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %25, 3
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %26 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %26, 10
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.6
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %casse

sw.default:                                       ; preds = %entry
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %ecode, align 4, !tbaa !5
  br label %casse

casse:                                            ; preds = %sw.default, %if.end
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %28, i32 0, i32 0
  %29 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !40
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %29, i32 0, i32 7
  %30 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !42
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %param_name, align 8, !tbaa !1
  %33 = load i32, i32* %ecode, align 4, !tbaa !5
  %call9 = call i32 %30(%struct.gs_param_list_s* %31, i8* %32, i32 %33) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %casse, %entry, %if.else
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call10 = call i32 @param_read_bool(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32* %pjl) #5
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %sw.epilog
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 0
  %36 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs13, align 8, !tbaa !40
  %signal_error14 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %36, i32 0, i32 7
  %37 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error14, align 8, !tbaa !42
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %param_name, align 8, !tbaa !1
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %ecode, align 4, !tbaa !5
  %call15 = call i32 %37(%struct.gs_param_list_s* %38, i8* %39, i32 %40) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %sw.epilog
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call17 = call i32 @param_read_int(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32* %toner_density) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  switch i32 %call17, label %sw.default.25 [
    i32 0, label %sw.bb.18
    i32 1, label %sw.epilog.29
  ]

sw.bb.18:                                         ; preds = %if.end.16
  %42 = load i32, i32* %toner_density, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %42, 0
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %sw.bb.18
  %43 = load i32, i32* %toner_density, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %43, 8
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %sw.bb.18
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.24

if.else.23:                                       ; preds = %lor.lhs.false.20
  br label %sw.epilog.29

if.end.24:                                        ; preds = %if.then.22
  br label %tden

sw.default.25:                                    ; preds = %if.end.16
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %ecode, align 4, !tbaa !5
  br label %tden

tden:                                             ; preds = %sw.default.25, %if.end.24
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs26, align 8, !tbaa !40
  %signal_error27 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error27, align 8, !tbaa !42
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %param_name, align 8, !tbaa !1
  %50 = load i32, i32* %ecode, align 4, !tbaa !5
  %call28 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #5
  br label %sw.epilog.29

sw.epilog.29:                                     ; preds = %tden, %if.end.16, %if.else.23
  %51 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set30 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %51, i32 0, i32 91
  %52 = load i32, i32* %toner_saving_set30, align 4, !tbaa !32
  %cmp31 = icmp sge i32 %52, 0
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %sw.epilog.29
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call33 = call i32 @param_read_bool(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32* %toner_saving) #5
  store i32 %call33, i32* %code, align 4, !tbaa !5
  switch i32 %call33, label %sw.default.35 [
    i32 0, label %sw.bb.34
    i32 1, label %sw.epilog.43
  ]

sw.bb.34:                                         ; preds = %if.then.32
  store i32 1, i32* %toner_saving_set, align 4, !tbaa !5
  br label %sw.epilog.43

sw.default.35:                                    ; preds = %if.then.32
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call36 = call i32 @param_read_null(%struct.gs_param_list_s* %54, i8* %55) #5
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.default.35
  store i32 0, i32* %toner_saving_set, align 4, !tbaa !5
  br label %sw.epilog.43

if.end.39:                                        ; preds = %sw.default.35
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %ecode, align 4, !tbaa !5
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %57, i32 0, i32 0
  %58 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs40, align 8, !tbaa !40
  %signal_error41 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %58, i32 0, i32 7
  %59 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error41, align 8, !tbaa !42
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %param_name, align 8, !tbaa !1
  %62 = load i32, i32* %ecode, align 4, !tbaa !5
  %call42 = call i32 %59(%struct.gs_param_list_s* %60, i8* %61, i32 %62) #5
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %if.end.39, %if.then.32, %if.then.38, %sw.bb.34
  br label %if.end.44

if.end.44:                                        ; preds = %sw.epilog.43, %sw.epilog.29
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call45 = call i32 @param_read_string(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.gs_param_string_s* %usern) #5
  store i32 %call45, i32* %code, align 4, !tbaa !5
  switch i32 %call45, label %sw.default.64 [
    i32 0, label %sw.bb.46
    i32 1, label %sw.bb.68
  ]

sw.bb.46:                                         ; preds = %if.end.44
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %64 = load i32, i32* %size, align 4, !tbaa !35
  %cmp47 = icmp ugt i32 %64, 12
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %sw.bb.46
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %userne

if.else.49:                                       ; preds = %sw.bb.46
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.49
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %size50 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %67 = load i32, i32* %size50, align 4, !tbaa !35
  %cmp51 = icmp ult i32 %66, %67
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %68 to i64
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %69 = load i8*, i8** %data, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 %idxprom
  %70 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv = zext i8 %70 to i32
  %cmp52 = icmp slt i32 %conv, 32
  br i1 %cmp52, label %if.then.61, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %for.body
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %71 to i64
  %data56 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %72 = load i8*, i8** %data56, align 8, !tbaa !33
  %arrayidx57 = getelementptr inbounds i8, i8* %72, i64 %idxprom55
  %73 = load i8, i8* %arrayidx57, align 1, !tbaa !44
  %conv58 = zext i8 %73 to i32
  %cmp59 = icmp sgt i32 %conv58, 126
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false.54, %for.body
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %lor.lhs.false.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.61, %for.end
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.108 [
    i32 0, label %cleanup.cont
    i32 8, label %userne
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont
  br label %sw.epilog.70

sw.default.64:                                    ; preds = %if.end.44
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %ecode, align 4, !tbaa !5
  br label %userne

userne:                                           ; preds = %sw.default.64, %cleanup, %if.then.48
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs65 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %77, i32 0, i32 0
  %78 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs65, align 8, !tbaa !40
  %signal_error66 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %78, i32 0, i32 7
  %79 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error66, align 8, !tbaa !42
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %param_name, align 8, !tbaa !1
  %82 = load i32, i32* %ecode, align 4, !tbaa !5
  %call67 = call i32 %79(%struct.gs_param_list_s* %80, i8* %81, i32 %82) #5
  br label %sw.bb.68

sw.bb.68:                                         ; preds = %if.end.44, %userne
  %data69 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  store i8* null, i8** %data69, align 8, !tbaa !33
  br label %sw.epilog.70

sw.epilog.70:                                     ; preds = %sw.bb.68, %if.end.63
  %83 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %83, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %sw.epilog.70
  %84 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.74:                                        ; preds = %sw.epilog.70
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call75 = call i32 @lprn_put_params(%struct.gx_device_s* %85, %struct.gs_param_list_s* %86) #5
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %87, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.74
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.79:                                        ; preds = %if.end.74
  %89 = load i32, i32* %cass, align 4, !tbaa !5
  %90 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed80 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %90, i32 0, i32 86
  store i32 %89, i32* %cassetFeed80, align 4, !tbaa !37
  %91 = load i32, i32* %pjl, align 4, !tbaa !5
  %92 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %pjl81 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %92, i32 0, i32 88
  store i32 %91, i32* %pjl81, align 4, !tbaa !30
  %93 = load i32, i32* %toner_density, align 4, !tbaa !5
  %94 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_density82 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %94, i32 0, i32 89
  store i32 %93, i32* %toner_density82, align 4, !tbaa !38
  %95 = load i32, i32* %toner_saving, align 4, !tbaa !5
  %96 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving83 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %96, i32 0, i32 90
  store i32 %95, i32* %toner_saving83, align 4, !tbaa !39
  %97 = load i32, i32* %toner_saving_set, align 4, !tbaa !5
  %98 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set84 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %98, i32 0, i32 91
  store i32 %97, i32* %toner_saving_set84, align 4, !tbaa !32
  %data85 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %99 = load i8*, i8** %data85, align 8, !tbaa !33
  %cmp86 = icmp ne i8* %99, null
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.107

land.lhs.true.88:                                 ; preds = %if.end.79
  %data89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %100 = load i8*, i8** %data89, align 8, !tbaa !33
  %size90 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %101 = load i32, i32* %size90, align 4, !tbaa !35
  %102 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %102, i32 0, i32 87
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %103 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username91 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %103, i32 0, i32 87
  %arraydecay92 = getelementptr inbounds [12 x i8], [12 x i8]* %Username91, i32 0, i32 0
  %call93 = call i64 @strlen(i8* %arraydecay92) #6
  %conv94 = trunc i64 %call93 to i32
  %call95 = call i32 @bytes_compare(i8* %100, i32 %101, i8* %arraydecay, i32 %conv94) #5
  %tobool = icmp ne i32 %call95, 0
  br i1 %tobool, label %if.then.96, label %if.end.107

if.then.96:                                       ; preds = %land.lhs.true.88
  %104 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username97 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %104, i32 0, i32 87
  %arraydecay98 = getelementptr inbounds [12 x i8], [12 x i8]* %Username97, i32 0, i32 0
  %data99 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %105 = load i8*, i8** %data99, align 8, !tbaa !33
  %size100 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %106 = load i32, i32* %size100, align 4, !tbaa !35
  %conv101 = zext i32 %106 to i64
  %call102 = call i8* @memcpy(i8* %arraydecay98, i8* %105, i64 %conv101) #7
  %size103 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %107 = load i32, i32* %size103, align 4, !tbaa !35
  %idxprom104 = zext i32 %107 to i64
  %108 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username105 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %108, i32 0, i32 87
  %arrayidx106 = getelementptr inbounds [12 x i8], [12 x i8]* %Username105, i32 0, i64 %idxprom104
  store i8 0, i8* %arrayidx106, align 1, !tbaa !44
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.96, %land.lhs.true.88, %if.end.79
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.107, %if.then.78, %if.then.73, %cleanup
  %109 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.end(i64 16, i8* %109) #2
  %110 = bitcast i32* %toner_saving_set to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %toner_saving to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %toner_density to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %pjl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %cass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = load i32, i32* %retval
  ret i32 %119
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips_open(%struct.gx_device_s* %pdev, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ptype.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !44
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !24
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %8 = load float, float* %arrayidx4, align 4, !tbaa !24
  %conv5 = fptosi float %8 to i32
  store i32 %conv5, i32* %xdpi, align 4, !tbaa !5
  %9 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 1
  %11 = load float, float* %arrayidx7, align 4, !tbaa !24
  %conv8 = fptosi float %11 to i32
  store i32 %conv8, i32* %ydpi, align 4, !tbaa !5
  %12 = load i32, i32* %width, align 4, !tbaa !5
  %13 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %width, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %14, 284
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %width, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %15, 842
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %height, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %16, 419
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %17 = load i32, i32* %height, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %17, 1190
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false, %if.then
  %18 = load i32, i32* %width, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %18, 792
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.25

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %19 = load i32, i32* %height, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %19, 1224
  br i1 %cmp23, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.22, %lor.lhs.false.17
  br label %if.end.45

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %width, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %20, 419
  br i1 %cmp26, label %land.lhs.true.37, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.else
  %21 = load i32, i32* %width, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %21, 1190
  br i1 %cmp29, label %land.lhs.true.37, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %22 = load i32, i32* %height, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %22, 284
  br i1 %cmp32, label %land.lhs.true.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %23 = load i32, i32* %height, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %23, 842
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.44

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false.28, %if.else
  %24 = load i32, i32* %width, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %24, 1224
  br i1 %cmp38, label %land.lhs.true.40, label %if.then.43

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %25 = load i32, i32* %height, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %25, 792
  br i1 %cmp41, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40, %land.lhs.true.37
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true.40, %lor.lhs.false.34
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %26 = load i32, i32* %xdpi, align 4, !tbaa !5
  %27 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp46 = icmp ne i32 %26, %27
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.45
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.49:                                       ; preds = %if.end.45
  %28 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp50 = icmp eq i32 %28, 0
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %if.else.49
  %29 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp53 = icmp ne i32 %29, 240
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.then.52
  br label %if.end.89

if.else.57:                                       ; preds = %if.else.49
  %30 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp58 = icmp eq i32 %30, 1
  br i1 %cmp58, label %if.then.60, label %if.else.65

if.then.60:                                       ; preds = %if.else.57
  %31 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp61 = icmp ne i32 %31, 300
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.60
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.then.60
  br label %if.end.88

if.else.65:                                       ; preds = %if.else.57
  %32 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp66 = icmp eq i32 %32, 2
  br i1 %cmp66, label %if.then.68, label %if.else.76

if.then.68:                                       ; preds = %if.else.65
  %33 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %33, 60
  br i1 %cmp69, label %if.then.74, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.then.68
  %34 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp72 = icmp sgt i32 %34, 360
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.71, %if.then.68
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %lor.lhs.false.71
  br label %if.end.87

if.else.76:                                       ; preds = %if.else.65
  %35 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %35, 60
  br i1 %cmp77, label %land.lhs.true.82, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.else.76
  %36 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %36, 600
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.86

land.lhs.true.82:                                 ; preds = %lor.lhs.false.79, %if.else.76
  %37 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %37, 1200
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.82
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %land.lhs.true.82, %lor.lhs.false.79
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.75
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.64
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.56
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %38) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %if.then.85, %if.then.74, %if.then.63, %if.then.55, %if.then.48, %if.then.43, %if.then.25
  %39 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @lprn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @lprn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @lips3_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @lips_open(%struct.gx_device_s* %0, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bjc880j_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @lips_open(%struct.gx_device_s* %0, i32 2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lips4 = alloca %struct.gx_device_lips4_s*, align 8
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4_s*
  store %struct.gx_device_lips4_s* %2, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @lips_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %nup = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %11, i32 0, i32 98
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32* %nup) #5
  store i32 %call1, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %12, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %faceup = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %14, i32 0, i32 99
  %call5 = call i32 @param_write_bool(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %faceup) #5
  store i32 %call5, i32* %ncode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %15 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %15, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %18 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %18, i32 0, i32 100
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !33
  %19 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType12 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %19, i32 0, i32 100
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType12, i32 0, i32 0
  %call14 = call i64 @strlen(i8* %arraydecay13) #6
  %conv = trunc i64 %call14 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !35
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !36
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_string(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_string_s* %pmedia) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %21 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #2
  %22 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %lips4 = alloca %struct.gx_device_lips4_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %nup = alloca i32, align 4
  %faceup = alloca i32, align 4
  %old_bpp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %__s1_len72 = alloca i64, align 8
  %__s2_len74 = alloca i64, align 8
  %tmp75 = alloca i32, align 4
  %__s182 = alloca i8*, align 8
  %__result85 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  %__s1_len133 = alloca i64, align 8
  %__s2_len135 = alloca i64, align 8
  %tmp136 = alloca i32, align 4
  %__s1143 = alloca i8*, align 8
  %__result146 = alloca i32, align 4
  %tmp184 = alloca i32, align 4
  %__s1_len194 = alloca i64, align 8
  %__s2_len196 = alloca i64, align 8
  %tmp197 = alloca i32, align 4
  %__s1204 = alloca i8*, align 8
  %__result207 = alloca i32, align 4
  %tmp245 = alloca i32, align 4
  %__s1_len255 = alloca i64, align 8
  %__s2_len257 = alloca i64, align 8
  %tmp258 = alloca i32, align 4
  %__s1265 = alloca i8*, align 8
  %__result268 = alloca i32, align 4
  %tmp306 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4_s*
  store %struct.gx_device_lips4_s* %2, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast i32* %nup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %nup1 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %8, i32 0, i32 98
  %9 = load i32, i32* %nup1, align 4, !tbaa !45
  store i32 %9, i32* %nup, align 4, !tbaa !5
  %10 = bitcast i32* %faceup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %faceup2 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %11, i32 0, i32 99
  %12 = load i32, i32* %faceup2, align 4, !tbaa !47
  store i32 %12, i32* %faceup, align 4, !tbaa !5
  %13 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %15 = load i16, i16* %depth, align 2, !tbaa !48
  %conv = zext i16 %15 to i32
  store i32 %conv, i32* %old_bpp, align 4, !tbaa !5
  %16 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32* %nup) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %18 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp = icmp ne i32 %18, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %19 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %19, 2
  br i1 %cmp4, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %20, 4
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %nupe

sw.default:                                       ; preds = %entry
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %ecode, align 4, !tbaa !5
  br label %nupe

nupe:                                             ; preds = %sw.default, %if.end
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !40
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %23, i32 0, i32 7
  %24 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !42
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %param_name, align 8, !tbaa !1
  %27 = load i32, i32* %ecode, align 4, !tbaa !5
  %call9 = call i32 %24(%struct.gs_param_list_s* %25, i8* %26, i32 %27) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %nupe, %entry, %if.else
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call10 = call i32 @param_read_bool(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %faceup) #5
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %sw.epilog
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %29, i32 0, i32 0
  %30 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs14, align 8, !tbaa !40
  %signal_error15 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %30, i32 0, i32 7
  %31 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error15, align 8, !tbaa !42
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %param_name, align 8, !tbaa !1
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %ecode, align 4, !tbaa !5
  %call16 = call i32 %31(%struct.gs_param_list_s* %32, i8* %33, i32 %34) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %sw.epilog
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call18 = call i32 @param_read_string(%struct.gs_param_list_s* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_string_s* %pmedia) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  switch i32 %call18, label %sw.default.317 [
    i32 0, label %sw.bb.19
    i32 1, label %sw.bb.321
  ]

sw.bb.19:                                         ; preds = %if.end.17
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %36 = load i32, i32* %size, align 4, !tbaa !35
  %cmp20 = icmp ugt i32 %36, 32
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %sw.bb.19
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

if.else.23:                                       ; preds = %sw.bb.19
  %37 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %if.else.23
  %call25 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i64 %call25, i64* %__s2_len, align 8, !tbaa !50
  %39 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp26 = icmp ult i64 %39, 4
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.24
  %40 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8, !tbaa !33
  store i8* %41, i8** %__s1, align 8, !tbaa !1
  %42 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv30 = zext i8 %44 to i32
  %45 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !44
  %conv31 = zext i8 %45 to i32
  %sub = sub nsw i32 %conv30, %conv31
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %46 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp32 = icmp ugt i64 %46, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.64

land.lhs.true.34:                                 ; preds = %cond.true
  %47 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %47, 0
  br i1 %cmp35, label %if.then.37, label %if.end.64

if.then.37:                                       ; preds = %land.lhs.true.34
  %48 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx38, align 1, !tbaa !44
  %conv39 = zext i8 %49 to i32
  %50 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !44
  %conv40 = zext i8 %50 to i32
  %sub41 = sub nsw i32 %conv39, %conv40
  store i32 %sub41, i32* %__result, align 4, !tbaa !5
  %51 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp42 = icmp ugt i64 %51, 1
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.63

land.lhs.true.44:                                 ; preds = %if.then.37
  %52 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %52, 0
  br i1 %cmp45, label %if.then.47, label %if.end.63

if.then.47:                                       ; preds = %land.lhs.true.44
  %53 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %53, i64 2
  %54 = load i8, i8* %arrayidx48, align 1, !tbaa !44
  %conv49 = zext i8 %54 to i32
  %55 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !44
  %conv50 = zext i8 %55 to i32
  %sub51 = sub nsw i32 %conv49, %conv50
  store i32 %sub51, i32* %__result, align 4, !tbaa !5
  %56 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp52 = icmp ugt i64 %56, 2
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.62

land.lhs.true.54:                                 ; preds = %if.then.47
  %57 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %57, 0
  br i1 %cmp55, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %land.lhs.true.54
  %58 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 3
  %59 = load i8, i8* %arrayidx58, align 1, !tbaa !44
  %conv59 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !44
  %conv60 = zext i8 %60 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  store i32 %sub61, i32* %__result, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %land.lhs.true.54, %if.then.47
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.44, %if.then.37
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.34, %cond.true
  %61 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %61, i32* %tmp65, !tbaa !5
  %62 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %tmp65, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.24, %if.else.23
  %data66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %65 = load i8*, i8** %data66, align 8, !tbaa !33
  %call67 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.64
  %cond = phi i32 [ %64, %if.end.64 ], [ %call67, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %66 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load i32, i32* %tmp, !tbaa !5
  %cmp68 = icmp ne i32 %68, 0
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.315

land.lhs.true.70:                                 ; preds = %cond.end
  %69 = bitcast i64* %__s1_len72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #2
  %70 = bitcast i64* %__s2_len74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.76, label %cond.false.124

land.lhs.true.76:                                 ; preds = %land.lhs.true.70
  %call77 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #6
  store i64 %call77, i64* %__s2_len74, align 8, !tbaa !50
  %71 = load i64, i64* %__s2_len74, align 8, !tbaa !50
  %cmp78 = icmp ult i64 %71, 4
  br i1 %cmp78, label %cond.true.80, label %cond.false.124

cond.true.80:                                     ; preds = %land.lhs.true.76
  %72 = bitcast i8** %__s182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #2
  %data83 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %73 = load i8*, i8** %data83, align 8, !tbaa !33
  store i8* %73, i8** %__s182, align 8, !tbaa !1
  %74 = bitcast i32* %__result85 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = load i8*, i8** %__s182, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx86, align 1, !tbaa !44
  %conv87 = zext i8 %76 to i32
  %77 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), align 1, !tbaa !44
  %conv88 = zext i8 %77 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  store i32 %sub89, i32* %__result85, align 4, !tbaa !5
  %78 = load i64, i64* %__s2_len74, align 8, !tbaa !50
  %cmp90 = icmp ugt i64 %78, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.122

land.lhs.true.92:                                 ; preds = %cond.true.80
  %79 = load i32, i32* %__result85, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %79, 0
  br i1 %cmp93, label %if.then.95, label %if.end.122

if.then.95:                                       ; preds = %land.lhs.true.92
  %80 = load i8*, i8** %__s182, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx96, align 1, !tbaa !44
  %conv97 = zext i8 %81 to i32
  %82 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 1), align 1, !tbaa !44
  %conv98 = zext i8 %82 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  store i32 %sub99, i32* %__result85, align 4, !tbaa !5
  %83 = load i64, i64* %__s2_len74, align 8, !tbaa !50
  %cmp100 = icmp ugt i64 %83, 1
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.121

land.lhs.true.102:                                ; preds = %if.then.95
  %84 = load i32, i32* %__result85, align 4, !tbaa !5
  %cmp103 = icmp eq i32 %84, 0
  br i1 %cmp103, label %if.then.105, label %if.end.121

if.then.105:                                      ; preds = %land.lhs.true.102
  %85 = load i8*, i8** %__s182, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %85, i64 2
  %86 = load i8, i8* %arrayidx106, align 1, !tbaa !44
  %conv107 = zext i8 %86 to i32
  %87 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 2), align 1, !tbaa !44
  %conv108 = zext i8 %87 to i32
  %sub109 = sub nsw i32 %conv107, %conv108
  store i32 %sub109, i32* %__result85, align 4, !tbaa !5
  %88 = load i64, i64* %__s2_len74, align 8, !tbaa !50
  %cmp110 = icmp ugt i64 %88, 2
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.120

land.lhs.true.112:                                ; preds = %if.then.105
  %89 = load i32, i32* %__result85, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %89, 0
  br i1 %cmp113, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %land.lhs.true.112
  %90 = load i8*, i8** %__s182, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %90, i64 3
  %91 = load i8, i8* %arrayidx116, align 1, !tbaa !44
  %conv117 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 3), align 1, !tbaa !44
  %conv118 = zext i8 %92 to i32
  %sub119 = sub nsw i32 %conv117, %conv118
  store i32 %sub119, i32* %__result85, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.115, %land.lhs.true.112, %if.then.105
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.102, %if.then.95
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %land.lhs.true.92, %cond.true.80
  %93 = load i32, i32* %__result85, align 4, !tbaa !5
  store i32 %93, i32* %tmp123, !tbaa !5
  %94 = bitcast i32* %__result85 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i8** %__s182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = load i32, i32* %tmp123, !tbaa !5
  br label %cond.end.127

cond.false.124:                                   ; preds = %land.lhs.true.76, %land.lhs.true.70
  %data125 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %97 = load i8*, i8** %data125, align 8, !tbaa !33
  %call126 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.124, %if.end.122
  %cond128 = phi i32 [ %96, %if.end.122 ], [ %call126, %cond.false.124 ]
  store i32 %cond128, i32* %tmp75, !tbaa !5
  %98 = bitcast i64* %__s2_len74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast i64* %__s1_len72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = load i32, i32* %tmp75, !tbaa !5
  %cmp129 = icmp ne i32 %100, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.315

land.lhs.true.131:                                ; preds = %cond.end.127
  %101 = bitcast i64* %__s1_len133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = bitcast i64* %__s2_len135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.137, label %cond.false.185

land.lhs.true.137:                                ; preds = %land.lhs.true.131
  %call138 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #6
  store i64 %call138, i64* %__s2_len135, align 8, !tbaa !50
  %103 = load i64, i64* %__s2_len135, align 8, !tbaa !50
  %cmp139 = icmp ult i64 %103, 4
  br i1 %cmp139, label %cond.true.141, label %cond.false.185

cond.true.141:                                    ; preds = %land.lhs.true.137
  %104 = bitcast i8** %__s1143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  %data144 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %105 = load i8*, i8** %data144, align 8, !tbaa !33
  store i8* %105, i8** %__s1143, align 8, !tbaa !1
  %106 = bitcast i32* %__result146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = load i8*, i8** %__s1143, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx147, align 1, !tbaa !44
  %conv148 = zext i8 %108 to i32
  %109 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !44
  %conv149 = zext i8 %109 to i32
  %sub150 = sub nsw i32 %conv148, %conv149
  store i32 %sub150, i32* %__result146, align 4, !tbaa !5
  %110 = load i64, i64* %__s2_len135, align 8, !tbaa !50
  %cmp151 = icmp ugt i64 %110, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.183

land.lhs.true.153:                                ; preds = %cond.true.141
  %111 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %111, 0
  br i1 %cmp154, label %if.then.156, label %if.end.183

if.then.156:                                      ; preds = %land.lhs.true.153
  %112 = load i8*, i8** %__s1143, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx157, align 1, !tbaa !44
  %conv158 = zext i8 %113 to i32
  %114 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !44
  %conv159 = zext i8 %114 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %__result146, align 4, !tbaa !5
  %115 = load i64, i64* %__s2_len135, align 8, !tbaa !50
  %cmp161 = icmp ugt i64 %115, 1
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.182

land.lhs.true.163:                                ; preds = %if.then.156
  %116 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %116, 0
  br i1 %cmp164, label %if.then.166, label %if.end.182

if.then.166:                                      ; preds = %land.lhs.true.163
  %117 = load i8*, i8** %__s1143, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %117, i64 2
  %118 = load i8, i8* %arrayidx167, align 1, !tbaa !44
  %conv168 = zext i8 %118 to i32
  %119 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !44
  %conv169 = zext i8 %119 to i32
  %sub170 = sub nsw i32 %conv168, %conv169
  store i32 %sub170, i32* %__result146, align 4, !tbaa !5
  %120 = load i64, i64* %__s2_len135, align 8, !tbaa !50
  %cmp171 = icmp ugt i64 %120, 2
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.181

land.lhs.true.173:                                ; preds = %if.then.166
  %121 = load i32, i32* %__result146, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %121, 0
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %land.lhs.true.173
  %122 = load i8*, i8** %__s1143, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %122, i64 3
  %123 = load i8, i8* %arrayidx177, align 1, !tbaa !44
  %conv178 = zext i8 %123 to i32
  %124 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !44
  %conv179 = zext i8 %124 to i32
  %sub180 = sub nsw i32 %conv178, %conv179
  store i32 %sub180, i32* %__result146, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %land.lhs.true.173, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %land.lhs.true.163, %if.then.156
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.153, %cond.true.141
  %125 = load i32, i32* %__result146, align 4, !tbaa !5
  store i32 %125, i32* %tmp184, !tbaa !5
  %126 = bitcast i32* %__result146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i8** %__s1143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = load i32, i32* %tmp184, !tbaa !5
  br label %cond.end.188

cond.false.185:                                   ; preds = %land.lhs.true.137, %land.lhs.true.131
  %data186 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %129 = load i8*, i8** %data186, align 8, !tbaa !33
  %call187 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.185, %if.end.183
  %cond189 = phi i32 [ %128, %if.end.183 ], [ %call187, %cond.false.185 ]
  store i32 %cond189, i32* %tmp136, !tbaa !5
  %130 = bitcast i64* %__s2_len135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = bitcast i64* %__s1_len133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = load i32, i32* %tmp136, !tbaa !5
  %cmp190 = icmp ne i32 %132, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.315

land.lhs.true.192:                                ; preds = %cond.end.188
  %133 = bitcast i64* %__s1_len194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #2
  %134 = bitcast i64* %__s2_len196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.198, label %cond.false.246

land.lhs.true.198:                                ; preds = %land.lhs.true.192
  %call199 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  store i64 %call199, i64* %__s2_len196, align 8, !tbaa !50
  %135 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp200 = icmp ult i64 %135, 4
  br i1 %cmp200, label %cond.true.202, label %cond.false.246

cond.true.202:                                    ; preds = %land.lhs.true.198
  %136 = bitcast i8** %__s1204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #2
  %data205 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %137 = load i8*, i8** %data205, align 8, !tbaa !33
  store i8* %137, i8** %__s1204, align 8, !tbaa !1
  %138 = bitcast i32* %__result207 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #2
  %139 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx208, align 1, !tbaa !44
  %conv209 = zext i8 %140 to i32
  %141 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !44
  %conv210 = zext i8 %141 to i32
  %sub211 = sub nsw i32 %conv209, %conv210
  store i32 %sub211, i32* %__result207, align 4, !tbaa !5
  %142 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp212 = icmp ugt i64 %142, 0
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.244

land.lhs.true.214:                                ; preds = %cond.true.202
  %143 = load i32, i32* %__result207, align 4, !tbaa !5
  %cmp215 = icmp eq i32 %143, 0
  br i1 %cmp215, label %if.then.217, label %if.end.244

if.then.217:                                      ; preds = %land.lhs.true.214
  %144 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx218, align 1, !tbaa !44
  %conv219 = zext i8 %145 to i32
  %146 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !44
  %conv220 = zext i8 %146 to i32
  %sub221 = sub nsw i32 %conv219, %conv220
  store i32 %sub221, i32* %__result207, align 4, !tbaa !5
  %147 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp222 = icmp ugt i64 %147, 1
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.243

land.lhs.true.224:                                ; preds = %if.then.217
  %148 = load i32, i32* %__result207, align 4, !tbaa !5
  %cmp225 = icmp eq i32 %148, 0
  br i1 %cmp225, label %if.then.227, label %if.end.243

if.then.227:                                      ; preds = %land.lhs.true.224
  %149 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %149, i64 2
  %150 = load i8, i8* %arrayidx228, align 1, !tbaa !44
  %conv229 = zext i8 %150 to i32
  %151 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !44
  %conv230 = zext i8 %151 to i32
  %sub231 = sub nsw i32 %conv229, %conv230
  store i32 %sub231, i32* %__result207, align 4, !tbaa !5
  %152 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp232 = icmp ugt i64 %152, 2
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.242

land.lhs.true.234:                                ; preds = %if.then.227
  %153 = load i32, i32* %__result207, align 4, !tbaa !5
  %cmp235 = icmp eq i32 %153, 0
  br i1 %cmp235, label %if.then.237, label %if.end.242

if.then.237:                                      ; preds = %land.lhs.true.234
  %154 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i8, i8* %154, i64 3
  %155 = load i8, i8* %arrayidx238, align 1, !tbaa !44
  %conv239 = zext i8 %155 to i32
  %156 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !44
  %conv240 = zext i8 %156 to i32
  %sub241 = sub nsw i32 %conv239, %conv240
  store i32 %sub241, i32* %__result207, align 4, !tbaa !5
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.237, %land.lhs.true.234, %if.then.227
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %land.lhs.true.224, %if.then.217
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %land.lhs.true.214, %cond.true.202
  %157 = load i32, i32* %__result207, align 4, !tbaa !5
  store i32 %157, i32* %tmp245, !tbaa !5
  %158 = bitcast i32* %__result207 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i8** %__s1204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = load i32, i32* %tmp245, !tbaa !5
  br label %cond.end.249

cond.false.246:                                   ; preds = %land.lhs.true.198, %land.lhs.true.192
  %data247 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %161 = load i8*, i8** %data247, align 8, !tbaa !33
  %call248 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %if.end.244
  %cond250 = phi i32 [ %160, %if.end.244 ], [ %call248, %cond.false.246 ]
  store i32 %cond250, i32* %tmp197, !tbaa !5
  %162 = bitcast i64* %__s2_len196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i64* %__s1_len194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = load i32, i32* %tmp197, !tbaa !5
  %cmp251 = icmp ne i32 %164, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.315

land.lhs.true.253:                                ; preds = %cond.end.249
  %165 = bitcast i64* %__s1_len255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #2
  %166 = bitcast i64* %__s2_len257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.19 to i64)), i64 1), label %land.lhs.true.259, label %cond.false.307

land.lhs.true.259:                                ; preds = %land.lhs.true.253
  %call260 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  store i64 %call260, i64* %__s2_len257, align 8, !tbaa !50
  %167 = load i64, i64* %__s2_len257, align 8, !tbaa !50
  %cmp261 = icmp ult i64 %167, 4
  br i1 %cmp261, label %cond.true.263, label %cond.false.307

cond.true.263:                                    ; preds = %land.lhs.true.259
  %168 = bitcast i8** %__s1265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #2
  %data266 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %169 = load i8*, i8** %data266, align 8, !tbaa !33
  store i8* %169, i8** %__s1265, align 8, !tbaa !1
  %170 = bitcast i32* %__result268 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #2
  %171 = load i8*, i8** %__s1265, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %171, i64 0
  %172 = load i8, i8* %arrayidx269, align 1, !tbaa !44
  %conv270 = zext i8 %172 to i32
  %173 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), align 1, !tbaa !44
  %conv271 = zext i8 %173 to i32
  %sub272 = sub nsw i32 %conv270, %conv271
  store i32 %sub272, i32* %__result268, align 4, !tbaa !5
  %174 = load i64, i64* %__s2_len257, align 8, !tbaa !50
  %cmp273 = icmp ugt i64 %174, 0
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.305

land.lhs.true.275:                                ; preds = %cond.true.263
  %175 = load i32, i32* %__result268, align 4, !tbaa !5
  %cmp276 = icmp eq i32 %175, 0
  br i1 %cmp276, label %if.then.278, label %if.end.305

if.then.278:                                      ; preds = %land.lhs.true.275
  %176 = load i8*, i8** %__s1265, align 8, !tbaa !1
  %arrayidx279 = getelementptr inbounds i8, i8* %176, i64 1
  %177 = load i8, i8* %arrayidx279, align 1, !tbaa !44
  %conv280 = zext i8 %177 to i32
  %178 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1), align 1, !tbaa !44
  %conv281 = zext i8 %178 to i32
  %sub282 = sub nsw i32 %conv280, %conv281
  store i32 %sub282, i32* %__result268, align 4, !tbaa !5
  %179 = load i64, i64* %__s2_len257, align 8, !tbaa !50
  %cmp283 = icmp ugt i64 %179, 1
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.304

land.lhs.true.285:                                ; preds = %if.then.278
  %180 = load i32, i32* %__result268, align 4, !tbaa !5
  %cmp286 = icmp eq i32 %180, 0
  br i1 %cmp286, label %if.then.288, label %if.end.304

if.then.288:                                      ; preds = %land.lhs.true.285
  %181 = load i8*, i8** %__s1265, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i8, i8* %181, i64 2
  %182 = load i8, i8* %arrayidx289, align 1, !tbaa !44
  %conv290 = zext i8 %182 to i32
  %183 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 2), align 1, !tbaa !44
  %conv291 = zext i8 %183 to i32
  %sub292 = sub nsw i32 %conv290, %conv291
  store i32 %sub292, i32* %__result268, align 4, !tbaa !5
  %184 = load i64, i64* %__s2_len257, align 8, !tbaa !50
  %cmp293 = icmp ugt i64 %184, 2
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.303

land.lhs.true.295:                                ; preds = %if.then.288
  %185 = load i32, i32* %__result268, align 4, !tbaa !5
  %cmp296 = icmp eq i32 %185, 0
  br i1 %cmp296, label %if.then.298, label %if.end.303

if.then.298:                                      ; preds = %land.lhs.true.295
  %186 = load i8*, i8** %__s1265, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i8, i8* %186, i64 3
  %187 = load i8, i8* %arrayidx299, align 1, !tbaa !44
  %conv300 = zext i8 %187 to i32
  %188 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 3), align 1, !tbaa !44
  %conv301 = zext i8 %188 to i32
  %sub302 = sub nsw i32 %conv300, %conv301
  store i32 %sub302, i32* %__result268, align 4, !tbaa !5
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.298, %land.lhs.true.295, %if.then.288
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %land.lhs.true.285, %if.then.278
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.275, %cond.true.263
  %189 = load i32, i32* %__result268, align 4, !tbaa !5
  store i32 %189, i32* %tmp306, !tbaa !5
  %190 = bitcast i32* %__result268 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i8** %__s1265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = load i32, i32* %tmp306, !tbaa !5
  br label %cond.end.310

cond.false.307:                                   ; preds = %land.lhs.true.259, %land.lhs.true.253
  %data308 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %193 = load i8*, i8** %data308, align 8, !tbaa !33
  %call309 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.307, %if.end.305
  %cond311 = phi i32 [ %192, %if.end.305 ], [ %call309, %cond.false.307 ]
  store i32 %cond311, i32* %tmp258, !tbaa !5
  %194 = bitcast i64* %__s2_len257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast i64* %__s1_len255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = load i32, i32* %tmp258, !tbaa !5
  %cmp312 = icmp ne i32 %196, 0
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %cond.end.310
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

if.end.315:                                       ; preds = %cond.end.310, %cond.end.249, %cond.end.188, %cond.end.127, %cond.end
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315
  br label %sw.epilog.323

sw.default.317:                                   ; preds = %if.end.17
  %197 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %197, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

pmediae:                                          ; preds = %sw.default.317, %if.then.314, %if.then.22
  %198 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs318 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %198, i32 0, i32 0
  %199 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs318, align 8, !tbaa !40
  %signal_error319 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %199, i32 0, i32 7
  %200 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error319, align 8, !tbaa !42
  %201 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %202 = load i8*, i8** %param_name, align 8, !tbaa !1
  %203 = load i32, i32* %ecode, align 4, !tbaa !5
  %call320 = call i32 %200(%struct.gs_param_list_s* %201, i8* %202, i32 %203) #5
  br label %sw.bb.321

sw.bb.321:                                        ; preds = %if.end.17, %pmediae
  %data322 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  store i8* null, i8** %data322, align 8, !tbaa !33
  br label %sw.epilog.323

sw.epilog.323:                                    ; preds = %sw.bb.321, %if.end.316
  %204 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call324 = call i32 @param_read_int(%struct.gs_param_list_s* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32* %bpp) #5
  store i32 %call324, i32* %code, align 4, !tbaa !5
  switch i32 %call324, label %sw.default.334 [
    i32 0, label %sw.bb.325
    i32 1, label %sw.epilog.338
  ]

sw.bb.325:                                        ; preds = %sw.epilog.323
  %205 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp326 = icmp ne i32 %205, 1
  br i1 %cmp326, label %land.lhs.true.328, label %if.else.332

land.lhs.true.328:                                ; preds = %sw.bb.325
  %206 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp329 = icmp ne i32 %206, 24
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %land.lhs.true.328
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.333

if.else.332:                                      ; preds = %land.lhs.true.328, %sw.bb.325
  br label %sw.epilog.338

if.end.333:                                       ; preds = %if.then.331
  br label %bppe

sw.default.334:                                   ; preds = %sw.epilog.323
  %207 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %207, i32* %ecode, align 4, !tbaa !5
  br label %bppe

bppe:                                             ; preds = %sw.default.334, %if.end.333
  %208 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs335 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %208, i32 0, i32 0
  %209 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs335, align 8, !tbaa !40
  %signal_error336 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %209, i32 0, i32 7
  %210 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error336, align 8, !tbaa !42
  %211 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %212 = load i8*, i8** %param_name, align 8, !tbaa !1
  %213 = load i32, i32* %ecode, align 4, !tbaa !5
  %call337 = call i32 %210(%struct.gs_param_list_s* %211, i8* %212, i32 %213) #5
  br label %sw.epilog.338

sw.epilog.338:                                    ; preds = %bppe, %sw.epilog.323, %if.else.332
  %214 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp339 = icmp ne i32 %214, 0
  br i1 %cmp339, label %if.then.341, label %if.end.381

if.then.341:                                      ; preds = %sw.epilog.338
  %215 = load i32, i32* %bpp, align 4, !tbaa !5
  %conv342 = trunc i32 %215 to i16
  %216 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info343 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %216, i32 0, i32 11
  %depth344 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info343, i32 0, i32 3
  store i16 %conv342, i16* %depth344, align 2, !tbaa !48
  %217 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp345 = icmp eq i32 %217, 1
  %cond347 = select i1 %cmp345, i32 1, i32 3
  %218 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info348 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %218, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info348, i32 0, i32 1
  store i32 %cond347, i32* %num_components, align 4, !tbaa !51
  %219 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp349 = icmp sge i32 %219, 8
  %cond351 = select i1 %cmp349, i32 255, i32 1
  %220 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info352 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %220, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info352, i32 0, i32 5
  store i32 %cond351, i32* %max_gray, align 4, !tbaa !52
  %221 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp353 = icmp sge i32 %221, 8
  br i1 %cmp353, label %cond.true.355, label %cond.false.356

cond.true.355:                                    ; preds = %if.then.341
  br label %cond.end.360

cond.false.356:                                   ; preds = %if.then.341
  %222 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp357 = icmp sgt i32 %222, 1
  %cond359 = select i1 %cmp357, i32 1, i32 0
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.356, %cond.true.355
  %cond361 = phi i32 [ 255, %cond.true.355 ], [ %cond359, %cond.false.356 ]
  %223 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info362 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %223, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info362, i32 0, i32 6
  store i32 %cond361, i32* %max_color, align 4, !tbaa !53
  %224 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp363 = icmp sge i32 %224, 8
  %cond365 = select i1 %cmp363, i32 5, i32 2
  %225 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info366 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %225, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info366, i32 0, i32 7
  store i32 %cond365, i32* %dither_grays, align 4, !tbaa !54
  %226 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp367 = icmp sge i32 %226, 8
  br i1 %cmp367, label %cond.true.369, label %cond.false.370

cond.true.369:                                    ; preds = %cond.end.360
  br label %cond.end.374

cond.false.370:                                   ; preds = %cond.end.360
  %227 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp371 = icmp sgt i32 %227, 1
  %cond373 = select i1 %cmp371, i32 2, i32 0
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.false.370, %cond.true.369
  %cond375 = phi i32 [ 5, %cond.true.369 ], [ %cond373, %cond.false.370 ]
  %228 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info376 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %228, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info376, i32 0, i32 8
  store i32 %cond375, i32* %dither_colors, align 4, !tbaa !55
  %229 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp377 = icmp eq i32 %229, 1
  %cond379 = select i1 %cmp377, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs380 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %230, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs380, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* %cond379, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !56
  br label %if.end.381

if.end.381:                                       ; preds = %cond.end.374, %sw.epilog.338
  %231 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp382 = icmp slt i32 %231, 0
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.end.381
  %232 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %232, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.385:                                       ; preds = %if.end.381
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %234 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call386 = call i32 @lips_put_params(%struct.gx_device_s* %233, %struct.gs_param_list_s* %234) #5
  store i32 %call386, i32* %code, align 4, !tbaa !5
  %235 = load i32, i32* %code, align 4, !tbaa !5
  %cmp387 = icmp slt i32 %235, 0
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.end.385
  %236 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %236, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.390:                                       ; preds = %if.end.385
  %237 = load i32, i32* %nup, align 4, !tbaa !5
  %238 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %nup391 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %238, i32 0, i32 98
  store i32 %237, i32* %nup391, align 4, !tbaa !45
  %239 = load i32, i32* %faceup, align 4, !tbaa !5
  %240 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %faceup392 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %240, i32 0, i32 99
  store i32 %239, i32* %faceup392, align 4, !tbaa !47
  %data393 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %241 = load i8*, i8** %data393, align 8, !tbaa !33
  %cmp394 = icmp ne i8* %241, null
  br i1 %cmp394, label %land.lhs.true.396, label %if.end.414

land.lhs.true.396:                                ; preds = %if.end.390
  %data397 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %242 = load i8*, i8** %data397, align 8, !tbaa !33
  %size398 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %243 = load i32, i32* %size398, align 4, !tbaa !35
  %244 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %244, i32 0, i32 100
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  %245 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType399 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %245, i32 0, i32 100
  %arraydecay400 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType399, i32 0, i32 0
  %call401 = call i64 @strlen(i8* %arraydecay400) #6
  %conv402 = trunc i64 %call401 to i32
  %call403 = call i32 @bytes_compare(i8* %242, i32 %243, i8* %arraydecay, i32 %conv402) #5
  %tobool = icmp ne i32 %call403, 0
  br i1 %tobool, label %if.then.404, label %if.end.414

if.then.404:                                      ; preds = %land.lhs.true.396
  %246 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType405 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %246, i32 0, i32 100
  %arraydecay406 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType405, i32 0, i32 0
  %data407 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %247 = load i8*, i8** %data407, align 8, !tbaa !33
  %size408 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %248 = load i32, i32* %size408, align 4, !tbaa !35
  %conv409 = zext i32 %248 to i64
  %call410 = call i8* @memcpy(i8* %arraydecay406, i8* %247, i64 %conv409) #7
  %size411 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %249 = load i32, i32* %size411, align 4, !tbaa !35
  %idxprom = zext i32 %249 to i64
  %250 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType412 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %250, i32 0, i32 100
  %arrayidx413 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType412, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx413, align 1, !tbaa !44
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.404, %land.lhs.true.396, %if.end.390
  %251 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp415 = icmp ne i32 %251, 0
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.424

land.lhs.true.417:                                ; preds = %if.end.414
  %252 = load i32, i32* %bpp, align 4, !tbaa !5
  %253 = load i32, i32* %old_bpp, align 4, !tbaa !5
  %cmp418 = icmp ne i32 %252, %253
  br i1 %cmp418, label %land.lhs.true.420, label %if.end.424

land.lhs.true.420:                                ; preds = %land.lhs.true.417
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %254, i32 0, i32 9
  %255 = load i32, i32* %is_open, align 4, !tbaa !57
  %tobool421 = icmp ne i32 %255, 0
  br i1 %tobool421, label %if.then.422, label %if.end.424

if.then.422:                                      ; preds = %land.lhs.true.420
  %256 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call423 = call i32 @gs_closedevice(%struct.gx_device_s* %256) #5
  store i32 %call423, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.424:                                       ; preds = %land.lhs.true.420, %land.lhs.true.417, %if.end.414
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.424, %if.then.422, %if.then.389, %if.then.384
  %257 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %faceup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %nup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %261) #2
  %262 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #2
  %263 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #2
  %266 = load i32, i32* %retval
  ret i32 %266
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips4_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @lips_open(%struct.gx_device_s* %0, i32 3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lips_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %ptype, i32 %num_copies) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %num_copies.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !44
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #5
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %8, i32 0, i32 76
  %9 = load i32, i32* %BlockLine, align 4, !tbaa !58
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 82
  %11 = load i32, i32* %nBh, align 4, !tbaa !59
  %div = sdiv i32 %9, %11
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 82
  %13 = load i32, i32* %nBh1, align 4, !tbaa !59
  %mul = mul nsw i32 %div, %13
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %17 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  call void @lips_job_start(%struct.gx_device_printer_s* %14, i32 %15, %struct._IO_FILE* %16, i32 %17) #5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !61
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !61
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !64
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !60
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !61
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !61
  %27 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul6 = mul nsw i32 %27, 3
  %div7 = sdiv i32 %mul6, 2
  %add = add nsw i32 %div7, 1
  %28 = load i32, i32* %maxY, align 4, !tbaa !5
  %call8 = call i8* %22(%struct.gs_memory_s* %26, i32 %add, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %29 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %29, i32 0, i32 79
  store i8* %call8, i8** %CompBuf, align 8, !tbaa !23
  %tobool = icmp ne i8* %call8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 71
  store i32 0, i32* %NegativePrint, align 4, !tbaa !65
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 75
  store i32 0, i32* %prev_y, align 4, !tbaa !66
  %32 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %32, i32 0, i32 74
  store i32 0, i32* %prev_x, align 4, !tbaa !67
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @lprn_print_image(%struct.gx_device_printer_s* %33, %struct._IO_FILE* %34) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %35, 0
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !60
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !61
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !61
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !60
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !61
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !61
  %46 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf19 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %46, i32 0, i32 79
  %47 = load i8*, i8** %CompBuf19, align 8, !tbaa !23
  call void %41(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lips_job_end(%struct.gx_device_printer_s* %48, %struct._IO_FILE* %49) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %50 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @lips_job_start(%struct.gx_device_printer_s* %pdev, i32 %ptype, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ptype.addr = alloca i32, align 4
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %lips = alloca %struct.gx_device_lips_s*, align 8
  %lips4 = alloca %struct.gx_device_lips4_s*, align 8
  %prev_paper_size = alloca i32, align 4
  %prev_paper_width = alloca i32, align 4
  %prev_paper_height = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tm = alloca i32, align 4
  %lm = alloca i32, align 4
  %rm = alloca i32, align 4
  %bm = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp184 = alloca i32, align 4
  %__s1_len194 = alloca i64, align 8
  %__s2_len196 = alloca i64, align 8
  %tmp197 = alloca i32, align 4
  %__s1204 = alloca i8*, align 8
  %__result208 = alloca i32, align 4
  %tmp246 = alloca i32, align 4
  %__s1_len257 = alloca i64, align 8
  %__s2_len259 = alloca i64, align 8
  %tmp260 = alloca i32, align 4
  %__s1267 = alloca i8*, align 8
  %__result271 = alloca i32, align 4
  %tmp309 = alloca i32, align 4
  %__s1_len322 = alloca i64, align 8
  %__s2_len324 = alloca i64, align 8
  %tmp325 = alloca i32, align 4
  %__s1332 = alloca i8*, align 8
  %__result336 = alloca i32, align 4
  %tmp374 = alloca i32, align 4
  %__s1_len387 = alloca i64, align 8
  %__s2_len389 = alloca i64, align 8
  %tmp390 = alloca i32, align 4
  %__s1397 = alloca i8*, align 8
  %__result401 = alloca i32, align 4
  %tmp439 = alloca i32, align 4
  %__s1_len464 = alloca i64, align 8
  %__s2_len466 = alloca i64, align 8
  %tmp467 = alloca i32, align 4
  %__s1474 = alloca i8*, align 8
  %__result478 = alloca i32, align 4
  %tmp516 = alloca i32, align 4
  %__s1_len527 = alloca i64, align 8
  %__s2_len529 = alloca i64, align 8
  %tmp530 = alloca i32, align 4
  %__s1537 = alloca i8*, align 8
  %__result541 = alloca i32, align 4
  %tmp579 = alloca i32, align 4
  %dup = alloca i32, align 4
  %dupset = alloca i32, align 4
  %tum = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !44
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lips_s*
  store %struct.gx_device_lips_s* %2, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_lips4_s*
  store %struct.gx_device_lips4_s* %5, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %6 = bitcast i32* %prev_paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %prev_paper_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %prev_paper_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fptosi float %12 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %13 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %15 = load float, float* %arrayidx2, align 4, !tbaa !24
  %conv3 = fptosi float %15 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %16 = bitcast i32* %tm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %bm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 26
  %21 = load i64, i64* %PageCount, align 8, !tbaa !69
  %cmp = icmp eq i64 %21, 0
  br i1 %cmp, label %if.then, label %if.end.103

if.then:                                          ; preds = %entry
  %22 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %22, i32 0, i32 88
  %23 = load i32, i32* %pjl, align 4, !tbaa !30
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.5, label %if.end.50

if.then.5:                                        ; preds = %if.then
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i32 27) #5
  %25 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp6 = icmp eq i32 %25, 3
  br i1 %cmp6, label %if.then.8, label %if.end.33

if.then.8:                                        ; preds = %if.then.5
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i32 27) #5
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 22
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %28 = load float, float* %arrayidx10, align 4, !tbaa !24
  %conv11 = fptosi float %28 to i32
  %cmp12 = icmp eq i32 %conv11, 1200
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %if.end.32

if.else:                                          ; preds = %if.then.8
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 0
  %31 = load float, float* %arrayidx17, align 4, !tbaa !24
  %conv18 = fptosi float %31 to i32
  %cmp19 = icmp eq i32 %conv18, 600
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %if.end.31

if.else.23:                                       ; preds = %if.else
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 22
  %arrayidx25 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution24, i32 0, i64 0
  %34 = load float, float* %arrayidx25, align 4, !tbaa !24
  %conv26 = fptosi float %34 to i32
  %cmp27 = icmp eq i32 %conv26, 300
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.23
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.14
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.5
  %36 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_density = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %36, i32 0, i32 89
  %37 = load i32, i32* %toner_density, align 4, !tbaa !38
  %tobool34 = icmp ne i32 %37, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_density36 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %39, i32 0, i32 89
  %40 = load i32, i32* %toner_density36, align 4, !tbaa !38
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i32 %40) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %41 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving_set = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %41, i32 0, i32 91
  %42 = load i32, i32* %toner_saving_set, align 4, !tbaa !32
  %tobool39 = icmp ne i32 %42, 0
  br i1 %tobool39, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.end.38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0)) #5
  %44 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %toner_saving = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %44, i32 0, i32 90
  %45 = load i32, i32* %toner_saving, align 4, !tbaa !39
  %tobool42 = icmp ne i32 %45, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.then.40
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)) #5
  br label %if.end.47

if.else.45:                                       ; preds = %if.then.40
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #5
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.38
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i32 0, i32 0)) #5
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.48, %if.then
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 27) #5
  %50 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp52 = icmp eq i32 %50, 0
  br i1 %cmp52, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %if.end.50
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 22
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution55, i32 0, i64 0
  %53 = load float, float* %arrayidx56, align 4, !tbaa !24
  %conv57 = fptosi float %53 to i32
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 144, i32 %conv57, i32 156) #5
  br label %if.end.86

if.else.59:                                       ; preds = %if.end.50
  %54 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp60 = icmp eq i32 %54, 1
  br i1 %cmp60, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.else.59
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 22
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution63, i32 0, i64 0
  %57 = load float, float* %arrayidx64, align 4, !tbaa !24
  %conv65 = fptosi float %57 to i32
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i32 144, i32 %conv65, i32 156) #5
  br label %if.end.85

if.else.67:                                       ; preds = %if.else.59
  %58 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp68 = icmp eq i32 %58, 3
  br i1 %cmp68, label %if.then.70, label %if.else.75

if.then.70:                                       ; preds = %if.else.67
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution71 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 22
  %arrayidx72 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution71, i32 0, i64 0
  %61 = load float, float* %arrayidx72, align 4, !tbaa !24
  %conv73 = fptosi float %61 to i32
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i32 144, i32 %conv73, i32 156) #5
  br label %if.end.84

if.else.75:                                       ; preds = %if.else.67
  %62 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp76 = icmp eq i32 %62, 2
  br i1 %cmp76, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.else.75
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 22
  %arrayidx80 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution79, i32 0, i64 0
  %65 = load float, float* %arrayidx80, align 4, !tbaa !24
  %conv81 = fptosi float %65 to i32
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0), i32 144, i32 %conv81, i32 156) #5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.70
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.62
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.54
  %66 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp87 = icmp eq i32 %66, 3
  br i1 %cmp87, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.86
  %67 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp89 = icmp eq i32 %67, 2
  br i1 %cmp89, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %lor.lhs.false, %if.end.86
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %68, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %69 = load i16, i16* %depth, align 2, !tbaa !70
  %conv92 = zext i16 %69 to i32
  %cmp93 = icmp eq i32 %conv92, 24
  br i1 %cmp93, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.91
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 155) #5
  br label %if.end.99

if.else.97:                                       ; preds = %if.then.91
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 155) #5
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.95
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %lor.lhs.false
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 27) #5
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 155) #5
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %entry
  %74 = load i32, i32* %width, align 4, !tbaa !5
  %75 = load i32, i32* %height, align 4, !tbaa !5
  %call104 = call i32 @lips_media_selection(i32 %74, i32 %75) #5
  store i32 %call104, i32* %paper_size, align 4, !tbaa !5
  %76 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp105 = icmp eq i32 %76, 2
  br i1 %cmp105, label %if.then.107, label %if.end.139

if.then.107:                                      ; preds = %if.end.103
  %77 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp108 = icmp eq i32 %77, 24
  br i1 %cmp108, label %if.then.119, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.then.107
  %78 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %78, 25
  br i1 %cmp111, label %if.then.119, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.110
  %79 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %79, 32
  br i1 %cmp114, label %if.then.119, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.113
  %80 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %80, 33
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %lor.lhs.false.116, %lor.lhs.false.113, %lor.lhs.false.110, %if.then.107
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 155) #5
  br label %if.end.138

if.else.121:                                      ; preds = %lor.lhs.false.116
  %82 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp122 = icmp eq i32 %82, 12
  br i1 %cmp122, label %if.then.133, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.else.121
  %83 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %83, 13
  br i1 %cmp125, label %if.then.133, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.124
  %84 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp128 = icmp eq i32 %84, 34
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.127
  %85 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %85, 35
  br i1 %cmp131, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.127, %lor.lhs.false.124, %if.else.121
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 155) #5
  br label %if.end.137

if.else.135:                                      ; preds = %lor.lhs.false.130
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 155) #5
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.then.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.119
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.103
  %88 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp140 = icmp eq i32 %88, 3
  br i1 %cmp140, label %if.then.142, label %if.end.454

if.then.142:                                      ; preds = %if.end.139
  %89 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  %90 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.142
  %call143 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i64 %call143, i64* %__s2_len, align 8, !tbaa !50
  %91 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp144 = icmp ult i64 %91, 4
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %92 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %93, i32 0, i32 100
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  store i8* %arraydecay, i8** %__s1, align 8, !tbaa !1
  %94 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  %95 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i8, i8* %95, i64 0
  %96 = load i8, i8* %arrayidx148, align 1, !tbaa !44
  %conv149 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !44
  %conv150 = zext i8 %97 to i32
  %sub = sub nsw i32 %conv149, %conv150
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %98 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp151 = icmp ugt i64 %98, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.183

land.lhs.true.153:                                ; preds = %cond.true
  %99 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %99, 0
  br i1 %cmp154, label %if.then.156, label %if.end.183

if.then.156:                                      ; preds = %land.lhs.true.153
  %100 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %100, i64 1
  %101 = load i8, i8* %arrayidx157, align 1, !tbaa !44
  %conv158 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !44
  %conv159 = zext i8 %102 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %__result, align 4, !tbaa !5
  %103 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp161 = icmp ugt i64 %103, 1
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.182

land.lhs.true.163:                                ; preds = %if.then.156
  %104 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %104, 0
  br i1 %cmp164, label %if.then.166, label %if.end.182

if.then.166:                                      ; preds = %land.lhs.true.163
  %105 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %105, i64 2
  %106 = load i8, i8* %arrayidx167, align 1, !tbaa !44
  %conv168 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !44
  %conv169 = zext i8 %107 to i32
  %sub170 = sub nsw i32 %conv168, %conv169
  store i32 %sub170, i32* %__result, align 4, !tbaa !5
  %108 = load i64, i64* %__s2_len, align 8, !tbaa !50
  %cmp171 = icmp ugt i64 %108, 2
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.181

land.lhs.true.173:                                ; preds = %if.then.166
  %109 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %109, 0
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %land.lhs.true.173
  %110 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %110, i64 3
  %111 = load i8, i8* %arrayidx177, align 1, !tbaa !44
  %conv178 = zext i8 %111 to i32
  %112 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !44
  %conv179 = zext i8 %112 to i32
  %sub180 = sub nsw i32 %conv178, %conv179
  store i32 %sub180, i32* %__result, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %land.lhs.true.173, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %land.lhs.true.163, %if.then.156
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.153, %cond.true
  %113 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %113, i32* %tmp184, !tbaa !5
  %114 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = load i32, i32* %tmp184, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.142
  %117 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType185 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %117, i32 0, i32 100
  %arraydecay186 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType185, i32 0, i32 0
  %call187 = call i32 @strcmp(i8* %arraydecay186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.183
  %cond = phi i32 [ %116, %if.end.183 ], [ %call187, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %118 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = load i32, i32* %tmp, !tbaa !5
  %cmp188 = icmp eq i32 %120, 0
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %cond.end
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 155) #5
  br label %if.end.453

if.else.192:                                      ; preds = %cond.end
  %122 = bitcast i64* %__s1_len194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #2
  %123 = bitcast i64* %__s2_len196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.198, label %cond.false.247

land.lhs.true.198:                                ; preds = %if.else.192
  %call199 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #6
  store i64 %call199, i64* %__s2_len196, align 8, !tbaa !50
  %124 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp200 = icmp ult i64 %124, 4
  br i1 %cmp200, label %cond.true.202, label %cond.false.247

cond.true.202:                                    ; preds = %land.lhs.true.198
  %125 = bitcast i8** %__s1204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #2
  %126 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType205 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %126, i32 0, i32 100
  %arraydecay206 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType205, i32 0, i32 0
  store i8* %arraydecay206, i8** %__s1204, align 8, !tbaa !1
  %127 = bitcast i32* %__result208 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #2
  %128 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i8, i8* %128, i64 0
  %129 = load i8, i8* %arrayidx209, align 1, !tbaa !44
  %conv210 = zext i8 %129 to i32
  %130 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), align 1, !tbaa !44
  %conv211 = zext i8 %130 to i32
  %sub212 = sub nsw i32 %conv210, %conv211
  store i32 %sub212, i32* %__result208, align 4, !tbaa !5
  %131 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp213 = icmp ugt i64 %131, 0
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.245

land.lhs.true.215:                                ; preds = %cond.true.202
  %132 = load i32, i32* %__result208, align 4, !tbaa !5
  %cmp216 = icmp eq i32 %132, 0
  br i1 %cmp216, label %if.then.218, label %if.end.245

if.then.218:                                      ; preds = %land.lhs.true.215
  %133 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %arrayidx219, align 1, !tbaa !44
  %conv220 = zext i8 %134 to i32
  %135 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 1), align 1, !tbaa !44
  %conv221 = zext i8 %135 to i32
  %sub222 = sub nsw i32 %conv220, %conv221
  store i32 %sub222, i32* %__result208, align 4, !tbaa !5
  %136 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp223 = icmp ugt i64 %136, 1
  br i1 %cmp223, label %land.lhs.true.225, label %if.end.244

land.lhs.true.225:                                ; preds = %if.then.218
  %137 = load i32, i32* %__result208, align 4, !tbaa !5
  %cmp226 = icmp eq i32 %137, 0
  br i1 %cmp226, label %if.then.228, label %if.end.244

if.then.228:                                      ; preds = %land.lhs.true.225
  %138 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %138, i64 2
  %139 = load i8, i8* %arrayidx229, align 1, !tbaa !44
  %conv230 = zext i8 %139 to i32
  %140 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 2), align 1, !tbaa !44
  %conv231 = zext i8 %140 to i32
  %sub232 = sub nsw i32 %conv230, %conv231
  store i32 %sub232, i32* %__result208, align 4, !tbaa !5
  %141 = load i64, i64* %__s2_len196, align 8, !tbaa !50
  %cmp233 = icmp ugt i64 %141, 2
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.243

land.lhs.true.235:                                ; preds = %if.then.228
  %142 = load i32, i32* %__result208, align 4, !tbaa !5
  %cmp236 = icmp eq i32 %142, 0
  br i1 %cmp236, label %if.then.238, label %if.end.243

if.then.238:                                      ; preds = %land.lhs.true.235
  %143 = load i8*, i8** %__s1204, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i8, i8* %143, i64 3
  %144 = load i8, i8* %arrayidx239, align 1, !tbaa !44
  %conv240 = zext i8 %144 to i32
  %145 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i64 3), align 1, !tbaa !44
  %conv241 = zext i8 %145 to i32
  %sub242 = sub nsw i32 %conv240, %conv241
  store i32 %sub242, i32* %__result208, align 4, !tbaa !5
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.238, %land.lhs.true.235, %if.then.228
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %land.lhs.true.225, %if.then.218
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true.215, %cond.true.202
  %146 = load i32, i32* %__result208, align 4, !tbaa !5
  store i32 %146, i32* %tmp246, !tbaa !5
  %147 = bitcast i32* %__result208 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i8** %__s1204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = load i32, i32* %tmp246, !tbaa !5
  br label %cond.end.251

cond.false.247:                                   ; preds = %land.lhs.true.198, %if.else.192
  %150 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType248 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %150, i32 0, i32 100
  %arraydecay249 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType248, i32 0, i32 0
  %call250 = call i32 @strcmp(i8* %arraydecay249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.247, %if.end.245
  %cond252 = phi i32 [ %149, %if.end.245 ], [ %call250, %cond.false.247 ]
  store i32 %cond252, i32* %tmp197, !tbaa !5
  %151 = bitcast i64* %__s2_len196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i64* %__s1_len194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = load i32, i32* %tmp197, !tbaa !5
  %cmp253 = icmp eq i32 %153, 0
  br i1 %cmp253, label %if.then.318, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %cond.end.251
  %154 = bitcast i64* %__s1_len257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #2
  %155 = bitcast i64* %__s2_len259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.261, label %cond.false.310

land.lhs.true.261:                                ; preds = %lor.lhs.false.255
  %call262 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #6
  store i64 %call262, i64* %__s2_len259, align 8, !tbaa !50
  %156 = load i64, i64* %__s2_len259, align 8, !tbaa !50
  %cmp263 = icmp ult i64 %156, 4
  br i1 %cmp263, label %cond.true.265, label %cond.false.310

cond.true.265:                                    ; preds = %land.lhs.true.261
  %157 = bitcast i8** %__s1267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #2
  %158 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType268 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %158, i32 0, i32 100
  %arraydecay269 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType268, i32 0, i32 0
  store i8* %arraydecay269, i8** %__s1267, align 8, !tbaa !1
  %159 = bitcast i32* %__result271 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #2
  %160 = load i8*, i8** %__s1267, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx272, align 1, !tbaa !44
  %conv273 = zext i8 %161 to i32
  %162 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !44
  %conv274 = zext i8 %162 to i32
  %sub275 = sub nsw i32 %conv273, %conv274
  store i32 %sub275, i32* %__result271, align 4, !tbaa !5
  %163 = load i64, i64* %__s2_len259, align 8, !tbaa !50
  %cmp276 = icmp ugt i64 %163, 0
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.308

land.lhs.true.278:                                ; preds = %cond.true.265
  %164 = load i32, i32* %__result271, align 4, !tbaa !5
  %cmp279 = icmp eq i32 %164, 0
  br i1 %cmp279, label %if.then.281, label %if.end.308

if.then.281:                                      ; preds = %land.lhs.true.278
  %165 = load i8*, i8** %__s1267, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx282, align 1, !tbaa !44
  %conv283 = zext i8 %166 to i32
  %167 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !44
  %conv284 = zext i8 %167 to i32
  %sub285 = sub nsw i32 %conv283, %conv284
  store i32 %sub285, i32* %__result271, align 4, !tbaa !5
  %168 = load i64, i64* %__s2_len259, align 8, !tbaa !50
  %cmp286 = icmp ugt i64 %168, 1
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.307

land.lhs.true.288:                                ; preds = %if.then.281
  %169 = load i32, i32* %__result271, align 4, !tbaa !5
  %cmp289 = icmp eq i32 %169, 0
  br i1 %cmp289, label %if.then.291, label %if.end.307

if.then.291:                                      ; preds = %land.lhs.true.288
  %170 = load i8*, i8** %__s1267, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %170, i64 2
  %171 = load i8, i8* %arrayidx292, align 1, !tbaa !44
  %conv293 = zext i8 %171 to i32
  %172 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !44
  %conv294 = zext i8 %172 to i32
  %sub295 = sub nsw i32 %conv293, %conv294
  store i32 %sub295, i32* %__result271, align 4, !tbaa !5
  %173 = load i64, i64* %__s2_len259, align 8, !tbaa !50
  %cmp296 = icmp ugt i64 %173, 2
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.306

land.lhs.true.298:                                ; preds = %if.then.291
  %174 = load i32, i32* %__result271, align 4, !tbaa !5
  %cmp299 = icmp eq i32 %174, 0
  br i1 %cmp299, label %if.then.301, label %if.end.306

if.then.301:                                      ; preds = %land.lhs.true.298
  %175 = load i8*, i8** %__s1267, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx302, align 1, !tbaa !44
  %conv303 = zext i8 %176 to i32
  %177 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !44
  %conv304 = zext i8 %177 to i32
  %sub305 = sub nsw i32 %conv303, %conv304
  store i32 %sub305, i32* %__result271, align 4, !tbaa !5
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.301, %land.lhs.true.298, %if.then.291
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %land.lhs.true.288, %if.then.281
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %land.lhs.true.278, %cond.true.265
  %178 = load i32, i32* %__result271, align 4, !tbaa !5
  store i32 %178, i32* %tmp309, !tbaa !5
  %179 = bitcast i32* %__result271 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i8** %__s1267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = load i32, i32* %tmp309, !tbaa !5
  br label %cond.end.314

cond.false.310:                                   ; preds = %land.lhs.true.261, %lor.lhs.false.255
  %182 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType311 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %182, i32 0, i32 100
  %arraydecay312 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType311, i32 0, i32 0
  %call313 = call i32 @strcmp(i8* %arraydecay312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.310, %if.end.308
  %cond315 = phi i32 [ %181, %if.end.308 ], [ %call313, %cond.false.310 ]
  store i32 %cond315, i32* %tmp260, !tbaa !5
  %183 = bitcast i64* %__s2_len259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast i64* %__s1_len257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = load i32, i32* %tmp260, !tbaa !5
  %cmp316 = icmp eq i32 %185, 0
  br i1 %cmp316, label %if.then.318, label %if.else.320

if.then.318:                                      ; preds = %cond.end.314, %cond.end.251
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 155) #5
  br label %if.end.452

if.else.320:                                      ; preds = %cond.end.314
  %187 = bitcast i64* %__s1_len322 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #2
  %188 = bitcast i64* %__s2_len324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.19 to i64)), i64 1), label %land.lhs.true.326, label %cond.false.375

land.lhs.true.326:                                ; preds = %if.else.320
  %call327 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  store i64 %call327, i64* %__s2_len324, align 8, !tbaa !50
  %189 = load i64, i64* %__s2_len324, align 8, !tbaa !50
  %cmp328 = icmp ult i64 %189, 4
  br i1 %cmp328, label %cond.true.330, label %cond.false.375

cond.true.330:                                    ; preds = %land.lhs.true.326
  %190 = bitcast i8** %__s1332 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #2
  %191 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType333 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %191, i32 0, i32 100
  %arraydecay334 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType333, i32 0, i32 0
  store i8* %arraydecay334, i8** %__s1332, align 8, !tbaa !1
  %192 = bitcast i32* %__result336 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #2
  %193 = load i8*, i8** %__s1332, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx337, align 1, !tbaa !44
  %conv338 = zext i8 %194 to i32
  %195 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), align 1, !tbaa !44
  %conv339 = zext i8 %195 to i32
  %sub340 = sub nsw i32 %conv338, %conv339
  store i32 %sub340, i32* %__result336, align 4, !tbaa !5
  %196 = load i64, i64* %__s2_len324, align 8, !tbaa !50
  %cmp341 = icmp ugt i64 %196, 0
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.373

land.lhs.true.343:                                ; preds = %cond.true.330
  %197 = load i32, i32* %__result336, align 4, !tbaa !5
  %cmp344 = icmp eq i32 %197, 0
  br i1 %cmp344, label %if.then.346, label %if.end.373

if.then.346:                                      ; preds = %land.lhs.true.343
  %198 = load i8*, i8** %__s1332, align 8, !tbaa !1
  %arrayidx347 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx347, align 1, !tbaa !44
  %conv348 = zext i8 %199 to i32
  %200 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 1), align 1, !tbaa !44
  %conv349 = zext i8 %200 to i32
  %sub350 = sub nsw i32 %conv348, %conv349
  store i32 %sub350, i32* %__result336, align 4, !tbaa !5
  %201 = load i64, i64* %__s2_len324, align 8, !tbaa !50
  %cmp351 = icmp ugt i64 %201, 1
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.372

land.lhs.true.353:                                ; preds = %if.then.346
  %202 = load i32, i32* %__result336, align 4, !tbaa !5
  %cmp354 = icmp eq i32 %202, 0
  br i1 %cmp354, label %if.then.356, label %if.end.372

if.then.356:                                      ; preds = %land.lhs.true.353
  %203 = load i8*, i8** %__s1332, align 8, !tbaa !1
  %arrayidx357 = getelementptr inbounds i8, i8* %203, i64 2
  %204 = load i8, i8* %arrayidx357, align 1, !tbaa !44
  %conv358 = zext i8 %204 to i32
  %205 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 2), align 1, !tbaa !44
  %conv359 = zext i8 %205 to i32
  %sub360 = sub nsw i32 %conv358, %conv359
  store i32 %sub360, i32* %__result336, align 4, !tbaa !5
  %206 = load i64, i64* %__s2_len324, align 8, !tbaa !50
  %cmp361 = icmp ugt i64 %206, 2
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.371

land.lhs.true.363:                                ; preds = %if.then.356
  %207 = load i32, i32* %__result336, align 4, !tbaa !5
  %cmp364 = icmp eq i32 %207, 0
  br i1 %cmp364, label %if.then.366, label %if.end.371

if.then.366:                                      ; preds = %land.lhs.true.363
  %208 = load i8*, i8** %__s1332, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds i8, i8* %208, i64 3
  %209 = load i8, i8* %arrayidx367, align 1, !tbaa !44
  %conv368 = zext i8 %209 to i32
  %210 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i64 3), align 1, !tbaa !44
  %conv369 = zext i8 %210 to i32
  %sub370 = sub nsw i32 %conv368, %conv369
  store i32 %sub370, i32* %__result336, align 4, !tbaa !5
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.366, %land.lhs.true.363, %if.then.356
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %land.lhs.true.353, %if.then.346
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %land.lhs.true.343, %cond.true.330
  %211 = load i32, i32* %__result336, align 4, !tbaa !5
  store i32 %211, i32* %tmp374, !tbaa !5
  %212 = bitcast i32* %__result336 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast i8** %__s1332 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #2
  %214 = load i32, i32* %tmp374, !tbaa !5
  br label %cond.end.379

cond.false.375:                                   ; preds = %land.lhs.true.326, %if.else.320
  %215 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType376 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %215, i32 0, i32 100
  %arraydecay377 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType376, i32 0, i32 0
  %call378 = call i32 @strcmp(i8* %arraydecay377, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.375, %if.end.373
  %cond380 = phi i32 [ %214, %if.end.373 ], [ %call378, %cond.false.375 ]
  store i32 %cond380, i32* %tmp325, !tbaa !5
  %216 = bitcast i64* %__s2_len324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  %217 = bitcast i64* %__s1_len322 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = load i32, i32* %tmp325, !tbaa !5
  %cmp381 = icmp eq i32 %218, 0
  br i1 %cmp381, label %if.then.383, label %if.else.385

if.then.383:                                      ; preds = %cond.end.379
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call384 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 155) #5
  br label %if.end.451

if.else.385:                                      ; preds = %cond.end.379
  %220 = bitcast i64* %__s1_len387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #2
  %221 = bitcast i64* %__s2_len389 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.391, label %cond.false.440

land.lhs.true.391:                                ; preds = %if.else.385
  %call392 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  store i64 %call392, i64* %__s2_len389, align 8, !tbaa !50
  %222 = load i64, i64* %__s2_len389, align 8, !tbaa !50
  %cmp393 = icmp ult i64 %222, 4
  br i1 %cmp393, label %cond.true.395, label %cond.false.440

cond.true.395:                                    ; preds = %land.lhs.true.391
  %223 = bitcast i8** %__s1397 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #2
  %224 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType398 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %224, i32 0, i32 100
  %arraydecay399 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType398, i32 0, i32 0
  store i8* %arraydecay399, i8** %__s1397, align 8, !tbaa !1
  %225 = bitcast i32* %__result401 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #2
  %226 = load i8*, i8** %__s1397, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds i8, i8* %226, i64 0
  %227 = load i8, i8* %arrayidx402, align 1, !tbaa !44
  %conv403 = zext i8 %227 to i32
  %228 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !44
  %conv404 = zext i8 %228 to i32
  %sub405 = sub nsw i32 %conv403, %conv404
  store i32 %sub405, i32* %__result401, align 4, !tbaa !5
  %229 = load i64, i64* %__s2_len389, align 8, !tbaa !50
  %cmp406 = icmp ugt i64 %229, 0
  br i1 %cmp406, label %land.lhs.true.408, label %if.end.438

land.lhs.true.408:                                ; preds = %cond.true.395
  %230 = load i32, i32* %__result401, align 4, !tbaa !5
  %cmp409 = icmp eq i32 %230, 0
  br i1 %cmp409, label %if.then.411, label %if.end.438

if.then.411:                                      ; preds = %land.lhs.true.408
  %231 = load i8*, i8** %__s1397, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i8, i8* %231, i64 1
  %232 = load i8, i8* %arrayidx412, align 1, !tbaa !44
  %conv413 = zext i8 %232 to i32
  %233 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !44
  %conv414 = zext i8 %233 to i32
  %sub415 = sub nsw i32 %conv413, %conv414
  store i32 %sub415, i32* %__result401, align 4, !tbaa !5
  %234 = load i64, i64* %__s2_len389, align 8, !tbaa !50
  %cmp416 = icmp ugt i64 %234, 1
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.437

land.lhs.true.418:                                ; preds = %if.then.411
  %235 = load i32, i32* %__result401, align 4, !tbaa !5
  %cmp419 = icmp eq i32 %235, 0
  br i1 %cmp419, label %if.then.421, label %if.end.437

if.then.421:                                      ; preds = %land.lhs.true.418
  %236 = load i8*, i8** %__s1397, align 8, !tbaa !1
  %arrayidx422 = getelementptr inbounds i8, i8* %236, i64 2
  %237 = load i8, i8* %arrayidx422, align 1, !tbaa !44
  %conv423 = zext i8 %237 to i32
  %238 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !44
  %conv424 = zext i8 %238 to i32
  %sub425 = sub nsw i32 %conv423, %conv424
  store i32 %sub425, i32* %__result401, align 4, !tbaa !5
  %239 = load i64, i64* %__s2_len389, align 8, !tbaa !50
  %cmp426 = icmp ugt i64 %239, 2
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.436

land.lhs.true.428:                                ; preds = %if.then.421
  %240 = load i32, i32* %__result401, align 4, !tbaa !5
  %cmp429 = icmp eq i32 %240, 0
  br i1 %cmp429, label %if.then.431, label %if.end.436

if.then.431:                                      ; preds = %land.lhs.true.428
  %241 = load i8*, i8** %__s1397, align 8, !tbaa !1
  %arrayidx432 = getelementptr inbounds i8, i8* %241, i64 3
  %242 = load i8, i8* %arrayidx432, align 1, !tbaa !44
  %conv433 = zext i8 %242 to i32
  %243 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !44
  %conv434 = zext i8 %243 to i32
  %sub435 = sub nsw i32 %conv433, %conv434
  store i32 %sub435, i32* %__result401, align 4, !tbaa !5
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.431, %land.lhs.true.428, %if.then.421
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %land.lhs.true.418, %if.then.411
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %land.lhs.true.408, %cond.true.395
  %244 = load i32, i32* %__result401, align 4, !tbaa !5
  store i32 %244, i32* %tmp439, !tbaa !5
  %245 = bitcast i32* %__result401 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #2
  %246 = bitcast i8** %__s1397 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #2
  %247 = load i32, i32* %tmp439, !tbaa !5
  br label %cond.end.444

cond.false.440:                                   ; preds = %land.lhs.true.391, %if.else.385
  %248 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType441 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %248, i32 0, i32 100
  %arraydecay442 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType441, i32 0, i32 0
  %call443 = call i32 @strcmp(i8* %arraydecay442, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.false.440, %if.end.438
  %cond445 = phi i32 [ %247, %if.end.438 ], [ %call443, %cond.false.440 ]
  store i32 %cond445, i32* %tmp390, !tbaa !5
  %249 = bitcast i64* %__s2_len389 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #2
  %250 = bitcast i64* %__s1_len387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  %251 = load i32, i32* %tmp390, !tbaa !5
  %cmp446 = icmp eq i32 %251, 0
  br i1 %cmp446, label %if.then.448, label %if.end.450

if.then.448:                                      ; preds = %cond.end.444
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 155) #5
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.448, %cond.end.444
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.383
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.then.318
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.then.190
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %if.end.139
  %253 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp455 = icmp eq i32 %253, 3
  br i1 %cmp455, label %if.then.460, label %lor.lhs.false.457

lor.lhs.false.457:                                ; preds = %if.end.454
  %254 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp458 = icmp eq i32 %254, 2
  br i1 %cmp458, label %if.then.460, label %if.else.606

if.then.460:                                      ; preds = %lor.lhs.false.457, %if.end.454
  %255 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %255, i32 0, i32 70
  %256 = load i32, i32* %ManualFeed, align 4, !tbaa !71
  %tobool461 = icmp ne i32 %256, 0
  br i1 %tobool461, label %if.then.588, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %if.then.460
  %257 = bitcast i64* %__s1_len464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #2
  %258 = bitcast i64* %__s2_len466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.468, label %cond.false.517

land.lhs.true.468:                                ; preds = %lor.lhs.false.462
  %call469 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  store i64 %call469, i64* %__s2_len466, align 8, !tbaa !50
  %259 = load i64, i64* %__s2_len466, align 8, !tbaa !50
  %cmp470 = icmp ult i64 %259, 4
  br i1 %cmp470, label %cond.true.472, label %cond.false.517

cond.true.472:                                    ; preds = %land.lhs.true.468
  %260 = bitcast i8** %__s1474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #2
  %261 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType475 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %261, i32 0, i32 100
  %arraydecay476 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType475, i32 0, i32 0
  store i8* %arraydecay476, i8** %__s1474, align 8, !tbaa !1
  %262 = bitcast i32* %__result478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #2
  %263 = load i8*, i8** %__s1474, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds i8, i8* %263, i64 0
  %264 = load i8, i8* %arrayidx479, align 1, !tbaa !44
  %conv480 = zext i8 %264 to i32
  %265 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !44
  %conv481 = zext i8 %265 to i32
  %sub482 = sub nsw i32 %conv480, %conv481
  store i32 %sub482, i32* %__result478, align 4, !tbaa !5
  %266 = load i64, i64* %__s2_len466, align 8, !tbaa !50
  %cmp483 = icmp ugt i64 %266, 0
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.515

land.lhs.true.485:                                ; preds = %cond.true.472
  %267 = load i32, i32* %__result478, align 4, !tbaa !5
  %cmp486 = icmp eq i32 %267, 0
  br i1 %cmp486, label %if.then.488, label %if.end.515

if.then.488:                                      ; preds = %land.lhs.true.485
  %268 = load i8*, i8** %__s1474, align 8, !tbaa !1
  %arrayidx489 = getelementptr inbounds i8, i8* %268, i64 1
  %269 = load i8, i8* %arrayidx489, align 1, !tbaa !44
  %conv490 = zext i8 %269 to i32
  %270 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !44
  %conv491 = zext i8 %270 to i32
  %sub492 = sub nsw i32 %conv490, %conv491
  store i32 %sub492, i32* %__result478, align 4, !tbaa !5
  %271 = load i64, i64* %__s2_len466, align 8, !tbaa !50
  %cmp493 = icmp ugt i64 %271, 1
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.514

land.lhs.true.495:                                ; preds = %if.then.488
  %272 = load i32, i32* %__result478, align 4, !tbaa !5
  %cmp496 = icmp eq i32 %272, 0
  br i1 %cmp496, label %if.then.498, label %if.end.514

if.then.498:                                      ; preds = %land.lhs.true.495
  %273 = load i8*, i8** %__s1474, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds i8, i8* %273, i64 2
  %274 = load i8, i8* %arrayidx499, align 1, !tbaa !44
  %conv500 = zext i8 %274 to i32
  %275 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !44
  %conv501 = zext i8 %275 to i32
  %sub502 = sub nsw i32 %conv500, %conv501
  store i32 %sub502, i32* %__result478, align 4, !tbaa !5
  %276 = load i64, i64* %__s2_len466, align 8, !tbaa !50
  %cmp503 = icmp ugt i64 %276, 2
  br i1 %cmp503, label %land.lhs.true.505, label %if.end.513

land.lhs.true.505:                                ; preds = %if.then.498
  %277 = load i32, i32* %__result478, align 4, !tbaa !5
  %cmp506 = icmp eq i32 %277, 0
  br i1 %cmp506, label %if.then.508, label %if.end.513

if.then.508:                                      ; preds = %land.lhs.true.505
  %278 = load i8*, i8** %__s1474, align 8, !tbaa !1
  %arrayidx509 = getelementptr inbounds i8, i8* %278, i64 3
  %279 = load i8, i8* %arrayidx509, align 1, !tbaa !44
  %conv510 = zext i8 %279 to i32
  %280 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !44
  %conv511 = zext i8 %280 to i32
  %sub512 = sub nsw i32 %conv510, %conv511
  store i32 %sub512, i32* %__result478, align 4, !tbaa !5
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.508, %land.lhs.true.505, %if.then.498
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %land.lhs.true.495, %if.then.488
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.514, %land.lhs.true.485, %cond.true.472
  %281 = load i32, i32* %__result478, align 4, !tbaa !5
  store i32 %281, i32* %tmp516, !tbaa !5
  %282 = bitcast i32* %__result478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i8** %__s1474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #2
  %284 = load i32, i32* %tmp516, !tbaa !5
  br label %cond.end.521

cond.false.517:                                   ; preds = %land.lhs.true.468, %lor.lhs.false.462
  %285 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType518 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %285, i32 0, i32 100
  %arraydecay519 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType518, i32 0, i32 0
  %call520 = call i32 @strcmp(i8* %arraydecay519, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.517, %if.end.515
  %cond522 = phi i32 [ %284, %if.end.515 ], [ %call520, %cond.false.517 ]
  store i32 %cond522, i32* %tmp467, !tbaa !5
  %286 = bitcast i64* %__s2_len466 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #2
  %287 = bitcast i64* %__s1_len464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #2
  %288 = load i32, i32* %tmp467, !tbaa !5
  %cmp523 = icmp ne i32 %288, 0
  br i1 %cmp523, label %land.lhs.true.525, label %if.else.595

land.lhs.true.525:                                ; preds = %cond.end.521
  %289 = bitcast i64* %__s1_len527 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #2
  %290 = bitcast i64* %__s2_len529 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %290) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.48 to i64)), i64 1), label %land.lhs.true.531, label %cond.false.580

land.lhs.true.531:                                ; preds = %land.lhs.true.525
  %call532 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #6
  store i64 %call532, i64* %__s2_len529, align 8, !tbaa !50
  %291 = load i64, i64* %__s2_len529, align 8, !tbaa !50
  %cmp533 = icmp ult i64 %291, 4
  br i1 %cmp533, label %cond.true.535, label %cond.false.580

cond.true.535:                                    ; preds = %land.lhs.true.531
  %292 = bitcast i8** %__s1537 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %292) #2
  %293 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType538 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %293, i32 0, i32 100
  %arraydecay539 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType538, i32 0, i32 0
  store i8* %arraydecay539, i8** %__s1537, align 8, !tbaa !1
  %294 = bitcast i32* %__result541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %294) #2
  %295 = load i8*, i8** %__s1537, align 8, !tbaa !1
  %arrayidx542 = getelementptr inbounds i8, i8* %295, i64 0
  %296 = load i8, i8* %arrayidx542, align 1, !tbaa !44
  %conv543 = zext i8 %296 to i32
  %297 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), align 1, !tbaa !44
  %conv544 = zext i8 %297 to i32
  %sub545 = sub nsw i32 %conv543, %conv544
  store i32 %sub545, i32* %__result541, align 4, !tbaa !5
  %298 = load i64, i64* %__s2_len529, align 8, !tbaa !50
  %cmp546 = icmp ugt i64 %298, 0
  br i1 %cmp546, label %land.lhs.true.548, label %if.end.578

land.lhs.true.548:                                ; preds = %cond.true.535
  %299 = load i32, i32* %__result541, align 4, !tbaa !5
  %cmp549 = icmp eq i32 %299, 0
  br i1 %cmp549, label %if.then.551, label %if.end.578

if.then.551:                                      ; preds = %land.lhs.true.548
  %300 = load i8*, i8** %__s1537, align 8, !tbaa !1
  %arrayidx552 = getelementptr inbounds i8, i8* %300, i64 1
  %301 = load i8, i8* %arrayidx552, align 1, !tbaa !44
  %conv553 = zext i8 %301 to i32
  %302 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i64 1), align 1, !tbaa !44
  %conv554 = zext i8 %302 to i32
  %sub555 = sub nsw i32 %conv553, %conv554
  store i32 %sub555, i32* %__result541, align 4, !tbaa !5
  %303 = load i64, i64* %__s2_len529, align 8, !tbaa !50
  %cmp556 = icmp ugt i64 %303, 1
  br i1 %cmp556, label %land.lhs.true.558, label %if.end.577

land.lhs.true.558:                                ; preds = %if.then.551
  %304 = load i32, i32* %__result541, align 4, !tbaa !5
  %cmp559 = icmp eq i32 %304, 0
  br i1 %cmp559, label %if.then.561, label %if.end.577

if.then.561:                                      ; preds = %land.lhs.true.558
  %305 = load i8*, i8** %__s1537, align 8, !tbaa !1
  %arrayidx562 = getelementptr inbounds i8, i8* %305, i64 2
  %306 = load i8, i8* %arrayidx562, align 1, !tbaa !44
  %conv563 = zext i8 %306 to i32
  %307 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i64 2), align 1, !tbaa !44
  %conv564 = zext i8 %307 to i32
  %sub565 = sub nsw i32 %conv563, %conv564
  store i32 %sub565, i32* %__result541, align 4, !tbaa !5
  %308 = load i64, i64* %__s2_len529, align 8, !tbaa !50
  %cmp566 = icmp ugt i64 %308, 2
  br i1 %cmp566, label %land.lhs.true.568, label %if.end.576

land.lhs.true.568:                                ; preds = %if.then.561
  %309 = load i32, i32* %__result541, align 4, !tbaa !5
  %cmp569 = icmp eq i32 %309, 0
  br i1 %cmp569, label %if.then.571, label %if.end.576

if.then.571:                                      ; preds = %land.lhs.true.568
  %310 = load i8*, i8** %__s1537, align 8, !tbaa !1
  %arrayidx572 = getelementptr inbounds i8, i8* %310, i64 3
  %311 = load i8, i8* %arrayidx572, align 1, !tbaa !44
  %conv573 = zext i8 %311 to i32
  %312 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i64 3), align 1, !tbaa !44
  %conv574 = zext i8 %312 to i32
  %sub575 = sub nsw i32 %conv573, %conv574
  store i32 %sub575, i32* %__result541, align 4, !tbaa !5
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.571, %land.lhs.true.568, %if.then.561
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %land.lhs.true.558, %if.then.551
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %land.lhs.true.548, %cond.true.535
  %313 = load i32, i32* %__result541, align 4, !tbaa !5
  store i32 %313, i32* %tmp579, !tbaa !5
  %314 = bitcast i32* %__result541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i8** %__s1537 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #2
  %316 = load i32, i32* %tmp579, !tbaa !5
  br label %cond.end.584

cond.false.580:                                   ; preds = %land.lhs.true.531, %land.lhs.true.525
  %317 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %mediaType581 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %317, i32 0, i32 100
  %arraydecay582 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType581, i32 0, i32 0
  %call583 = call i32 @strcmp(i8* %arraydecay582, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #7
  br label %cond.end.584

cond.end.584:                                     ; preds = %cond.false.580, %if.end.578
  %cond585 = phi i32 [ %316, %if.end.578 ], [ %call583, %cond.false.580 ]
  store i32 %cond585, i32* %tmp530, !tbaa !5
  %318 = bitcast i64* %__s2_len529 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #2
  %319 = bitcast i64* %__s1_len527 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #2
  %320 = load i32, i32* %tmp530, !tbaa !5
  %cmp586 = icmp ne i32 %320, 0
  br i1 %cmp586, label %if.then.588, label %if.else.595

if.then.588:                                      ; preds = %cond.end.584, %if.then.460
  %321 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %321, i32 0, i32 96
  %322 = load i32, i32* %prev_feed_mode, align 4, !tbaa !72
  %cmp589 = icmp ne i32 %322, 10
  br i1 %cmp589, label %if.then.591, label %if.end.593

if.then.591:                                      ; preds = %if.then.588
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call592 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 155) #5
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.591, %if.then.588
  %324 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode594 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %324, i32 0, i32 96
  store i32 10, i32* %prev_feed_mode594, align 4, !tbaa !72
  br label %if.end.605

if.else.595:                                      ; preds = %cond.end.584, %cond.end.521
  %325 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode596 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %325, i32 0, i32 96
  %326 = load i32, i32* %prev_feed_mode596, align 4, !tbaa !72
  %327 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %327, i32 0, i32 86
  %328 = load i32, i32* %cassetFeed, align 4, !tbaa !37
  %cmp597 = icmp ne i32 %326, %328
  br i1 %cmp597, label %if.then.599, label %if.end.602

if.then.599:                                      ; preds = %if.else.595
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %330 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed600 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %330, i32 0, i32 86
  %331 = load i32, i32* %cassetFeed600, align 4, !tbaa !37
  %call601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 155, i32 %331) #5
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.599, %if.else.595
  %332 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed603 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %332, i32 0, i32 86
  %333 = load i32, i32* %cassetFeed603, align 4, !tbaa !37
  %334 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode604 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %334, i32 0, i32 96
  store i32 %333, i32* %prev_feed_mode604, align 4, !tbaa !72
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.602, %if.end.593
  br label %if.end.629

if.else.606:                                      ; preds = %lor.lhs.false.457
  %335 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %ManualFeed607 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %335, i32 0, i32 70
  %336 = load i32, i32* %ManualFeed607, align 4, !tbaa !73
  %tobool608 = icmp ne i32 %336, 0
  br i1 %tobool608, label %if.then.609, label %if.else.617

if.then.609:                                      ; preds = %if.else.606
  %337 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode610 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %337, i32 0, i32 96
  %338 = load i32, i32* %prev_feed_mode610, align 4, !tbaa !72
  %cmp611 = icmp ne i32 %338, 1
  br i1 %cmp611, label %if.then.613, label %if.end.615

if.then.613:                                      ; preds = %if.then.609
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call614 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 155) #5
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.613, %if.then.609
  %340 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode616 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %340, i32 0, i32 96
  store i32 1, i32* %prev_feed_mode616, align 4, !tbaa !72
  br label %if.end.628

if.else.617:                                      ; preds = %if.else.606
  %341 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode618 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %341, i32 0, i32 96
  %342 = load i32, i32* %prev_feed_mode618, align 4, !tbaa !72
  %343 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed619 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %343, i32 0, i32 86
  %344 = load i32, i32* %cassetFeed619, align 4, !tbaa !37
  %cmp620 = icmp ne i32 %342, %344
  br i1 %cmp620, label %if.then.622, label %if.end.625

if.then.622:                                      ; preds = %if.else.617
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %346 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed623 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %346, i32 0, i32 86
  %347 = load i32, i32* %cassetFeed623, align 4, !tbaa !37
  %call624 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 155, i32 %347) #5
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.622, %if.else.617
  %348 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %cassetFeed626 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %348, i32 0, i32 86
  %349 = load i32, i32* %cassetFeed626, align 4, !tbaa !37
  %350 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_feed_mode627 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %350, i32 0, i32 96
  store i32 %349, i32* %prev_feed_mode627, align 4, !tbaa !72
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.625, %if.end.615
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.628, %if.end.605
  %351 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_size630 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %351, i32 0, i32 92
  %352 = load i32, i32* %prev_paper_size630, align 4, !tbaa !74
  store i32 %352, i32* %prev_paper_size, align 4, !tbaa !5
  %353 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_width631 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %353, i32 0, i32 93
  %354 = load i32, i32* %prev_paper_width631, align 4, !tbaa !75
  store i32 %354, i32* %prev_paper_width, align 4, !tbaa !5
  %355 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_height632 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %355, i32 0, i32 94
  %356 = load i32, i32* %prev_paper_height632, align 4, !tbaa !76
  store i32 %356, i32* %prev_paper_height, align 4, !tbaa !5
  %357 = load i32, i32* %prev_paper_size, align 4, !tbaa !5
  %358 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp633 = icmp ne i32 %357, %358
  br i1 %cmp633, label %if.then.635, label %if.else.654

if.then.635:                                      ; preds = %if.end.629
  %359 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp636 = icmp eq i32 %359, 80
  br i1 %cmp636, label %if.then.638, label %if.else.642

if.then.638:                                      ; preds = %if.then.635
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call639 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 155) #5
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %362 = load i32, i32* %width, align 4, !tbaa !5
  %mul = mul nsw i32 %362, 10
  %363 = load i32, i32* %height, align 4, !tbaa !5
  %mul640 = mul nsw i32 %363, 10
  %call641 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %361, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 155, i32 %mul, i32 %mul640) #5
  br label %if.end.653

if.else.642:                                      ; preds = %if.then.635
  %364 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp643 = icmp eq i32 %364, 81
  br i1 %cmp643, label %if.then.645, label %if.else.650

if.then.645:                                      ; preds = %if.else.642
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call646 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 155) #5
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %367 = load i32, i32* %height, align 4, !tbaa !5
  %mul647 = mul nsw i32 %367, 10
  %368 = load i32, i32* %width, align 4, !tbaa !5
  %mul648 = mul nsw i32 %368, 10
  %call649 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %366, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 155, i32 %mul647, i32 %mul648) #5
  br label %if.end.652

if.else.650:                                      ; preds = %if.else.642
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %370 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call651 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 155, i32 %370) #5
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.650, %if.then.645
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %if.then.638
  br label %if.end.686

if.else.654:                                      ; preds = %if.end.629
  %371 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp655 = icmp eq i32 %371, 80
  br i1 %cmp655, label %if.then.657, label %if.else.669

if.then.657:                                      ; preds = %if.else.654
  %372 = load i32, i32* %prev_paper_width, align 4, !tbaa !5
  %373 = load i32, i32* %width, align 4, !tbaa !5
  %cmp658 = icmp ne i32 %372, %373
  br i1 %cmp658, label %if.then.663, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %if.then.657
  %374 = load i32, i32* %prev_paper_height, align 4, !tbaa !5
  %375 = load i32, i32* %height, align 4, !tbaa !5
  %cmp661 = icmp ne i32 %374, %375
  br i1 %cmp661, label %if.then.663, label %if.end.668

if.then.663:                                      ; preds = %lor.lhs.false.660, %if.then.657
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 155) #5
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %378 = load i32, i32* %width, align 4, !tbaa !5
  %mul665 = mul nsw i32 %378, 10
  %379 = load i32, i32* %height, align 4, !tbaa !5
  %mul666 = mul nsw i32 %379, 10
  %call667 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %377, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 155, i32 %mul665, i32 %mul666) #5
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.663, %lor.lhs.false.660
  br label %if.end.685

if.else.669:                                      ; preds = %if.else.654
  %380 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp670 = icmp eq i32 %380, 81
  br i1 %cmp670, label %if.then.672, label %if.end.684

if.then.672:                                      ; preds = %if.else.669
  %381 = load i32, i32* %prev_paper_width, align 4, !tbaa !5
  %382 = load i32, i32* %width, align 4, !tbaa !5
  %cmp673 = icmp ne i32 %381, %382
  br i1 %cmp673, label %if.then.678, label %lor.lhs.false.675

lor.lhs.false.675:                                ; preds = %if.then.672
  %383 = load i32, i32* %prev_paper_height, align 4, !tbaa !5
  %384 = load i32, i32* %height, align 4, !tbaa !5
  %cmp676 = icmp ne i32 %383, %384
  br i1 %cmp676, label %if.then.678, label %if.end.683

if.then.678:                                      ; preds = %lor.lhs.false.675, %if.then.672
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call679 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 155) #5
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %387 = load i32, i32* %height, align 4, !tbaa !5
  %mul680 = mul nsw i32 %387, 10
  %388 = load i32, i32* %width, align 4, !tbaa !5
  %mul681 = mul nsw i32 %388, 10
  %call682 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %386, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 155, i32 %mul680, i32 %mul681) #5
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.678, %lor.lhs.false.675
  br label %if.end.684

if.end.684:                                       ; preds = %if.end.683, %if.else.669
  br label %if.end.685

if.end.685:                                       ; preds = %if.end.684, %if.end.668
  br label %if.end.686

if.end.686:                                       ; preds = %if.end.685, %if.end.653
  %389 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp687 = icmp sgt i32 %389, 255
  br i1 %cmp687, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %if.end.686
  store i32 255, i32* %num_copies.addr, align 4, !tbaa !5
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.689, %if.end.686
  %390 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_num_copies = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %390, i32 0, i32 95
  %391 = load i32, i32* %prev_num_copies, align 4, !tbaa !77
  %392 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp691 = icmp ne i32 %391, %392
  br i1 %cmp691, label %if.then.693, label %if.end.696

if.then.693:                                      ; preds = %if.end.690
  %393 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %394 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call694 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 155, i32 %394) #5
  %395 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %396 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_num_copies695 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %396, i32 0, i32 95
  store i32 %395, i32* %prev_num_copies695, align 4, !tbaa !77
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.693, %if.end.690
  %397 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp697 = icmp eq i32 %397, 3
  br i1 %cmp697, label %if.then.699, label %if.end.704

if.then.699:                                      ; preds = %if.end.696
  %398 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %faceup = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %398, i32 0, i32 99
  %399 = load i32, i32* %faceup, align 4, !tbaa !47
  %tobool700 = icmp ne i32 %399, 0
  br i1 %tobool700, label %if.then.701, label %if.end.703

if.then.701:                                      ; preds = %if.then.699
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call702 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 155) #5
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.701, %if.then.699
  br label %if.end.704

if.end.704:                                       ; preds = %if.end.703, %if.end.696
  %401 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp705 = icmp eq i32 %401, 3
  br i1 %cmp705, label %if.then.707, label %if.end.767

if.then.707:                                      ; preds = %if.end.704
  %402 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount708 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %402, i32 0, i32 26
  %403 = load i64, i64* %PageCount708, align 8, !tbaa !69
  %cmp709 = icmp eq i64 %403, 0
  br i1 %cmp709, label %if.then.711, label %if.end.718

if.then.711:                                      ; preds = %if.then.707
  %404 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %nup = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %404, i32 0, i32 98
  %405 = load i32, i32* %nup, align 4, !tbaa !45
  %cmp712 = icmp ne i32 %405, 1
  br i1 %cmp712, label %if.then.714, label %if.end.717

if.then.714:                                      ; preds = %if.then.711
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %407 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %nup715 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %407, i32 0, i32 98
  %408 = load i32, i32* %nup715, align 4, !tbaa !45
  %409 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call716 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %406, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 155, i32 %408, i32 %409) #5
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.714, %if.then.711
  br label %if.end.718

if.end.718:                                       ; preds = %if.end.717, %if.then.707
  %410 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %410) #2
  %411 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %411, i32 0, i32 49
  %412 = load i32, i32* %Duplex, align 4, !tbaa !78
  store i32 %412, i32* %dup, align 4, !tbaa !5
  %413 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %413) #2
  %414 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %414, i32 0, i32 50
  %415 = load i32, i32* %Duplex_set, align 4, !tbaa !79
  store i32 %415, i32* %dupset, align 4, !tbaa !5
  %416 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %416) #2
  %417 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %417, i32 0, i32 72
  %418 = load i32, i32* %Tumble, align 4, !tbaa !80
  store i32 %418, i32* %tum, align 4, !tbaa !5
  %419 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool722 = icmp ne i32 %419, 0
  br i1 %tobool722, label %land.lhs.true.723, label %if.else.753

land.lhs.true.723:                                ; preds = %if.end.718
  %420 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool724 = icmp ne i32 %420, 0
  br i1 %tobool724, label %if.then.725, label %if.else.753

if.then.725:                                      ; preds = %land.lhs.true.723
  %421 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %421, i32 0, i32 97
  %422 = load i32, i32* %prev_duplex_mode, align 4, !tbaa !81
  %cmp726 = icmp eq i32 %422, 0
  br i1 %cmp726, label %if.then.732, label %lor.lhs.false.728

lor.lhs.false.728:                                ; preds = %if.then.725
  %423 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode729 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %423, i32 0, i32 97
  %424 = load i32, i32* %prev_duplex_mode729, align 4, !tbaa !81
  %cmp730 = icmp eq i32 %424, 1
  br i1 %cmp730, label %if.then.732, label %if.end.734

if.then.732:                                      ; preds = %lor.lhs.false.728, %if.then.725
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call733 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 155) #5
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.732, %lor.lhs.false.728
  %426 = load i32, i32* %tum, align 4, !tbaa !5
  %tobool735 = icmp ne i32 %426, 0
  br i1 %tobool735, label %if.else.744, label %if.then.736

if.then.736:                                      ; preds = %if.end.734
  %427 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode737 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %427, i32 0, i32 97
  %428 = load i32, i32* %prev_duplex_mode737, align 4, !tbaa !81
  %cmp738 = icmp ne i32 %428, 2
  br i1 %cmp738, label %if.then.740, label %if.end.742

if.then.740:                                      ; preds = %if.then.736
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call741 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %429, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 155) #5
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.740, %if.then.736
  %430 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode743 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %430, i32 0, i32 97
  store i32 2, i32* %prev_duplex_mode743, align 4, !tbaa !81
  br label %if.end.752

if.else.744:                                      ; preds = %if.end.734
  %431 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode745 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %431, i32 0, i32 97
  %432 = load i32, i32* %prev_duplex_mode745, align 4, !tbaa !81
  %cmp746 = icmp ne i32 %432, 3
  br i1 %cmp746, label %if.then.748, label %if.end.750

if.then.748:                                      ; preds = %if.else.744
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call749 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 155) #5
  br label %if.end.750

if.end.750:                                       ; preds = %if.then.748, %if.else.744
  %434 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode751 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %434, i32 0, i32 97
  store i32 3, i32* %prev_duplex_mode751, align 4, !tbaa !81
  br label %if.end.752

if.end.752:                                       ; preds = %if.end.750, %if.end.742
  br label %if.end.766

if.else.753:                                      ; preds = %land.lhs.true.723, %if.end.718
  %435 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool754 = icmp ne i32 %435, 0
  br i1 %tobool754, label %land.lhs.true.755, label %if.end.765

land.lhs.true.755:                                ; preds = %if.else.753
  %436 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool756 = icmp ne i32 %436, 0
  br i1 %tobool756, label %if.end.765, label %if.then.757

if.then.757:                                      ; preds = %land.lhs.true.755
  %437 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode758 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %437, i32 0, i32 97
  %438 = load i32, i32* %prev_duplex_mode758, align 4, !tbaa !81
  %cmp759 = icmp ne i32 %438, 1
  br i1 %cmp759, label %if.then.761, label %if.end.763

if.then.761:                                      ; preds = %if.then.757
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call762 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %439, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 155) #5
  br label %if.end.763

if.end.763:                                       ; preds = %if.then.761, %if.then.757
  %440 = load %struct.gx_device_lips4_s*, %struct.gx_device_lips4_s** %lips4, align 8, !tbaa !1
  %prev_duplex_mode764 = getelementptr inbounds %struct.gx_device_lips4_s, %struct.gx_device_lips4_s* %440, i32 0, i32 97
  store i32 1, i32* %prev_duplex_mode764, align 4, !tbaa !81
  br label %if.end.765

if.end.765:                                       ; preds = %if.end.763, %land.lhs.true.755, %if.else.753
  br label %if.end.766

if.end.766:                                       ; preds = %if.end.765, %if.end.752
  %441 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #2
  %442 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #2
  %443 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #2
  br label %if.end.767

if.end.767:                                       ; preds = %if.end.766, %if.end.704
  %444 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount768 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %444, i32 0, i32 26
  %445 = load i64, i64* %PageCount768, align 8, !tbaa !69
  %cmp769 = icmp eq i64 %445, 0
  br i1 %cmp769, label %if.then.771, label %if.end.777

if.then.771:                                      ; preds = %if.end.767
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %447 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %447, i32 0, i32 87
  %arraydecay772 = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %call773 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 144, i8* %arraydecay772, i32 156) #5
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call774 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %448, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 155) #5
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call775 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 155) #5
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call776 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i32 155) #5
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.771, %if.end.767
  %451 = load i32, i32* %prev_paper_size, align 4, !tbaa !5
  %452 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp778 = icmp ne i32 %451, %452
  br i1 %cmp778, label %if.then.786, label %lor.lhs.false.780

lor.lhs.false.780:                                ; preds = %if.end.777
  %453 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp781 = icmp eq i32 %453, 80
  br i1 %cmp781, label %if.then.786, label %lor.lhs.false.783

lor.lhs.false.783:                                ; preds = %lor.lhs.false.780
  %454 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp784 = icmp eq i32 %454, 81
  br i1 %cmp784, label %if.then.786, label %if.end.817

if.then.786:                                      ; preds = %lor.lhs.false.783, %lor.lhs.false.780, %if.end.777
  %455 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp787 = icmp eq i32 %455, 3
  br i1 %cmp787, label %if.then.792, label %lor.lhs.false.789

lor.lhs.false.789:                                ; preds = %if.then.786
  %456 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp790 = icmp eq i32 %456, 2
  br i1 %cmp790, label %if.then.792, label %if.else.797

if.then.792:                                      ; preds = %lor.lhs.false.789, %if.then.786
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %458 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution793 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %458, i32 0, i32 22
  %arrayidx794 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution793, i32 0, i64 0
  %459 = load float, float* %arrayidx794, align 4, !tbaa !24
  %conv795 = fptosi float %459 to i32
  %call796 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 155, i32 %conv795) #5
  br label %if.end.799

if.else.797:                                      ; preds = %lor.lhs.false.789
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call798 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 155) #5
  br label %if.end.799

if.end.799:                                       ; preds = %if.else.797, %if.then.792
  %461 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp800 = icmp eq i32 %461, 3
  br i1 %cmp800, label %if.then.805, label %lor.lhs.false.802

lor.lhs.false.802:                                ; preds = %if.end.799
  %462 = load i32, i32* %ptype.addr, align 4, !tbaa !44
  %cmp803 = icmp eq i32 %462, 2
  br i1 %cmp803, label %if.then.805, label %if.end.816

if.then.805:                                      ; preds = %lor.lhs.false.802, %if.end.799
  %463 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info806 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %463, i32 0, i32 11
  %depth807 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info806, i32 0, i32 3
  %464 = load i16, i16* %depth807, align 2, !tbaa !70
  %conv808 = zext i16 %464 to i32
  %cmp809 = icmp eq i32 %conv808, 24
  br i1 %cmp809, label %if.then.811, label %if.else.813

if.then.811:                                      ; preds = %if.then.805
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call812 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %465, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 155, i32 256) #5
  br label %if.end.815

if.else.813:                                      ; preds = %if.then.805
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call814 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %466, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 155, i32 24) #5
  br label %if.end.815

if.end.815:                                       ; preds = %if.else.813, %if.then.811
  br label %if.end.816

if.end.816:                                       ; preds = %if.end.815, %lor.lhs.false.802
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.816, %lor.lhs.false.783
  %467 = load i32, i32* %prev_paper_size, align 4, !tbaa !5
  %468 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp818 = icmp ne i32 %467, %468
  br i1 %cmp818, label %if.then.820, label %if.end.899

if.then.820:                                      ; preds = %if.end.817
  %469 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %469, i32 0, i32 25
  %arrayidx821 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 3
  %470 = load float, float* %arrayidx821, align 4, !tbaa !24
  %conv822 = fpext float %470 to double
  %div = fdiv double %conv822, 7.200000e+01
  %sub823 = fsub double 0x3FDA09D63BD3D097, %div
  %471 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution824 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %471, i32 0, i32 22
  %arrayidx825 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution824, i32 0, i64 0
  %472 = load float, float* %arrayidx825, align 4, !tbaa !24
  %conv826 = fpext float %472 to double
  %mul827 = fmul double %sub823, %conv826
  %conv828 = fptosi double %mul827 to i32
  store i32 %conv828, i32* %tm, align 4, !tbaa !5
  %473 = load i32, i32* %tm, align 4, !tbaa !5
  %cmp829 = icmp sgt i32 %473, 0
  br i1 %cmp829, label %if.then.831, label %if.end.833

if.then.831:                                      ; preds = %if.then.820
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %475 = load i32, i32* %tm, align 4, !tbaa !5
  %call832 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %474, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 155, i32 %475) #5
  br label %if.end.833

if.end.833:                                       ; preds = %if.then.831, %if.then.820
  %476 = load i32, i32* %tm, align 4, !tbaa !5
  %cmp834 = icmp slt i32 %476, 0
  br i1 %cmp834, label %if.then.836, label %if.end.839

if.then.836:                                      ; preds = %if.end.833
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %478 = load i32, i32* %tm, align 4, !tbaa !5
  %sub837 = sub nsw i32 0, %478
  %call838 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 155, i32 %sub837) #5
  br label %if.end.839

if.end.839:                                       ; preds = %if.then.836, %if.end.833
  %479 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins840 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %479, i32 0, i32 25
  %arrayidx841 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins840, i32 0, i64 0
  %480 = load float, float* %arrayidx841, align 4, !tbaa !24
  %conv842 = fpext float %480 to double
  %div843 = fdiv double %conv842, 7.200000e+01
  %sub844 = fsub double 0x3FC93264C993264D, %div843
  %481 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution845 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %481, i32 0, i32 22
  %arrayidx846 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution845, i32 0, i64 0
  %482 = load float, float* %arrayidx846, align 4, !tbaa !24
  %conv847 = fpext float %482 to double
  %mul848 = fmul double %sub844, %conv847
  %conv849 = fptosi double %mul848 to i32
  store i32 %conv849, i32* %lm, align 4, !tbaa !5
  %483 = load i32, i32* %lm, align 4, !tbaa !5
  %cmp850 = icmp sgt i32 %483, 0
  br i1 %cmp850, label %if.then.852, label %if.end.854

if.then.852:                                      ; preds = %if.end.839
  %484 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %485 = load i32, i32* %lm, align 4, !tbaa !5
  %call853 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %484, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 155, i32 %485) #5
  br label %if.end.854

if.end.854:                                       ; preds = %if.then.852, %if.end.839
  %486 = load i32, i32* %lm, align 4, !tbaa !5
  %cmp855 = icmp slt i32 %486, 0
  br i1 %cmp855, label %if.then.857, label %if.end.860

if.then.857:                                      ; preds = %if.end.854
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %488 = load i32, i32* %lm, align 4, !tbaa !5
  %sub858 = sub nsw i32 0, %488
  %call859 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %487, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 155, i32 %sub858) #5
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.857, %if.end.854
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call861 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 155) #5
  %490 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height862 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %490, i32 0, i32 14
  %491 = load i32, i32* %height862, align 4, !tbaa !82
  %conv863 = sitofp i32 %491 to double
  %492 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins864 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %492, i32 0, i32 25
  %arrayidx865 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins864, i32 0, i64 3
  %493 = load float, float* %arrayidx865, align 4, !tbaa !24
  %conv866 = fpext float %493 to double
  %div867 = fdiv double %conv866, 7.200000e+01
  %494 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins868 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %494, i32 0, i32 25
  %arrayidx869 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins868, i32 0, i64 1
  %495 = load float, float* %arrayidx869, align 4, !tbaa !24
  %conv870 = fpext float %495 to double
  %div871 = fdiv double %conv870, 7.200000e+01
  %add = fadd double %div867, %div871
  %496 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution872 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %496, i32 0, i32 22
  %arrayidx873 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution872, i32 0, i64 1
  %497 = load float, float* %arrayidx873, align 4, !tbaa !24
  %conv874 = fpext float %497 to double
  %mul875 = fmul double %add, %conv874
  %sub876 = fsub double %conv863, %mul875
  %conv877 = fptosi double %sub876 to i32
  store i32 %conv877, i32* %bm, align 4, !tbaa !5
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %499 = load i32, i32* %bm, align 4, !tbaa !5
  %call878 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %498, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 155, i32 %499) #5
  %500 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width879 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %500, i32 0, i32 13
  %501 = load i32, i32* %width879, align 4, !tbaa !83
  %conv880 = sitofp i32 %501 to double
  %502 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins881 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %502, i32 0, i32 25
  %arrayidx882 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins881, i32 0, i64 0
  %503 = load float, float* %arrayidx882, align 4, !tbaa !24
  %conv883 = fpext float %503 to double
  %div884 = fdiv double %conv883, 7.200000e+01
  %504 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins885 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %504, i32 0, i32 25
  %arrayidx886 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins885, i32 0, i64 2
  %505 = load float, float* %arrayidx886, align 4, !tbaa !24
  %conv887 = fpext float %505 to double
  %div888 = fdiv double %conv887, 7.200000e+01
  %add889 = fadd double %div884, %div888
  %506 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution890 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %506, i32 0, i32 22
  %arrayidx891 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution890, i32 0, i64 0
  %507 = load float, float* %arrayidx891, align 4, !tbaa !24
  %conv892 = fpext float %507 to double
  %mul893 = fmul double %add889, %conv892
  %sub894 = fsub double %conv880, %mul893
  %conv895 = fptosi double %sub894 to i32
  store i32 %conv895, i32* %rm, align 4, !tbaa !5
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %509 = load i32, i32* %rm, align 4, !tbaa !5
  %call896 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %508, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 155, i32 %509) #5
  %510 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call897 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 155) #5
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %512 = load i32, i32* %bm, align 4, !tbaa !5
  %call898 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %511, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 155, i32 %512) #5
  br label %if.end.899

if.end.899:                                       ; preds = %if.end.860, %if.end.817
  %513 = load i32, i32* %paper_size, align 4, !tbaa !5
  %514 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_size900 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %514, i32 0, i32 92
  store i32 %513, i32* %prev_paper_size900, align 4, !tbaa !74
  %515 = load i32, i32* %width, align 4, !tbaa !5
  %516 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_width901 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %516, i32 0, i32 93
  store i32 %515, i32* %prev_paper_width901, align 4, !tbaa !75
  %517 = load i32, i32* %height, align 4, !tbaa !5
  %518 = load %struct.gx_device_lips_s*, %struct.gx_device_lips_s** %lips, align 8, !tbaa !1
  %prev_paper_height902 = getelementptr inbounds %struct.gx_device_lips_s, %struct.gx_device_lips_s* %518, i32 0, i32 94
  store i32 %517, i32* %prev_paper_height902, align 4, !tbaa !76
  %519 = bitcast i32* %bm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #2
  %520 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #2
  %521 = bitcast i32* %lm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #2
  %522 = bitcast i32* %tm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #2
  %523 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #2
  %524 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #2
  %525 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #2
  %526 = bitcast i32* %prev_paper_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #2
  %527 = bitcast i32* %prev_paper_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #2
  %528 = bitcast i32* %prev_paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #2
  %529 = bitcast %struct.gx_device_lips4_s** %lips4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %529) #2
  %530 = bitcast %struct.gx_device_lips_s** %lips to i8*
  call void @llvm.lifetime.end(i64 8, i8* %530) #2
  ret void
}

declare i32 @lprn_print_image(%struct.gx_device_printer_s*, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @lips_job_end(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 12) #5
  ret void
}

declare i32 @lips_media_selection(i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips4type_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies, i32 %ptype) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %ptype.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rm = alloca i32, align 4
  %bm = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #5
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %8, i32 0, i32 76
  %9 = load i32, i32* %BlockLine, align 4, !tbaa !58
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 82
  %11 = load i32, i32* %nBh, align 4, !tbaa !59
  %div = sdiv i32 %9, %11
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 82
  %13 = load i32, i32* %nBh1, align 4, !tbaa !59
  %mul = mul nsw i32 %div, %13
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %ptype.addr, align 4, !tbaa !5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %17 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  call void @lips_job_start(%struct.gx_device_printer_s* %14, i32 %15, %struct._IO_FILE* %16, i32 %17) #5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth, align 2, !tbaa !70
  %conv = zext i16 %19 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !61
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !61
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !64
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !60
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !61
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !61
  %29 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul7 = mul nsw i32 %29, 3
  %div8 = sdiv i32 %mul7, 2
  %add = add nsw i32 %div8, 1
  %30 = load i32, i32* %maxY, align 4, !tbaa !5
  %call9 = call i8* %24(%struct.gs_memory_s* %28, i32 %add, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 79
  store i8* %call9, i8** %CompBuf, align 8, !tbaa !23
  %tobool = icmp ne i8* %call9, null
  br i1 %tobool, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !60
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !61
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !61
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array15, align 8, !tbaa !64
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !60
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !61
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !61
  %41 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul19 = mul nsw i32 %41, 3
  %div20 = sdiv i32 %mul19, 2
  %add21 = add nsw i32 %div20, 1
  %42 = load i32, i32* %maxY, align 4, !tbaa !5
  %call22 = call i8* %36(%struct.gs_memory_s* %40, i32 %add21, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0)) #5
  %43 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf2 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %43, i32 0, i32 80
  store i8* %call22, i8** %CompBuf2, align 8, !tbaa !27
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end
  %44 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %44, i32 0, i32 71
  %45 = load i32, i32* %NegativePrint, align 4, !tbaa !65
  %tobool26 = icmp ne i32 %45, 0
  br i1 %tobool26, label %if.then.27, label %if.end.58

if.then.27:                                       ; preds = %if.end.25
  %46 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %47, i32 0, i32 13
  %48 = load i32, i32* %width, align 4, !tbaa !83
  %conv28 = sitofp i32 %48 to double
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %50 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv29 = fpext float %50 to double
  %div30 = fdiv double %conv29, 7.200000e+01
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 25
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins31, i32 0, i64 2
  %52 = load float, float* %arrayidx32, align 4, !tbaa !24
  %conv33 = fpext float %52 to double
  %div34 = fdiv double %conv33, 7.200000e+01
  %add35 = fadd double %div30, %div34
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 22
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %54 = load float, float* %arrayidx36, align 4, !tbaa !24
  %conv37 = fpext float %54 to double
  %mul38 = fmul double %add35, %conv37
  %sub = fsub double %conv28, %mul38
  %conv39 = fptosi double %sub to i32
  store i32 %conv39, i32* %rm, align 4, !tbaa !5
  %55 = bitcast i32* %bm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 14
  %57 = load i32, i32* %height, align 4, !tbaa !82
  %conv40 = sitofp i32 %57 to double
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins41 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 25
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins41, i32 0, i64 3
  %59 = load float, float* %arrayidx42, align 4, !tbaa !24
  %conv43 = fpext float %59 to double
  %div44 = fdiv double %conv43, 7.200000e+01
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWMargins45 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 25
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins45, i32 0, i64 1
  %61 = load float, float* %arrayidx46, align 4, !tbaa !24
  %conv47 = fpext float %61 to double
  %div48 = fdiv double %conv47, 7.200000e+01
  %add49 = fadd double %div44, %div48
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution50 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 22
  %arrayidx51 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution50, i32 0, i64 1
  %63 = load float, float* %arrayidx51, align 4, !tbaa !24
  %conv52 = fpext float %63 to double
  %mul53 = fmul double %add49, %conv52
  %sub54 = fsub double %conv40, %mul53
  %conv55 = fptosi double %sub54 to i32
  store i32 %conv55, i32* %bm, align 4, !tbaa !5
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %65 = load i32, i32* %rm, align 4, !tbaa !5
  %66 = load i32, i32* %bm, align 4, !tbaa !5
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i32 155, i32 155, i32 %65, i32 155, i32 %66, i32 155) #5
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %68 = load i32, i32* %rm, align 4, !tbaa !5
  %69 = load i32, i32* %bm, align 4, !tbaa !5
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 155, i32 %68, i32 155, i32 %69) #5
  %70 = bitcast i32* %bm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %rm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.27, %if.end.25
  %72 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %72, i32 0, i32 75
  store i32 0, i32* %prev_y, align 4, !tbaa !66
  %73 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %73, i32 0, i32 74
  store i32 0, i32* %prev_x, align 4, !tbaa !67
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call59 = call i32 @lprn_print_image(%struct.gx_device_printer_s* %74, %struct._IO_FILE* %75) #5
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %76 = load i32, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %76, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  %77 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.58
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory64 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory64, align 8, !tbaa !60
  %non_gc_memory65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory65, align 8, !tbaa !61
  %non_gc_memory66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory66, align 8, !tbaa !61
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 2
  %82 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !60
  %non_gc_memory69 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory69, align 8, !tbaa !61
  %non_gc_memory70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory70, align 8, !tbaa !61
  %87 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf71 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %87, i32 0, i32 79
  %88 = load i8*, i8** %CompBuf71, align 8, !tbaa !23
  call void %82(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !60
  %non_gc_memory73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory73, align 8, !tbaa !61
  %non_gc_memory74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory74, align 8, !tbaa !61
  %procs75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %free_object76 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs75, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object76, align 8, !tbaa !68
  %94 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory77, align 8, !tbaa !60
  %non_gc_memory78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory78, align 8, !tbaa !61
  %non_gc_memory79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory79, align 8, !tbaa !61
  %98 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf280 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %98, i32 0, i32 80
  %99 = load i8*, i8** %CompBuf280, align 8, !tbaa !27
  call void %93(%struct.gs_memory_s* %97, i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0)) #5
  br label %if.end.86

if.else:                                          ; preds = %entry
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call81 = call i32 @lips4c_output_page(%struct.gx_device_printer_s* %100, %struct._IO_FILE* %101) #5
  store i32 %call81, i32* %code, align 4, !tbaa !5
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %102, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.63
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @lips_job_end(%struct.gx_device_printer_s* %104, %struct._IO_FILE* %105) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.then.84, %if.then.62, %if.then.24, %if.then.10
  %106 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4c_output_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pBuff = alloca i8*, align 8
  %ComBuff = alloca i8*, align 8
  %prevBuff = alloca i8*, align 8
  %TotalBuff = alloca i8*, align 8
  %diffBuff = alloca i8*, align 8
  %bits_per_pixel = alloca i32, align 4
  %num_components = alloca i32, align 4
  %nBytesPerLine = alloca i32, align 4
  %Xpixel = alloca i32, align 4
  %lnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pBuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %ComBuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %prevBuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i8** %TotalBuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %diffBuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth, align 2, !tbaa !70
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %bits_per_pixel, align 4, !tbaa !5
  %8 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 8
  %cond = select i1 %cmp, i32 3, i32 1
  store i32 %cond, i32* %num_components, align 4, !tbaa !5
  %10 = bitcast i32* %nBytesPerLine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %12, i32 0) #5
  store i32 %call, i32* %nBytesPerLine, align 4, !tbaa !5
  %13 = bitcast i32* %Xpixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %15 = load i32, i32* %num_components, align 4, !tbaa !5
  %div = sdiv i32 %14, %15
  store i32 %div, i32* %Xpixel, align 4, !tbaa !5
  %16 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %lnum, align 4, !tbaa !5
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !60
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !61
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !61
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %21 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !64
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !60
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !61
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !61
  %26 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %call6 = call i8* %21(%struct.gs_memory_s* %25, i32 %26, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i32 0, i32 0)) #5
  store i8* %call6, i8** %pBuff, align 8, !tbaa !1
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !60
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !61
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !61
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_byte_array11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 10
  %31 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array11, align 8, !tbaa !64
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !60
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !61
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !61
  %36 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %call15 = call i8* %31(%struct.gs_memory_s* %35, i32 %36, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0)) #5
  store i8* %call15, i8** %prevBuff, align 8, !tbaa !1
  %tobool16 = icmp ne i8* %call15, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !60
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !61
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !61
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_byte_array23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 10
  %41 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array23, align 8, !tbaa !64
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !60
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !61
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !61
  %46 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %47 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %46, %47
  %48 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %49 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul27 = mul nsw i32 %48, %49
  %add = add nsw i32 %mul27, 127
  %mul28 = mul nsw i32 %add, 129
  %div29 = sdiv i32 %mul28, 128
  %add30 = add nsw i32 %mul, %div29
  %call31 = call i8* %41(%struct.gs_memory_s* %45, i32 %add30, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i32 0, i32 0)) #5
  store i8* %call31, i8** %ComBuff, align 8, !tbaa !1
  %tobool32 = icmp ne i8* %call31, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.18
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !60
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !61
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !61
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %alloc_byte_array39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 10
  %54 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array39, align 8, !tbaa !64
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !60
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !61
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !61
  %59 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %60 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul43 = mul nsw i32 %59, %60
  %61 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %62 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul44 = mul nsw i32 %61, %62
  %add45 = add nsw i32 %mul44, 127
  %mul46 = mul nsw i32 %add45, 129
  %div47 = sdiv i32 %mul46, 128
  %add48 = add nsw i32 %mul43, %div47
  %mul49 = mul nsw i32 %add48, 256
  %call50 = call i8* %54(%struct.gs_memory_s* %58, i32 %mul49, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i32 0, i32 0)) #5
  store i8* %call50, i8** %TotalBuff, align 8, !tbaa !1
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.34
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.34
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !60
  %non_gc_memory55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory55, align 8, !tbaa !61
  %non_gc_memory56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory56, align 8, !tbaa !61
  %procs57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_byte_array58 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs57, i32 0, i32 10
  %67 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array58, align 8, !tbaa !64
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory59, align 8, !tbaa !60
  %non_gc_memory60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory60, align 8, !tbaa !61
  %non_gc_memory61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory61, align 8, !tbaa !61
  %72 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %73 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul62 = mul nsw i32 %72, %73
  %mul63 = mul nsw i32 %mul62, 2
  %call64 = call i8* %67(%struct.gs_memory_s* %71, i32 %mul63, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0)) #5
  store i8* %call64, i8** %diffBuff, align 8, !tbaa !1
  %tobool65 = icmp ne i8* %call64, null
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.end.53
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.53
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.67
  %74 = load i32, i32* %lnum, align 4, !tbaa !5
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 14
  %76 = load i32, i32* %height, align 4, !tbaa !82
  %cmp68 = icmp slt i32 %74, %76
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %79 = load i8*, i8** %pBuff, align 8, !tbaa !1
  %80 = load i8*, i8** %prevBuff, align 8, !tbaa !1
  %81 = load i8*, i8** %ComBuff, align 8, !tbaa !1
  %82 = load i8*, i8** %TotalBuff, align 8, !tbaa !1
  %83 = load i8*, i8** %diffBuff, align 8, !tbaa !1
  %84 = load i32, i32* %lnum, align 4, !tbaa !5
  %call70 = call i32 @lips4c_write_raster(%struct.gx_device_printer_s* %77, %struct._IO_FILE* %78, i8* %79, i8* %80, i8* %81, i8* %82, i8* %83, i32 %84, i32 256) #5
  %85 = load i32, i32* %lnum, align 4, !tbaa !5
  %add71 = add nsw i32 %85, 256
  store i32 %add71, i32* %lnum, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height72 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %86, i32 0, i32 14
  %87 = load i32, i32* %height72, align 4, !tbaa !82
  %88 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub = sub nsw i32 %88, 256
  %sub73 = sub nsw i32 %87, %sub
  %cmp74 = icmp sgt i32 %sub73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %while.end
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %91 = load i8*, i8** %pBuff, align 8, !tbaa !1
  %92 = load i8*, i8** %prevBuff, align 8, !tbaa !1
  %93 = load i8*, i8** %ComBuff, align 8, !tbaa !1
  %94 = load i8*, i8** %TotalBuff, align 8, !tbaa !1
  %95 = load i8*, i8** %diffBuff, align 8, !tbaa !1
  %96 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub77 = sub nsw i32 %96, 256
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height78 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 14
  %98 = load i32, i32* %height78, align 4, !tbaa !82
  %99 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub79 = sub nsw i32 %99, 256
  %sub80 = sub nsw i32 %98, %sub79
  %call81 = call i32 @lips4c_write_raster(%struct.gx_device_printer_s* %89, %struct._IO_FILE* %90, i8* %91, i8* %92, i8* %93, i8* %94, i8* %95, i32 %sub77, i32 %sub80) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.76, %while.end
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !60
  %non_gc_memory84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory84, align 8, !tbaa !61
  %non_gc_memory85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory85, align 8, !tbaa !61
  %procs86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs86, i32 0, i32 2
  %104 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %105 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory87, align 8, !tbaa !60
  %non_gc_memory88 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory88, align 8, !tbaa !61
  %non_gc_memory89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory89, align 8, !tbaa !61
  %109 = load i8*, i8** %pBuff, align 8, !tbaa !1
  call void %104(%struct.gs_memory_s* %108, i8* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i32 0, i32 0)) #5
  %110 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %110, i32 0, i32 3
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory90, align 8, !tbaa !60
  %non_gc_memory91 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 3
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory91, align 8, !tbaa !61
  %non_gc_memory92 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory92, align 8, !tbaa !61
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %free_object94 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object94, align 8, !tbaa !68
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory95, align 8, !tbaa !60
  %non_gc_memory96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory96, align 8, !tbaa !61
  %non_gc_memory97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory97, align 8, !tbaa !61
  %119 = load i8*, i8** %prevBuff, align 8, !tbaa !1
  call void %114(%struct.gs_memory_s* %118, i8* %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0)) #5
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %120, i32 0, i32 3
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory98, align 8, !tbaa !60
  %non_gc_memory99 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory99, align 8, !tbaa !61
  %non_gc_memory100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory100, align 8, !tbaa !61
  %procs101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 1
  %free_object102 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs101, i32 0, i32 2
  %124 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object102, align 8, !tbaa !68
  %125 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !60
  %non_gc_memory104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 3
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory104, align 8, !tbaa !61
  %non_gc_memory105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory105, align 8, !tbaa !61
  %129 = load i8*, i8** %ComBuff, align 8, !tbaa !1
  call void %124(%struct.gs_memory_s* %128, i8* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i32 0, i32 0)) #5
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !60
  %non_gc_memory107 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory107, align 8, !tbaa !61
  %non_gc_memory108 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory108, align 8, !tbaa !61
  %procs109 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 1
  %free_object110 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs109, i32 0, i32 2
  %134 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object110, align 8, !tbaa !68
  %135 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory111 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %135, i32 0, i32 3
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory111, align 8, !tbaa !60
  %non_gc_memory112 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory112, align 8, !tbaa !61
  %non_gc_memory113 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %137, i32 0, i32 3
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory113, align 8, !tbaa !61
  %139 = load i8*, i8** %TotalBuff, align 8, !tbaa !1
  call void %134(%struct.gs_memory_s* %138, i8* %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i32 0, i32 0)) #5
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory114 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %140, i32 0, i32 3
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !60
  %non_gc_memory115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory115, align 8, !tbaa !61
  %non_gc_memory116 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory116, align 8, !tbaa !61
  %procs117 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 1
  %free_object118 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs117, i32 0, i32 2
  %144 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object118, align 8, !tbaa !68
  %145 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory119, align 8, !tbaa !60
  %non_gc_memory120 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory120, align 8, !tbaa !61
  %non_gc_memory121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory121, align 8, !tbaa !61
  %149 = load i8*, i8** %diffBuff, align 8, !tbaa !1
  call void %144(%struct.gs_memory_s* %148, i8* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.then.66, %if.then.52, %if.then.33, %if.then.17, %if.then
  %150 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %Xpixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i32* %nBytesPerLine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i8** %diffBuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast i8** %TotalBuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i8** %prevBuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast i8** %ComBuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i8** %pBuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = load i32, i32* %retval
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4c_write_raster(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i8* %pBuff, i8* %prevBuff, i8* %ComBuff, i8* %TotalBuff, i8* %diffBuff, i32 %lnum, i32 %raster_height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pBuff.addr = alloca i8*, align 8
  %prevBuff.addr = alloca i8*, align 8
  %ComBuff.addr = alloca i8*, align 8
  %TotalBuff.addr = alloca i8*, align 8
  %diffBuff.addr = alloca i8*, align 8
  %lnum.addr = alloca i32, align 4
  %raster_height.addr = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %num_components = alloca i32, align 4
  %nBytesPerLine = alloca i32, align 4
  %Xpixel = alloca i32, align 4
  %TotalLen = alloca i32, align 4
  %num_zerobyte = alloca i32, align 4
  %zerobyte_flag = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %Len = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i8* %pBuff, i8** %pBuff.addr, align 8, !tbaa !1
  store i8* %prevBuff, i8** %prevBuff.addr, align 8, !tbaa !1
  store i8* %ComBuff, i8** %ComBuff.addr, align 8, !tbaa !1
  store i8* %TotalBuff, i8** %TotalBuff.addr, align 8, !tbaa !1
  store i8* %diffBuff, i8** %diffBuff.addr, align 8, !tbaa !1
  store i32 %lnum, i32* %lnum.addr, align 4, !tbaa !5
  store i32 %raster_height, i32* %raster_height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !70
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %bits_per_pixel, align 4, !tbaa !5
  %3 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 8
  %cond = select i1 %cmp, i32 3, i32 1
  store i32 %cond, i32* %num_components, align 4, !tbaa !5
  %5 = bitcast i32* %nBytesPerLine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %7, i32 0) #5
  store i32 %call, i32* %nBytesPerLine, align 4, !tbaa !5
  %8 = bitcast i32* %Xpixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %10 = load i32, i32* %num_components, align 4, !tbaa !5
  %div = sdiv i32 %9, %10
  store i32 %div, i32* %Xpixel, align 4, !tbaa !5
  %11 = bitcast i32* %TotalLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %TotalLen, align 4, !tbaa !5
  %12 = bitcast i32* %num_zerobyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %num_zerobyte, align 4, !tbaa !5
  %13 = bitcast i32* %zerobyte_flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %zerobyte_flag, align 4, !tbaa !5
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, %18
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8 0, i8* %add.ptr, align 1, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %lnum.addr, align 4, !tbaa !5
  store i32 %22, i32* %y, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.33, %for.end
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %24 = load i32, i32* %lnum.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster_height.addr, align 4, !tbaa !5
  %add = add nsw i32 %24, %25
  %cmp5 = icmp slt i32 %23, %add
  br i1 %cmp5, label %for.body.7, label %for.end.35

for.body.7:                                       ; preds = %for.cond.4
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load i8*, i8** %pBuff.addr, align 8, !tbaa !1
  %29 = load i32, i32* %nBytesPerLine, align 4, !tbaa !5
  %call8 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %26, i32 %27, i8* %28, i32 %29) #5
  %30 = load i8*, i8** %pBuff.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %ComBuff.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %34 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %35 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %34, %35
  %call9 = call i32 @lips_delta_encode(i8* %30, i8* %31, i8* %32, i8* %33, i32 %mul) #5
  store i32 %call9, i32* %Len, align 4, !tbaa !5
  %36 = load i32, i32* %Len, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %36, 2
  br i1 %cmp10, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %for.body.7
  %37 = load i8*, i8** %ComBuff.addr, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !44
  %conv12 = zext i8 %38 to i32
  %cmp13 = icmp eq i32 %conv12, 1
  br i1 %cmp13, label %if.then, label %if.else.30

if.then:                                          ; preds = %land.lhs.true
  %39 = load i32, i32* %zerobyte_flag, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %39, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  store i32 1, i32* %zerobyte_flag, align 4, !tbaa !5
  %40 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %ComBuff.addr, align 8, !tbaa !1
  %42 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %43 = load i32, i32* %Len, align 4, !tbaa !5
  %call18 = call i32 @lips_byte_cat(i8* %40, i8* %41, i32 %42, i32 %43) #5
  store i32 %call18, i32* %TotalLen, align 4, !tbaa !5
  br label %if.end.29

if.else:                                          ; preds = %if.then
  %44 = load i32, i32* %num_zerobyte, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %44, 255
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %45 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %ComBuff.addr, align 8, !tbaa !1
  %47 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %48 = load i32, i32* %Len, align 4, !tbaa !5
  %call22 = call i32 @lips_byte_cat(i8* %45, i8* %46, i32 %47, i32 %48) #5
  store i32 %call22, i32* %TotalLen, align 4, !tbaa !5
  br label %if.end

if.else.23:                                       ; preds = %if.else
  %49 = load i32, i32* %num_zerobyte, align 4, !tbaa !5
  %conv24 = trunc i32 %49 to i8
  %50 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %51 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %idx.ext25 = sext i32 %51 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %50, i64 %idx.ext25
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr26, i64 -1
  store i8 %conv24, i8* %add.ptr27, align 1, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.21
  %52 = load i32, i32* %num_zerobyte, align 4, !tbaa !5
  %inc28 = add nsw i32 %52, 1
  store i32 %inc28, i32* %num_zerobyte, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.17
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true, %for.body.7
  %53 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %ComBuff.addr, align 8, !tbaa !1
  %55 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %56 = load i32, i32* %Len, align 4, !tbaa !5
  %call31 = call i32 @lips_byte_cat(i8* %53, i8* %54, i32 %55, i32 %56) #5
  store i32 %call31, i32* %TotalLen, align 4, !tbaa !5
  store i32 0, i32* %zerobyte_flag, align 4, !tbaa !5
  store i32 0, i32* %num_zerobyte, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.29
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %57 = load i32, i32* %y, align 4, !tbaa !5
  %inc34 = add nsw i32 %57, 1
  store i32 %inc34, i32* %y, align 4, !tbaa !5
  br label %for.cond.4

for.end.35:                                       ; preds = %for.cond.4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %59 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %60 = load i32, i32* %Xpixel, align 4, !tbaa !5
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %62 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv36 = fptosi float %62 to i32
  %63 = load i32, i32* %raster_height.addr, align 4, !tbaa !5
  %64 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %65 = load i32, i32* %num_components, align 4, !tbaa !5
  %div37 = sdiv i32 %64, %65
  %66 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %66, 3
  %cond40 = select i1 %cmp38, i32 0, i32 10
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0), i32 155, i32 %59, i32 %60, i32 %conv36, i32 %63, i32 %div37, i32 %cond40) #5
  %67 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %68 = load i32, i32* %TotalLen, align 4, !tbaa !5
  %conv42 = sext i32 %68 to i64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call43 = call i64 @fwrite(i8* %67, i64 1, i64 %conv42, %struct._IO_FILE* %69) #5
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call44 = call i32 @fputc(i32 133, %struct._IO_FILE* %70) #5
  %71 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %zerobyte_flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %num_zerobyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %TotalLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %Xpixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %nBytesPerLine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  ret i32 0
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips_delta_encode(i8* %inBuff, i8* %prevBuff, i8* %outBuff, i8* %diffBuff, i32 %Length) #1 {
entry:
  %retval = alloca i32, align 4
  %inBuff.addr = alloca i8*, align 8
  %prevBuff.addr = alloca i8*, align 8
  %outBuff.addr = alloca i8*, align 8
  %diffBuff.addr = alloca i8*, align 8
  %Length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %com_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %inBuff, i8** %inBuff.addr, align 8, !tbaa !1
  store i8* %prevBuff, i8** %prevBuff.addr, align 8, !tbaa !1
  store i8* %outBuff, i8** %outBuff.addr, align 8, !tbaa !1
  store i8* %diffBuff, i8** %diffBuff.addr, align 8, !tbaa !1
  store i32 %Length, i32* %Length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %com_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %7 = load i32, i32* %Length.addr, align 4, !tbaa !5
  %call = call i32 @lips_delta_compress(i8* %4, i8* %5, i8* %6, i32 %7) #5
  store i32 %call, i32* %com_size, align 4, !tbaa !5
  %8 = load i32, i32* %com_size, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  store i8 1, i8* %9, align 1, !tbaa !44
  %10 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %add.ptr, align 1, !tbaa !44
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load i32, i32* %Length.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, %12
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext = sext i32 %14 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8 0, i8* %add.ptr2, align 1, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %com_size, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %17 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  store i8 0, i8* %17, align 1, !tbaa !44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %if.end.5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %com_size, align 4, !tbaa !5
  %div = sdiv i32 %19, 255
  %cmp7 = icmp slt i32 %18, %div
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.6
  %20 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext9 = sext i32 %21 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %20, i64 %idx.ext9
  store i8 -1, i8* %add.ptr10, align 1, !tbaa !44
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %22, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond.6

for.end.13:                                       ; preds = %for.cond.6
  %23 = load i32, i32* %com_size, align 4, !tbaa !5
  %rem = srem i32 %23, 255
  %conv = trunc i32 %rem to i8
  %24 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext14 = sext i32 %25 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %24, i64 %idx.ext14
  store i8 %conv, i8* %add.ptr15, align 1, !tbaa !44
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.27, %for.end.13
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %27 = load i32, i32* %com_size, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.16
  %28 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext20 = sext i32 %29 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %28, i64 %idx.ext20
  %30 = load i8, i8* %add.ptr21, align 1, !tbaa !44
  %31 = load i8*, i8** %outBuff.addr, align 8, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext22 = sext i32 %32 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %31, i64 %idx.ext22
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext24 = sext i32 %33 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 1
  store i8 %30, i8* %add.ptr26, align 1, !tbaa !44
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.19
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %j, align 4, !tbaa !5
  br label %for.cond.16

for.end.29:                                       ; preds = %for.cond.16
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %for.end.29
  %35 = load i32, i32* %k, align 4, !tbaa !5
  %36 = load i32, i32* %Length.addr, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %35, %36
  br i1 %cmp31, label %for.body.33, label %for.end.40

for.body.33:                                      ; preds = %for.cond.30
  %37 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %38 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext34 = sext i32 %38 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %37, i64 %idx.ext34
  %39 = load i8, i8* %add.ptr35, align 1, !tbaa !44
  %40 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %41 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext36 = sext i32 %41 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %40, i64 %idx.ext36
  store i8 %39, i8* %add.ptr37, align 1, !tbaa !44
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.33
  %42 = load i32, i32* %k, align 4, !tbaa !5
  %inc39 = add nsw i32 %42, 1
  store i32 %inc39, i32* %k, align 4, !tbaa !5
  br label %for.cond.30

for.end.40:                                       ; preds = %for.cond.30
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %add = add nsw i32 %43, %44
  %add41 = add nsw i32 %add, 1
  store i32 %add41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.40, %if.then.4, %for.end
  %45 = bitcast i32* %com_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @lips_byte_cat(i8* %TotalBuff, i8* %Buff, i32 %TotalLen, i32 %Len) #1 {
entry:
  %TotalBuff.addr = alloca i8*, align 8
  %Buff.addr = alloca i8*, align 8
  %TotalLen.addr = alloca i32, align 4
  %Len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %TotalBuff, i8** %TotalBuff.addr, align 8, !tbaa !1
  store i8* %Buff, i8** %Buff.addr, align 8, !tbaa !1
  store i32 %TotalLen, i32* %TotalLen.addr, align 4, !tbaa !5
  store i32 %Len, i32* %Len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %Len.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %Buff.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !44
  %6 = load i8*, i8** %TotalBuff.addr, align 8, !tbaa !1
  %7 = load i32, i32* %TotalLen.addr, align 4, !tbaa !5
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext3 = sext i32 %8 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr2, i64 %idx.ext3
  store i8 %5, i8* %add.ptr4, align 1, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %TotalLen.addr, align 4, !tbaa !5
  %11 = load i32, i32* %Len.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %add
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lips_delta_compress(i8* %inBuff, i8* %prevBuff, i8* %diffBuff, i32 %Length) #1 {
entry:
  %retval = alloca i32, align 4
  %inBuff.addr = alloca i8*, align 8
  %prevBuff.addr = alloca i8*, align 8
  %diffBuff.addr = alloca i8*, align 8
  %Length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zero_flag = alloca i32, align 4
  %same_flag = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %num_commandbyte = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %inBuff, i8** %inBuff.addr, align 8, !tbaa !1
  store i8* %prevBuff, i8** %prevBuff.addr, align 8, !tbaa !1
  store i8* %diffBuff, i8** %diffBuff.addr, align 8, !tbaa !1
  store i32 %Length, i32* %Length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %zero_flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 1, i32* %zero_flag, align 4, !tbaa !5
  %3 = bitcast i32* %same_flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %same_flag, align 4, !tbaa !5
  %4 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %num_bytes, align 4, !tbaa !5
  %5 = bitcast i32* %num_commandbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %num_commandbyte, align 4, !tbaa !5
  %6 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %size, align 4, !tbaa !5
  %7 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %offset, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %Length.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = load i8, i8* %add.ptr, align 1, !tbaa !44
  %conv = zext i8 %12 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %zero_flag, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext3 = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 %idx.ext3
  %15 = load i8, i8* %add.ptr4, align 1, !tbaa !44
  %conv5 = zext i8 %15 to i32
  %16 = load i8*, i8** %prevBuff.addr, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext6 = sext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 %idx.ext6
  %18 = load i8, i8* %add.ptr7, align 1, !tbaa !44
  %conv8 = zext i8 %18 to i32
  %cmp9 = icmp ne i32 %conv5, %conv8
  br i1 %cmp9, label %if.then.11, label %if.else.48

if.then.11:                                       ; preds = %if.end
  %19 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %num_bytes, align 4, !tbaa !5
  %20 = load i32, i32* %same_flag, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %20, 1
  br i1 %cmp12, label %if.then.14, label %if.end.47

if.then.14:                                       ; preds = %if.then.11
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %21, 31
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %22 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %22, i64 %idx.ext18
  store i8 31, i8* %add.ptr19, align 1, !tbaa !44
  br label %if.end.23

if.else:                                          ; preds = %if.then.14
  %24 = load i32, i32* %offset, align 4, !tbaa !5
  %conv20 = trunc i32 %24 to i8
  %25 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext21 = sext i32 %26 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %25, i64 %idx.ext21
  store i8 %conv20, i8* %add.ptr22, align 1, !tbaa !44
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.17
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %size, align 4, !tbaa !5
  %28 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, i32* %num_commandbyte, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.end.23
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %30 = load i32, i32* %offset, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 31
  %div = sdiv i32 %sub, 255
  %cmp27 = icmp slt i32 %29, %div
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %31 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %32 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext30 = sext i32 %32 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %31, i64 %idx.ext30
  store i8 -1, i8* %add.ptr31, align 1, !tbaa !44
  %33 = load i32, i32* %size, align 4, !tbaa !5
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %size, align 4, !tbaa !5
  %34 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, i32* %num_commandbyte, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !5
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %36 = load i32, i32* %offset, align 4, !tbaa !5
  %sub35 = sub nsw i32 %36, 31
  %rem = srem i32 %sub35, 255
  %cmp36 = icmp sge i32 %rem, 0
  br i1 %cmp36, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %for.end
  %37 = load i32, i32* %offset, align 4, !tbaa !5
  %sub39 = sub nsw i32 %37, 31
  %rem40 = srem i32 %sub39, 255
  %conv41 = trunc i32 %rem40 to i8
  %38 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %39 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext42 = sext i32 %39 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %38, i64 %idx.ext42
  store i8 %conv41, i8* %add.ptr43, align 1, !tbaa !44
  %40 = load i32, i32* %size, align 4, !tbaa !5
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %size, align 4, !tbaa !5
  %41 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %inc45 = add nsw i32 %41, 1
  store i32 %inc45, i32* %num_commandbyte, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.38, %for.end
  store i32 0, i32* %same_flag, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.11
  br label %if.end.50

if.else.48:                                       ; preds = %if.end
  store i32 1, i32* %same_flag, align 4, !tbaa !5
  %42 = load i32, i32* %offset, align 4, !tbaa !5
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %offset, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.end.47
  %43 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp51 = icmp sgt i32 %43, 8
  br i1 %cmp51, label %if.then.53, label %if.else.83

if.then.53:                                       ; preds = %if.end.50
  %44 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %45 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext54 = sext i32 %45 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %44, i64 %idx.ext54
  %46 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext56 = sext i32 %46 to i64
  %idx.neg = sub i64 0, %idx.ext56
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr55, i64 %idx.neg
  %47 = load i8, i8* %add.ptr57, align 1, !tbaa !44
  %conv58 = zext i8 %47 to i32
  %or = or i32 %conv58, 224
  %conv59 = trunc i32 %or to i8
  %48 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %49 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext60 = sext i32 %49 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %48, i64 %idx.ext60
  %50 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext62 = sext i32 %50 to i64
  %idx.neg63 = sub i64 0, %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr61, i64 %idx.neg63
  store i8 %conv59, i8* %add.ptr64, align 1, !tbaa !44
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.76, %if.then.53
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %51, 8
  br i1 %cmp66, label %for.body.68, label %for.end.79

for.body.68:                                      ; preds = %for.cond.65
  %52 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext69 = sext i32 %53 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %52, i64 %idx.ext69
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext71 = sext i32 %54 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr70, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 -8
  %55 = load i8, i8* %add.ptr73, align 1, !tbaa !44
  %56 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %57 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext74 = sext i32 %57 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %56, i64 %idx.ext74
  store i8 %55, i8* %add.ptr75, align 1, !tbaa !44
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.68
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %inc77 = add nsw i32 %58, 1
  store i32 %inc77, i32* %j, align 4, !tbaa !5
  %59 = load i32, i32* %size, align 4, !tbaa !5
  %inc78 = add nsw i32 %59, 1
  store i32 %inc78, i32* %size, align 4, !tbaa !5
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  %60 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %61 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext80 = sext i32 %61 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %60, i64 %idx.ext80
  store i8 0, i8* %add.ptr81, align 1, !tbaa !44
  %62 = load i32, i32* %size, align 4, !tbaa !5
  %inc82 = add nsw i32 %62, 1
  store i32 %inc82, i32* %size, align 4, !tbaa !5
  store i32 1, i32* %num_bytes, align 4, !tbaa !5
  store i32 0, i32* %same_flag, align 4, !tbaa !5
  store i32 1, i32* %num_commandbyte, align 4, !tbaa !5
  br label %if.end.121

if.else.83:                                       ; preds = %if.end.50
  %63 = load i32, i32* %same_flag, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %63, 1
  br i1 %cmp84, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %if.else.83
  %64 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %64, 0
  br i1 %cmp86, label %if.then.88, label %if.end.120

if.then.88:                                       ; preds = %land.lhs.true
  store i32 1, i32* %offset, align 4, !tbaa !5
  %65 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %66 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext89 = sext i32 %66 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %65, i64 %idx.ext89
  %67 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext91 = sext i32 %67 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr90, i64 %idx.neg92
  %68 = load i8, i8* %add.ptr93, align 1, !tbaa !44
  %conv94 = zext i8 %68 to i32
  %69 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %sub95 = sub nsw i32 %69, 1
  %shl = shl i32 %sub95, 5
  %or96 = or i32 %conv94, %shl
  %conv97 = trunc i32 %or96 to i8
  %70 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %71 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext98 = sext i32 %71 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %70, i64 %idx.ext98
  %72 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext100 = sext i32 %72 to i64
  %idx.neg101 = sub i64 0, %idx.ext100
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr99, i64 %idx.neg101
  store i8 %conv97, i8* %add.ptr102, align 1, !tbaa !44
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.116, %if.then.88
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %74 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %73, %74
  br i1 %cmp104, label %for.body.106, label %for.end.119

for.body.106:                                     ; preds = %for.cond.103
  %75 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext107 = sext i32 %76 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %75, i64 %idx.ext107
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext109 = sext i32 %77 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %add.ptr108, i64 %idx.ext109
  %78 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %idx.ext111 = sext i32 %78 to i64
  %idx.neg112 = sub i64 0, %idx.ext111
  %add.ptr113 = getelementptr inbounds i8, i8* %add.ptr110, i64 %idx.neg112
  %79 = load i8, i8* %add.ptr113, align 1, !tbaa !44
  %80 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %81 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext114 = sext i32 %81 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %80, i64 %idx.ext114
  store i8 %79, i8* %add.ptr115, align 1, !tbaa !44
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.106
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %inc117 = add nsw i32 %82, 1
  store i32 %inc117, i32* %j, align 4, !tbaa !5
  %83 = load i32, i32* %size, align 4, !tbaa !5
  %inc118 = add nsw i32 %83, 1
  store i32 %inc118, i32* %size, align 4, !tbaa !5
  br label %for.cond.103

for.end.119:                                      ; preds = %for.cond.103
  store i32 0, i32* %num_bytes, align 4, !tbaa !5
  store i32 0, i32* %num_commandbyte, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %land.lhs.true, %if.else.83
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %for.end.79
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %inc123 = add nsw i32 %84, 1
  store i32 %inc123, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %85 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp125 = icmp sgt i32 %85, 0
  br i1 %cmp125, label %if.then.127, label %if.end.160

if.then.127:                                      ; preds = %for.end.124
  %86 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %87 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext128 = sext i32 %87 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %86, i64 %idx.ext128
  %88 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext130 = sext i32 %88 to i64
  %idx.neg131 = sub i64 0, %idx.ext130
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr129, i64 %idx.neg131
  %89 = load i8, i8* %add.ptr132, align 1, !tbaa !44
  %conv133 = zext i8 %89 to i32
  %90 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %sub134 = sub nsw i32 %90, 1
  %shl135 = shl i32 %sub134, 5
  %or136 = or i32 %conv133, %shl135
  %conv137 = trunc i32 %or136 to i8
  %91 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %92 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext138 = sext i32 %92 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %91, i64 %idx.ext138
  %93 = load i32, i32* %num_commandbyte, align 4, !tbaa !5
  %idx.ext140 = sext i32 %93 to i64
  %idx.neg141 = sub i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr139, i64 %idx.neg141
  store i8 %conv137, i8* %add.ptr142, align 1, !tbaa !44
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.156, %if.then.127
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %95 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp144 = icmp slt i32 %94, %95
  br i1 %cmp144, label %for.body.146, label %for.end.159

for.body.146:                                     ; preds = %for.cond.143
  %96 = load i8*, i8** %inBuff.addr, align 8, !tbaa !1
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext147 = sext i32 %97 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %96, i64 %idx.ext147
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext149 = sext i32 %98 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr148, i64 %idx.ext149
  %99 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %idx.ext151 = sext i32 %99 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr150, i64 %idx.neg152
  %100 = load i8, i8* %add.ptr153, align 1, !tbaa !44
  %101 = load i8*, i8** %diffBuff.addr, align 8, !tbaa !1
  %102 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext154 = sext i32 %102 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %101, i64 %idx.ext154
  store i8 %100, i8* %add.ptr155, align 1, !tbaa !44
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.146
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %inc157 = add nsw i32 %103, 1
  store i32 %inc157, i32* %j, align 4, !tbaa !5
  %104 = load i32, i32* %size, align 4, !tbaa !5
  %inc158 = add nsw i32 %104, 1
  store i32 %inc158, i32* %size, align 4, !tbaa !5
  br label %for.cond.143

for.end.159:                                      ; preds = %for.cond.143
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %for.end.124
  %105 = load i32, i32* %zero_flag, align 4, !tbaa !5
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.160
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.end.160
  %106 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.162, %if.then.161
  %107 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %num_commandbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %same_flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %zero_flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal void @move_cap(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %x, i32 %y) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %4, i32 0, i32 74
  %5 = load i32, i32* %prev_x, align 4, !tbaa !67
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %7, i32 0, i32 74
  %8 = load i32, i32* %prev_x1, align 4, !tbaa !67
  %cmp2 = icmp sgt i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x4 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %11, i32 0, i32 74
  %12 = load i32, i32* %prev_x4, align 4, !tbaa !67
  %sub = sub nsw i32 %10, %12
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 155, i32 %sub) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x5 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %14, i32 0, i32 74
  %15 = load i32, i32* %prev_x5, align 4, !tbaa !67
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %15, %16
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 155, i32 %sub6) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %18 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_x8 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %18, i32 0, i32 74
  store i32 %17, i32* %prev_x8, align 4, !tbaa !67
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %20, i32 0, i32 75
  %21 = load i32, i32* %prev_y, align 4, !tbaa !66
  %cmp10 = icmp ne i32 %19, %21
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.9
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y12 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %23, i32 0, i32 75
  %24 = load i32, i32* %prev_y12, align 4, !tbaa !66
  %cmp13 = icmp sgt i32 %22, %24
  br i1 %cmp13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.then.11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y15 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %27, i32 0, i32 75
  %28 = load i32, i32* %prev_y15, align 4, !tbaa !66
  %sub16 = sub nsw i32 %26, %28
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 155, i32 %sub16) #5
  br label %if.end.22

if.else.18:                                       ; preds = %if.then.11
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y19 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 75
  %31 = load i32, i32* %prev_y19, align 4, !tbaa !66
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub20 = sub nsw i32 %31, %32
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 155, i32 %sub20) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.then.14
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %34 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %prev_y23 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %34, i32 0, i32 75
  store i32 %33, i32* %prev_y23, align 4, !tbaa !66
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.9
  %35 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  ret void
}

declare i32 @lips_mode3format_encode(i8*, i8*, i32) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @draw_bubble(%struct._IO_FILE* %prn_stream, i32 %width, i32 %height) #1 {
entry:
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %2 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0), i32 155, i32 155, i32 %1, i32 155, i32 %2, i32 155) #5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 155, i32 %4, i32 155, i32 %5) #5
  ret void
}

declare i32 @lips_packbits_encode(i8*, i8*, i32) #0

declare i32 @lips_rle_encode(i8*, i8*, i32) #0

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
!7 = !{!8, !2, i64 18520}
!8 = !{!"gx_device_lprn_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568}
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
!23 = !{!8, !2, i64 18528}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!8, !6, i64 18568}
!27 = !{!8, !2, i64 18536}
!28 = !{!29, !2, i64 17176}
!29 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!30 = !{!31, !6, i64 18588}
!31 = !{!"gx_device_lips_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568, !6, i64 18572, !3, i64 18576, !6, i64 18588, !6, i64 18592, !6, i64 18596, !6, i64 18600, !6, i64 18604, !6, i64 18608, !6, i64 18612, !6, i64 18616, !6, i64 18620}
!32 = !{!31, !6, i64 18600}
!33 = !{!34, !2, i64 0}
!34 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!34, !6, i64 8}
!36 = !{!34, !6, i64 12}
!37 = !{!31, !6, i64 18572}
!38 = !{!31, !6, i64 18592}
!39 = !{!31, !6, i64 18596}
!40 = !{!41, !2, i64 0}
!41 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!42 = !{!43, !2, i64 56}
!43 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!44 = !{!3, !3, i64 0}
!45 = !{!46, !6, i64 18628}
!46 = !{!"gx_device_lips4_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !2, i64 18472, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !2, i64 18512, !2, i64 18520, !2, i64 18528, !2, i64 18536, !6, i64 18544, !6, i64 18548, !2, i64 18552, !2, i64 18560, !6, i64 18568, !6, i64 18572, !3, i64 18576, !6, i64 18588, !6, i64 18592, !6, i64 18596, !6, i64 18600, !6, i64 18604, !6, i64 18608, !6, i64 18612, !6, i64 18616, !6, i64 18620, !6, i64 18624, !6, i64 18628, !6, i64 18632, !3, i64 18636}
!47 = !{!46, !6, i64 18632}
!48 = !{!49, !12, i64 108}
!49 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!50 = !{!10, !10, i64 0}
!51 = !{!49, !6, i64 100}
!52 = !{!49, !6, i64 112}
!53 = !{!49, !6, i64 116}
!54 = !{!49, !6, i64 120}
!55 = !{!49, !6, i64 124}
!56 = !{!49, !2, i64 1184}
!57 = !{!49, !6, i64 84}
!58 = !{!8, !6, i64 18508}
!59 = !{!8, !6, i64 18548}
!60 = !{!29, !2, i64 24}
!61 = !{!62, !2, i64 200}
!62 = !{!"gs_memory_s", !2, i64 0, !63, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!63 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!64 = !{!62, !2, i64 88}
!65 = !{!8, !6, i64 18488}
!66 = !{!8, !6, i64 18504}
!67 = !{!8, !6, i64 18500}
!68 = !{!62, !2, i64 24}
!69 = !{!29, !10, i64 928}
!70 = !{!29, !12, i64 108}
!71 = !{!46, !6, i64 18484}
!72 = !{!31, !6, i64 18620}
!73 = !{!31, !6, i64 18484}
!74 = !{!31, !6, i64 18604}
!75 = !{!31, !6, i64 18608}
!76 = !{!31, !6, i64 18612}
!77 = !{!31, !6, i64 18616}
!78 = !{!46, !6, i64 17164}
!79 = !{!46, !6, i64 17168}
!80 = !{!46, !6, i64 18492}
!81 = !{!46, !6, i64 18624}
!82 = !{!29, !6, i64 836}
!83 = !{!29, !6, i64 832}
