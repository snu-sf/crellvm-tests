; ModuleID = './gdevo182.bc'
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

@prn_bg_procs = external constant %struct.gx_device_procs_s, align 8
@.str = private unnamed_addr constant [7 x i8] c"oki182\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_oki182_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 576, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 5.760000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @oki_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"oki_print_page(in)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"oki_print_page(out1)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"oki_print_page(out2)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\18\1C\1B%C001\1B%S0\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\1BR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\1B%5\7F\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\1B%%5%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\03\02\0D\1B%%5%c\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\03\0E\03\02\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @oki_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %highRes = alloca i32, align 4
  %bits_per_column = alloca i32, align 4
  %i = alloca i32, align 4
  %spaces = alloca i32, align 4
  %width = alloca i32, align 4
  %lcnt = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out1 = alloca i8*, align 8
  %out2 = alloca i8*, align 8
  %out3 = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %skip = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %highRes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %2 = load float, float* %arrayidx, align 4, !tbaa !5
  %cmp = fcmp ogt float %2, 1.000000e+02
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %highRes, align 4, !tbaa !7
  %3 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 7, i32* %bits_per_column, align 4, !tbaa !7
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_printer_s* %9 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %10, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !7
  %11 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !9
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !25
  %19 = load i32, i32* %line_size, align 4, !tbaa !7
  %call3 = call i8* %15(%struct.gs_memory_s* %18, i32 16, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call3, i8** %in, align 8, !tbaa !1
  %20 = bitcast i8** %out1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !9
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !25
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %24 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !28
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !9
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !25
  %28 = load i32, i32* %line_size, align 4, !tbaa !7
  %call10 = call i8* %24(%struct.gs_memory_s* %27, i32 8, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call10, i8** %out1, align 8, !tbaa !1
  %29 = bitcast i8** %out2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !9
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !25
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_byte_array14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 10
  %33 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array14, align 8, !tbaa !28
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !9
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !25
  %37 = load i32, i32* %line_size, align 4, !tbaa !7
  %call17 = call i8* %33(%struct.gs_memory_s* %36, i32 8, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call17, i8** %out2, align 8, !tbaa !1
  %38 = bitcast i8** %out3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 0, i32* %lnum, align 4, !tbaa !7
  %40 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  store i32 0, i32* %skip, align 4, !tbaa !7
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  store i32 0, i32* %code, align 4, !tbaa !7
  %42 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %42, null
  br i1 %cmp18, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %43 = load i8*, i8** %out1, align 8, !tbaa !1
  %cmp20 = icmp eq i8* %43, null
  br i1 %cmp20, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %44 = load i8*, i8** %out2, align 8, !tbaa !1
  %cmp23 = icmp eq i8* %44, null
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.22, %lor.lhs.false, %entry
  store i32 -25, i32* %code, align 4, !tbaa !7
  %45 = load i32, i32* %code, align 4, !tbaa !7
  br label %bail

if.end:                                           ; preds = %lor.lhs.false.22
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call25 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 12, %struct._IO_FILE* %46) #5
  %47 = load i32, i32* %highRes, align 4, !tbaa !7
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call27 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %48) #5
  store i32 14, i32* %bits_per_column, align 4, !tbaa !7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.120, %if.end.47, %if.end.28
  %49 = load i32, i32* %lnum, align 4, !tbaa !7
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 14
  %51 = load i32, i32* %height, align 4, !tbaa !29
  %cmp29 = icmp slt i32 %49, %51
  br i1 %cmp29, label %while.body, label %while.end.122

while.body:                                       ; preds = %while.cond
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %53 = load i32, i32* %lnum, align 4, !tbaa !7
  %54 = load i8*, i8** %in, align 8, !tbaa !1
  %55 = load i32, i32* %line_size, align 4, !tbaa !7
  %call31 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %52, i32 %53, i8* %54, i32 %55) #5
  store i32 %call31, i32* %code, align 4, !tbaa !7
  %56 = load i32, i32* %code, align 4, !tbaa !7
  %cmp32 = icmp slt i32 %56, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  br label %xit

if.end.35:                                        ; preds = %while.body
  %57 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx36, align 1, !tbaa !30
  %conv37 = zext i8 %58 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.35
  %59 = load i8*, i8** %in, align 8, !tbaa !1
  %60 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i32, i32* %line_size, align 4, !tbaa !7
  %sub = sub nsw i32 %61, 1
  %conv40 = sext i32 %sub to i64
  %call41 = call i32 @memcmp(i8* %59, i8* %add.ptr, i64 %conv40) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.48, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true
  %62 = load i32, i32* %lnum, align 4, !tbaa !7
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !7
  %63 = load i32, i32* %highRes, align 4, !tbaa !7
  %tobool44 = icmp ne i32 %63, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.43
  %64 = load i32, i32* %skip, align 4, !tbaa !7
  %inc46 = add nsw i32 %64, 1
  store i32 %inc46, i32* %skip, align 4, !tbaa !7
  br label %if.end.47

if.else:                                          ; preds = %if.then.43
  %65 = load i32, i32* %skip, align 4, !tbaa !7
  %add = add nsw i32 %65, 2
  store i32 %add, i32* %skip, align 4, !tbaa !7
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.45
  br label %while.cond

if.end.48:                                        ; preds = %land.lhs.true, %if.end.35
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.52, %if.end.48
  %66 = load i32, i32* %skip, align 4, !tbaa !7
  %cmp50 = icmp sgt i32 %66, 127
  br i1 %cmp50, label %while.body.52, label %while.end

while.body.52:                                    ; preds = %while.cond.49
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %67) #5
  %68 = load i32, i32* %skip, align 4, !tbaa !7
  %sub54 = sub nsw i32 %68, 127
  store i32 %sub54, i32* %skip, align 4, !tbaa !7
  br label %while.cond.49

while.end:                                        ; preds = %while.cond.49
  %69 = load i32, i32* %skip, align 4, !tbaa !7
  %tobool55 = icmp ne i32 %69, 0
  br i1 %tobool55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %while.end
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %71 = load i32, i32* %skip, align 4, !tbaa !7
  %and = and i32 %71, 255
  %conv57 = trunc i32 %and to i8
  %conv58 = sext i8 %conv57 to i32
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %conv58) #5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %while.end
  store i32 0, i32* %skip, align 4, !tbaa !7
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %73 = load i32, i32* %lnum, align 4, !tbaa !7
  %add61 = add nsw i32 %73, 1
  %74 = load i8*, i8** %in, align 8, !tbaa !1
  %75 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext = sext i32 %75 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %74, i64 %idx.ext
  %76 = load i32, i32* %bits_per_column, align 4, !tbaa !7
  %sub63 = sub nsw i32 %76, 1
  %77 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul = mul nsw i32 %sub63, %77
  %call64 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %72, i32 %add61, i8* %add.ptr62, i32 %mul) #5
  store i32 %call64, i32* %code, align 4, !tbaa !7
  %78 = load i32, i32* %code, align 4, !tbaa !7
  %cmp65 = icmp slt i32 %78, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.60
  br label %xit

if.end.68:                                        ; preds = %if.end.60
  %79 = load i32, i32* %code, align 4, !tbaa !7
  %add69 = add nsw i32 %79, 1
  store i32 %add69, i32* %lcnt, align 4, !tbaa !7
  %80 = load i32, i32* %lcnt, align 4, !tbaa !7
  %81 = load i32, i32* %bits_per_column, align 4, !tbaa !7
  %cmp70 = icmp slt i32 %80, %81
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.end.68
  %82 = load i8*, i8** %in, align 8, !tbaa !1
  %83 = load i32, i32* %lcnt, align 4, !tbaa !7
  %84 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul73 = mul nsw i32 %83, %84
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %82, i64 %idx.ext74
  %85 = load i32, i32* %bits_per_column, align 4, !tbaa !7
  %86 = load i32, i32* %lcnt, align 4, !tbaa !7
  %sub76 = sub nsw i32 %85, %86
  %87 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul77 = mul nsw i32 %sub76, %87
  %conv78 = sext i32 %mul77 to i64
  %call79 = call i8* @memset(i8* %add.ptr75, i32 0, i64 %conv78) #7
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.72, %if.end.68
  %88 = load i32, i32* %highRes, align 4, !tbaa !7
  %tobool81 = icmp ne i32 %88, 0
  br i1 %tobool81, label %if.then.82, label %if.else.89

if.then.82:                                       ; preds = %if.end.80
  %89 = load i8*, i8** %in, align 8, !tbaa !1
  %90 = load i8*, i8** %out1, align 8, !tbaa !1
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width83 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %91, i32 0, i32 13
  %92 = load i32, i32* %width83, align 4, !tbaa !31
  %93 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul84 = mul nsw i32 2, %93
  call void @oki_transpose(i8* %89, i8* %90, i32 %92, i32 %mul84) #5
  %94 = load i8*, i8** %in, align 8, !tbaa !1
  %95 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext85 = sext i32 %95 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %94, i64 %idx.ext85
  %96 = load i8*, i8** %out2, align 8, !tbaa !1
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width87 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 13
  %98 = load i32, i32* %width87, align 4, !tbaa !31
  %99 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul88 = mul nsw i32 2, %99
  call void @oki_transpose(i8* %add.ptr86, i8* %96, i32 %98, i32 %mul88) #5
  br label %if.end.91

if.else.89:                                       ; preds = %if.end.80
  %100 = load i8*, i8** %in, align 8, !tbaa !1
  %101 = load i8*, i8** %out1, align 8, !tbaa !1
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width90 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %102, i32 0, i32 13
  %103 = load i32, i32* %width90, align 4, !tbaa !31
  %104 = load i32, i32* %line_size, align 4, !tbaa !7
  call void @oki_transpose(i8* %100, i8* %101, i32 %103, i32 %104) #5
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.82
  %105 = load i8*, i8** %out1, align 8, !tbaa !1
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width92 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 13
  %107 = load i32, i32* %width92, align 4, !tbaa !31
  %108 = load i32, i32* %highRes, align 4, !tbaa !7
  %call93 = call i8* @oki_compress(i8* %105, i32 %107, i32 %108, i32* %spaces, i32* %width) #5
  store i8* %call93, i8** %out3, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %109 = load i32, i32* %i, align 4, !tbaa !7
  %110 = load i32, i32* %spaces, align 4, !tbaa !7
  %cmp94 = icmp slt i32 %109, %110
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call96 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %111) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %112 = load i32, i32* %i, align 4, !tbaa !7
  %inc97 = add nsw i32 %112, 1
  store i32 %inc97, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %113) #5
  %114 = load i8*, i8** %out3, align 8, !tbaa !1
  %115 = load i32, i32* %width, align 4, !tbaa !7
  %conv99 = sext i32 %115 to i64
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call100 = call i64 @fwrite(i8* %114, i64 1, i64 %conv99, %struct._IO_FILE* %116) #5
  %117 = load i32, i32* %highRes, align 4, !tbaa !7
  %tobool101 = icmp ne i32 %117, 0
  br i1 %tobool101, label %if.then.102, label %if.else.118

if.then.102:                                      ; preds = %for.end
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1) #5
  %119 = load i8*, i8** %out2, align 8, !tbaa !1
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width104 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %120, i32 0, i32 13
  %121 = load i32, i32* %width104, align 4, !tbaa !31
  %122 = load i32, i32* %highRes, align 4, !tbaa !7
  %call105 = call i8* @oki_compress(i8* %119, i32 %121, i32 %122, i32* %spaces, i32* %width) #5
  store i8* %call105, i8** %out3, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.111, %if.then.102
  %123 = load i32, i32* %i, align 4, !tbaa !7
  %124 = load i32, i32* %spaces, align 4, !tbaa !7
  %cmp107 = icmp slt i32 %123, %124
  br i1 %cmp107, label %for.body.109, label %for.end.113

for.body.109:                                     ; preds = %for.cond.106
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call110 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %125) #5
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.109
  %126 = load i32, i32* %i, align 4, !tbaa !7
  %inc112 = add nsw i32 %126, 1
  store i32 %inc112, i32* %i, align 4, !tbaa !7
  br label %for.cond.106

for.end.113:                                      ; preds = %for.cond.106
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call114 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %127) #5
  %128 = load i8*, i8** %out3, align 8, !tbaa !1
  %129 = load i32, i32* %width, align 4, !tbaa !7
  %conv115 = sext i32 %129 to i64
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call116 = call i64 @fwrite(i8* %128, i64 1, i64 %conv115, %struct._IO_FILE* %130) #5
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 13) #5
  br label %if.end.120

if.else.118:                                      ; preds = %for.end
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call119 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 1, i64 4, %struct._IO_FILE* %132) #5
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %for.end.113
  %133 = load i32, i32* %bits_per_column, align 4, !tbaa !7
  %134 = load i32, i32* %lnum, align 4, !tbaa !7
  %add121 = add nsw i32 %134, %133
  store i32 %add121, i32* %lnum, align 4, !tbaa !7
  br label %while.cond

while.end.122:                                    ; preds = %while.cond
  br label %xit

xit:                                              ; preds = %while.end.122, %if.then.67, %if.then.34
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call123 = call i32 @fputc(i32 12, %struct._IO_FILE* %135) #5
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call124 = call i32 @fflush(%struct._IO_FILE* %136) #5
  br label %bail

bail:                                             ; preds = %xit, %if.then
  %137 = load i8*, i8** %out1, align 8, !tbaa !1
  %cmp125 = icmp ne i8* %137, null
  br i1 %cmp125, label %if.then.127, label %if.end.133

if.then.127:                                      ; preds = %bail
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory128 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory128, align 8, !tbaa !9
  %non_gc_memory129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory129, align 8, !tbaa !25
  %procs130 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs130, i32 0, i32 2
  %141 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %142 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !9
  %non_gc_memory132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory132, align 8, !tbaa !25
  %145 = load i8*, i8** %out1, align 8, !tbaa !1
  call void %141(%struct.gs_memory_s* %144, i8* %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.127, %bail
  %146 = load i8*, i8** %out2, align 8, !tbaa !1
  %cmp134 = icmp ne i8* %146, null
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %if.end.133
  %147 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory137, align 8, !tbaa !9
  %non_gc_memory138 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory138, align 8, !tbaa !25
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 1
  %free_object140 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 2
  %150 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object140, align 8, !tbaa !32
  %151 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory141 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %151, i32 0, i32 3
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !9
  %non_gc_memory142 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 3
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory142, align 8, !tbaa !25
  %154 = load i8*, i8** %out2, align 8, !tbaa !1
  call void %150(%struct.gs_memory_s* %153, i8* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %if.end.133
  %155 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp144 = icmp ne i8* %155, null
  br i1 %cmp144, label %if.then.146, label %if.end.153

if.then.146:                                      ; preds = %if.end.143
  %156 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory147 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %156, i32 0, i32 3
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory147, align 8, !tbaa !9
  %non_gc_memory148 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %157, i32 0, i32 3
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory148, align 8, !tbaa !25
  %procs149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 1
  %free_object150 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs149, i32 0, i32 2
  %159 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object150, align 8, !tbaa !32
  %160 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory151 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory151, align 8, !tbaa !9
  %non_gc_memory152 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %161, i32 0, i32 3
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory152, align 8, !tbaa !25
  %163 = load i8*, i8** %in, align 8, !tbaa !1
  call void %159(%struct.gs_memory_s* %162, i8* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.146, %if.end.143
  %164 = load i32, i32* %code, align 4, !tbaa !7
  %165 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i8** %out3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i8** %out2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = bitcast i8** %out1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %highRes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  ret i32 %164
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

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @oki_transpose(i8* %in, i8* %out, i32 %scanBits, i32 %lineSize) #1 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %scanBits.addr = alloca i32, align 4
  %lineSize.addr = alloca i32, align 4
  %bitMask = alloca i32, align 4
  %inPtr = alloca i8*, align 8
  %outByte = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %scanBits, i32* %scanBits.addr, align 4, !tbaa !7
  store i32 %lineSize, i32* %lineSize.addr, align 4, !tbaa !7
  %0 = bitcast i32* %bitMask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 128, i32* %bitMask, align 4, !tbaa !7
  %1 = bitcast i8** %inPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  call void @llvm.lifetime.start(i64 1, i8* %outByte) #2
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %entry
  %2 = load i32, i32* %scanBits.addr, align 4, !tbaa !7
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %scanBits.addr, align 4, !tbaa !7
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %3, i8** %inPtr, align 8, !tbaa !1
  %4 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !30
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and = and i32 %conv, %6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 -127, i8* %outByte, align 1, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %while.body
  store i8 -128, i8* %outByte, align 1, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %8 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %inPtr, align 8, !tbaa !1
  %9 = load i8, i8* %add.ptr, align 1, !tbaa !30
  %conv1 = zext i8 %9 to i32
  %10 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and2 = and i32 %conv1, %10
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %11 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv5 = zext i8 %11 to i32
  %add = add nsw i32 %conv5, 2
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %outByte, align 1, !tbaa !30
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %12 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %13 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext8 = sext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 %idx.ext8
  store i8* %add.ptr9, i8** %inPtr, align 8, !tbaa !1
  %14 = load i8, i8* %add.ptr9, align 1, !tbaa !30
  %conv10 = zext i8 %14 to i32
  %15 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and11 = and i32 %conv10, %15
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.7
  %16 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv14 = zext i8 %16 to i32
  %add15 = add nsw i32 %conv14, 4
  %conv16 = trunc i32 %add15 to i8
  store i8 %conv16, i8* %outByte, align 1, !tbaa !30
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.7
  %17 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %18 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext18 = sext i32 %17 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 %idx.ext18
  store i8* %add.ptr19, i8** %inPtr, align 8, !tbaa !1
  %19 = load i8, i8* %add.ptr19, align 1, !tbaa !30
  %conv20 = zext i8 %19 to i32
  %20 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and21 = and i32 %conv20, %20
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.17
  %21 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv24 = zext i8 %21 to i32
  %add25 = add nsw i32 %conv24, 8
  %conv26 = trunc i32 %add25 to i8
  store i8 %conv26, i8* %outByte, align 1, !tbaa !30
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.17
  %22 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %23 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext28 = sext i32 %22 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 %idx.ext28
  store i8* %add.ptr29, i8** %inPtr, align 8, !tbaa !1
  %24 = load i8, i8* %add.ptr29, align 1, !tbaa !30
  %conv30 = zext i8 %24 to i32
  %25 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and31 = and i32 %conv30, %25
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.27
  %26 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv34 = zext i8 %26 to i32
  %add35 = add nsw i32 %conv34, 16
  %conv36 = trunc i32 %add35 to i8
  store i8 %conv36, i8* %outByte, align 1, !tbaa !30
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.27
  %27 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %28 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext38 = sext i32 %27 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %28, i64 %idx.ext38
  store i8* %add.ptr39, i8** %inPtr, align 8, !tbaa !1
  %29 = load i8, i8* %add.ptr39, align 1, !tbaa !30
  %conv40 = zext i8 %29 to i32
  %30 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and41 = and i32 %conv40, %30
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.37
  %31 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv44 = zext i8 %31 to i32
  %add45 = add nsw i32 %conv44, 32
  %conv46 = trunc i32 %add45 to i8
  store i8 %conv46, i8* %outByte, align 1, !tbaa !30
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.37
  %32 = load i32, i32* %lineSize.addr, align 4, !tbaa !7
  %33 = load i8*, i8** %inPtr, align 8, !tbaa !1
  %idx.ext48 = sext i32 %32 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %33, i64 %idx.ext48
  store i8* %add.ptr49, i8** %inPtr, align 8, !tbaa !1
  %34 = load i8, i8* %add.ptr49, align 1, !tbaa !30
  %conv50 = zext i8 %34 to i32
  %35 = load i32, i32* %bitMask, align 4, !tbaa !7
  %and51 = and i32 %conv50, %35
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.47
  %36 = load i8, i8* %outByte, align 1, !tbaa !30
  %conv54 = zext i8 %36 to i32
  %add55 = add nsw i32 %conv54, 64
  %conv56 = trunc i32 %add55 to i8
  store i8 %conv56, i8* %outByte, align 1, !tbaa !30
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.47
  %37 = load i8, i8* %outByte, align 1, !tbaa !30
  %38 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !1
  store i8 %37, i8* %38, align 1, !tbaa !30
  %39 = load i32, i32* %bitMask, align 4, !tbaa !7
  %shr = ashr i32 %39, 1
  store i32 %shr, i32* %bitMask, align 4, !tbaa !7
  %cmp58 = icmp eq i32 %shr, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.57
  store i32 128, i32* %bitMask, align 4, !tbaa !7
  %40 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr61, i8** %in.addr, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.57
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %outByte) #2
  %41 = bitcast i8** %inPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %bitMask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @oki_compress(i8* %in, i32 %origWidth, i32 %highRes, i32* %numSpaces, i32* %newWidth) #1 {
entry:
  %in.addr = alloca i8*, align 8
  %origWidth.addr = alloca i32, align 4
  %highRes.addr = alloca i32, align 4
  %numSpaces.addr = alloca i32*, align 8
  %newWidth.addr = alloca i32*, align 8
  %spaces = alloca i32, align 4
  %columns_per_space = alloca i32, align 4
  %in_end = alloca i8*, align 8
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i32 %origWidth, i32* %origWidth.addr, align 4, !tbaa !7
  store i32 %highRes, i32* %highRes.addr, align 4, !tbaa !7
  store i32* %numSpaces, i32** %numSpaces.addr, align 8, !tbaa !1
  store i32* %newWidth, i32** %newWidth.addr, align 8, !tbaa !1
  %0 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %spaces, align 4, !tbaa !7
  %1 = bitcast i32* %columns_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 6, i32* %columns_per_space, align 4, !tbaa !7
  %2 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %4 = load i32, i32* %origWidth.addr, align 4, !tbaa !7
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i8*, i8** %in_end, align 8, !tbaa !1
  %6 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %cmp = icmp ugt i8* %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %in_end, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 -1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %in_end, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %in_end, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %highRes.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 12, i32* %columns_per_space, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.16, %if.end
  %12 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp4 = icmp ult i8* %12, %13
  br i1 %cmp4, label %land.lhs.true, label %land.end.15

land.lhs.true:                                    ; preds = %while.cond.3
  %14 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !30
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp eq i32 %conv7, 128
  br i1 %cmp8, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %land.lhs.true
  %16 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i32, i32* %columns_per_space, align 4, !tbaa !7
  %sub = sub nsw i32 %18, 1
  %conv12 = sext i32 %sub to i64
  %call = call i32 @memcmp(i8* %16, i8* %add.ptr11, i64 %conv12) #6
  %cmp13 = icmp eq i32 %call, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.10, %land.lhs.true, %while.cond.3
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.3 ], [ %cmp13, %land.rhs.10 ]
  br i1 %19, label %while.body.16, label %while.end.19

while.body.16:                                    ; preds = %land.end.15
  %20 = load i32, i32* %spaces, align 4, !tbaa !7
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %spaces, align 4, !tbaa !7
  %21 = load i32, i32* %columns_per_space, align 4, !tbaa !7
  %22 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %idx.ext17 = sext i32 %21 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %22, i64 %idx.ext17
  store i8* %add.ptr18, i8** %in.addr, align 8, !tbaa !1
  br label %while.cond.3

while.end.19:                                     ; preds = %land.end.15
  %23 = load i32, i32* %spaces, align 4, !tbaa !7
  %24 = load i32*, i32** %numSpaces.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !7
  %25 = load i8*, i8** %in_end, align 8, !tbaa !1
  %26 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %cmp20 = icmp ugt i8* %25, %26
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %while.end.19
  %27 = load i8*, i8** %in_end, align 8, !tbaa !1
  %28 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  %29 = load i32*, i32** %newWidth.addr, align 8, !tbaa !1
  store i32 %conv23, i32* %29, align 4, !tbaa !7
  br label %if.end.24

if.else:                                          ; preds = %while.end.19
  %30 = load i32*, i32** %newWidth.addr, align 8, !tbaa !1
  store i32 0, i32* %30, align 4, !tbaa !7
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %31 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %32 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i32* %columns_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  ret i8* %31
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !2, i64 24}
!10 = !{!"gx_device_printer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !24, i64 17256, !8, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !8, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !8, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28}
!25 = !{!26, !2, i64 200}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 88}
!29 = !{!10, !8, i64 836}
!30 = !{!3, !3, i64 0}
!31 = !{!10, !8, i64 832}
!32 = !{!26, !2, i64 24}
