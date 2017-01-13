; ModuleID = './gdevsgi.bc'
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
%struct.sgi_cursor_s = type { %struct.gx_device_printer_s*, i32, i32, i8*, i32 }
%struct.IMAGE = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, [80 x i8], i32, i64, i16, i16, i16, i16, i16, i16, i16*, i16*, i16*, i64, i64, i64*, i64* }

@sgi_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page_seekable, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @sgi_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @sgi_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"sgirgb\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_sgirgb_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @sgi_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @sgi_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"sgi_print_page\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sgi_begin_page\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"sgi_print_page(done)\00", align 1
@.str.5 = private unnamed_addr constant [122 x i8] c"sgi rgb format only supports one page per file.\0APlease use the '%%d' OutputFile option to create one file for each page.\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gs picture\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @sgi_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %cur = alloca %struct.sgi_cursor_s, align 8
  %code = alloca i32, align 4
  %bpe = alloca i32, align 4
  %mask = alloca i32, align 4
  %separation = alloca i32, align 4
  %rowsizes = alloca i32*, align 8
  %edata = alloca i8*, align 8
  %lastval = alloca i64, align 8
  %rownumber = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %shift = alloca i32, align 4
  %curcol = alloca i8*, align 8
  %startcol = alloca i8*, align 8
  %count = alloca i32, align 4
  %todo = alloca i8, align 1
  %cc = alloca i8, align 1
  %iptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %optr = alloca i8*, align 8
  %ibufend = alloca i8*, align 8
  %pixel = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sgi_cursor_s* %cur to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @sgi_begin_page(%struct.gx_device_printer_s* %2, %struct._IO_FILE* %3, %struct.sgi_cursor_s* %cur) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %bpe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %separation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32** %rowsizes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %edata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %lastval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %rownumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %11, i32 0, i32 26
  %12 = load i64, i64* %PageCount, align 8, !tbaa !7
  %cmp = icmp sge i64 %12, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file_is_new = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 51
  %14 = load i32, i32* %file_is_new, align 4, !tbaa !23
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %18 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !24
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !25
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height, align 4, !tbaa !29
  %mul = mul nsw i32 3, %23
  %call3 = call i8* %18(%struct.gs_memory_s* %21, i32 4, i32 %mul, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #4
  %24 = bitcast i8* %call3 to i32*
  store i32* %24, i32** %rowsizes, align 8, !tbaa !1
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !24
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !25
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %28 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !28
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !24
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !25
  %line_size = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 2
  %32 = load i32, i32* %line_size, align 4, !tbaa !30
  %call10 = call i8* %28(%struct.gs_memory_s* %31, i32 %32, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call10, i8** %edata, align 8, !tbaa !1
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %33, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %34 = load i32*, i32** %rowsizes, align 8, !tbaa !1
  %cmp12 = icmp eq i32* %34, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %35 = load i8*, i8** %edata, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %35, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.end
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %free_mem

if.end.16:                                        ; preds = %lor.lhs.false.13
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height17, align 4, !tbaa !29
  %mul18 = mul nsw i32 24, %37
  %add = add nsw i32 512, %mul18
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %lastval, align 8, !tbaa !32
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %39 = load i64, i64* %lastval, align 8, !tbaa !32
  %call19 = call i32 @fseek(%struct._IO_FILE* %38, i64 %39, i32 0) #4
  store i32 0, i32* %separation, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %40 = load i32, i32* %separation, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %40, 3
  br i1 %cmp20, label %for.body, label %for.end.179

for.body:                                         ; preds = %for.cond
  %dev = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 0
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev, align 8, !tbaa !33
  %height22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 14
  %42 = load i32, i32* %height22, align 4, !tbaa !29
  %sub = sub nsw i32 %42, 1
  %lnum = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 4
  store i32 %sub, i32* %lnum, align 4, !tbaa !34
  store i32 0, i32* %rownumber, align 4, !tbaa !5
  %bpp = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 1
  %43 = load i32, i32* %bpp, align 4, !tbaa !35
  %div = sdiv i32 %43, 3
  store i32 %div, i32* %bpe, align 4, !tbaa !5
  %44 = load i32, i32* %bpe, align 4, !tbaa !5
  %shl = shl i32 1, %44
  %sub23 = sub nsw i32 %shl, 1
  store i32 %sub23, i32* %mask, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.body
  %call24 = call i32 @sgi_next_row(%struct.sgi_cursor_s* %cur) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %while.body, label %while.end.177

while.body:                                       ; preds = %while.cond
  %45 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = bitcast i8** %curcol to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %data = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 3
  %49 = load i8*, i8** %data, align 8, !tbaa !36
  store i8* %49, i8** %curcol, align 8, !tbaa !1
  %50 = bitcast i8** %startcol to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load i8*, i8** %edata, align 8, !tbaa !1
  store i8* %51, i8** %startcol, align 8, !tbaa !1
  %52 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  call void @llvm.lifetime.start(i64 1, i8* %todo) #2
  call void @llvm.lifetime.start(i64 1, i8* %cc) #2
  %53 = bitcast i8** %iptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = bitcast i8** %optr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = bitcast i8** %ibufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %data26 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 3
  %57 = load i8*, i8** %data26, align 8, !tbaa !36
  store i8* %57, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !5
  %bpp27 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 1
  %58 = load i32, i32* %bpp27, align 4, !tbaa !35
  %sub28 = sub nsw i32 8, %58
  store i32 %sub28, i32* %shift, align 4, !tbaa !5
  br label %for.cond.29

for.cond.29:                                      ; preds = %sw.epilog.69, %while.body
  %59 = load i32, i32* %x, align 4, !tbaa !5
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 13
  %61 = load i32, i32* %width, align 4, !tbaa !37
  %cmp30 = icmp ult i32 %59, %61
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %62 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  store i32 0, i32* %pixel, align 4, !tbaa !5
  %63 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %bpp33 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 1
  %66 = load i32, i32* %bpp33, align 4, !tbaa !35
  %shr = ashr i32 %66, 3
  switch i32 %shr, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.36
    i32 1, label %sw.bb.41
    i32 0, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %for.body.32
  %67 = load i8*, i8** %bp, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !38
  %conv34 = zext i8 %68 to i32
  %shl35 = shl i32 %conv34, 16
  store i32 %shl35, i32* %pixel, align 4, !tbaa !5
  %69 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.36

sw.bb.36:                                         ; preds = %for.body.32, %sw.bb
  %70 = load i8*, i8** %bp, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !38
  %conv37 = zext i8 %71 to i32
  %shl38 = shl i32 %conv37, 8
  %72 = load i32, i32* %pixel, align 4, !tbaa !5
  %add39 = add i32 %72, %shl38
  store i32 %add39, i32* %pixel, align 4, !tbaa !5
  %73 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr40, i8** %bp, align 8, !tbaa !1
  br label %sw.bb.41

sw.bb.41:                                         ; preds = %for.body.32, %sw.bb.36
  %74 = load i8*, i8** %bp, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !38
  %conv42 = zext i8 %75 to i32
  %76 = load i32, i32* %pixel, align 4, !tbaa !5
  %add43 = add i32 %76, %conv42
  store i32 %add43, i32* %pixel, align 4, !tbaa !5
  %77 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr44, i8** %bp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.body.32
  %78 = load i8*, i8** %bp, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !38
  %conv46 = zext i8 %79 to i32
  %80 = load i32, i32* %shift, align 4, !tbaa !5
  %shr47 = ashr i32 %conv46, %80
  store i32 %shr47, i32* %pixel, align 4, !tbaa !5
  %bpp48 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 1
  %81 = load i32, i32* %bpp48, align 4, !tbaa !35
  %82 = load i32, i32* %shift, align 4, !tbaa !5
  %sub49 = sub nsw i32 %82, %81
  store i32 %sub49, i32* %shift, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %sub49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %sw.bb.45
  %83 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr53, i8** %bp, align 8, !tbaa !1
  %84 = load i32, i32* %shift, align 4, !tbaa !5
  %add54 = add nsw i32 %84, 8
  store i32 %add54, i32* %shift, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %sw.bb.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.32, %if.end.55, %sw.bb.41
  %85 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add i32 %85, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  %86 = load i32, i32* %pixel, align 4, !tbaa !5
  %87 = load i32, i32* %mask, align 4, !tbaa !5
  %and = and i32 %86, %87
  store i32 %and, i32* %b, align 4, !tbaa !5
  %88 = load i32, i32* %bpe, align 4, !tbaa !5
  %89 = load i32, i32* %pixel, align 4, !tbaa !5
  %shr56 = lshr i32 %89, %88
  store i32 %shr56, i32* %pixel, align 4, !tbaa !5
  %90 = load i32, i32* %pixel, align 4, !tbaa !5
  %91 = load i32, i32* %mask, align 4, !tbaa !5
  %and57 = and i32 %90, %91
  store i32 %and57, i32* %g, align 4, !tbaa !5
  %92 = load i32, i32* %bpe, align 4, !tbaa !5
  %93 = load i32, i32* %pixel, align 4, !tbaa !5
  %shr58 = lshr i32 %93, %92
  store i32 %shr58, i32* %pixel, align 4, !tbaa !5
  %94 = load i32, i32* %pixel, align 4, !tbaa !5
  %95 = load i32, i32* %mask, align 4, !tbaa !5
  %and59 = and i32 %94, %95
  store i32 %and59, i32* %r, align 4, !tbaa !5
  %96 = load i32, i32* %separation, align 4, !tbaa !5
  switch i32 %96, label %sw.epilog.69 [
    i32 0, label %sw.bb.60
    i32 1, label %sw.bb.63
    i32 2, label %sw.bb.66
  ]

sw.bb.60:                                         ; preds = %sw.epilog
  %97 = load i32, i32* %r, align 4, !tbaa !5
  %conv61 = trunc i32 %97 to i8
  %98 = load i8*, i8** %curcol, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr62, i8** %curcol, align 8, !tbaa !1
  store i8 %conv61, i8* %98, align 1, !tbaa !38
  br label %sw.epilog.69

sw.bb.63:                                         ; preds = %sw.epilog
  %99 = load i32, i32* %g, align 4, !tbaa !5
  %conv64 = trunc i32 %99 to i8
  %100 = load i8*, i8** %curcol, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr65, i8** %curcol, align 8, !tbaa !1
  store i8 %conv64, i8* %100, align 1, !tbaa !38
  br label %sw.epilog.69

sw.bb.66:                                         ; preds = %sw.epilog
  %101 = load i32, i32* %b, align 4, !tbaa !5
  %conv67 = trunc i32 %101 to i8
  %102 = load i8*, i8** %curcol, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr68, i8** %curcol, align 8, !tbaa !1
  store i8 %conv67, i8* %102, align 1, !tbaa !38
  br label %sw.epilog.69

sw.epilog.69:                                     ; preds = %sw.epilog, %sw.bb.66, %sw.bb.63, %sw.bb.60
  %103 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %data70 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 3
  %107 = load i8*, i8** %data70, align 8, !tbaa !36
  store i8* %107, i8** %iptr, align 8, !tbaa !1
  %108 = load i8*, i8** %startcol, align 8, !tbaa !1
  store i8* %108, i8** %optr, align 8, !tbaa !1
  %109 = load i8*, i8** %curcol, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %109, i64 -1
  store i8* %add.ptr, i8** %ibufend, align 8, !tbaa !1
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.end.143, %for.end
  %110 = load i8*, i8** %iptr, align 8, !tbaa !1
  %111 = load i8*, i8** %ibufend, align 8, !tbaa !1
  %cmp72 = icmp ult i8* %110, %111
  br i1 %cmp72, label %while.body.74, label %while.end.144

while.body.74:                                    ; preds = %while.cond.71
  %112 = load i8*, i8** %iptr, align 8, !tbaa !1
  store i8* %112, i8** %sptr, align 8, !tbaa !1
  %113 = load i8*, i8** %iptr, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds i8, i8* %113, i64 2
  store i8* %add.ptr75, i8** %iptr, align 8, !tbaa !1
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.90, %while.body.74
  %114 = load i8*, i8** %iptr, align 8, !tbaa !1
  %115 = load i8*, i8** %ibufend, align 8, !tbaa !1
  %cmp77 = icmp ult i8* %114, %115
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.76
  %116 = load i8*, i8** %iptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %116, i64 -2
  %117 = load i8, i8* %arrayidx, align 1, !tbaa !38
  %conv79 = zext i8 %117 to i32
  %118 = load i8*, i8** %iptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %118, i64 -1
  %119 = load i8, i8* %arrayidx80, align 1, !tbaa !38
  %conv81 = zext i8 %119 to i32
  %cmp82 = icmp ne i32 %conv79, %conv81
  br i1 %cmp82, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %120 = load i8*, i8** %iptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %120, i64 -1
  %121 = load i8, i8* %arrayidx84, align 1, !tbaa !38
  %conv85 = zext i8 %121 to i32
  %122 = load i8*, i8** %iptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %122, i64 0
  %123 = load i8, i8* %arrayidx86, align 1, !tbaa !38
  %conv87 = zext i8 %123 to i32
  %cmp88 = icmp ne i32 %conv85, %conv87
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %124 = phi i1 [ true, %land.rhs ], [ %cmp88, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.76
  %125 = phi i1 [ false, %while.cond.76 ], [ %124, %lor.end ]
  br i1 %125, label %while.body.90, label %while.end

while.body.90:                                    ; preds = %land.end
  %126 = load i8*, i8** %iptr, align 8, !tbaa !1
  %incdec.ptr91 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr91, i8** %iptr, align 8, !tbaa !1
  br label %while.cond.76

while.end:                                        ; preds = %land.end
  %127 = load i8*, i8** %iptr, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %127, i64 -2
  store i8* %add.ptr92, i8** %iptr, align 8, !tbaa !1
  %128 = load i8*, i8** %iptr, align 8, !tbaa !1
  %129 = load i8*, i8** %sptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %128 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %129 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv93 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv93, i32* %count, align 4, !tbaa !5
  br label %while.cond.94

while.cond.94:                                    ; preds = %while.end.110, %while.end
  %130 = load i32, i32* %count, align 4, !tbaa !5
  %tobool95 = icmp ne i32 %130, 0
  br i1 %tobool95, label %while.body.96, label %while.end.111

while.body.96:                                    ; preds = %while.cond.94
  %131 = load i32, i32* %count, align 4, !tbaa !5
  %cmp97 = icmp sgt i32 %131, 126
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.96
  br label %cond.end

cond.false:                                       ; preds = %while.body.96
  %132 = load i32, i32* %count, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 126, %cond.true ], [ %132, %cond.false ]
  %conv99 = trunc i32 %cond to i8
  store i8 %conv99, i8* %todo, align 1, !tbaa !38
  %133 = load i8, i8* %todo, align 1, !tbaa !38
  %conv100 = zext i8 %133 to i32
  %134 = load i32, i32* %count, align 4, !tbaa !5
  %sub101 = sub nsw i32 %134, %conv100
  store i32 %sub101, i32* %count, align 4, !tbaa !5
  %135 = load i8, i8* %todo, align 1, !tbaa !38
  %conv102 = zext i8 %135 to i32
  %or = or i32 128, %conv102
  %conv103 = trunc i32 %or to i8
  %136 = load i8*, i8** %optr, align 8, !tbaa !1
  %incdec.ptr104 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr104, i8** %optr, align 8, !tbaa !1
  store i8 %conv103, i8* %136, align 1, !tbaa !38
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.107, %cond.end
  %137 = load i8, i8* %todo, align 1, !tbaa !38
  %dec = add i8 %137, -1
  store i8 %dec, i8* %todo, align 1, !tbaa !38
  %tobool106 = icmp ne i8 %137, 0
  br i1 %tobool106, label %while.body.107, label %while.end.110

while.body.107:                                   ; preds = %while.cond.105
  %138 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr108, i8** %sptr, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !38
  %140 = load i8*, i8** %optr, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr109, i8** %optr, align 8, !tbaa !1
  store i8 %139, i8* %140, align 1, !tbaa !38
  br label %while.cond.105

while.end.110:                                    ; preds = %while.cond.105
  br label %while.cond.94

while.end.111:                                    ; preds = %while.cond.94
  %141 = load i8*, i8** %iptr, align 8, !tbaa !1
  store i8* %141, i8** %sptr, align 8, !tbaa !1
  %142 = load i8*, i8** %iptr, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr112, i8** %iptr, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !38
  store i8 %143, i8* %cc, align 1, !tbaa !38
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.122, %while.end.111
  %144 = load i8*, i8** %iptr, align 8, !tbaa !1
  %145 = load i8*, i8** %ibufend, align 8, !tbaa !1
  %cmp114 = icmp ult i8* %144, %145
  br i1 %cmp114, label %land.rhs.116, label %land.end.121

land.rhs.116:                                     ; preds = %while.cond.113
  %146 = load i8*, i8** %iptr, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !38
  %conv117 = zext i8 %147 to i32
  %148 = load i8, i8* %cc, align 1, !tbaa !38
  %conv118 = zext i8 %148 to i32
  %cmp119 = icmp eq i32 %conv117, %conv118
  br label %land.end.121

land.end.121:                                     ; preds = %land.rhs.116, %while.cond.113
  %149 = phi i1 [ false, %while.cond.113 ], [ %cmp119, %land.rhs.116 ]
  br i1 %149, label %while.body.122, label %while.end.124

while.body.122:                                   ; preds = %land.end.121
  %150 = load i8*, i8** %iptr, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr123, i8** %iptr, align 8, !tbaa !1
  br label %while.cond.113

while.end.124:                                    ; preds = %land.end.121
  %151 = load i8*, i8** %iptr, align 8, !tbaa !1
  %152 = load i8*, i8** %sptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast125 = ptrtoint i8* %151 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %152 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i32
  store i32 %conv128, i32* %count, align 4, !tbaa !5
  br label %while.cond.129

while.cond.129:                                   ; preds = %cond.end.136, %while.end.124
  %153 = load i32, i32* %count, align 4, !tbaa !5
  %tobool130 = icmp ne i32 %153, 0
  br i1 %tobool130, label %while.body.131, label %while.end.143

while.body.131:                                   ; preds = %while.cond.129
  %154 = load i32, i32* %count, align 4, !tbaa !5
  %cmp132 = icmp sgt i32 %154, 126
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %while.body.131
  br label %cond.end.136

cond.false.135:                                   ; preds = %while.body.131
  %155 = load i32, i32* %count, align 4, !tbaa !5
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.134
  %cond137 = phi i32 [ 126, %cond.true.134 ], [ %155, %cond.false.135 ]
  %conv138 = trunc i32 %cond137 to i8
  store i8 %conv138, i8* %todo, align 1, !tbaa !38
  %156 = load i8, i8* %todo, align 1, !tbaa !38
  %conv139 = zext i8 %156 to i32
  %157 = load i32, i32* %count, align 4, !tbaa !5
  %sub140 = sub nsw i32 %157, %conv139
  store i32 %sub140, i32* %count, align 4, !tbaa !5
  %158 = load i8, i8* %todo, align 1, !tbaa !38
  %159 = load i8*, i8** %optr, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr141, i8** %optr, align 8, !tbaa !1
  store i8 %158, i8* %159, align 1, !tbaa !38
  %160 = load i8, i8* %cc, align 1, !tbaa !38
  %161 = load i8*, i8** %optr, align 8, !tbaa !1
  %incdec.ptr142 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr142, i8** %optr, align 8, !tbaa !1
  store i8 %160, i8* %161, align 1, !tbaa !38
  br label %while.cond.129

while.end.143:                                    ; preds = %while.cond.129
  br label %while.cond.71

while.end.144:                                    ; preds = %while.cond.71
  %162 = load i8*, i8** %optr, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr145, i8** %optr, align 8, !tbaa !1
  store i8 0, i8* %162, align 1, !tbaa !38
  %163 = load i8*, i8** %optr, align 8, !tbaa !1
  %164 = load i8*, i8** %startcol, align 8, !tbaa !1
  %sub.ptr.lhs.cast146 = ptrtoint i8* %163 to i64
  %sub.ptr.rhs.cast147 = ptrtoint i8* %164 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %conv149 = trunc i64 %sub.ptr.sub148 to i32
  %165 = load i32, i32* %separation, align 4, !tbaa !5
  %166 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height150 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %166, i32 0, i32 14
  %167 = load i32, i32* %height150, align 4, !tbaa !29
  %mul151 = mul nsw i32 %165, %167
  %168 = load i32, i32* %rownumber, align 4, !tbaa !5
  %inc152 = add nsw i32 %168, 1
  store i32 %inc152, i32* %rownumber, align 4, !tbaa !5
  %add153 = add nsw i32 %mul151, %168
  %idxprom = sext i32 %add153 to i64
  %169 = load i32*, i32** %rowsizes, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %169, i64 %idxprom
  store i32 %conv149, i32* %arrayidx154, align 4, !tbaa !5
  %170 = load i8*, i8** %startcol, align 8, !tbaa !1
  %171 = load i8*, i8** %optr, align 8, !tbaa !1
  %172 = load i8*, i8** %startcol, align 8, !tbaa !1
  %sub.ptr.lhs.cast155 = ptrtoint i8* %171 to i64
  %sub.ptr.rhs.cast156 = ptrtoint i8* %172 to i64
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast156
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call158 = call i64 @fwrite(i8* %170, i64 1, i64 %sub.ptr.sub157, %struct._IO_FILE* %173) #4
  %174 = load i8*, i8** %optr, align 8, !tbaa !1
  %175 = load i8*, i8** %startcol, align 8, !tbaa !1
  %sub.ptr.lhs.cast159 = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast160 = ptrtoint i8* %175 to i64
  %sub.ptr.sub161 = sub i64 %sub.ptr.lhs.cast159, %sub.ptr.rhs.cast160
  %cmp162 = icmp ne i64 %call158, %sub.ptr.sub161
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %while.end.144
  store i32 -12, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.165:                                       ; preds = %while.end.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.164, %if.end.165
  %176 = bitcast i8** %ibufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i8** %optr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast i8** %iptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  call void @llvm.lifetime.end(i64 1, i8* %cc) #2
  call void @llvm.lifetime.end(i64 1, i8* %todo) #2
  %180 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i8** %startcol to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i8** %curcol to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.252 [
    i32 0, label %cleanup.cont
    i32 2, label %free_mem
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.177:                                    ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end.177
  %186 = load i32, i32* %separation, align 4, !tbaa !5
  %inc178 = add nsw i32 %186, 1
  store i32 %inc178, i32* %separation, align 4, !tbaa !5
  br label %for.cond

for.end.179:                                      ; preds = %for.cond
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call180 = call i32 @fseek(%struct._IO_FILE* %187, i64 512, i32 0) #4
  store i32 0, i32* %separation, align 4, !tbaa !5
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.202, %for.end.179
  %188 = load i32, i32* %separation, align 4, !tbaa !5
  %cmp182 = icmp slt i32 %188, 3
  br i1 %cmp182, label %for.body.184, label %for.end.204

for.body.184:                                     ; preds = %for.cond.181
  store i32 0, i32* %rownumber, align 4, !tbaa !5
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.199, %for.body.184
  %189 = load i32, i32* %rownumber, align 4, !tbaa !5
  %190 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height186 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %190, i32 0, i32 14
  %191 = load i32, i32* %height186, align 4, !tbaa !29
  %cmp187 = icmp slt i32 %189, %191
  br i1 %cmp187, label %for.body.189, label %for.end.201

for.body.189:                                     ; preds = %for.cond.185
  %192 = load i64, i64* %lastval, align 8, !tbaa !32
  %conv190 = trunc i64 %192 to i32
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call191 = call i32 @putint(i32 %conv190, %struct._IO_FILE* %193) #4
  %194 = load i32, i32* %separation, align 4, !tbaa !5
  %195 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height192 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %195, i32 0, i32 14
  %196 = load i32, i32* %height192, align 4, !tbaa !29
  %mul193 = mul nsw i32 %194, %196
  %197 = load i32, i32* %rownumber, align 4, !tbaa !5
  %add194 = add nsw i32 %mul193, %197
  %idxprom195 = sext i32 %add194 to i64
  %198 = load i32*, i32** %rowsizes, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %198, i64 %idxprom195
  %199 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  %conv197 = sext i32 %199 to i64
  %200 = load i64, i64* %lastval, align 8, !tbaa !32
  %add198 = add nsw i64 %200, %conv197
  store i64 %add198, i64* %lastval, align 8, !tbaa !32
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.189
  %201 = load i32, i32* %rownumber, align 4, !tbaa !5
  %inc200 = add nsw i32 %201, 1
  store i32 %inc200, i32* %rownumber, align 4, !tbaa !5
  br label %for.cond.185

for.end.201:                                      ; preds = %for.cond.185
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.201
  %202 = load i32, i32* %separation, align 4, !tbaa !5
  %inc203 = add nsw i32 %202, 1
  store i32 %inc203, i32* %separation, align 4, !tbaa !5
  br label %for.cond.181

for.end.204:                                      ; preds = %for.cond.181
  store i32 0, i32* %separation, align 4, !tbaa !5
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.225, %for.end.204
  %203 = load i32, i32* %separation, align 4, !tbaa !5
  %cmp206 = icmp slt i32 %203, 3
  br i1 %cmp206, label %for.body.208, label %for.end.227

for.body.208:                                     ; preds = %for.cond.205
  store i32 0, i32* %rownumber, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.222, %for.body.208
  %204 = load i32, i32* %rownumber, align 4, !tbaa !5
  %205 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height210 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %205, i32 0, i32 14
  %206 = load i32, i32* %height210, align 4, !tbaa !29
  %cmp211 = icmp slt i32 %204, %206
  br i1 %cmp211, label %for.body.213, label %for.end.224

for.body.213:                                     ; preds = %for.cond.209
  %207 = load i32, i32* %separation, align 4, !tbaa !5
  %208 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height214 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %208, i32 0, i32 14
  %209 = load i32, i32* %height214, align 4, !tbaa !29
  %mul215 = mul nsw i32 %207, %209
  %210 = load i32, i32* %rownumber, align 4, !tbaa !5
  %add216 = add nsw i32 %mul215, %210
  %idxprom217 = sext i32 %add216 to i64
  %211 = load i32*, i32** %rowsizes, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i32, i32* %211, i64 %idxprom217
  %212 = load i32, i32* %arrayidx218, align 4, !tbaa !5
  %conv219 = sext i32 %212 to i64
  store i64 %conv219, i64* %lastval, align 8, !tbaa !32
  %213 = load i64, i64* %lastval, align 8, !tbaa !32
  %conv220 = trunc i64 %213 to i32
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call221 = call i32 @putint(i32 %conv220, %struct._IO_FILE* %214) #4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.213
  %215 = load i32, i32* %rownumber, align 4, !tbaa !5
  %inc223 = add nsw i32 %215, 1
  store i32 %inc223, i32* %rownumber, align 4, !tbaa !5
  br label %for.cond.209

for.end.224:                                      ; preds = %for.cond.209
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.224
  %216 = load i32, i32* %separation, align 4, !tbaa !5
  %inc226 = add nsw i32 %216, 1
  store i32 %inc226, i32* %separation, align 4, !tbaa !5
  br label %for.cond.205

for.end.227:                                      ; preds = %for.cond.205
  br label %free_mem

free_mem:                                         ; preds = %for.end.227, %cleanup, %if.then.15
  %217 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %217, i32 0, i32 3
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory228, align 8, !tbaa !24
  %non_gc_memory229 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %218, i32 0, i32 3
  %219 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory229, align 8, !tbaa !25
  %procs230 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %219, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs230, i32 0, i32 2
  %220 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %221 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %221, i32 0, i32 3
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !24
  %non_gc_memory232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %222, i32 0, i32 3
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory232, align 8, !tbaa !25
  %data233 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %cur, i32 0, i32 3
  %224 = load i8*, i8** %data233, align 8, !tbaa !36
  call void %220(%struct.gs_memory_s* %223, i8* %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  %225 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory234 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %225, i32 0, i32 3
  %226 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory234, align 8, !tbaa !24
  %non_gc_memory235 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %226, i32 0, i32 3
  %227 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory235, align 8, !tbaa !25
  %procs236 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %227, i32 0, i32 1
  %free_object237 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs236, i32 0, i32 2
  %228 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object237, align 8, !tbaa !39
  %229 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory238 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %229, i32 0, i32 3
  %230 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory238, align 8, !tbaa !24
  %non_gc_memory239 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %230, i32 0, i32 3
  %231 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory239, align 8, !tbaa !25
  %232 = load i8*, i8** %edata, align 8, !tbaa !1
  call void %228(%struct.gs_memory_s* %231, i8* %232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  %233 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory240 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %233, i32 0, i32 3
  %234 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory240, align 8, !tbaa !24
  %non_gc_memory241 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %234, i32 0, i32 3
  %235 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory241, align 8, !tbaa !25
  %procs242 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %235, i32 0, i32 1
  %free_object243 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs242, i32 0, i32 2
  %236 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object243, align 8, !tbaa !39
  %237 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory244 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %237, i32 0, i32 3
  %238 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory244, align 8, !tbaa !24
  %non_gc_memory245 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %238, i32 0, i32 3
  %239 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory245, align 8, !tbaa !25
  %240 = load i32*, i32** %rowsizes, align 8, !tbaa !1
  %241 = bitcast i32* %240 to i8*
  call void %236(%struct.gs_memory_s* %239, i8* %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  %242 = load i32, i32* %code, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %242, 0
  br i1 %cmp246, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %free_mem
  %243 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.250

cond.false.249:                                   ; preds = %free_mem
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.249, %cond.true.248
  %cond251 = phi i32 [ %243, %cond.true.248 ], [ 0, %cond.false.249 ]
  store i32 %cond251, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

cleanup.252:                                      ; preds = %cond.end.250, %cleanup, %if.then
  %244 = bitcast i32* %rownumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  %245 = bitcast i64* %lastval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #2
  %246 = bitcast i8** %edata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #2
  %247 = bitcast i32** %rowsizes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #2
  %248 = bitcast i32* %separation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #2
  %249 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #2
  %250 = bitcast i32* %bpe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  %251 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %252 = bitcast %struct.sgi_cursor_s* %cur to i8*
  call void @llvm.lifetime.end(i64 32, i8* %252) #2
  %253 = load i32, i32* %retval
  ret i32 %253
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

declare i32 @gdev_prn_bg_output_page_seekable(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @sgi_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bitspercolor = alloca i16, align 2
  %max_value = alloca i64, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !40
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 3
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %bitspercolor, align 2, !tbaa !42
  %3 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv2 = zext i16 %4 to i32
  %shl = shl i32 1, %conv2
  %sub = sub nsw i32 %shl, 1
  %conv3 = sext i32 %sub to i64
  store i64 %conv3, i64* %max_value, align 8, !tbaa !32
  %5 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !42
  store i16 %9, i16* %red, align 2, !tbaa !42
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx4, align 2, !tbaa !42
  store i16 %11, i16* %green, align 2, !tbaa !42
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx5, align 2, !tbaa !42
  store i16 %13, i16* %blue, align 2, !tbaa !42
  %14 = load i16, i16* %red, align 2, !tbaa !42
  %conv6 = zext i16 %14 to i64
  %15 = load i64, i64* %max_value, align 8, !tbaa !32
  %mul = mul i64 %conv6, %15
  %div7 = udiv i64 %mul, 65535
  %16 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv8 = zext i16 %16 to i32
  %mul9 = mul nsw i32 %conv8, 2
  %sh_prom = zext i32 %mul9 to i64
  %shl10 = shl i64 %div7, %sh_prom
  %17 = load i16, i16* %green, align 2, !tbaa !42
  %conv11 = zext i16 %17 to i64
  %18 = load i64, i64* %max_value, align 8, !tbaa !32
  %mul12 = mul i64 %conv11, %18
  %div13 = udiv i64 %mul12, 65535
  %19 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv14 = zext i16 %19 to i32
  %sh_prom15 = zext i32 %conv14 to i64
  %shl16 = shl i64 %div13, %sh_prom15
  %add = add i64 %shl10, %shl16
  %20 = load i16, i16* %blue, align 2, !tbaa !42
  %conv17 = zext i16 %20 to i64
  %21 = load i64, i64* %max_value, align 8, !tbaa !32
  %mul18 = mul i64 %conv17, %21
  %div19 = udiv i64 %mul18, 65535
  %add20 = add i64 %add, %div19
  %22 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #2
  %23 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #2
  %24 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #2
  %25 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #2
  ret i64 %add20
}

; Function Attrs: nounwind uwtable
define internal i32 @sgi_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i16, align 2
  %colormask = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !40
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 3
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %bitspercolor, align 2, !tbaa !42
  %3 = bitcast i16* %colormask to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv2 = zext i16 %4 to i32
  %shl = shl i32 1, %conv2
  %sub = sub nsw i32 %shl, 1
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %colormask, align 2, !tbaa !42
  %5 = load i64, i64* %color.addr, align 8, !tbaa !32
  %6 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv4 = zext i16 %6 to i32
  %mul = mul nsw i32 %conv4, 2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %5, %sh_prom
  %7 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv5 = zext i16 %7 to i64
  %and = and i64 %shr, %conv5
  %mul6 = mul i64 %and, 65535
  %8 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv7 = zext i16 %8 to i64
  %div8 = udiv i64 %mul6, %conv7
  %conv9 = trunc i64 %div8 to i16
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 0
  store i16 %conv9, i16* %arrayidx, align 2, !tbaa !42
  %10 = load i64, i64* %color.addr, align 8, !tbaa !32
  %11 = load i16, i16* %bitspercolor, align 2, !tbaa !42
  %conv10 = zext i16 %11 to i32
  %sh_prom11 = zext i32 %conv10 to i64
  %shr12 = lshr i64 %10, %sh_prom11
  %12 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv13 = zext i16 %12 to i64
  %and14 = and i64 %shr12, %conv13
  %mul15 = mul i64 %and14, 65535
  %13 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv16 = zext i16 %13 to i64
  %div17 = udiv i64 %mul15, %conv16
  %conv18 = trunc i64 %div17 to i16
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %14, i64 1
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !42
  %15 = load i64, i64* %color.addr, align 8, !tbaa !32
  %16 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv20 = zext i16 %16 to i64
  %and21 = and i64 %15, %conv20
  %mul22 = mul i64 %and21, 65535
  %17 = load i16, i16* %colormask, align 2, !tbaa !42
  %conv23 = zext i16 %17 to i64
  %div24 = udiv i64 %mul22, %conv23
  %conv25 = trunc i64 %div24 to i16
  %18 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %18, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !42
  %19 = bitcast i16* %colormask to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #2
  %20 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #2
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

; Function Attrs: nounwind uwtable
define internal i32 @sgi_begin_page(%struct.gx_device_printer_s* %bdev, %struct._IO_FILE* %pstream, %struct.sgi_cursor_s* %pcur) #1 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %pcur.addr = alloca %struct.sgi_cursor_s*, align 8
  %line_size = alloca i32, align 4
  %data = alloca i8*, align 8
  %header = alloca %struct.IMAGE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %bdev, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  store %struct.sgi_cursor_s* %pcur, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.IMAGE** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 26
  %4 = load i64, i64* %PageCount, align 8, !tbaa !7
  %cmp = icmp sge i64 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %file_is_new = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 51
  %6 = load i32, i32* %file_is_new, align 4, !tbaa !23
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !24
  %call = call i8* @gs_program_name() #4
  %call1 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %8, i8* %call, i64 %call1) #4
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !24
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_s*
  %call4 = call i32 @gx_device_raster(%struct.gx_device_s* %12, i32 0) #4
  store i32 %call4, i32* %line_size, align 4, !tbaa !5
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !24
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %16 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !24
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !25
  %20 = load i32, i32* %line_size, align 4, !tbaa !5
  %call8 = call i8* %16(%struct.gs_memory_s* %19, i32 %20, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call8, i8** %data, align 8, !tbaa !1
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !24
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !25
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array12, align 8, !tbaa !28
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !24
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !25
  %call15 = call i8* %24(%struct.gs_memory_s* %27, i32 192, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  %28 = bitcast i8* %call15 to %struct.IMAGE*
  store %struct.IMAGE* %28, %struct.IMAGE** %header, align 8, !tbaa !1
  %29 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %29, null
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.IMAGE* %30, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %lor.lhs.false, %if.end
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !24
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !25
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !24
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !25
  %38 = load i8*, i8** %data, align 8, !tbaa !1
  call void %34(%struct.gs_memory_s* %37, i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !24
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !25
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object27 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object27, align 8, !tbaa !39
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !24
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !25
  %46 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %47 = bitcast %struct.IMAGE* %46 to i8*
  call void %42(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %lor.lhs.false
  %48 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %49 = bitcast %struct.IMAGE* %48 to i8*
  %call31 = call i8* @memset(i8* %49, i32 0, i64 192) #5
  %50 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %imagic = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %50, i32 0, i32 0
  store i16 474, i16* %imagic, align 2, !tbaa !43
  %51 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %51, i32 0, i32 1
  store i16 257, i16* %type, align 2, !tbaa !45
  %52 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %dim = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %52, i32 0, i32 2
  store i16 3, i16* %dim, align 2, !tbaa !46
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 13
  %54 = load i32, i32* %width, align 4, !tbaa !37
  %conv = trunc i32 %54 to i16
  %55 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %xsize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %55, i32 0, i32 3
  store i16 %conv, i16* %xsize, align 2, !tbaa !47
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 14
  %57 = load i32, i32* %height, align 4, !tbaa !29
  %conv32 = trunc i32 %57 to i16
  %58 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %ysize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %58, i32 0, i32 4
  store i16 %conv32, i16* %ysize, align 2, !tbaa !48
  %59 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %zsize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %59, i32 0, i32 5
  store i16 3, i16* %zsize, align 2, !tbaa !49
  %60 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %min_color = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %60, i32 0, i32 6
  store i32 0, i32* %min_color, align 4, !tbaa !50
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 6
  %62 = load i32, i32* %max_color, align 4, !tbaa !51
  %63 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %max_color33 = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %63, i32 0, i32 7
  store i32 %62, i32* %max_color33, align 4, !tbaa !52
  %64 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %wastebytes = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %64, i32 0, i32 8
  store i32 0, i32* %wastebytes, align 4, !tbaa !53
  %65 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %65, i32 0, i32 9
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %call34 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 80) #5
  %66 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %66, i32 0, i32 10
  store i32 0, i32* %colormap, align 4, !tbaa !54
  %67 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %dorev = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %67, i32 0, i32 13
  store i16 0, i16* %dorev, align 2, !tbaa !55
  %68 = load %struct.IMAGE*, %struct.IMAGE** %header, align 8, !tbaa !1
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  call void @putheader(%struct.IMAGE* %68, %struct._IO_FILE* %69) #4
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %71 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %71, i32 0, i32 0
  store %struct.gx_device_printer_s* %70, %struct.gx_device_printer_s** %dev, align 8, !tbaa !33
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %bdev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 3
  %73 = load i16, i16* %depth, align 2, !tbaa !56
  %conv36 = zext i16 %73 to i32
  %74 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %74, i32 0, i32 1
  store i32 %conv36, i32* %bpp, align 4, !tbaa !35
  %75 = load i32, i32* %line_size, align 4, !tbaa !5
  %76 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %line_size37 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %76, i32 0, i32 2
  store i32 %75, i32* %line_size37, align 4, !tbaa !30
  %77 = load i8*, i8** %data, align 8, !tbaa !1
  %78 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %78, i32 0, i32 3
  store i8* %77, i8** %data38, align 8, !tbaa !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.18, %if.then
  %79 = bitcast %struct.IMAGE** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @sgi_next_row(%struct.sgi_cursor_s* %pcur) #1 {
entry:
  %retval = alloca i32, align 4
  %pcur.addr = alloca %struct.sgi_cursor_s*, align 8
  store %struct.sgi_cursor_s* %pcur, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %0 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %lnum = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lnum, align 4, !tbaa !34
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev, align 8, !tbaa !33
  %4 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %lnum1 = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %4, i32 0, i32 4
  %5 = load i32, i32* %lnum1, align 4, !tbaa !34
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %lnum1, align 4, !tbaa !34
  %6 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %6, i32 0, i32 3
  %7 = load i8*, i8** %data, align 8, !tbaa !36
  %8 = load %struct.sgi_cursor_s*, %struct.sgi_cursor_s** %pcur.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.sgi_cursor_s, %struct.sgi_cursor_s* %8, i32 0, i32 2
  %9 = load i32, i32* %line_size, align 4, !tbaa !30
  %call = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %3, i32 %5, i8* %7, i32 %9) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @putint(i32 %val, %struct._IO_FILE* %outf) #1 {
entry:
  %val.addr = alloca i32, align 4
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [4 x i8], align 1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 24
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !38
  %2 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr1 = lshr i32 %2, 16
  %conv2 = trunc i32 %shr1 to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !38
  %3 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr4 = lshr i32 %3, 8
  %conv5 = trunc i32 %shr4 to i8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !38
  %4 = load i32, i32* %val.addr, align 4, !tbaa !5
  %conv7 = trunc i32 %4 to i8
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !38
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %5) #4
  %conv9 = trunc i64 %call to i32
  %6 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %conv9
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @putheader(%struct.IMAGE* %header, %struct._IO_FILE* %outf) #1 {
entry:
  %header.addr = alloca %struct.IMAGE*, align 8
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %filler = alloca i8, align 1
  store %struct.IMAGE* %header, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  call void @llvm.lifetime.start(i64 1, i8* %filler) #2
  store i8 0, i8* %filler, align 1, !tbaa !38
  %1 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %imagic = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %1, i32 0, i32 0
  %2 = load i16, i16* %imagic, align 2, !tbaa !43
  %conv = zext i16 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call = call i32 @putshort(i32 %conv, %struct._IO_FILE* %3) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 1, %struct._IO_FILE* %4) #4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 1, %struct._IO_FILE* %5) #4
  %6 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %dim = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %6, i32 0, i32 2
  %7 = load i16, i16* %dim, align 2, !tbaa !46
  %conv3 = zext i16 %7 to i32
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call4 = call i32 @putshort(i32 %conv3, %struct._IO_FILE* %8) #4
  %9 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %xsize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %9, i32 0, i32 3
  %10 = load i16, i16* %xsize, align 2, !tbaa !47
  %conv5 = zext i16 %10 to i32
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call6 = call i32 @putshort(i32 %conv5, %struct._IO_FILE* %11) #4
  %12 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %ysize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %12, i32 0, i32 4
  %13 = load i16, i16* %ysize, align 2, !tbaa !48
  %conv7 = zext i16 %13 to i32
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call8 = call i32 @putshort(i32 %conv7, %struct._IO_FILE* %14) #4
  %15 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %zsize = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %15, i32 0, i32 5
  %16 = load i16, i16* %zsize, align 2, !tbaa !49
  %conv9 = zext i16 %16 to i32
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call10 = call i32 @putshort(i32 %conv9, %struct._IO_FILE* %17) #4
  %18 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %min_color = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %18, i32 0, i32 6
  %19 = load i32, i32* %min_color, align 4, !tbaa !50
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call11 = call i32 @putint(i32 %19, %struct._IO_FILE* %20) #4
  %21 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %21, i32 0, i32 7
  %22 = load i32, i32* %max_color, align 4, !tbaa !52
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call12 = call i32 @putint(i32 %22, %struct._IO_FILE* %23) #4
  %24 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %wastebytes = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %24, i32 0, i32 8
  %25 = load i32, i32* %wastebytes, align 4, !tbaa !53
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call13 = call i32 @putint(i32 %25, %struct._IO_FILE* %26) #4
  %27 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %27, i32 0, i32 9
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call14 = call i64 @fwrite(i8* %arraydecay, i64 80, i64 1, %struct._IO_FILE* %28) #4
  %29 = load %struct.IMAGE*, %struct.IMAGE** %header.addr, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.IMAGE, %struct.IMAGE* %29, i32 0, i32 10
  %30 = load i32, i32* %colormap, align 4, !tbaa !54
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call15 = call i32 @putint(i32 %30, %struct._IO_FILE* %31) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %32, 404
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8, i8* %filler, align 1, !tbaa !38
  %conv17 = sext i8 %33 to i32
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call18 = call i32 @fputc(i32 %conv17, %struct._IO_FILE* %34) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %filler) #2
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @putshort(i32 %val, %struct._IO_FILE* %outf) #1 {
entry:
  %val.addr = alloca i32, align 4
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [2 x i8], align 1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !38
  %2 = load i32, i32* %val.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %2 to i8
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 %conv1, i8* %arrayidx2, align 1, !tbaa !38
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %arraydecay, i64 2, i64 1, %struct._IO_FILE* %3) #4
  %conv3 = trunc i64 %call to i32
  %4 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %4) #2
  ret i32 %conv3
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

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
!7 = !{!8, !10, i64 928}
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
!23 = !{!8, !6, i64 17172}
!24 = !{!8, !2, i64 24}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!8, !6, i64 836}
!30 = !{!31, !6, i64 12}
!31 = !{!"sgi_cursor_s", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24}
!32 = !{!10, !10, i64 0}
!33 = !{!31, !2, i64 0}
!34 = !{!31, !6, i64 24}
!35 = !{!31, !6, i64 8}
!36 = !{!31, !2, i64 16}
!37 = !{!8, !6, i64 832}
!38 = !{!3, !3, i64 0}
!39 = !{!26, !2, i64 24}
!40 = !{!41, !12, i64 108}
!41 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!42 = !{!12, !12, i64 0}
!43 = !{!44, !12, i64 0}
!44 = !{!"", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !6, i64 104, !10, i64 112, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !12, i64 130, !2, i64 136, !2, i64 144, !2, i64 152, !10, i64 160, !10, i64 168, !2, i64 176, !2, i64 184}
!45 = !{!44, !12, i64 2}
!46 = !{!44, !12, i64 4}
!47 = !{!44, !12, i64 6}
!48 = !{!44, !12, i64 8}
!49 = !{!44, !12, i64 10}
!50 = !{!44, !6, i64 12}
!51 = !{!8, !6, i64 116}
!52 = !{!44, !6, i64 16}
!53 = !{!44, !6, i64 20}
!54 = !{!44, !6, i64 104}
!55 = !{!44, !12, i64 122}
!56 = !{!8, !12, i64 108}
