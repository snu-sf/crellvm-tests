; ModuleID = './gdevrpdl.bc'
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

@rpdl_prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @rpdl_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @rpdl_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lprn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"rpdl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_rpdl_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct._Bubble**, %struct._Bubble*, i32 } { i32 18576, %struct.gx_device_procs_s* @rpdl_prn_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2040, i32 2640, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float 2.400000e+02, float 2.400000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* null, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @rpdl_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, void (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32, i32, i32, i32)* @rpdl_image_out, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i8* null, i8* null, i8* null, i8* null, i32 4, i32 32, %struct._Bubble** null, %struct._Bubble* null, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"rpdl_print_page_copies(CompBuf)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\1B\12!@R00\1B \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\1B4\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\1B\12YP,2 \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\1B\12YB,2 \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\1B\12YK,1 \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\1B\12YL,1 \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\1B\12YM,1 \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\1B\12YQ,2 \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\1B\1261,\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\1B\12YA01,2 \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\1B\12YA01,1 \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B\1260,\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"\1B\12YA04,3 \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\1B\12YA04,1 \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"\1B\12YA04,2 \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\1B\12YW,3 \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"\1B\12YW,1 \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\1B\12YW,2 \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"\1B\12Q5 \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"\1B\12Q4 \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\1B\12Q0 \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\1B\12#4 \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\1B\12#2 \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\1B\12D2 \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"\1B\12D1 \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\1B\12N%d \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"\1B\1251@A1R\1B \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"\1B\1251@A2R\1B \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"\1B\1251@A2\1B \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"\1B\1251@A3R\1B \00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"\1B\1251@A3\1B \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"\1B\1251@A4R\1B \00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"\1B\1251@A4\1B \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"\1B\1251@A5R\1B \00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"\1B\1251@A5\1B \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"\1B\1251@A6R\1B \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"\1B\1251@A6\1B \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"\1B\1251@B4R\1B \00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"\1B\1251@B4\1B \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"\1B\1251@B5R\1B \00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"\1B\1251@B5\1B \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"\1B\1251@LTR\1B \00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"\1B\1251@LT\1B \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"\1B\1251@LGR\1B \00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"\1B\1251@LG\1B \00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"\1B\1251@HLR\1B \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"\1B\1251@HLT\1B \00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"\1B\1251@DLT\1B \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"\1B\1251@DLR\1B \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"\1B\12?5%d,%d\1B \00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"\1B\12G3,%d,%d,,4,%d,%d,%d@\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"\1B\12G3,%d,%d,,,%d,%d@\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rpdl_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_coipes) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_coipes.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %code = alloca i32, align 4
  %bpl = alloca i32, align 4
  %maxY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_coipes, i32* %num_coipes.addr, align 4, !tbaa !5
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
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #3
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %7 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %BlockLine = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %8, i32 0, i32 76
  %9 = load i32, i32* %BlockLine, align 4, !tbaa !7
  %10 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %10, i32 0, i32 82
  %11 = load i32, i32* %nBh, align 4, !tbaa !23
  %div = sdiv i32 %9, %11
  %12 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %nBh1 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %12, i32 0, i32 82
  %13 = load i32, i32* %nBh1, align 4, !tbaa !23
  %mul = mul nsw i32 %div, %13
  store i32 %mul, i32* %maxY, align 4, !tbaa !5
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 26
  %15 = load i64, i64* %PageCount, align 8, !tbaa !24
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %18 = load i32, i32* %num_coipes.addr, align 4, !tbaa !5
  call void @rpdl_printer_initialize(%struct.gx_device_printer_s* %16, %struct._IO_FILE* %17, i32 %18) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !30
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !26
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !27
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !27
  %28 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul6 = mul nsw i32 %28, 3
  %div7 = sdiv i32 %mul6, 2
  %add = add nsw i32 %div7, 1
  %29 = load i32, i32* %maxY, align 4, !tbaa !5
  %call8 = call i8* %23(%struct.gs_memory_s* %27, i32 %add, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  %30 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %30, i32 0, i32 79
  store i8* %call8, i8** %CompBuf, align 8, !tbaa !31
  %tobool = icmp ne i8* %call8, null
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %31 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %NegativePrint = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %31, i32 0, i32 71
  store i32 0, i32* %NegativePrint, align 4, !tbaa !32
  %32 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call11 = call i32 @lprn_print_image(%struct.gx_device_printer_s* %32, %struct._IO_FILE* %33) #3
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %34, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !26
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !27
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !27
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !26
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !27
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !27
  %45 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf22 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %45, i32 0, i32 79
  %46 = load i8*, i8** %CompBuf22, align 8, !tbaa !31
  call void %40(%struct.gs_memory_s* %44, i8* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #3
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9
  %49 = bitcast i32* %maxY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
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
define internal void @rpdl_image_out(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %Len = alloca i32, align 4
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
  %4 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %4, i32 0, i32 78
  %5 = load i8*, i8** %TmpBuf, align 8, !tbaa !34
  %6 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %6, i32 0, i32 79
  %7 = load i8*, i8** %CompBuf, align 8, !tbaa !31
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div = sdiv i32 %8, 8
  %9 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %9
  %call = call i32 @lips_mode3format_encode(i8* %5, i8* %7, i32 %mul) #3
  store i32 %call, i32* %Len, align 4, !tbaa !5
  %10 = load i32, i32* %Len, align 4, !tbaa !5
  %11 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div1 = sdiv i32 %11, 8
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul2 = mul nsw i32 %div1, %12
  %cmp = icmp slt i32 %10, %mul2
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %14 = load float, float* %arrayidx, align 4, !tbaa !35
  %cmp3 = fcmp oeq float %14, 2.400000e+02
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %17 = load i32, i32* %height.addr, align 4, !tbaa !5
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul5 = mul nsw i32 %18, 3
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %mul6 = mul nsw i32 %19, 3
  %20 = load i32, i32* %Len, align 4, !tbaa !5
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i32 %16, i32 %17, i32 %mul5, i32 %mul6, i32 %20) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %22 = load i32, i32* %width.addr, align 4, !tbaa !5
  %23 = load i32, i32* %height.addr, align 4, !tbaa !5
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %25 = load i32, i32* %y.addr, align 4, !tbaa !5
  %26 = load i32, i32* %Len, align 4, !tbaa !5
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %27 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %CompBuf9 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %27, i32 0, i32 79
  %28 = load i8*, i8** %CompBuf9, align 8, !tbaa !31
  %29 = load i32, i32* %Len, align 4, !tbaa !5
  %conv = sext i32 %29 to i64
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i64 @fwrite(i8* %28, i64 1, i64 %conv, %struct._IO_FILE* %30) #3
  br label %if.end.33

if.else.11:                                       ; preds = %entry
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 0
  %32 = load float, float* %arrayidx13, align 4, !tbaa !35
  %cmp14 = fcmp oeq float %32, 2.400000e+02
  br i1 %cmp14, label %if.then.16, label %if.else.25

if.then.16:                                       ; preds = %if.else.11
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %34 = load i32, i32* %width.addr, align 4, !tbaa !5
  %35 = load i32, i32* %height.addr, align 4, !tbaa !5
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul17 = mul nsw i32 %36, 3
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %mul18 = mul nsw i32 %37, 3
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i32 %34, i32 %35, i32 %mul17, i32 %mul18) #3
  %38 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf20 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %38, i32 0, i32 78
  %39 = load i8*, i8** %TmpBuf20, align 8, !tbaa !34
  %40 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div21 = sdiv i32 %40, 8
  %41 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul22 = mul nsw i32 %div21, %41
  %conv23 = sext i32 %mul22 to i64
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call24 = call i64 @fwrite(i8* %39, i64 1, i64 %conv23, %struct._IO_FILE* %42) #3
  br label %if.end.32

if.else.25:                                       ; preds = %if.else.11
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %44 = load i32, i32* %width.addr, align 4, !tbaa !5
  %45 = load i32, i32* %height.addr, align 4, !tbaa !5
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i32 %44, i32 %45, i32 %46, i32 %47) #3
  %48 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %TmpBuf27 = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %48, i32 0, i32 78
  %49 = load i8*, i8** %TmpBuf27, align 8, !tbaa !34
  %50 = load i32, i32* %width.addr, align 4, !tbaa !5
  %div28 = sdiv i32 %50, 8
  %51 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %div28, %51
  %conv30 = sext i32 %mul29 to i64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i64 @fwrite(i8* %49, i64 1, i64 %conv30, %struct._IO_FILE* %52) #3
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.25, %if.then.16
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %53 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rpdl_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !35
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !5
  %3 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !35
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %ydpi, align 4, !tbaa !5
  %6 = load i32, i32* %xdpi, align 4, !tbaa !5
  %7 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %8, 240
  br i1 %cmp5, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %9, 400
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %10, 600
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %11) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then
  %12 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @rpdl_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %0, i32 1) #3
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 49
  %3 = load i32, i32* %Duplex, align 4, !tbaa !37
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 26
  %5 = load i64, i64* %PageCount, align 8, !tbaa !38
  %and = and i64 %5, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !40
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @gdev_prn_close(%struct.gx_device_s* %9) #3
  ret i32 %call3
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @lprn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @lprn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @rpdl_printer_initialize(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %lprn = alloca %struct.gx_device_lprn_s*, align 8
  %xdpi = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_lprn_s*
  store %struct.gx_device_lprn_s* %2, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %3 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !35
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xdpi, align 4, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #3
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  call void @rpdl_paper_set(%struct.gx_device_printer_s* %14, %struct._IO_FILE* %15) #3
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 50
  %17 = load i32, i32* %Duplex_set, align 4, !tbaa !41
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 49
  %19 = load i32, i32* %Duplex, align 4, !tbaa !37
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.then
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %21 = load %struct.gx_device_lprn_s*, %struct.gx_device_lprn_s** %lprn, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lprn_s, %struct.gx_device_lprn_s* %21, i32 0, i32 72
  %22 = load i32, i32* %Tumble, align 4, !tbaa !42
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %if.end

if.else:                                          ; preds = %if.then.9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.18

if.else.16:                                       ; preds = %if.then
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %26 = load i32, i32* %xdpi, align 4, !tbaa !5
  switch i32 %26, label %sw.default [
    i32 600, label %sw.bb
    i32 400, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end.19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.19
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb
  %30 = load i32, i32* %xdpi, align 4, !tbaa !5
  switch i32 %30, label %sw.default.28 [
    i32 600, label %sw.bb.24
    i32 400, label %sw.bb.26
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %sw.epilog.30

sw.bb.26:                                         ; preds = %sw.epilog
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #3
  br label %sw.epilog.30

sw.default.28:                                    ; preds = %sw.epilog
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #3
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.default.28, %sw.bb.26, %sw.bb.24
  %34 = load i32, i32* %xdpi, align 4, !tbaa !5
  switch i32 %34, label %sw.default.35 [
    i32 600, label %sw.bb.31
    i32 400, label %sw.bb.33
  ]

sw.bb.31:                                         ; preds = %sw.epilog.30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %sw.epilog.37

sw.bb.33:                                         ; preds = %sw.epilog.30
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #3
  br label %sw.epilog.37

sw.default.35:                                    ; preds = %sw.epilog.30
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #3
  br label %sw.epilog.37

sw.epilog.37:                                     ; preds = %sw.default.35, %sw.bb.33, %sw.bb.31
  %38 = load i32, i32* %xdpi, align 4, !tbaa !5
  switch i32 %38, label %sw.epilog.42 [
    i32 600, label %sw.bb.38
    i32 400, label %sw.bb.40
  ]

sw.bb.38:                                         ; preds = %sw.epilog.37
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #3
  br label %sw.epilog.42

sw.bb.40:                                         ; preds = %sw.epilog.37
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #3
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %sw.epilog.37, %sw.bb.40, %sw.bb.38
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 19
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %42 = load float, float* %arrayidx43, align 4, !tbaa !35
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 19
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize44, i32 0, i64 1
  %44 = load float, float* %arrayidx45, align 4, !tbaa !35
  %cmp46 = fcmp ogt float %42, %44
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %sw.epilog.42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #3
  br label %if.end.52

if.else.50:                                       ; preds = %sw.epilog.42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #3
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.48
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %48 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %48) #3
  %49 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast %struct.gx_device_lprn_s** %lprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  ret void
}

declare i32 @lprn_print_image(%struct.gx_device_printer_s*, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @rpdl_paper_set(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %wp = alloca i32, align 4
  %hp = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %wp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !35
  %conv = fptosi float %7 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !35
  %conv3 = fptosi float %9 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %10 = load i32, i32* %width, align 4, !tbaa !5
  %11 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %width, align 4, !tbaa !5
  store i32 %12, i32* %w, align 4, !tbaa !5
  %13 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %13, i32* %h, align 4, !tbaa !5
  %14 = load i32, i32* %width, align 4, !tbaa !5
  %conv5 = sitofp i32 %14 to double
  %div = fdiv double %conv5, 7.200000e+01
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %16 = load float, float* %arrayidx6, align 4, !tbaa !35
  %conv7 = fpext float %16 to double
  %mul = fmul double %div, %conv7
  %conv8 = fptosi double %mul to i32
  store i32 %conv8, i32* %wp, align 4, !tbaa !5
  %17 = load i32, i32* %height, align 4, !tbaa !5
  %conv9 = sitofp i32 %17 to double
  %div10 = fdiv double %conv9, 7.200000e+01
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 22
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i64 1
  %19 = load float, float* %arrayidx12, align 4, !tbaa !35
  %conv13 = fpext float %19 to double
  %mul14 = fmul double %div10, %conv13
  %conv15 = fptosi double %mul14 to i32
  store i32 %conv15, i32* %hp, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %height, align 4, !tbaa !5
  store i32 %20, i32* %w, align 4, !tbaa !5
  %21 = load i32, i32* %width, align 4, !tbaa !5
  store i32 %21, i32* %h, align 4, !tbaa !5
  %22 = load i32, i32* %height, align 4, !tbaa !5
  %conv16 = sitofp i32 %22 to double
  %div17 = fdiv double %conv16, 7.200000e+01
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 1
  %24 = load float, float* %arrayidx19, align 4, !tbaa !35
  %conv20 = fpext float %24 to double
  %mul21 = fmul double %div17, %conv20
  %conv22 = fptosi double %mul21 to i32
  store i32 %conv22, i32* %wp, align 4, !tbaa !5
  %25 = load i32, i32* %width, align 4, !tbaa !5
  %conv23 = sitofp i32 %25 to double
  %div24 = fdiv double %conv23, 7.200000e+01
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 22
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution25, i32 0, i64 0
  %27 = load float, float* %arrayidx26, align 4, !tbaa !35
  %conv27 = fpext float %27 to double
  %mul28 = fmul double %div24, %conv27
  %conv29 = fptosi double %mul28 to i32
  store i32 %conv29, i32* %hp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %w, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %28, 1684
  br i1 %cmp30, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.end
  %29 = load i32, i32* %h, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %29, 2380
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #3
  br label %if.end.175

if.else.35:                                       ; preds = %land.lhs.true, %if.end
  %31 = load i32, i32* %w, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %31, 1190
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.44

land.lhs.true.38:                                 ; preds = %if.else.35
  %32 = load i32, i32* %h, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %32, 1684
  br i1 %cmp39, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %land.lhs.true.38
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #3
  br label %if.end.174

if.else.44:                                       ; preds = %land.lhs.true.38, %if.else.35
  %35 = load i32, i32* %w, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %35, 842
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.53

land.lhs.true.47:                                 ; preds = %if.else.44
  %36 = load i32, i32* %h, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %36, 1190
  br i1 %cmp48, label %if.then.50, label %if.else.53

if.then.50:                                       ; preds = %land.lhs.true.47
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #3
  br label %if.end.173

if.else.53:                                       ; preds = %land.lhs.true.47, %if.else.44
  %39 = load i32, i32* %w, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %39, 595
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.62

land.lhs.true.56:                                 ; preds = %if.else.53
  %40 = load i32, i32* %h, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %40, 842
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %land.lhs.true.56
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #3
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #3
  br label %if.end.172

if.else.62:                                       ; preds = %land.lhs.true.56, %if.else.53
  %43 = load i32, i32* %w, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %43, 597
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.71

land.lhs.true.65:                                 ; preds = %if.else.62
  %44 = load i32, i32* %h, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %44, 842
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %land.lhs.true.65
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #3
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #3
  br label %if.end.171

if.else.71:                                       ; preds = %land.lhs.true.65, %if.else.62
  %47 = load i32, i32* %w, align 4, !tbaa !5
  %cmp72 = icmp eq i32 %47, 421
  br i1 %cmp72, label %land.lhs.true.74, label %if.else.80

land.lhs.true.74:                                 ; preds = %if.else.71
  %48 = load i32, i32* %h, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %48, 595
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %land.lhs.true.74
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0)) #3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #3
  br label %if.end.170

if.else.80:                                       ; preds = %land.lhs.true.74, %if.else.71
  %51 = load i32, i32* %w, align 4, !tbaa !5
  %cmp81 = icmp eq i32 %51, 297
  br i1 %cmp81, label %land.lhs.true.83, label %if.else.89

land.lhs.true.83:                                 ; preds = %if.else.80
  %52 = load i32, i32* %h, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %52, 421
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %land.lhs.true.83
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #3
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #3
  br label %if.end.169

if.else.89:                                       ; preds = %land.lhs.true.83, %if.else.80
  %55 = load i32, i32* %w, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %55, 729
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.98

land.lhs.true.92:                                 ; preds = %if.else.89
  %56 = load i32, i32* %h, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %56, 1032
  br i1 %cmp93, label %if.then.95, label %if.else.98

if.then.95:                                       ; preds = %land.lhs.true.92
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0)) #3
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #3
  br label %if.end.168

if.else.98:                                       ; preds = %land.lhs.true.92, %if.else.89
  %59 = load i32, i32* %w, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %59, 516
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.107

land.lhs.true.101:                                ; preds = %if.else.98
  %60 = load i32, i32* %h, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %60, 729
  br i1 %cmp102, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %land.lhs.true.101
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #3
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #3
  br label %if.end.167

if.else.107:                                      ; preds = %land.lhs.true.101, %if.else.98
  %63 = load i32, i32* %w, align 4, !tbaa !5
  %cmp108 = icmp eq i32 %63, 363
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.116

land.lhs.true.110:                                ; preds = %if.else.107
  %64 = load i32, i32* %h, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %64, 516
  br i1 %cmp111, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %land.lhs.true.110
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #3
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #3
  br label %if.end.166

if.else.116:                                      ; preds = %land.lhs.true.110, %if.else.107
  %67 = load i32, i32* %w, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %67, 612
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.125

land.lhs.true.119:                                ; preds = %if.else.116
  %68 = load i32, i32* %h, align 4, !tbaa !5
  %cmp120 = icmp eq i32 %68, 792
  br i1 %cmp120, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %land.lhs.true.119
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0)) #3
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #3
  br label %if.end.165

if.else.125:                                      ; preds = %land.lhs.true.119, %if.else.116
  %71 = load i32, i32* %w, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %71, 612
  br i1 %cmp126, label %land.lhs.true.128, label %if.else.134

land.lhs.true.128:                                ; preds = %if.else.125
  %72 = load i32, i32* %h, align 4, !tbaa !5
  %cmp129 = icmp eq i32 %72, 1008
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %land.lhs.true.128
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #3
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #3
  br label %if.end.164

if.else.134:                                      ; preds = %land.lhs.true.128, %if.else.125
  %75 = load i32, i32* %w, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %75, 396
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.143

land.lhs.true.137:                                ; preds = %if.else.134
  %76 = load i32, i32* %h, align 4, !tbaa !5
  %cmp138 = icmp eq i32 %76, 612
  br i1 %cmp138, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %land.lhs.true.137
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0)) #3
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)) #3
  br label %if.end.163

if.else.143:                                      ; preds = %land.lhs.true.137, %if.else.134
  %79 = load i32, i32* %w, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %79, 792
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.152

land.lhs.true.146:                                ; preds = %if.else.143
  %80 = load i32, i32* %h, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %80, 1224
  br i1 %cmp147, label %if.then.149, label %if.else.152

if.then.149:                                      ; preds = %land.lhs.true.146
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #3
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0)) #3
  br label %if.end.162

if.else.152:                                      ; preds = %land.lhs.true.146, %if.else.143
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %84 = load i32, i32* %w, align 4, !tbaa !5
  %conv153 = sitofp i32 %84 to double
  %mul154 = fmul double %conv153, 2.540000e+01
  %div155 = fdiv double %mul154, 7.200000e+01
  %conv156 = fptosi double %div155 to i32
  %85 = load i32, i32* %h, align 4, !tbaa !5
  %conv157 = sitofp i32 %85 to double
  %mul158 = fmul double %conv157, 2.540000e+01
  %div159 = fdiv double %mul158, 7.200000e+01
  %conv160 = fptosi double %div159 to i32
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 %conv156, i32 %conv160) #3
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.152, %if.then.149
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.140
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.131
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.122
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.113
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.104
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.95
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.86
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.77
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.68
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.59
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.50
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.41
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.34
  %86 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %wp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  ret void
}

declare i32 @lips_mode3format_encode(i8*, i8*, i32) #0

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
!7 = !{!8, !6, i64 18508}
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
!23 = !{!8, !6, i64 18548}
!24 = !{!25, !10, i64 928}
!25 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!26 = !{!25, !2, i64 24}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 88}
!31 = !{!8, !2, i64 18528}
!32 = !{!8, !6, i64 18488}
!33 = !{!28, !2, i64 24}
!34 = !{!8, !2, i64 18520}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !3, i64 0}
!37 = !{!25, !6, i64 17164}
!38 = !{!39, !10, i64 928}
!39 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!40 = !{!25, !2, i64 17176}
!41 = !{!25, !6, i64 17168}
!42 = !{!8, !6, i64 18492}
