; ModuleID = './gdevphex.bc'
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
%struct.CCOMP = type { i32, i32, i32, i32, i32 }
%struct.HFUNCS = type { i32 (%struct.RENDER*)*, void (%struct.RENDER*, i32)*, void (%struct.RENDER*, i32)*, void (%struct.HTONE*, i32)* }
%struct.RENDER = type { %struct.gx_photoex_device_s*, %struct._IO_FILE*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, %struct.SCHEDUL, [3 x [4 x [16500 x i16]]], [3 x [16500 x i16]*], [4 x [16500 x i8]], [2 x [6 x [256 x %struct.RAWLINE]]], [16500 x i8] }
%struct.gx_photoex_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SCHEDUL = type { i32, i32, i32, i32, [32 x i32], i32, i32, i32, [256 x i8] }
%struct.RAWLINE = type { i32, i32, [1032 x i8] }
%struct.HTONE = type { %struct.RENDER*, i8*, i32, i8*, i8*, i16**, i32, i32, i32 }

@photoex_device_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @photoex_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @photoex_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @photoex_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @photoex_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @photoex_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"photoex\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_photoex_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } { i32 18512, %struct.gx_device_procs_s* @photoex_device_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 6120, i32 7920, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 0xC0559999A0000000, float 0xC0559999A0000000], [4 x float] [float 0x402147AE20000000, float 3.600000e+01, float 0x402147AE20000000, float 0x402147AE20000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @photoex_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 127, i32 127, i32 0 }, align 8
@xtrans = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\04\04\04\04\04\04\05\05\05\05\05\06\06\06\06\06\07\07\07\07\08\08\08\08\09\09\09\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E\0E\0F\0F\10\10\11\11\11\12\12\13\13\14\14\15\15\16\16\17\17\18\18\19\1A\1A\1B\1B\1C\1D\1D\1E\1E\1F  !\22\22#$%%&'(()*+,,-./01233456789:;<=>?@ACDEFGHIJLMNOPRSTVWXY[\5C^_`bcefgijlmoprtuwxz|}\7F\81\82\84\86\88\89\8B\8D\8F\91\92\94\96\98\9A\9C\9E\A0\A2\A4\A6\A8\AA\AC\AE\B0\B2\B4", align 16
@ctable = internal global [8 x %struct.CCOMP] [%struct.CCOMP { i32 -255, i32 -255, i32 0, i32 0, i32 255 }, %struct.CCOMP { i32 102, i32 0, i32 255, i32 0, i32 0 }, %struct.CCOMP { i32 255, i32 255, i32 255, i32 255, i32 0 }, %struct.CCOMP { i32 560, i32 512, i32 0, i32 255, i32 0 }, %struct.CCOMP { i32 765, i32 765, i32 0, i32 255, i32 255 }, %struct.CCOMP { i32 1045, i32 1020, i32 0, i32 0, i32 255 }, %struct.CCOMP { i32 1275, i32 1275, i32 255, i32 0, i32 255 }, %struct.CCOMP { i32 1632, i32 1530, i32 255, i32 0, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"Depletion\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Shingling\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Splash\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Leakage\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Binhibit\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"DotSize\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PhotoEX\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\1B@\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\1B(G\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\1B(U\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\1B(C\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\1B(c\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\1B(e\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\1B(i\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\1BU\00", align 1
@htable = internal constant [3 x %struct.HFUNCS] [%struct.HFUNCS { i32 (%struct.RENDER*)* @FloydSThold, void (%struct.RENDER*, i32)* @FloydSStart, void (%struct.RENDER*, i32)* @FloydSEol, void (%struct.HTONE*, i32)* @FloydSLine }, %struct.HFUNCS { i32 (%struct.RENDER*)* @DitherThold, void (%struct.RENDER*, i32)* @DitherStart, void (%struct.RENDER*, i32)* @DitherEol, void (%struct.HTONE*, i32)* @DitherLine }, %struct.HFUNCS { i32 (%struct.RENDER*)* @BendorThold, void (%struct.RENDER*, i32)* @BendorStart, void (%struct.RENDER*, i32)* @BendorEol, void (%struct.HTONE*, i32)* @BendorLine }], align 16
@dmatrix = internal global [16 x [16 x i8]] [[16 x i8] c"\0E\8E.\AE\06\86&\A6\0C\8C,\AC\04\84$\A4", [16 x i8] c"\CEN\EEn\C6F\E6f\CCL\ECl\C4D\E4d", [16 x i8] c">\BE\1E\9E6\B6\16\96<\BC\1C\9C4\B4\14\94", [16 x i8] c"\FE~\DE^\F6v\D6V\FC|\DC\5C\F4t\D4T", [16 x i8] c"\01\81!\A1\09\89)\A9\03\83#\A3\0B\8B+\AB", [16 x i8] c"\C1A\E1a\C9I\E9i\C3C\E3c\CBK\EBk", [16 x i8] c"1\B1\11\919\B9\19\993\B3\13\93;\BB\1B\9B", [16 x i8] c"\F1q\D1Q\F9y\D9Y\F3s\D3S\FB{\DB[", [16 x i8] c"\0D\8D-\AD\05\85%\A5\0F\8F/\AF\07\87'\A7", [16 x i8] c"\CDM\EDm\C5E\E5e\CFO\EFo\C7G\E7g", [16 x i8] c"=\BD\1D\9D5\B5\15\95?\BF\1F\9F7\B7\17\97", [16 x i8] c"\FD}\DD]\F5u\D5U\FF\7F\DF_\F7w\D7W", [16 x i8] c"\02\82\22\A2\0A\8A*\AA\01\80 \A0\08\88(\A8", [16 x i8] c"\C2B\E2b\CAJ\EAj\C0@\E0`\C8H\E8h", [16 x i8] c"2\B2\12\92:\BA\1A\9A0\B0\10\908\B8\18\98", [16 x i8] c"\F2r\D2R\FAz\DAZ\F0p\D0P\F8x\D8X"], align 16
@start_720 = internal constant [8 x [32 x i32]] [[32 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248], [32 x i32] [i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121, i32 129, i32 137, i32 145, i32 153, i32 161, i32 169, i32 177, i32 185, i32 193, i32 201, i32 209, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122, i32 130, i32 138, i32 146, i32 154, i32 162, i32 170, i32 178, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123, i32 131, i32 139, i32 147, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 7, i32 15, i32 23, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@start_1440 = internal constant [2 x [8 x [32 x i32]]] [[8 x [32 x i32]] [[32 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248], [32 x i32] [i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 2, i32 10, i32 18, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 5, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 7, i32 15, i32 23, i32 31, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]], [8 x [32 x i32]] [[32 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121, i32 129, i32 137, i32 145, i32 153, i32 161, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123, i32 131, i32 139, i32 147, i32 155, i32 163, i32 171, i32 179, i32 187, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124, i32 132, i32 140, i32 148, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126, i32 134, i32 142, i32 150, i32 158, i32 166, i32 174, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i32] [i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127, i32 135, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]]], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"\1B(v\00", align 1
@SendColour.ccode = internal global [6 x i32] [i32 0, i32 512, i32 256, i32 1024, i32 513, i32 257], align 16
@.str.19 = private unnamed_addr constant [4 x i8] c"\1B(r\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\1B(\5C\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\1B.\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @photoex_print_page(%struct.gx_device_printer_s* %device, %struct._IO_FILE* %stream) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_printer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %pixels = alloca i32, align 4
  %x = alloca i32, align 4
  %dev = alloca %struct.gx_photoex_device_s*, align 8
  %render = alloca %struct.RENDER*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %start = alloca i32, align 4
  %width = alloca i32, align 4
  %unit = alloca i32, align 4
  %psize = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %device, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.RENDER** %render to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast double* %psize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_photoex_device_s*
  store %struct.gx_photoex_device_s* %11, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %12 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %12, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %13 = load float, float* %arrayidx, align 4, !tbaa !5
  %conv = fptosi float %13 to i32
  store i32 %conv, i32* %yres, align 4, !tbaa !7
  %14 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %14, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 0
  %15 = load float, float* %arrayidx2, align 4, !tbaa !5
  %conv3 = fptosi float %15 to i32
  store i32 %conv3, i32* %xres, align 4, !tbaa !7
  %16 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp = icmp eq i32 %16, 360
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %17 = load i32, i32* %yres, align 4, !tbaa !7
  %cmp5 = icmp eq i32 %17, 360
  br i1 %cmp5, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %18 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp7 = icmp eq i32 %18, 720
  br i1 %cmp7, label %land.lhs.true.9, label %lor.lhs.false.12

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %yres, align 4, !tbaa !7
  %cmp10 = icmp eq i32 %19, 720
  br i1 %cmp10, label %if.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.9, %lor.lhs.false
  %20 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp13 = icmp eq i32 %20, 1440
  br i1 %cmp13, label %land.lhs.true.15, label %if.then

land.lhs.true.15:                                 ; preds = %lor.lhs.false.12
  %21 = load i32, i32* %yres, align 4, !tbaa !7
  %cmp16 = icmp eq i32 %21, 720
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.15, %lor.lhs.false.12
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true.9, %land.lhs.true
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_printer_s* %22 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %23, i32 0) #4
  %conv18 = zext i32 %call to i64
  %div = udiv i64 %conv18, 8
  %conv19 = trunc i64 %div to i32
  store i32 %conv19, i32* %pixels, align 4, !tbaa !7
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !9
  %conv20 = sitofp i32 %25 to float
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %HWResolution21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 22
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution21, i32 0, i64 1
  %27 = load float, float* %arrayidx22, align 4, !tbaa !5
  %div23 = fdiv float %conv20, %27
  %conv24 = fpext float %div23 to double
  store double %conv24, double* %psize, align 8, !tbaa !25
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %29 = load float, float* %arrayidx25, align 4, !tbaa !5
  %conv26 = fpext float %29 to double
  %div27 = fdiv double %conv26, 7.200000e+01
  %mul = fmul double 1.440000e+03, %div27
  %conv28 = fptosi double %mul to i32
  store i32 %conv28, i32* %start, align 4, !tbaa !7
  %30 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp29 = icmp eq i32 %30, 360
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %31 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp31 = icmp eq i32 %31, 720
  %cond = select i1 %cmp31, i32 2, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond33 = phi i32 [ 4, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond33, i32* %x, align 4, !tbaa !7
  %32 = load i32, i32* %start, align 4, !tbaa !7
  %33 = load i32, i32* %x, align 4, !tbaa !7
  %34 = load i32, i32* %pixels, align 4, !tbaa !7
  %mul34 = mul nsw i32 %33, %34
  %add = add nsw i32 %32, %mul34
  %cmp35 = icmp sgt i32 %add, 16500
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %cond.end
  %35 = load i32, i32* %start, align 4, !tbaa !7
  %sub = sub nsw i32 16500, %35
  %36 = load i32, i32* %x, align 4, !tbaa !7
  %div38 = sdiv i32 %sub, %36
  store i32 %div38, i32* %width, align 4, !tbaa !7
  %37 = load i32, i32* %width, align 4, !tbaa !7
  %cmp39 = icmp sle i32 %37, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.37
  br label %if.end.43

if.else:                                          ; preds = %cond.end
  %38 = load i32, i32* %pixels, align 4, !tbaa !7
  store i32 %38, i32* %width, align 4, !tbaa !7
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end.42
  %39 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !29
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %42 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !32
  %43 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !27
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !29
  %call46 = call i8* %42(%struct.gs_memory_s* %45, i32 1, i32 3673880, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %46 = bitcast i8* %call46 to %struct.RENDER*
  store %struct.RENDER* %46, %struct.RENDER** %render, align 8, !tbaa !1
  %tobool = icmp ne %struct.RENDER* %46, null
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.43
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.43
  %47 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !27
  %non_gc_memory50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory50, align 8, !tbaa !29
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_byte_array52 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 10
  %50 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array52, align 8, !tbaa !32
  %51 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !27
  %non_gc_memory54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory54, align 8, !tbaa !29
  %54 = load i32, i32* %pixels, align 4, !tbaa !7
  %call55 = call i8* %50(%struct.gs_memory_s* %53, i32 %54, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %55 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %dbuff = getelementptr inbounds %struct.RENDER, %struct.RENDER* %55, i32 0, i32 8
  store i8* %call55, i8** %dbuff, align 8, !tbaa !33
  %tobool56 = icmp ne i8* %call55, null
  br i1 %tobool56, label %if.end.63, label %if.then.57

if.then.57:                                       ; preds = %if.end.48
  %56 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !27
  %non_gc_memory59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory59, align 8, !tbaa !29
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !36
  %60 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !27
  %non_gc_memory62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory62, align 8, !tbaa !29
  %63 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %64 = bitcast %struct.RENDER* %63 to i8*
  call void %59(%struct.gs_memory_s* %62, i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.48
  %65 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %66 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %dev64 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %66, i32 0, i32 0
  store %struct.gx_photoex_device_s* %65, %struct.gx_photoex_device_s** %dev64, align 8, !tbaa !37
  %67 = load i32, i32* %yres, align 4, !tbaa !7
  %68 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %yres65 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %68, i32 0, i32 2
  store i32 %67, i32* %yres65, align 4, !tbaa !38
  %69 = load i32, i32* %xres, align 4, !tbaa !7
  %70 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %xres66 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %70, i32 0, i32 3
  store i32 %69, i32* %xres66, align 4, !tbaa !39
  %71 = load i32, i32* %width, align 4, !tbaa !7
  %72 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %width67 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %72, i32 0, i32 5
  store i32 %71, i32* %width67, align 4, !tbaa !40
  %73 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %height68 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %73, i32 0, i32 14
  %74 = load i32, i32* %height68, align 4, !tbaa !41
  %75 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %lines = getelementptr inbounds %struct.RENDER, %struct.RENDER* %75, i32 0, i32 6
  store i32 %74, i32* %lines, align 4, !tbaa !42
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %77 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %stream69 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %77, i32 0, i32 1
  store %struct._IO_FILE* %76, %struct._IO_FILE** %stream69, align 8, !tbaa !43
  %78 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %mono = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %78, i32 0, i32 73
  %79 = load i32, i32* %mono, align 4, !tbaa !44
  %80 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %mono70 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %80, i32 0, i32 7
  store i32 %79, i32* %mono70, align 4, !tbaa !45
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendReset(%struct._IO_FILE* %81) #4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendReset(%struct._IO_FILE* %82) #4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendGmode(%struct._IO_FILE* %83, i32 1) #4
  %84 = load i32, i32* %yres, align 4, !tbaa !7
  %cmp71 = icmp eq i32 %84, 360
  %cond73 = select i1 %cmp71, i32 360, i32 720
  store i32 %cond73, i32* %unit, align 4, !tbaa !7
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %86 = load i32, i32* %unit, align 4, !tbaa !7
  %div74 = sdiv i32 3600, %86
  call void @SendUnit(%struct._IO_FILE* %85, i32 %div74) #4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %height75 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 14
  %89 = load i32, i32* %height75, align 4, !tbaa !9
  %conv76 = sitofp i32 %89 to float
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %HWResolution77 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %90, i32 0, i32 22
  %arrayidx78 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution77, i32 0, i64 1
  %91 = load float, float* %arrayidx78, align 4, !tbaa !5
  %div79 = fdiv float %conv76, %91
  %92 = load i32, i32* %unit, align 4, !tbaa !7
  %conv80 = sitofp i32 %92 to float
  %mul81 = fmul float %div79, %conv80
  %conv82 = fptosi float %mul81 to i32
  call void @SendPaper(%struct._IO_FILE* %87, i32 %conv82) #4
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %94 = load double, double* %psize, align 8, !tbaa !25
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %HWMargins83 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %95, i32 0, i32 25
  %arrayidx84 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins83, i32 0, i64 1
  %96 = load float, float* %arrayidx84, align 4, !tbaa !5
  %conv85 = fpext float %96 to double
  %div86 = fdiv double %conv85, 7.200000e+01
  %sub87 = fsub double %94, %div86
  %97 = load i32, i32* %unit, align 4, !tbaa !7
  %conv88 = sitofp i32 %97 to double
  %mul89 = fmul double %sub87, %conv88
  %conv90 = fptosi double %mul89 to i32
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %device.addr, align 8, !tbaa !1
  %HWMargins91 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %98, i32 0, i32 25
  %arrayidx92 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins91, i32 0, i64 3
  %99 = load float, float* %arrayidx92, align 4, !tbaa !5
  %conv93 = fpext float %99 to double
  %div94 = fdiv double %conv93, 7.200000e+01
  %100 = load i32, i32* %unit, align 4, !tbaa !7
  %conv95 = sitofp i32 %100 to double
  %mul96 = fmul double %div94, %conv95
  %conv97 = fptosi double %mul96 to i32
  call void @SendMargin(%struct._IO_FILE* %93, i32 %conv90, i32 %conv97) #4
  %101 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %dotsize = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %101, i32 0, i32 77
  %102 = load i32, i32* %dotsize, align 4, !tbaa !46
  %tobool98 = icmp ne i32 %102, 0
  br i1 %tobool98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.end.63
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %104 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %dotsize100 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %104, i32 0, i32 77
  %105 = load i32, i32* %dotsize100, align 4, !tbaa !46
  call void @SendInk(%struct._IO_FILE* %103, i32 %105) #4
  br label %if.end.111

if.else.101:                                      ; preds = %if.end.63
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %107 = load i32, i32* %yres, align 4, !tbaa !7
  %cmp102 = icmp eq i32 %107, 360
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %if.else.101
  br label %cond.end.109

cond.false.105:                                   ; preds = %if.else.101
  %108 = load i32, i32* %xres, align 4, !tbaa !7
  %cmp106 = icmp eq i32 %108, 720
  %cond108 = select i1 %cmp106, i32 2, i32 1
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.105, %cond.true.104
  %cond110 = phi i32 [ 3, %cond.true.104 ], [ %cond108, %cond.false.105 ]
  call void @SendInk(%struct._IO_FILE* %106, i32 %cond110) #4
  br label %if.end.111

if.end.111:                                       ; preds = %cond.end.109, %if.then.99
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendMicro(%struct._IO_FILE* %109, i32 0) #4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendUnidir(%struct._IO_FILE* %110, i32 1) #4
  %111 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  call void @RenderPage(%struct.RENDER* %111) #4
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call112 = call i32 @fputc(i32 12, %struct._IO_FILE* %112) #4
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendReset(%struct._IO_FILE* %113) #4
  %114 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %114, i32 0, i32 3
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !27
  %non_gc_memory114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory114, align 8, !tbaa !29
  %procs115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 1
  %free_object116 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs115, i32 0, i32 2
  %117 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object116, align 8, !tbaa !36
  %118 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !27
  %non_gc_memory118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory118, align 8, !tbaa !29
  %121 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %dbuff119 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %121, i32 0, i32 8
  %122 = load i8*, i8** %dbuff119, align 8, !tbaa !33
  call void %117(%struct.gs_memory_s* %120, i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %123 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %123, i32 0, i32 3
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !27
  %non_gc_memory121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory121, align 8, !tbaa !29
  %procs122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %free_object123 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs122, i32 0, i32 2
  %126 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object123, align 8, !tbaa !36
  %127 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory124, align 8, !tbaa !27
  %non_gc_memory125 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory125, align 8, !tbaa !29
  %130 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !1
  %131 = bitcast %struct.RENDER* %130 to i8*
  call void %126(%struct.gs_memory_s* %129, i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.111, %if.then.57, %if.then.47, %if.then.41, %if.then
  %132 = bitcast double* %psize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast i32* %unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast %struct.RENDER** %render to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = load i32, i32* %retval
  ret i32 %142
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
define internal i32 @photoex_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %height = alloca double, align 8
  %width = alloca double, align 8
  %margins = alloca [4 x float], align 16
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast double* %height to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 14
  %4 = load i32, i32* %height1, align 4, !tbaa !47
  %conv = sitofp i32 %4 to float
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %6 = load float, float* %arrayidx, align 4, !tbaa !5
  %div = fdiv float %conv, %6
  %conv2 = fpext float %div to double
  store double %conv2, double* %height, align 8, !tbaa !25
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width3, align 4, !tbaa !49
  %conv4 = sitofp i32 %8 to float
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution5, i32 0, i64 0
  %10 = load float, float* %arrayidx6, align 4, !tbaa !5
  %div7 = fdiv float %conv4, %10
  %conv8 = fpext float %div7 to double
  store double %conv8, double* %width, align 8, !tbaa !25
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float 0x3FBEB851E0000000, float* %arrayidx9, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float 5.000000e-01, float* %arrayidx10, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float 0x3FBEB851E0000000, float* %arrayidx11, align 4, !tbaa !5
  %11 = load double, double* %width, align 8, !tbaa !25
  %cmp = fcmp ogt double %11, 1.158000e+01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load double, double* %width, align 8, !tbaa !25
  %sub = fsub double %12, 1.158000e+01
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ 1.200000e-01, %cond.false ]
  %conv13 = fptrunc double %cond to float
  %arrayidx14 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float %conv13, float* %arrayidx14, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i32 0
  call void @gx_device_set_margins(%struct.gx_device_s* %13, float* %arraydecay, i32 1) #4
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %14) #4
  %15 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #2
  %16 = bitcast double* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast double* %height to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @photoex_map_rgb_color(%struct.gx_device_s* %dev, i16* %prgb) #1 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prgb.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %c = alloca i32, align 4
  %y = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  %f = alloca i32, align 4
  %edev = alloca %struct.gx_photoex_device_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !50
  store i16 %2, i16* %r, align 2, !tbaa !50
  %3 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !50
  store i16 %5, i16* %g, align 2, !tbaa !50
  %6 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !50
  store i16 %8, i16* %b, align 2, !tbaa !50
  %9 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast %struct.gx_photoex_device_s** %edev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_photoex_device_s*
  store %struct.gx_photoex_device_s* %19, %struct.gx_photoex_device_s** %edev, align 8, !tbaa !1
  %20 = load i16, i16* %r, align 2, !tbaa !50
  %conv = zext i16 %20 to i32
  %21 = load i16, i16* %g, align 2, !tbaa !50
  %conv3 = zext i16 %21 to i32
  %and = and i32 %conv, %conv3
  %22 = load i16, i16* %b, align 2, !tbaa !50
  %conv4 = zext i16 %22 to i32
  %and5 = and i32 %and, %conv4
  %cmp = icmp eq i32 %and5, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load i16, i16* %r, align 2, !tbaa !50
  %conv7 = zext i16 %23 to i32
  %24 = load i16, i16* %g, align 2, !tbaa !50
  %conv8 = zext i16 %24 to i32
  %or = or i32 %conv7, %conv8
  %25 = load i16, i16* %b, align 2, !tbaa !50
  %conv9 = zext i16 %25 to i32
  %or10 = or i32 %or, %conv9
  %cmp11 = icmp eq i32 %or10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %26 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xtrans, i32 0, i64 255), align 1, !tbaa !51
  %conv14 = zext i8 %26 to i64
  %and15 = and i64 %conv14, 255
  %or16 = or i64 0, %and15
  store i64 %or16, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %27 = load i16, i16* %r, align 2, !tbaa !50
  %conv18 = zext i16 %27 to i32
  %shr = ashr i32 %conv18, 8
  %sub = sub nsw i32 255, %shr
  store i32 %sub, i32* %c, align 4, !tbaa !7
  %28 = load i16, i16* %g, align 2, !tbaa !50
  %conv19 = zext i16 %28 to i32
  %shr20 = ashr i32 %conv19, 8
  %sub21 = sub nsw i32 255, %shr20
  store i32 %sub21, i32* %m, align 4, !tbaa !7
  %29 = load i16, i16* %b, align 2, !tbaa !50
  %conv22 = zext i16 %29 to i32
  %shr23 = ashr i32 %conv22, 8
  %sub24 = sub nsw i32 255, %shr23
  store i32 %sub24, i32* %y, align 4, !tbaa !7
  %30 = load i32, i32* %c, align 4, !tbaa !7
  %31 = load i32, i32* %m, align 4, !tbaa !7
  %32 = load i32, i32* %y, align 4, !tbaa !7
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %33 = load i32, i32* %m, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %34 = load i32, i32* %y, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  %cmp27 = icmp slt i32 %30, %cond
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  %35 = load i32, i32* %c, align 4, !tbaa !7
  br label %cond.end.37

cond.false.30:                                    ; preds = %cond.end
  %36 = load i32, i32* %m, align 4, !tbaa !7
  %37 = load i32, i32* %y, align 4, !tbaa !7
  %cmp31 = icmp slt i32 %36, %37
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.30
  %38 = load i32, i32* %m, align 4, !tbaa !7
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.false.30
  %39 = load i32, i32* %y, align 4, !tbaa !7
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %38, %cond.true.33 ], [ %39, %cond.false.34 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true.29
  %cond38 = phi i32 [ %35, %cond.true.29 ], [ %cond36, %cond.end.35 ]
  %idxprom = sext i32 %cond38 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @xtrans, i32 0, i64 %idxprom
  %40 = load i8, i8* %arrayidx39, align 1, !tbaa !51
  %conv40 = zext i8 %40 to i32
  %conv41 = sitofp i32 %conv40 to double
  %mul = fmul double %conv41, 8.000000e-01
  %conv42 = fptosi double %mul to i32
  store i32 %conv42, i32* %k, align 4, !tbaa !7
  %41 = load i32, i32* %k, align 4, !tbaa !7
  %42 = load i32, i32* %c, align 4, !tbaa !7
  %sub43 = sub nsw i32 %42, %41
  store i32 %sub43, i32* %c, align 4, !tbaa !7
  %43 = load i32, i32* %k, align 4, !tbaa !7
  %44 = load i32, i32* %m, align 4, !tbaa !7
  %sub44 = sub nsw i32 %44, %43
  store i32 %sub44, i32* %m, align 4, !tbaa !7
  %45 = load i32, i32* %k, align 4, !tbaa !7
  %46 = load i32, i32* %y, align 4, !tbaa !7
  %sub45 = sub nsw i32 %46, %45
  store i32 %sub45, i32* %y, align 4, !tbaa !7
  %47 = load i32, i32* %c, align 4, !tbaa !7
  %48 = load i32, i32* %y, align 4, !tbaa !7
  %49 = load i32, i32* %m, align 4, !tbaa !7
  %cmp46 = icmp sgt i32 %48, %49
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end.37
  %50 = load i32, i32* %y, align 4, !tbaa !7
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end.37
  %51 = load i32, i32* %m, align 4, !tbaa !7
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i32 [ %50, %cond.true.48 ], [ %51, %cond.false.49 ]
  %cmp52 = icmp sgt i32 %47, %cond51
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.50
  %52 = load i32, i32* %c, align 4, !tbaa !7
  br label %cond.end.62

cond.false.55:                                    ; preds = %cond.end.50
  %53 = load i32, i32* %y, align 4, !tbaa !7
  %54 = load i32, i32* %m, align 4, !tbaa !7
  %cmp56 = icmp sgt i32 %53, %54
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false.55
  %55 = load i32, i32* %y, align 4, !tbaa !7
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.false.55
  %56 = load i32, i32* %m, align 4, !tbaa !7
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i32 [ %55, %cond.true.58 ], [ %56, %cond.false.59 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true.54
  %cond63 = phi i32 [ %52, %cond.true.54 ], [ %cond61, %cond.end.60 ]
  store i32 %cond63, i32* %s, align 4, !tbaa !7
  %57 = load i32, i32* %c, align 4, !tbaa !7
  %58 = load i32, i32* %m, align 4, !tbaa !7
  %59 = load i32, i32* %y, align 4, !tbaa !7
  %call = call i32 @Cmy2A(i32 %57, i32 %58, i32 %59) #4
  store i32 %call, i32* %a, align 4, !tbaa !7
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.62
  %60 = load i32, i32* %a, align 4, !tbaa !7
  %61 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom64 = sext i32 %61 to i64
  %arrayidx65 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom64
  %ra = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx65, i32 0, i32 0
  %62 = load i32, i32* %ra, align 4, !tbaa !52
  %cmp66 = icmp sgt i32 %60, %62
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i32, i32* %a, align 4, !tbaa !7
  %65 = load i32, i32* %i, align 4, !tbaa !7
  %sub68 = sub nsw i32 %65, 1
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom69
  %ra71 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx70, i32 0, i32 0
  %66 = load i32, i32* %ra71, align 4, !tbaa !52
  %sub72 = sub nsw i32 %64, %66
  %shl = shl i32 %sub72, 16
  %67 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom73 = sext i32 %67 to i64
  %arrayidx74 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom73
  %ra75 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx74, i32 0, i32 0
  %68 = load i32, i32* %ra75, align 4, !tbaa !52
  %69 = load i32, i32* %i, align 4, !tbaa !7
  %sub76 = sub nsw i32 %69, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom77
  %ra79 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx78, i32 0, i32 0
  %70 = load i32, i32* %ra79, align 4, !tbaa !52
  %sub80 = sub nsw i32 %68, %70
  %div = sdiv i32 %shl, %sub80
  store i32 %div, i32* %f, align 4, !tbaa !7
  %71 = load i32, i32* %i, align 4, !tbaa !7
  %sub81 = sub nsw i32 %71, 1
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom82
  %c84 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx83, i32 0, i32 2
  %72 = load i32, i32* %c84, align 4, !tbaa !54
  %shl85 = shl i32 %72, 16
  %73 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom86 = sext i32 %73 to i64
  %arrayidx87 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom86
  %c88 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx87, i32 0, i32 2
  %74 = load i32, i32* %c88, align 4, !tbaa !54
  %75 = load i32, i32* %i, align 4, !tbaa !7
  %sub89 = sub nsw i32 %75, 1
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom90
  %c92 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx91, i32 0, i32 2
  %76 = load i32, i32* %c92, align 4, !tbaa !54
  %sub93 = sub nsw i32 %74, %76
  %77 = load i32, i32* %f, align 4, !tbaa !7
  %mul94 = mul nsw i32 %sub93, %77
  %add = add nsw i32 %shl85, %mul94
  %shr95 = ashr i32 %add, 16
  store i32 %shr95, i32* %c, align 4, !tbaa !7
  %78 = load i32, i32* %i, align 4, !tbaa !7
  %sub96 = sub nsw i32 %78, 1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom97
  %m99 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx98, i32 0, i32 3
  %79 = load i32, i32* %m99, align 4, !tbaa !55
  %shl100 = shl i32 %79, 16
  %80 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom101 = sext i32 %80 to i64
  %arrayidx102 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom101
  %m103 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx102, i32 0, i32 3
  %81 = load i32, i32* %m103, align 4, !tbaa !55
  %82 = load i32, i32* %i, align 4, !tbaa !7
  %sub104 = sub nsw i32 %82, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom105
  %m107 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx106, i32 0, i32 3
  %83 = load i32, i32* %m107, align 4, !tbaa !55
  %sub108 = sub nsw i32 %81, %83
  %84 = load i32, i32* %f, align 4, !tbaa !7
  %mul109 = mul nsw i32 %sub108, %84
  %add110 = add nsw i32 %shl100, %mul109
  %shr111 = ashr i32 %add110, 16
  store i32 %shr111, i32* %m, align 4, !tbaa !7
  %85 = load i32, i32* %i, align 4, !tbaa !7
  %sub112 = sub nsw i32 %85, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom113
  %y115 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx114, i32 0, i32 4
  %86 = load i32, i32* %y115, align 4, !tbaa !56
  %shl116 = shl i32 %86, 16
  %87 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom117 = sext i32 %87 to i64
  %arrayidx118 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom117
  %y119 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx118, i32 0, i32 4
  %88 = load i32, i32* %y119, align 4, !tbaa !56
  %89 = load i32, i32* %i, align 4, !tbaa !7
  %sub120 = sub nsw i32 %89, 1
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds [8 x %struct.CCOMP], [8 x %struct.CCOMP]* @ctable, i32 0, i64 %idxprom121
  %y123 = getelementptr inbounds %struct.CCOMP, %struct.CCOMP* %arrayidx122, i32 0, i32 4
  %90 = load i32, i32* %y123, align 4, !tbaa !56
  %sub124 = sub nsw i32 %88, %90
  %91 = load i32, i32* %f, align 4, !tbaa !7
  %mul125 = mul nsw i32 %sub124, %91
  %add126 = add nsw i32 %shl116, %mul125
  %shr127 = ashr i32 %add126, 16
  store i32 %shr127, i32* %y, align 4, !tbaa !7
  %92 = load i32, i32* %s, align 4, !tbaa !7
  %idxprom128 = sext i32 %92 to i64
  %arrayidx129 = getelementptr inbounds [256 x i8], [256 x i8]* @xtrans, i32 0, i64 %idxprom128
  %93 = load i8, i8* %arrayidx129, align 1, !tbaa !51
  %conv130 = zext i8 %93 to i32
  store i32 %conv130, i32* %s, align 4, !tbaa !7
  %94 = load i32, i32* %c, align 4, !tbaa !7
  %95 = load i32, i32* %s, align 4, !tbaa !7
  %mul131 = mul nsw i32 %94, %95
  %shr132 = ashr i32 %mul131, 8
  store i32 %shr132, i32* %c, align 4, !tbaa !7
  %96 = load i32, i32* %m, align 4, !tbaa !7
  %97 = load i32, i32* %s, align 4, !tbaa !7
  %mul133 = mul nsw i32 %96, %97
  %shr134 = ashr i32 %mul133, 8
  store i32 %shr134, i32* %m, align 4, !tbaa !7
  %98 = load i32, i32* %y, align 4, !tbaa !7
  %99 = load i32, i32* %s, align 4, !tbaa !7
  %mul135 = mul nsw i32 %98, %99
  %shr136 = ashr i32 %mul135, 8
  store i32 %shr136, i32* %y, align 4, !tbaa !7
  %100 = load i32, i32* %c, align 4, !tbaa !7
  %conv137 = sext i32 %100 to i64
  %and138 = and i64 %conv137, 255
  %shl139 = shl i64 %and138, 24
  %101 = load i32, i32* %m, align 4, !tbaa !7
  %conv140 = sext i32 %101 to i64
  %and141 = and i64 %conv140, 255
  %shl142 = shl i64 %and141, 16
  %or143 = or i64 %shl139, %shl142
  %102 = load i32, i32* %y, align 4, !tbaa !7
  %conv144 = sext i32 %102 to i64
  %and145 = and i64 %conv144, 255
  %shl146 = shl i64 %and145, 8
  %or147 = or i64 %or143, %shl146
  %103 = load i32, i32* %k, align 4, !tbaa !7
  %conv148 = sext i32 %103 to i64
  %and149 = and i64 %conv148, 255
  %or150 = or i64 %or147, %and149
  store i64 %or150, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.13, %if.then
  %104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast %struct.gx_photoex_device_s** %edev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %113) #2
  %114 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %114) #2
  %115 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %115) #2
  %116 = load i64, i64* %retval
  ret i64 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @photoex_map_color_rgb(%struct.gx_device_s* %dev, i64 %index, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %index, i64* %index.addr, align 8, !tbaa !57
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i64, i64* %index.addr, align 8, !tbaa !57
  %and = and i64 %7, 255
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %k, align 4, !tbaa !7
  %8 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr = lshr i64 %8, 8
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i32
  store i32 %conv2, i32* %y, align 4, !tbaa !7
  %9 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr3 = lshr i64 %9, 16
  %and4 = and i64 %shr3, 255
  %conv5 = trunc i64 %and4 to i32
  store i32 %conv5, i32* %m, align 4, !tbaa !7
  %10 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr6 = lshr i64 %10, 24
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i32
  store i32 %conv8, i32* %c, align 4, !tbaa !7
  %11 = load i64, i64* %index.addr, align 8, !tbaa !57
  %and9 = and i64 %11, 255
  %conv10 = trunc i64 %and9 to i32
  store i32 %conv10, i32* %k, align 4, !tbaa !7
  %12 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr11 = lshr i64 %12, 8
  %and12 = and i64 %shr11, 255
  %conv13 = trunc i64 %and12 to i32
  store i32 %conv13, i32* %y, align 4, !tbaa !7
  %13 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr14 = lshr i64 %13, 16
  %and15 = and i64 %shr14, 255
  %conv16 = trunc i64 %and15 to i32
  store i32 %conv16, i32* %m, align 4, !tbaa !7
  %14 = load i64, i64* %index.addr, align 8, !tbaa !57
  %shr17 = lshr i64 %14, 24
  %and18 = and i64 %shr17, 255
  %conv19 = trunc i64 %and18 to i32
  store i32 %conv19, i32* %c, align 4, !tbaa !7
  %15 = load i32, i32* %c, align 4, !tbaa !7
  %conv20 = uitofp i32 %15 to double
  %div = fdiv double %conv20, 2.550000e+02
  %sub = fsub double 1.000000e+00, %div
  %mul = fmul double 6.553500e+04, %sub
  %16 = load i32, i32* %k, align 4, !tbaa !7
  %conv21 = uitofp i32 %16 to double
  %div22 = fdiv double %conv21, 2.550000e+02
  %sub23 = fsub double 1.000000e+00, %div22
  %mul24 = fmul double %mul, %sub23
  %conv25 = fptoui double %mul24 to i16
  store i16 %conv25, i16* %r, align 2, !tbaa !50
  %17 = load i32, i32* %m, align 4, !tbaa !7
  %conv26 = uitofp i32 %17 to double
  %div27 = fdiv double %conv26, 2.550000e+02
  %sub28 = fsub double 1.000000e+00, %div27
  %mul29 = fmul double 6.553500e+04, %sub28
  %18 = load i32, i32* %k, align 4, !tbaa !7
  %conv30 = uitofp i32 %18 to double
  %div31 = fdiv double %conv30, 2.550000e+02
  %sub32 = fsub double 1.000000e+00, %div31
  %mul33 = fmul double %mul29, %sub32
  %conv34 = fptoui double %mul33 to i16
  store i16 %conv34, i16* %g, align 2, !tbaa !50
  %19 = load i32, i32* %y, align 4, !tbaa !7
  %conv35 = uitofp i32 %19 to double
  %div36 = fdiv double %conv35, 2.550000e+02
  %sub37 = fsub double 1.000000e+00, %div36
  %mul38 = fmul double 6.553500e+04, %sub37
  %20 = load i32, i32* %k, align 4, !tbaa !7
  %conv39 = uitofp i32 %20 to double
  %div40 = fdiv double %conv39, 2.550000e+02
  %sub41 = fsub double 1.000000e+00, %div40
  %mul42 = fmul double %mul38, %sub41
  %conv43 = fptoui double %mul42 to i16
  store i16 %conv43, i16* %b, align 2, !tbaa !50
  %21 = load i16, i16* %r, align 2, !tbaa !50
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %21, i16* %arrayidx, align 2, !tbaa !50
  %23 = load i16, i16* %g, align 2, !tbaa !50
  %24 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %24, i64 1
  store i16 %23, i16* %arrayidx44, align 2, !tbaa !50
  %25 = load i16, i16* %b, align 2, !tbaa !50
  %26 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %26, i64 2
  store i16 %25, i16* %arrayidx45, align 2, !tbaa !50
  %27 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #2
  %28 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #2
  %29 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #2
  %30 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @photoex_get_params(%struct.gx_device_s* %device, %struct.gs_param_list_s* %plist) #1 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %dev = alloca %struct.gx_photoex_device_s*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_photoex_device_s*
  store %struct.gx_photoex_device_s* %3, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !7
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %depletion = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %7, i32 0, i32 69
  %8 = load i32, i32* %code, align 4, !tbaa !7
  %call1 = call i32 @GetInt(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32* %depletion, i32 %8) #4
  store i32 %call1, i32* %code, align 4, !tbaa !7
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %shingling = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %10, i32 0, i32 68
  %11 = load i32, i32* %code, align 4, !tbaa !7
  %call2 = call i32 @GetInt(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32* %shingling, i32 %11) #4
  store i32 %call2, i32* %code, align 4, !tbaa !7
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %halftoner = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %13, i32 0, i32 70
  %14 = load i32, i32* %code, align 4, !tbaa !7
  %call3 = call i32 @GetInt(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32* %halftoner, i32 %14) #4
  store i32 %call3, i32* %code, align 4, !tbaa !7
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %splash = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %16, i32 0, i32 71
  %17 = load i32, i32* %code, align 4, !tbaa !7
  %call4 = call i32 @GetInt(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32* %splash, i32 %17) #4
  store i32 %call4, i32* %code, align 4, !tbaa !7
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %19 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %leakage = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %19, i32 0, i32 72
  %20 = load i32, i32* %code, align 4, !tbaa !7
  %call5 = call i32 @GetInt(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32* %leakage, i32 %20) #4
  store i32 %call5, i32* %code, align 4, !tbaa !7
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %pureblack = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %22, i32 0, i32 74
  %23 = load i32, i32* %code, align 4, !tbaa !7
  %call6 = call i32 @GetInt(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32* %pureblack, i32 %23) #4
  store i32 %call6, i32* %code, align 4, !tbaa !7
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %dotsize = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %25, i32 0, i32 77
  %26 = load i32, i32* %code, align 4, !tbaa !7
  %call7 = call i32 @GetInt(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32* %dotsize, i32 %26) #4
  store i32 %call7, i32* %code, align 4, !tbaa !7
  %27 = load i32, i32* %code, align 4, !tbaa !7
  %28 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @photoex_put_params(%struct.gx_device_s* %device, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %dev = alloca %struct.gx_photoex_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_photoex_device_s*
  store %struct.gx_photoex_device_s* %3, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  store i32 0, i32* %code, align 4, !tbaa !7
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %depletion = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %5, i32 0, i32 69
  %6 = load i32, i32* %code, align 4, !tbaa !7
  %call = call i32 @PutInt(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32* %depletion, i32 0, i32 2, i32 %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !7
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %shingling = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %8, i32 0, i32 68
  %9 = load i32, i32* %code, align 4, !tbaa !7
  %call1 = call i32 @PutInt(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32* %shingling, i32 0, i32 2, i32 %9) #4
  store i32 %call1, i32* %code, align 4, !tbaa !7
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %halftoner = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %11, i32 0, i32 70
  %12 = load i32, i32* %code, align 4, !tbaa !7
  %call2 = call i32 @PutInt(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32* %halftoner, i32 0, i32 2, i32 %12) #4
  store i32 %call2, i32* %code, align 4, !tbaa !7
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %splash = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %14, i32 0, i32 71
  %15 = load i32, i32* %code, align 4, !tbaa !7
  %call3 = call i32 @PutInt(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32* %splash, i32 0, i32 50, i32 %15) #4
  store i32 %call3, i32* %code, align 4, !tbaa !7
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %leakage = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %17, i32 0, i32 72
  %18 = load i32, i32* %code, align 4, !tbaa !7
  %call4 = call i32 @PutInt(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32* %leakage, i32 0, i32 25, i32 %18) #4
  store i32 %call4, i32* %code, align 4, !tbaa !7
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %pureblack = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %20, i32 0, i32 74
  %21 = load i32, i32* %code, align 4, !tbaa !7
  %call5 = call i32 @PutInt(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32* %pureblack, i32 0, i32 1, i32 %21) #4
  store i32 %call5, i32* %code, align 4, !tbaa !7
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %23 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %dotsize = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %23, i32 0, i32 77
  %24 = load i32, i32* %code, align 4, !tbaa !7
  %call6 = call i32 @PutInt(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32* %dotsize, i32 0, i32 4, i32 %24) #4
  store i32 %call6, i32* %code, align 4, !tbaa !7
  %25 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %25, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %27, %struct.gs_param_list_s* %28) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @Cmy2A(i32 %c, i32 %m, i32 %y) #1 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %black = alloca i32, align 4
  %maxim = alloca i32, align 4
  %a = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %c, i32* %c.addr, align 4, !tbaa !7
  store i32 %m, i32* %m.addr, align 4, !tbaa !7
  store i32 %y, i32* %y.addr, align 4, !tbaa !7
  %0 = bitcast i32* %black to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %maxim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %c.addr, align 4, !tbaa !7
  %4 = load i32, i32* %m.addr, align 4, !tbaa !7
  %5 = load i32, i32* %y.addr, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %m.addr, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %y.addr, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  %cmp1 = icmp slt i32 %3, %cond
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %8 = load i32, i32* %c.addr, align 4, !tbaa !7
  br label %cond.end.9

cond.false.3:                                     ; preds = %cond.end
  %9 = load i32, i32* %m.addr, align 4, !tbaa !7
  %10 = load i32, i32* %y.addr, align 4, !tbaa !7
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false.3
  %11 = load i32, i32* %m.addr, align 4, !tbaa !7
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.false.3
  %12 = load i32, i32* %y.addr, align 4, !tbaa !7
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %11, %cond.true.5 ], [ %12, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end.7, %cond.true.2
  %cond10 = phi i32 [ %8, %cond.true.2 ], [ %cond8, %cond.end.7 ]
  store i32 %cond10, i32* %black, align 4, !tbaa !7
  %13 = load i32, i32* %black, align 4, !tbaa !7
  %14 = load i32, i32* %c.addr, align 4, !tbaa !7
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %c.addr, align 4, !tbaa !7
  %15 = load i32, i32* %black, align 4, !tbaa !7
  %16 = load i32, i32* %m.addr, align 4, !tbaa !7
  %sub11 = sub nsw i32 %16, %15
  store i32 %sub11, i32* %m.addr, align 4, !tbaa !7
  %17 = load i32, i32* %black, align 4, !tbaa !7
  %18 = load i32, i32* %y.addr, align 4, !tbaa !7
  %sub12 = sub nsw i32 %18, %17
  store i32 %sub12, i32* %y.addr, align 4, !tbaa !7
  %19 = load i32, i32* %c.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end.9
  %20 = load i32, i32* %m.addr, align 4, !tbaa !7
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.end, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %y.addr, align 4, !tbaa !7
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.14, %land.lhs.true, %cond.end.9
  %22 = load i32, i32* %c.addr, align 4, !tbaa !7
  %23 = load i32, i32* %m.addr, align 4, !tbaa !7
  %24 = load i32, i32* %y.addr, align 4, !tbaa !7
  %cmp16 = icmp sgt i32 %23, %24
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.end
  %25 = load i32, i32* %m.addr, align 4, !tbaa !7
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.end
  %26 = load i32, i32* %y.addr, align 4, !tbaa !7
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ %25, %cond.true.17 ], [ %26, %cond.false.18 ]
  %cmp21 = icmp sgt i32 %22, %cond20
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.19
  %27 = load i32, i32* %c.addr, align 4, !tbaa !7
  br label %cond.end.29

cond.false.23:                                    ; preds = %cond.end.19
  %28 = load i32, i32* %m.addr, align 4, !tbaa !7
  %29 = load i32, i32* %y.addr, align 4, !tbaa !7
  %cmp24 = icmp sgt i32 %28, %29
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.23
  %30 = load i32, i32* %m.addr, align 4, !tbaa !7
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.23
  %31 = load i32, i32* %y.addr, align 4, !tbaa !7
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %30, %cond.true.25 ], [ %31, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.22
  %cond30 = phi i32 [ %27, %cond.true.22 ], [ %cond28, %cond.end.27 ]
  store i32 %cond30, i32* %maxim, align 4, !tbaa !7
  %32 = load i32, i32* %c.addr, align 4, !tbaa !7
  %mul = mul nsw i32 255, %32
  %33 = load i32, i32* %maxim, align 4, !tbaa !7
  %div = sdiv i32 %mul, %33
  store i32 %div, i32* %c.addr, align 4, !tbaa !7
  %34 = load i32, i32* %m.addr, align 4, !tbaa !7
  %mul31 = mul nsw i32 255, %34
  %35 = load i32, i32* %maxim, align 4, !tbaa !7
  %div32 = sdiv i32 %mul31, %35
  store i32 %div32, i32* %m.addr, align 4, !tbaa !7
  %36 = load i32, i32* %y.addr, align 4, !tbaa !7
  %mul33 = mul nsw i32 255, %36
  %37 = load i32, i32* %maxim, align 4, !tbaa !7
  %div34 = sdiv i32 %mul33, %37
  store i32 %div34, i32* %y.addr, align 4, !tbaa !7
  %38 = load i32, i32* %c.addr, align 4, !tbaa !7
  %cmp35 = icmp eq i32 %38, 255
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %cond.end.29
  %39 = load i32, i32* %y.addr, align 4, !tbaa !7
  %tobool37 = icmp ne i32 %39, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %if.then.36
  %40 = load i32, i32* %m.addr, align 4, !tbaa !7
  store i32 %40, i32* %a, align 4, !tbaa !7
  br label %if.end.40

if.else:                                          ; preds = %if.then.36
  %41 = load i32, i32* %y.addr, align 4, !tbaa !7
  %sub39 = sub nsw i32 1530, %41
  store i32 %sub39, i32* %a, align 4, !tbaa !7
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.38
  br label %if.end.57

if.else.41:                                       ; preds = %cond.end.29
  %42 = load i32, i32* %m.addr, align 4, !tbaa !7
  %cmp42 = icmp eq i32 %42, 255
  br i1 %cmp42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.else.41
  %43 = load i32, i32* %c.addr, align 4, !tbaa !7
  %tobool44 = icmp ne i32 %43, 0
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %if.then.43
  %44 = load i32, i32* %y.addr, align 4, !tbaa !7
  %add = add nsw i32 510, %44
  store i32 %add, i32* %a, align 4, !tbaa !7
  br label %if.end.48

if.else.46:                                       ; preds = %if.then.43
  %45 = load i32, i32* %c.addr, align 4, !tbaa !7
  %sub47 = sub nsw i32 510, %45
  store i32 %sub47, i32* %a, align 4, !tbaa !7
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.56

if.else.49:                                       ; preds = %if.else.41
  %46 = load i32, i32* %m.addr, align 4, !tbaa !7
  %tobool50 = icmp ne i32 %46, 0
  br i1 %tobool50, label %if.else.53, label %if.then.51

if.then.51:                                       ; preds = %if.else.49
  %47 = load i32, i32* %c.addr, align 4, !tbaa !7
  %add52 = add nsw i32 1020, %47
  store i32 %add52, i32* %a, align 4, !tbaa !7
  br label %if.end.55

if.else.53:                                       ; preds = %if.else.49
  %48 = load i32, i32* %m.addr, align 4, !tbaa !7
  %sub54 = sub nsw i32 1020, %48
  store i32 %sub54, i32* %a, align 4, !tbaa !7
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.48
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.40
  %49 = load i32, i32* %a, align 4, !tbaa !7
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then
  %50 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %maxim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %black to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @GetInt(%struct.gs_param_list_s* %list, i8* %name, i32* %value, i32 %code) #1 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.gs_param_list_s*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i32*, align 8
  %code.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %list, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32* %value, i32** %value.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !7
  %0 = load i32, i32* %code.addr, align 4, !tbaa !7
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code.addr, align 4, !tbaa !7
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %value.addr, align 8, !tbaa !1
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %2, i8* %3, i32* %4) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @PutInt(%struct.gs_param_list_s* %plist, i8* %name, i32* %val, i32 %minval, i32 %maxval, i32 %code) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %name.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  %minval.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %new = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32* %val, i32** %val.addr, align 8, !tbaa !1
  store i32 %minval, i32* %minval.addr, align 4, !tbaa !7
  store i32 %maxval, i32* %maxval.addr, align 4, !tbaa !7
  store i32 %code, i32* %code.addr, align 4, !tbaa !7
  %0 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %code.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code.addr, align 4, !tbaa !7
  store i32 %2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %val.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !7
  store i32 %4, i32* %new, align 4, !tbaa !7
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %5, i8* %6, i32* %new) #4
  store i32 %call, i32* %code.addr, align 4, !tbaa !7
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %code.addr, align 4, !tbaa !7
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %7 = load i32, i32* %minval.addr, align 4, !tbaa !7
  %8 = load i32, i32* %new, align 4, !tbaa !7
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %9 = load i32, i32* %new, align 4, !tbaa !7
  %10 = load i32, i32* %maxval.addr, align 4, !tbaa !7
  %cmp2 = icmp sgt i32 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %sw.bb.1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %11, i32 0, i32 0
  %12 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !58
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %12, i32 0, i32 7
  %13 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !60
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call4 = call i32 %13(%struct.gs_param_list_s* %14, i8* %15, i32 -15) #4
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %new, align 4, !tbaa !7
  %17 = load i32*, i32** %val.addr, align 8, !tbaa !1
  store i32 %16, i32* %17, align 4, !tbaa !7
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.5, %sw.bb
  %18 = load i32, i32* %code.addr, align 4, !tbaa !7
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %19 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @SendReset(%struct._IO_FILE* %stream) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendGmode(%struct._IO_FILE* %stream, i32 %on) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %on.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %on, i32* %on.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 1, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %on.addr, align 4, !tbaa !7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %3, %struct._IO_FILE* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendUnit(%struct._IO_FILE* %stream, i32 %res) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %res.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %res, i32* %res.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 1, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %res.addr, align 4, !tbaa !7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %3, %struct._IO_FILE* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendPaper(%struct._IO_FILE* %stream, i32 %length) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %length.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 2, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %length.addr, align 4, !tbaa !7
  %and = and i32 %3, 255
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and, %struct._IO_FILE* %4) #4
  %5 = load i32, i32* %length.addr, align 4, !tbaa !7
  %shr = ashr i32 %5, 8
  %and3 = and i32 %shr, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %and3, %struct._IO_FILE* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendMargin(%struct._IO_FILE* %stream, i32 %top, i32 %bot) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %top.addr = alloca i32, align 4
  %bot.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %top, i32* %top.addr, align 4, !tbaa !7
  store i32 %bot, i32* %bot.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 4, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %bot.addr, align 4, !tbaa !7
  %and = and i32 %3, 255
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and, %struct._IO_FILE* %4) #4
  %5 = load i32, i32* %bot.addr, align 4, !tbaa !7
  %shr = ashr i32 %5, 8
  %and3 = and i32 %shr, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %and3, %struct._IO_FILE* %6) #4
  %7 = load i32, i32* %top.addr, align 4, !tbaa !7
  %and5 = and i32 %7, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 %and5, %struct._IO_FILE* %8) #4
  %9 = load i32, i32* %top.addr, align 4, !tbaa !7
  %shr7 = ashr i32 %9, 8
  %and8 = and i32 %shr7, 255
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %and8, %struct._IO_FILE* %10) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendInk(%struct._IO_FILE* %stream, i32 %x) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 2, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 0, %struct._IO_FILE* %3) #4
  %4 = load i32, i32* %x.addr, align 4, !tbaa !7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %4, %struct._IO_FILE* %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendMicro(%struct._IO_FILE* %stream, i32 %on) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %on.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %on, i32* %on.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 1, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %on.addr, align 4, !tbaa !7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %3, %struct._IO_FILE* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendUnidir(%struct._IO_FILE* %stream, i32 %on) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %on.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %on, i32* %on.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #4
  %1 = load i32, i32* %on.addr, align 4, !tbaa !7
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %1, %struct._IO_FILE* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RenderPage(%struct.RENDER* %p) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %last_done = alloca i32, align 4
  %last_need = alloca i32, align 4
  %move_down = alloca i32, align 4
  %last_band = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %phase = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %last_done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %last_need to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %move_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %call = call i32 @HalftoneThold(%struct.RENDER* %11) #4
  %12 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_thold = getelementptr inbounds %struct.RENDER, %struct.RENDER* %12, i32 0, i32 9
  store i32 %call, i32* %htone_thold, align 4, !tbaa !62
  %13 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_thold1 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %13, i32 0, i32 9
  %14 = load i32, i32* %htone_thold1, align 4, !tbaa !62
  %sub = sub nsw i32 -1, %14
  %15 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_last = getelementptr inbounds %struct.RENDER, %struct.RENDER* %15, i32 0, i32 10
  store i32 %sub, i32* %htone_last, align 4, !tbaa !63
  %16 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule = getelementptr inbounds %struct.RENDER, %struct.RENDER* %16, i32 0, i32 11
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule, i32 0, i32 6
  store i32 -1, i32* %top, align 4, !tbaa !64
  %17 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct.RENDER, %struct.RENDER* %17, i32 0, i32 3
  %18 = load i32, i32* %xres, align 4, !tbaa !39
  %19 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule2 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %19, i32 0, i32 11
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule2, i32 0, i32 1
  store i32 %18, i32* %resol, align 4, !tbaa !65
  %20 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %lines = getelementptr inbounds %struct.RENDER, %struct.RENDER* %20, i32 0, i32 6
  %21 = load i32, i32* %lines, align 4, !tbaa !42
  %22 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule3 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %22, i32 0, i32 11
  %last = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule3, i32 0, i32 0
  store i32 %21, i32* %last, align 4, !tbaa !66
  store i32 -1, i32* %last_done, align 4, !tbaa !7
  store i32 0, i32* %move_down, align 4, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %23 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule4 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %23, i32 0, i32 11
  %call5 = call i32 @ScheduleLines(%struct.SCHEDUL* %schedule4) #4
  store i32 %call5, i32* %last_band, align 4, !tbaa !7
  %24 = load i32, i32* %last_done, align 4, !tbaa !7
  store i32 %24, i32* %last_need, align 4, !tbaa !7
  store i32 31, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp sge i32 %25, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule6 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %27, i32 0, i32 11
  %head = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %head, i32 0, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp7 = icmp eq i32 %28, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !7
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %land.end
  %31 = load i32, i32* %i, align 4, !tbaa !7
  %cmp8 = icmp sge i32 %31, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9 = sext i32 %32 to i64
  %33 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule10 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %33, i32 0, i32 11
  %head11 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule10, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [32 x i32], [32 x i32]* %head11, i32 0, i64 %idxprom9
  %34 = load i32, i32* %arrayidx12, align 4, !tbaa !7
  store i32 %34, i32* %last_need, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %35 = load i32, i32* %last_need, align 4, !tbaa !7
  %36 = load i32, i32* %last_done, align 4, !tbaa !7
  %cmp13 = icmp sgt i32 %35, %36
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %38 = load i32, i32* %last_done, align 4, !tbaa !7
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %last_done, align 4, !tbaa !7
  call void @RenderLine(%struct.RENDER* %37, i32 %inc) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule14 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %39, i32 0, i32 11
  %offset = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule14, i32 0, i32 5
  %40 = load i32, i32* %offset, align 4, !tbaa !67
  store i32 %40, i32* %phase, align 4, !tbaa !7
  store i32 0, i32* %col, align 4, !tbaa !7
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.150, %while.end
  %41 = load i32, i32* %col, align 4, !tbaa !7
  %cmp16 = icmp slt i32 %41, 6
  br i1 %cmp16, label %for.body.17, label %for.end.152

for.body.17:                                      ; preds = %for.cond.15
  store i32 1032, i32* %min, align 4, !tbaa !7
  store i32 0, i32* %max, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.68, %for.body.17
  %42 = load i32, i32* %i, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %42, 32
  br i1 %cmp19, label %land.rhs.20, label %land.end.23

land.rhs.20:                                      ; preds = %for.cond.18
  %43 = load i32, i32* %i, align 4, !tbaa !7
  %44 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule21 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %44, i32 0, i32 11
  %nozzle = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule21, i32 0, i32 2
  %45 = load i32, i32* %nozzle, align 4, !tbaa !68
  %cmp22 = icmp slt i32 %43, %45
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.20, %for.cond.18
  %46 = phi i1 [ false, %for.cond.18 ], [ %cmp22, %land.rhs.20 ]
  br i1 %46, label %for.body.24, label %for.end.70

for.body.24:                                      ; preds = %land.end.23
  %47 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom25 = sext i32 %47 to i64
  %48 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule26 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %48, i32 0, i32 11
  %head27 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule26, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [32 x i32], [32 x i32]* %head27, i32 0, i64 %idxprom25
  %49 = load i32, i32* %arrayidx28, align 4, !tbaa !7
  store i32 %49, i32* %j, align 4, !tbaa !7
  %cmp29 = icmp ne i32 %49, -1
  br i1 %cmp29, label %if.then.30, label %if.end.67

if.then.30:                                       ; preds = %for.body.24
  %50 = load i32, i32* %j, align 4, !tbaa !7
  %rem = srem i32 %50, 256
  store i32 %rem, i32* %j, align 4, !tbaa !7
  %51 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom31 = sext i32 %51 to i64
  %52 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom32 = sext i32 %52 to i64
  %53 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom33 = sext i32 %53 to i64
  %54 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw = getelementptr inbounds %struct.RENDER, %struct.RENDER* %54, i32 0, i32 15
  %arrayidx34 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx34, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx35, i32 0, i64 %idxprom31
  %first = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx36, i32 0, i32 0
  %55 = load i32, i32* %first, align 4, !tbaa !69
  %56 = load i32, i32* %min, align 4, !tbaa !7
  %cmp37 = icmp slt i32 %55, %56
  br i1 %cmp37, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %if.then.30
  %57 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom39 = sext i32 %57 to i64
  %58 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom40 = sext i32 %58 to i64
  %59 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom41 = sext i32 %59 to i64
  %60 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw42 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %60, i32 0, i32 15
  %arrayidx43 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw42, i32 0, i64 %idxprom41
  %arrayidx44 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx43, i32 0, i64 %idxprom40
  %arrayidx45 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx44, i32 0, i64 %idxprom39
  %first46 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx45, i32 0, i32 0
  %61 = load i32, i32* %first46, align 4, !tbaa !69
  store i32 %61, i32* %min, align 4, !tbaa !7
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.38, %if.then.30
  %62 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom48 = sext i32 %62 to i64
  %63 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom49 = sext i32 %63 to i64
  %64 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom50 = sext i32 %64 to i64
  %65 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw51 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %65, i32 0, i32 15
  %arrayidx52 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw51, i32 0, i64 %idxprom50
  %arrayidx53 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx52, i32 0, i64 %idxprom49
  %arrayidx54 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx53, i32 0, i64 %idxprom48
  %last55 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx54, i32 0, i32 1
  %66 = load i32, i32* %last55, align 4, !tbaa !71
  %67 = load i32, i32* %max, align 4, !tbaa !7
  %cmp56 = icmp sgt i32 %66, %67
  br i1 %cmp56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %if.end.47
  %68 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom58 = sext i32 %68 to i64
  %69 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom59 = sext i32 %69 to i64
  %70 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom60 = sext i32 %70 to i64
  %71 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw61 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %71, i32 0, i32 15
  %arrayidx62 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw61, i32 0, i64 %idxprom60
  %arrayidx63 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx62, i32 0, i64 %idxprom59
  %arrayidx64 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx63, i32 0, i64 %idxprom58
  %last65 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx64, i32 0, i32 1
  %72 = load i32, i32* %last65, align 4, !tbaa !71
  store i32 %72, i32* %max, align 4, !tbaa !7
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.57, %if.end.47
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.body.24
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %73 = load i32, i32* %i, align 4, !tbaa !7
  %inc69 = add nsw i32 %73, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !7
  br label %for.cond.18

for.end.70:                                       ; preds = %land.end.23
  %74 = load i32, i32* %min, align 4, !tbaa !7
  %75 = load i32, i32* %max, align 4, !tbaa !7
  %cmp71 = icmp sle i32 %74, %75
  br i1 %cmp71, label %if.then.72, label %if.end.149

if.then.72:                                       ; preds = %for.end.70
  %76 = load i32, i32* %max, align 4, !tbaa !7
  %inc73 = add nsw i32 %76, 1
  store i32 %inc73, i32* %max, align 4, !tbaa !7
  %77 = load i32, i32* %move_down, align 4, !tbaa !7
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.72
  %78 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.RENDER, %struct.RENDER* %78, i32 0, i32 1
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !43
  %80 = load i32, i32* %move_down, align 4, !tbaa !7
  call void @SendDown(%struct._IO_FILE* %79, i32 %80) #4
  store i32 0, i32* %move_down, align 4, !tbaa !7
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.72
  %81 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream76 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %81, i32 0, i32 1
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %stream76, align 8, !tbaa !43
  %83 = load i32, i32* %col, align 4, !tbaa !7
  call void @SendColour(%struct._IO_FILE* %82, i32 %83) #4
  %84 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %xres77 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %84, i32 0, i32 3
  %85 = load i32, i32* %xres77, align 4, !tbaa !39
  %cmp78 = icmp eq i32 %85, 360
  br i1 %cmp78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %if.end.75
  %86 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream80 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %86, i32 0, i32 1
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %stream80, align 8, !tbaa !43
  %88 = load i32, i32* %min, align 4, !tbaa !7
  %mul = mul nsw i32 32, %88
  call void @SendRight(%struct._IO_FILE* %87, i32 %mul) #4
  br label %if.end.90

if.else:                                          ; preds = %if.end.75
  %89 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %xres81 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %89, i32 0, i32 3
  %90 = load i32, i32* %xres81, align 4, !tbaa !39
  %cmp82 = icmp eq i32 %90, 720
  br i1 %cmp82, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %if.else
  %91 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream84 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %91, i32 0, i32 1
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %stream84, align 8, !tbaa !43
  %93 = load i32, i32* %min, align 4, !tbaa !7
  %mul85 = mul nsw i32 16, %93
  call void @SendRight(%struct._IO_FILE* %92, i32 %mul85) #4
  br label %if.end.89

if.else.86:                                       ; preds = %if.else
  %94 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream87 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %94, i32 0, i32 1
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %stream87, align 8, !tbaa !43
  %96 = load i32, i32* %min, align 4, !tbaa !7
  %mul88 = mul nsw i32 8, %96
  %97 = load i32, i32* %phase, align 4, !tbaa !7
  %add = add nsw i32 %mul88, %97
  call void @SendRight(%struct._IO_FILE* %95, i32 %add) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.83
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.79
  %98 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream91 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %98, i32 0, i32 1
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %stream91, align 8, !tbaa !43
  %100 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %xres92 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %100, i32 0, i32 3
  %101 = load i32, i32* %xres92, align 4, !tbaa !39
  %102 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.RENDER, %struct.RENDER* %102, i32 0, i32 2
  %103 = load i32, i32* %yres, align 4, !tbaa !38
  %104 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule93 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %104, i32 0, i32 11
  %nozzle94 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule93, i32 0, i32 2
  %105 = load i32, i32* %nozzle94, align 4, !tbaa !68
  %106 = load i32, i32* %max, align 4, !tbaa !7
  %107 = load i32, i32* %min, align 4, !tbaa !7
  %sub95 = sub nsw i32 %106, %107
  %mul96 = mul nsw i32 %sub95, 8
  call void @SendData(%struct._IO_FILE* %99, i32 %101, i32 %103, i32 %105, i32 %mul96) #4
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.144, %if.end.90
  %108 = load i32, i32* %i, align 4, !tbaa !7
  %109 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule98 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %109, i32 0, i32 11
  %nozzle99 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule98, i32 0, i32 2
  %110 = load i32, i32* %nozzle99, align 4, !tbaa !68
  %cmp100 = icmp slt i32 %108, %110
  br i1 %cmp100, label %for.body.101, label %for.end.146

for.body.101:                                     ; preds = %for.cond.97
  %111 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom102 = sext i32 %111 to i64
  %112 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule103 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %112, i32 0, i32 11
  %head104 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule103, i32 0, i32 4
  %arrayidx105 = getelementptr inbounds [32 x i32], [32 x i32]* %head104, i32 0, i64 %idxprom102
  %113 = load i32, i32* %arrayidx105, align 4, !tbaa !7
  store i32 %113, i32* %j, align 4, !tbaa !7
  %cmp106 = icmp eq i32 %113, -1
  br i1 %cmp106, label %if.then.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.101
  %114 = load i32, i32* %j, align 4, !tbaa !7
  %rem107 = srem i32 %114, 256
  %idxprom108 = sext i32 %rem107 to i64
  %115 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom109 = sext i32 %115 to i64
  %116 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom110 = sext i32 %116 to i64
  %117 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw111 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %117, i32 0, i32 15
  %arrayidx112 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw111, i32 0, i64 %idxprom110
  %arrayidx113 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx112, i32 0, i64 %idxprom109
  %arrayidx114 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx113, i32 0, i64 %idxprom108
  %last115 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx114, i32 0, i32 1
  %118 = load i32, i32* %last115, align 4, !tbaa !71
  %119 = load i32, i32* %j, align 4, !tbaa !7
  %rem116 = srem i32 %119, 256
  %idxprom117 = sext i32 %rem116 to i64
  %120 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom118 = sext i32 %120 to i64
  %121 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom119 = sext i32 %121 to i64
  %122 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw120 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %122, i32 0, i32 15
  %arrayidx121 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw120, i32 0, i64 %idxprom119
  %arrayidx122 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx121, i32 0, i64 %idxprom118
  %arrayidx123 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx122, i32 0, i64 %idxprom117
  %first124 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx123, i32 0, i32 0
  %123 = load i32, i32* %first124, align 4, !tbaa !69
  %cmp125 = icmp slt i32 %118, %123
  br i1 %cmp125, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %lor.lhs.false, %for.body.101
  %124 = load i32, i32* %min, align 4, !tbaa !7
  %125 = load i32, i32* %max, align 4, !tbaa !7
  %126 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %rle = getelementptr inbounds %struct.RENDER, %struct.RENDER* %126, i32 0, i32 16
  %arraydecay = getelementptr inbounds [16500 x i8], [16500 x i8]* %rle, i32 0, i32 0
  %call127 = call i32 @RleCompress(%struct.RAWLINE* null, i32 %124, i32 %125, i8* %arraydecay) #4
  store i32 %call127, i32* %l, align 4, !tbaa !7
  br label %if.end.139

if.else.128:                                      ; preds = %lor.lhs.false
  %127 = load i32, i32* %col, align 4, !tbaa !7
  %idxprom129 = sext i32 %127 to i64
  %128 = load i32, i32* %phase, align 4, !tbaa !7
  %idxprom130 = sext i32 %128 to i64
  %129 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw131 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %129, i32 0, i32 15
  %arrayidx132 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw131, i32 0, i64 %idxprom130
  %arrayidx133 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx132, i32 0, i64 %idxprom129
  %arraydecay134 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx133, i32 0, i32 0
  %130 = load i32, i32* %j, align 4, !tbaa !7
  %rem135 = srem i32 %130, 256
  %idx.ext = sext i32 %rem135 to i64
  %add.ptr = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay134, i64 %idx.ext
  %131 = load i32, i32* %min, align 4, !tbaa !7
  %132 = load i32, i32* %max, align 4, !tbaa !7
  %133 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %rle136 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %133, i32 0, i32 16
  %arraydecay137 = getelementptr inbounds [16500 x i8], [16500 x i8]* %rle136, i32 0, i32 0
  %call138 = call i32 @RleCompress(%struct.RAWLINE* %add.ptr, i32 %131, i32 %132, i8* %arraydecay137) #4
  store i32 %call138, i32* %l, align 4, !tbaa !7
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.128, %if.then.126
  %134 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %rle140 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %134, i32 0, i32 16
  %arraydecay141 = getelementptr inbounds [16500 x i8], [16500 x i8]* %rle140, i32 0, i32 0
  %135 = load i32, i32* %l, align 4, !tbaa !7
  %conv = sext i32 %135 to i64
  %136 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream142 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %136, i32 0, i32 1
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %stream142, align 8, !tbaa !43
  %call143 = call i64 @fwrite(i8* %arraydecay141, i64 %conv, i64 1, %struct._IO_FILE* %137) #4
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.139
  %138 = load i32, i32* %i, align 4, !tbaa !7
  %inc145 = add nsw i32 %138, 1
  store i32 %inc145, i32* %i, align 4, !tbaa !7
  br label %for.cond.97

for.end.146:                                      ; preds = %for.cond.97
  %139 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %stream147 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %139, i32 0, i32 1
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %stream147, align 8, !tbaa !43
  %call148 = call i32 @fputc(i32 13, %struct._IO_FILE* %140) #4
  br label %if.end.149

if.end.149:                                       ; preds = %for.end.146, %for.end.70
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %141 = load i32, i32* %col, align 4, !tbaa !7
  %inc151 = add nsw i32 %141, 1
  store i32 %inc151, i32* %col, align 4, !tbaa !7
  br label %for.cond.15

for.end.152:                                      ; preds = %for.cond.15
  %142 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %schedule153 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %142, i32 0, i32 11
  %down = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %schedule153, i32 0, i32 3
  %143 = load i32, i32* %down, align 4, !tbaa !72
  %144 = load i32, i32* %move_down, align 4, !tbaa !7
  %add154 = add nsw i32 %144, %143
  store i32 %add154, i32* %move_down, align 4, !tbaa !7
  br label %do.cond

do.cond:                                          ; preds = %for.end.152
  %145 = load i32, i32* %last_band, align 4, !tbaa !7
  %tobool155 = icmp ne i32 %145, 0
  %lnot = xor i1 %tobool155, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %146 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i32* %min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %move_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %last_need to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %last_done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @SendString(%struct._IO_FILE* %stream, i8* %s) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !51
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !51
  %conv = sext i8 %3 to i32
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %4) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @HalftoneThold(%struct.RENDER* %render) #1 {
entry:
  %render.addr = alloca %struct.RENDER*, align 8
  store %struct.RENDER* %render, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %0 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.RENDER, %struct.RENDER* %0, i32 0, i32 0
  %1 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !37
  %halftoner = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %1, i32 0, i32 70
  %2 = load i32, i32* %halftoner, align 4, !tbaa !73
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.HFUNCS], [3 x %struct.HFUNCS]* @htable, i32 0, i64 %idxprom
  %hthld = getelementptr inbounds %struct.HFUNCS, %struct.HFUNCS* %arrayidx, i32 0, i32 0
  %3 = load i32 (%struct.RENDER*)*, i32 (%struct.RENDER*)** %hthld, align 8, !tbaa !74
  %4 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.RENDER* %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ScheduleLines(%struct.SCHEDUL* %p) #1 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %1, i32 0, i32 6
  %2 = load i32, i32* %top, align 4, !tbaa !76
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  call void @SchedulerInit(%struct.SCHEDUL* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %nozzle = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %4, i32 0, i32 2
  %5 = load i32, i32* %nozzle, align 4, !tbaa !77
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top3 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %6, i32 0, i32 6
  %7 = load i32, i32* %top3, align 4, !tbaa !76
  %8 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %head, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !7
  %9 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %9, i32 0, i32 3
  store i32 1, i32* %down, align 4, !tbaa !78
  %10 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top4 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %10, i32 0, i32 6
  %11 = load i32, i32* %top4, align 4, !tbaa !76
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %top4, align 4, !tbaa !76
  %12 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top5 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %12, i32 0, i32 6
  %13 = load i32, i32* %top5, align 4, !tbaa !76
  %14 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %14, i32 0, i32 0
  %15 = load i32, i32* %last, align 4, !tbaa !79
  %cmp6 = icmp eq i32 %13, %15
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %16 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %markbeg = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %16, i32 0, i32 7
  %17 = load i32, i32* %markbeg, align 4, !tbaa !80
  store i32 %17, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %19 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top8 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %19, i32 0, i32 6
  %20 = load i32, i32* %top8, align 4, !tbaa !76
  %cmp9 = icmp slt i32 %18, %20
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %rem = srem i32 %21, 256
  %idxprom = sext i32 %rem to i64
  %22 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %22, i32 0, i32 8
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx11, align 1, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !7
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top13 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %24, i32 0, i32 6
  %25 = load i32, i32* %top13, align 4, !tbaa !76
  %26 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %markbeg14 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %26, i32 0, i32 7
  store i32 %25, i32* %markbeg14, align 4, !tbaa !80
  %27 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top15 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %27, i32 0, i32 6
  %28 = load i32, i32* %top15, align 4, !tbaa !76
  %cmp16 = icmp slt i32 %28, 8
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %29 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  call void @ScheduleLeading(%struct.SCHEDUL* %29) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.end
  %30 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top20 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %30, i32 0, i32 6
  %31 = load i32, i32* %top20, align 4, !tbaa !76
  %32 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %32, i32 0, i32 1
  %33 = load i32, i32* %resol, align 4, !tbaa !81
  %add = add nsw i32 %31, %33
  %add21 = add nsw i32 %add, 256
  %34 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %last22 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %34, i32 0, i32 0
  %35 = load i32, i32* %last22, align 4, !tbaa !79
  %cmp23 = icmp sgt i32 %add21, %35
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.19
  %36 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  call void @ScheduleTrailing(%struct.SCHEDUL* %36) #4
  %37 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down26 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %37, i32 0, i32 3
  %38 = load i32, i32* %down26, align 4, !tbaa !78
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  %39 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top28 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %39, i32 0, i32 6
  %40 = load i32, i32* %top28, align 4, !tbaa !76
  %add29 = add nsw i32 %40, 248
  %41 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %last30 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %41, i32 0, i32 0
  %42 = load i32, i32* %last30, align 4, !tbaa !79
  %cmp31 = icmp sge i32 %add29, %42
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.19
  %43 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  call void @ScheduleMiddle(%struct.SCHEDUL* %43) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.else, %if.then.27, %if.then.18, %if.then.2
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal void @RenderLine(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.RENDER, %struct.RENDER* %2, i32 0, i32 0
  %3 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !37
  %4 = bitcast %struct.gx_photoex_device_s* %3 to %struct.gx_device_printer_s*
  %5 = load i32, i32* %line.addr, align 4, !tbaa !7
  %6 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %dbuff = getelementptr inbounds %struct.RENDER, %struct.RENDER* %6, i32 0, i32 8
  %7 = load i8*, i8** %dbuff, align 8, !tbaa !33
  %call = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %4, i32 %5, i8* %7, i8** %data) #4
  %8 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %data, align 8, !tbaa !1
  %call1 = call i32 @IsScanlineEmpty(%struct.RENDER* %8, i8* %9) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.30

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %line.addr, align 4, !tbaa !7
  %11 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_last = getelementptr inbounds %struct.RENDER, %struct.RENDER* %11, i32 0, i32 10
  %12 = load i32, i32* %htone_last, align 4, !tbaa !63
  %sub = sub nsw i32 %10, %12
  %13 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_thold = getelementptr inbounds %struct.RENDER, %struct.RENDER* %13, i32 0, i32 9
  %14 = load i32, i32* %htone_thold, align 4, !tbaa !62
  %cmp = icmp sgt i32 %sub, %14
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %15 = load i32, i32* %i, align 4, !tbaa !7
  %cmp3 = icmp slt i32 %15, 6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem = srem i32 %16, 256
  %idxprom = sext i32 %rem to i64
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw = getelementptr inbounds %struct.RENDER, %struct.RENDER* %18, i32 0, i32 15
  %arrayidx = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx5, i32 0, i64 %idxprom
  %first = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx6, i32 0, i32 0
  store i32 1032, i32* %first, align 4, !tbaa !69
  %19 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem7 = srem i32 %19, 256
  %idxprom8 = sext i32 %rem7 to i64
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw10 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %21, i32 0, i32 15
  %arrayidx11 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx11, i32 0, i64 %idxprom9
  %arrayidx13 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx12, i32 0, i64 %idxprom8
  %last = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx13, i32 0, i32 1
  store i32 0, i32* %last, align 4, !tbaa !71
  %22 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem14 = srem i32 %22, 256
  %idxprom15 = sext i32 %rem14 to i64
  %23 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw17 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %24, i32 0, i32 15
  %arrayidx18 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw17, i32 0, i64 1
  %arrayidx19 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx18, i32 0, i64 %idxprom16
  %arrayidx20 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx19, i32 0, i64 %idxprom15
  %first21 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx20, i32 0, i32 0
  store i32 1032, i32* %first21, align 4, !tbaa !69
  %25 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem22 = srem i32 %25, 256
  %idxprom23 = sext i32 %rem22 to i64
  %26 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom24 = sext i32 %26 to i64
  %27 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %raw25 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %27, i32 0, i32 15
  %arrayidx26 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw25, i32 0, i64 1
  %arrayidx27 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx26, i32 0, i64 %idxprom24
  %arrayidx28 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx27, i32 0, i64 %idxprom23
  %last29 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arrayidx28, i32 0, i32 1
  store i32 0, i32* %last29, align 4, !tbaa !71
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  %29 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %30 = load i32, i32* %line.addr, align 4, !tbaa !7
  %31 = load i8*, i8** %data, align 8, !tbaa !1
  call void @HalftoneLine(%struct.RENDER* %29, i32 %30, i8* %31) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.38

if.else.30:                                       ; preds = %entry
  %32 = load i32, i32* %line.addr, align 4, !tbaa !7
  %33 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_last31 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %33, i32 0, i32 10
  %34 = load i32, i32* %htone_last31, align 4, !tbaa !63
  %sub32 = sub nsw i32 %32, %34
  %35 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_thold33 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %35, i32 0, i32 9
  %36 = load i32, i32* %htone_thold33, align 4, !tbaa !62
  %cmp34 = icmp sge i32 %sub32, %36
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.30
  %37 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %38 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void @HalftonerStart(%struct.RENDER* %37, i32 %38) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.else.30
  %39 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %40 = load i32, i32* %line.addr, align 4, !tbaa !7
  %41 = load i8*, i8** %data, align 8, !tbaa !1
  call void @HalftoneLine(%struct.RENDER* %39, i32 %40, i8* %41) #4
  %42 = load i32, i32* %line.addr, align 4, !tbaa !7
  %43 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %htone_last37 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %43, i32 0, i32 10
  store i32 %42, i32* %htone_last37, align 4, !tbaa !63
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendDown(%struct._IO_FILE* %stream, i32 %x) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 2, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %x.addr, align 4, !tbaa !7
  %and = and i32 %3, 255
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and, %struct._IO_FILE* %4) #4
  %5 = load i32, i32* %x.addr, align 4, !tbaa !7
  %shr = ashr i32 %5, 8
  %and3 = and i32 %shr, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %and3, %struct._IO_FILE* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendColour(%struct._IO_FILE* %stream, i32 %col) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %col.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %col, i32* %col.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 2, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load i32, i32* %col.addr, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @SendColour.ccode, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %and = and i32 %4, 255
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and, %struct._IO_FILE* %5) #4
  %6 = load i32, i32* %col.addr, align 4, !tbaa !7
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* @SendColour.ccode, i32 0, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  %shr = ashr i32 %7, 8
  %and5 = and i32 %shr, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 %and5, %struct._IO_FILE* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendRight(%struct._IO_FILE* %stream, i32 %amount) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %amount.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %amount, i32* %amount.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 4, %struct._IO_FILE* %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 0, %struct._IO_FILE* %2) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 160, %struct._IO_FILE* %3) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 5, %struct._IO_FILE* %4) #4
  %5 = load i32, i32* %amount.addr, align 4, !tbaa !7
  %and = and i32 %5, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %and, %struct._IO_FILE* %6) #4
  %7 = load i32, i32* %amount.addr, align 4, !tbaa !7
  %shr = ashr i32 %7, 8
  %and5 = and i32 %shr, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 %and5, %struct._IO_FILE* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SendData(%struct._IO_FILE* %stream, i32 %hres, i32 %vres, i32 %noz, i32 %col) #1 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %hres.addr = alloca i32, align 4
  %vres.addr = alloca i32, align 4
  %noz.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  store i32 %hres, i32* %hres.addr, align 4, !tbaa !7
  store i32 %vres, i32* %vres.addr, align 4, !tbaa !7
  store i32 %noz, i32* %noz.addr, align 4, !tbaa !7
  store i32 %col, i32* %col.addr, align 4, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  call void @SendString(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 1, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %noz.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %vres.addr, align 4, !tbaa !7
  %div = sdiv i32 3600, %3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 %div, %struct._IO_FILE* %4) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 40, %struct._IO_FILE* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %hres.addr, align 4, !tbaa !7
  %cmp3 = icmp sgt i32 %6, 720
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call5 = call i32 @fputc(i32 5, %struct._IO_FILE* %7) #4
  br label %if.end.9

if.else.6:                                        ; preds = %if.end
  %8 = load i32, i32* %hres.addr, align 4, !tbaa !7
  %div7 = sdiv i32 3600, %8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call8 = call i32 @fputc(i32 %div7, %struct._IO_FILE* %9) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.6, %if.then.4
  %10 = load i32, i32* %noz.addr, align 4, !tbaa !7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputc(i32 %10, %struct._IO_FILE* %11) #4
  %12 = load i32, i32* %col.addr, align 4, !tbaa !7
  %and = and i32 %12, 255
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call11 = call i32 @fputc(i32 %and, %struct._IO_FILE* %13) #4
  %14 = load i32, i32* %col.addr, align 4, !tbaa !7
  %shr = ashr i32 %14, 8
  %and12 = and i32 %shr, 255
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !1
  %call13 = call i32 @fputc(i32 %and12, %struct._IO_FILE* %15) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @RleCompress(%struct.RAWLINE* %raw, i32 %min, i32 %max, i8* %rle_data) #1 {
entry:
  %retval = alloca i32, align 4
  %raw.addr = alloca %struct.RAWLINE*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %rle_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %pbyte = alloca i8, align 1
  %start = alloca i8*, align 8
  %rstrt = alloca i8*, align 8
  %length = alloca i32, align 4
  %input = alloca i8*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.RAWLINE* %raw, %struct.RAWLINE** %raw.addr, align 8, !tbaa !1
  store i32 %min, i32* %min.addr, align 4, !tbaa !7
  store i32 %max, i32* %max.addr, align 4, !tbaa !7
  store i8* %rle_data, i8** %rle_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  call void @llvm.lifetime.start(i64 1, i8* %pbyte) #2
  %2 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i8** %rstrt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %input to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.RAWLINE*, %struct.RAWLINE** %raw.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.RAWLINE* %7, null
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %n, align 4, !tbaa !7
  %8 = load i32, i32* %max.addr, align 4, !tbaa !7
  %9 = load i32, i32* %min.addr, align 4, !tbaa !7
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp sge i32 %10, 129
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 -128, i8* %11, align 1, !tbaa !51
  %12 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr1, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 0, i8* %12, align 1, !tbaa !51
  %13 = load i32, i32* %n, align 4, !tbaa !7
  %add = add nsw i32 %13, 2
  store i32 %add, i32* %n, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %sub2 = sub nsw i32 %14, 129
  store i32 %sub2, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !7
  %cmp3 = icmp sge i32 %15, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %sub5 = sub nsw i32 257, %16
  %conv = trunc i32 %sub5 to i8
  %17 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr6, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 %conv, i8* %17, align 1, !tbaa !51
  %18 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !51
  %19 = load i32, i32* %n, align 4, !tbaa !7
  %add8 = add nsw i32 %19, 2
  store i32 %add8, i32* %n, align 4, !tbaa !7
  br label %if.end.14

if.else:                                          ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %21 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 0, i8* %21, align 1, !tbaa !51
  %22 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr12, i8** %rle_data.addr, align 8, !tbaa !1
  store i8 0, i8* %22, align 1, !tbaa !51
  %23 = load i32, i32* %n, align 4, !tbaa !7
  %add13 = add nsw i32 %23, 2
  store i32 %add13, i32* %n, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.4
  %24 = load i32, i32* %n, align 4, !tbaa !7
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %entry
  %25 = load %struct.RAWLINE*, %struct.RAWLINE** %raw.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %25, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1032 x i8], [1032 x i8]* %data, i32 0, i32 0
  %26 = load i32, i32* %min.addr, align 4, !tbaa !7
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %input, align 8, !tbaa !1
  %27 = load i32, i32* %max.addr, align 4, !tbaa !7
  %28 = load i32, i32* %min.addr, align 4, !tbaa !7
  %sub16 = sub nsw i32 %27, %28
  store i32 %sub16, i32* %len, align 4, !tbaa !7
  store i32 0, i32* %length, align 4, !tbaa !7
  %29 = load i8*, i8** %input, align 8, !tbaa !1
  store i8* %29, i8** %start, align 8, !tbaa !1
  store i8* null, i8** %rstrt, align 8, !tbaa !1
  %30 = load i8*, i8** %input, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr17, i8** %input, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !51
  store i8 %31, i8* %pbyte, align 1, !tbaa !51
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.44, %if.end.15
  %32 = load i32, i32* %i, align 4, !tbaa !7
  %33 = load i32, i32* %len, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %32, %33
  br i1 %cmp19, label %for.body.21, label %for.end.46

for.body.21:                                      ; preds = %for.cond.18
  %34 = load i8*, i8** %input, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !51
  %conv22 = zext i8 %35 to i32
  %36 = load i8, i8* %pbyte, align 1, !tbaa !51
  %conv23 = zext i8 %36 to i32
  %cmp24 = icmp eq i32 %conv22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.else.31

if.then.26:                                       ; preds = %for.body.21
  %37 = load i8*, i8** %rstrt, align 8, !tbaa !1
  %tobool27 = icmp ne i8* %37, null
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.then.26
  %38 = load i8*, i8** %input, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %38, i64 -1
  store i8* %add.ptr29, i8** %rstrt, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  br label %if.end.43

if.else.31:                                       ; preds = %for.body.21
  %39 = load i8*, i8** %rstrt, align 8, !tbaa !1
  %tobool32 = icmp ne i8* %39, null
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.else.31
  %40 = load i8*, i8** %rstrt, align 8, !tbaa !1
  %41 = load i8*, i8** %input, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp34 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.33
  store i8* null, i8** %rstrt, align 8, !tbaa !1
  br label %if.end.41

if.else.37:                                       ; preds = %if.then.33
  %42 = load i8*, i8** %start, align 8, !tbaa !1
  %43 = load i8*, i8** %rstrt, align 8, !tbaa !1
  %44 = load i8*, i8** %input, align 8, !tbaa !1
  %45 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %call = call i32 @RleFlush(i8* %42, i8* %43, i8* %44, i8* %45) #4
  store i32 %call, i32* %n, align 4, !tbaa !7
  %46 = load i32, i32* %n, align 4, !tbaa !7
  %47 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %idx.ext38 = sext i32 %46 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %47, i64 %idx.ext38
  store i8* %add.ptr39, i8** %rle_data.addr, align 8, !tbaa !1
  %48 = load i32, i32* %n, align 4, !tbaa !7
  %49 = load i32, i32* %length, align 4, !tbaa !7
  %add40 = add nsw i32 %49, %48
  store i32 %add40, i32* %length, align 4, !tbaa !7
  %50 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  store i8* %50, i8** %start, align 8, !tbaa !1
  store i8* null, i8** %rstrt, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.else.31
  %51 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !51
  store i8 %52, i8* %pbyte, align 1, !tbaa !51
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.30
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %53 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  %54 = load i8*, i8** %input, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr45, i8** %input, align 8, !tbaa !1
  br label %for.cond.18

for.end.46:                                       ; preds = %for.cond.18
  %55 = load i8*, i8** %start, align 8, !tbaa !1
  %56 = load i8*, i8** %rstrt, align 8, !tbaa !1
  %57 = load i8*, i8** %input, align 8, !tbaa !1
  %58 = load i8*, i8** %rle_data.addr, align 8, !tbaa !1
  %call47 = call i32 @RleFlush(i8* %55, i8* %56, i8* %57, i8* %58) #4
  %59 = load i32, i32* %length, align 4, !tbaa !7
  %add48 = add nsw i32 %59, %call47
  store i32 %add48, i32* %length, align 4, !tbaa !7
  %60 = load i32, i32* %length, align 4, !tbaa !7
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.46, %if.end.14
  %61 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i8** %input to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i8** %rstrt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  call void @llvm.lifetime.end(i64 1, i8* %pbyte) #2
  %66 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @FloydSThold(%struct.RENDER* %p) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  ret i32 5
}

; Function Attrs: nounwind uwtable
define internal void @FloydSStart(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.RENDER, %struct.RENDER* %0, i32 0, i32 12
  %arraydecay = getelementptr inbounds [3 x [4 x [16500 x i16]]], [3 x [4 x [16500 x i16]]]* %err, i32 0, i32 0
  %1 = bitcast [4 x [16500 x i16]]* %arraydecay to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 66000) #5
  %2 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %2, i32 0, i32 12
  %arrayidx = getelementptr inbounds [3 x [4 x [16500 x i16]]], [3 x [4 x [16500 x i16]]]* %err1, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x [16500 x i16]], [4 x [16500 x i16]]* %arrayidx, i32 0, i32 0
  %3 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.RENDER, %struct.RENDER* %3, i32 0, i32 13
  %arrayidx3 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error, i32 0, i64 0
  store [16500 x i16]* %arraydecay2, [16500 x i16]** %arrayidx3, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FloydSEol(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FloydSLine(%struct.HTONE* %htone, i32 %y) #1 {
entry:
  %htone.addr = alloca %struct.HTONE*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixerr = alloca i32, align 4
  %length = alloca i32, align 4
  %res = alloca i8*, align 8
  %data = alloca i8*, align 8
  %block = alloca i8*, align 8
  %lim1 = alloca i32, align 4
  %lim2 = alloca i32, align 4
  %e0 = alloca i16, align 2
  %e1 = alloca i16, align 2
  %l0 = alloca i16*, align 8
  store %struct.HTONE* %htone, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !7
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %pixerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %lim1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %lim2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i16* %e0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = bitcast i16* %e1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = bitcast i16** %l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.HTONE, %struct.HTONE* %12, i32 0, i32 0
  %13 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !82
  %width = getelementptr inbounds %struct.RENDER, %struct.RENDER* %13, i32 0, i32 5
  %14 = load i32, i32* %width, align 4, !tbaa !40
  store i32 %14, i32* %length, align 4, !tbaa !7
  %15 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %res1 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %15, i32 0, i32 3
  %16 = load i8*, i8** %res1, align 8, !tbaa !84
  store i8* %16, i8** %res, align 8, !tbaa !1
  %17 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %17, i32 0, i32 1
  %18 = load i8*, i8** %data2, align 8, !tbaa !85
  store i8* %18, i8** %data, align 8, !tbaa !1
  %19 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %block3 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %19, i32 0, i32 4
  %20 = load i8*, i8** %block3, align 8, !tbaa !86
  store i8* %20, i8** %block, align 8, !tbaa !1
  %21 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval = getelementptr inbounds %struct.HTONE, %struct.HTONE* %21, i32 0, i32 8
  %22 = load i32, i32* %mval, align 4, !tbaa !87
  %div = sdiv i32 %22, 2
  store i32 %div, i32* %lim1, align 4, !tbaa !7
  %23 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval4 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %23, i32 0, i32 8
  %24 = load i32, i32* %mval4, align 4, !tbaa !87
  %add = add nsw i32 %24, 256
  %div5 = sdiv i32 %add, 2
  store i32 %div5, i32* %lim2, align 4, !tbaa !7
  %25 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.HTONE, %struct.HTONE* %25, i32 0, i32 5
  %26 = load i16**, i16*** %err, align 8, !tbaa !88
  %arrayidx = getelementptr inbounds i16*, i16** %26, i64 0
  %27 = load i16*, i16** %arrayidx, align 8, !tbaa !1
  store i16* %27, i16** %l0, align 8, !tbaa !1
  %28 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %28, i64 1
  %29 = load i16, i16* %arrayidx6, align 2, !tbaa !50
  store i16 %29, i16* %e0, align 2, !tbaa !50
  %30 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %30, i64 2
  %31 = load i16, i16* %arrayidx7, align 2, !tbaa !50
  store i16 %31, i16* %e1, align 2, !tbaa !50
  %32 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %32, i64 1
  store i16 0, i16* %arrayidx8, align 2, !tbaa !50
  %33 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %33, i64 2
  store i16 0, i16* %arrayidx9, align 2, !tbaa !50
  store i32 0, i32* %x, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %x, align 4, !tbaa !7
  %35 = load i32, i32* %length, align 4, !tbaa !7
  %cmp = icmp slt i32 %34, %35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %36, align 1, !tbaa !51
  %37 = load i8*, i8** %data, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !51
  %conv = zext i8 %38 to i32
  %shl = shl i32 %conv, 4
  %39 = load i16, i16* %e0, align 2, !tbaa !50
  %conv10 = sext i16 %39 to i32
  %add11 = add nsw i32 %shl, %conv10
  store i32 %add11, i32* %pixel, align 4, !tbaa !7
  %40 = load i16, i16* %e1, align 2, !tbaa !50
  store i16 %40, i16* %e0, align 2, !tbaa !50
  %41 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %41, i64 3
  %42 = load i16, i16* %arrayidx12, align 2, !tbaa !50
  %conv13 = sext i16 %42 to i32
  %43 = load i32, i32* %pixel, align 4, !tbaa !7
  %and = and i32 %43, 15
  %add14 = add nsw i32 %conv13, %and
  %conv15 = trunc i32 %add14 to i16
  store i16 %conv15, i16* %e1, align 2, !tbaa !50
  %44 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %44, i64 3
  store i16 0, i16* %arrayidx16, align 2, !tbaa !50
  %45 = load i32, i32* %pixel, align 4, !tbaa !7
  %shr = ashr i32 %45, 4
  store i32 %shr, i32* %pixel, align 4, !tbaa !7
  %46 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool = icmp ne i8* %46, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %47 = load i8*, i8** %block, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !51
  %conv17 = zext i8 %48 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %49 = load i32, i32* %pixel, align 4, !tbaa !7
  %50 = load i32, i32* %lim1, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %49, %50
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %51 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %51, align 1, !tbaa !51
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false
  %52 = load i32, i32* %pixel, align 4, !tbaa !7
  %53 = load i32, i32* %lim2, align 4, !tbaa !7
  %cmp21 = icmp sge i32 %52, %53
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  %54 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 -1, i8* %54, align 1, !tbaa !51
  br label %if.end

if.else.24:                                       ; preds = %if.else
  %55 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval25 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %55, i32 0, i32 8
  %56 = load i32, i32* %mval25, align 4, !tbaa !87
  %conv26 = trunc i32 %56 to i8
  %57 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 %conv26, i8* %57, align 1, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %58 = load i32, i32* %pixel, align 4, !tbaa !7
  %59 = load i8*, i8** %res, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !51
  %conv28 = zext i8 %60 to i32
  %sub = sub nsw i32 %58, %conv28
  store i32 %sub, i32* %pixerr, align 4, !tbaa !7
  %61 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl29 = shl i32 %61, 3
  %62 = load i32, i32* %pixerr, align 4, !tbaa !7
  %sub30 = sub nsw i32 %shl29, %62
  %63 = load i16, i16* %e0, align 2, !tbaa !50
  %conv31 = sext i16 %63 to i32
  %add32 = add nsw i32 %conv31, %sub30
  %conv33 = trunc i32 %add32 to i16
  store i16 %conv33, i16* %e0, align 2, !tbaa !50
  %64 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl34 = shl i32 %64, 2
  %65 = load i32, i32* %pixerr, align 4, !tbaa !7
  %sub35 = sub nsw i32 %shl34, %65
  %66 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %66, i64 0
  %67 = load i16, i16* %arrayidx36, align 2, !tbaa !50
  %conv37 = sext i16 %67 to i32
  %add38 = add nsw i32 %conv37, %sub35
  %conv39 = trunc i32 %add38 to i16
  store i16 %conv39, i16* %arrayidx36, align 2, !tbaa !50
  %68 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl40 = shl i32 %68, 2
  %69 = load i32, i32* %pixerr, align 4, !tbaa !7
  %add41 = add nsw i32 %shl40, %69
  %70 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %70, i64 1
  %71 = load i16, i16* %arrayidx42, align 2, !tbaa !50
  %conv43 = sext i16 %71 to i32
  %add44 = add nsw i32 %conv43, %add41
  %conv45 = trunc i32 %add44 to i16
  store i16 %conv45, i16* %arrayidx42, align 2, !tbaa !50
  %72 = load i32, i32* %pixerr, align 4, !tbaa !7
  %73 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i16, i16* %73, i64 2
  %74 = load i16, i16* %arrayidx46, align 2, !tbaa !50
  %conv47 = sext i16 %74 to i32
  %add48 = add nsw i32 %conv47, %72
  %conv49 = trunc i32 %add48 to i16
  store i16 %conv49, i16* %arrayidx46, align 2, !tbaa !50
  %75 = load i8*, i8** %res, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr, i8** %res, align 8, !tbaa !1
  %76 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool50 = icmp ne i8* %76, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.27
  %77 = load i8*, i8** %block, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr52, i8** %block, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.27
  %78 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %step = getelementptr inbounds %struct.HTONE, %struct.HTONE* %78, i32 0, i32 2
  %79 = load i32, i32* %step, align 4, !tbaa !89
  %80 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %80, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %81 = load i16*, i16** %l0, align 8, !tbaa !1
  %incdec.ptr54 = getelementptr inbounds i16, i16* %81, i32 1
  store i16* %incdec.ptr54, i16** %l0, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %82 = load i32, i32* %x, align 4, !tbaa !7
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %x, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = bitcast i16** %l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i16* %e1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %84) #2
  %85 = bitcast i16* %e0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %85) #2
  %86 = bitcast i32* %lim2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %lim1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i8** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %pixerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @DitherThold(%struct.RENDER* %p) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @DitherStart(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DitherEol(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DitherLine(%struct.HTONE* %htone, i32 %y) #1 {
entry:
  %htone.addr = alloca %struct.HTONE*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pixel = alloca i32, align 4
  %length = alloca i32, align 4
  %res = alloca i8*, align 8
  %data = alloca i8*, align 8
  %block = alloca i8*, align 8
  %matrix = alloca i8*, align 8
  %mx = alloca i32, align 4
  %lval = alloca i32, align 4
  %hval = alloca i32, align 4
  store %struct.HTONE* %htone, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !7
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i8** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %matrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %mx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %lval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %hval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.HTONE, %struct.HTONE* %10, i32 0, i32 0
  %11 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !82
  %width = getelementptr inbounds %struct.RENDER, %struct.RENDER* %11, i32 0, i32 5
  %12 = load i32, i32* %width, align 4, !tbaa !40
  store i32 %12, i32* %length, align 4, !tbaa !7
  %13 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %res1 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %13, i32 0, i32 3
  %14 = load i8*, i8** %res1, align 8, !tbaa !84
  store i8* %14, i8** %res, align 8, !tbaa !1
  %15 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %15, i32 0, i32 1
  %16 = load i8*, i8** %data2, align 8, !tbaa !85
  store i8* %16, i8** %data, align 8, !tbaa !1
  %17 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %block3 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %17, i32 0, i32 4
  %18 = load i8*, i8** %block3, align 8, !tbaa !86
  store i8* %18, i8** %block, align 8, !tbaa !1
  %19 = load i32, i32* %y.addr, align 4, !tbaa !7
  %rem = srem i32 %19, 16
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* @dmatrix, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i32 0, i32 0
  store i8* %arraydecay, i8** %matrix, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !7
  store i32 0, i32* %mx, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %x, align 4, !tbaa !7
  %21 = load i32, i32* %length, align 4, !tbaa !7
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %22, align 1, !tbaa !51
  %23 = load i8*, i8** %data, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !51
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %pixel, align 4, !tbaa !7
  %25 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval = getelementptr inbounds %struct.HTONE, %struct.HTONE* %25, i32 0, i32 8
  %26 = load i32, i32* %mval, align 4, !tbaa !87
  %cmp4 = icmp sgt i32 %conv, %26
  br i1 %cmp4, label %if.then, label %if.else.19

if.then:                                          ; preds = %for.body
  %27 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval6 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %27, i32 0, i32 8
  %28 = load i32, i32* %mval6, align 4, !tbaa !87
  store i32 %28, i32* %lval, align 4, !tbaa !7
  store i32 255, i32* %hval, align 4, !tbaa !7
  %29 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval7 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %29, i32 0, i32 8
  %30 = load i32, i32* %mval7, align 4, !tbaa !87
  %cmp8 = icmp eq i32 %30, 127
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %31 = load i32, i32* %pixel, align 4, !tbaa !7
  %32 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval11 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %32, i32 0, i32 8
  %33 = load i32, i32* %mval11, align 4, !tbaa !87
  %sub = sub nsw i32 %31, %33
  %mul = mul nsw i32 %sub, 2
  %sub12 = sub nsw i32 %mul, 1
  %div = sdiv i32 %sub12, 2
  store i32 %div, i32* %pixel, align 4, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %if.then
  %34 = load i32, i32* %pixel, align 4, !tbaa !7
  %35 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval13 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %35, i32 0, i32 8
  %36 = load i32, i32* %mval13, align 4, !tbaa !87
  %sub14 = sub nsw i32 %34, %36
  %mul15 = mul nsw i32 %sub14, 255
  %37 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval16 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %37, i32 0, i32 8
  %38 = load i32, i32* %mval16, align 4, !tbaa !87
  %sub17 = sub nsw i32 255, %38
  %div18 = sdiv i32 %mul15, %sub17
  store i32 %div18, i32* %pixel, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.37

if.else.19:                                       ; preds = %for.body
  store i32 0, i32* %lval, align 4, !tbaa !7
  %39 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval20 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %39, i32 0, i32 8
  %40 = load i32, i32* %mval20, align 4, !tbaa !87
  store i32 %40, i32* %hval, align 4, !tbaa !7
  %41 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval21 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %41, i32 0, i32 8
  %42 = load i32, i32* %mval21, align 4, !tbaa !87
  %cmp22 = icmp ne i32 %42, 255
  br i1 %cmp22, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.else.19
  %43 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval25 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %43, i32 0, i32 8
  %44 = load i32, i32* %mval25, align 4, !tbaa !87
  %cmp26 = icmp eq i32 %44, 127
  br i1 %cmp26, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.then.24
  %45 = load i32, i32* %pixel, align 4, !tbaa !7
  %mul29 = mul nsw i32 %45, 4
  %add = add nsw i32 %mul29, 1
  %div30 = sdiv i32 %add, 2
  store i32 %div30, i32* %pixel, align 4, !tbaa !7
  br label %if.end.35

if.else.31:                                       ; preds = %if.then.24
  %46 = load i32, i32* %pixel, align 4, !tbaa !7
  %mul32 = mul nsw i32 %46, 255
  %47 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval33 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %47, i32 0, i32 8
  %48 = load i32, i32* %mval33, align 4, !tbaa !87
  %div34 = sdiv i32 %mul32, %48
  store i32 %div34, i32* %pixel, align 4, !tbaa !7
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else.19
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %49 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool = icmp ne i8* %49, null
  br i1 %tobool, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.end.37
  %50 = load i8*, i8** %block, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !51
  %conv38 = zext i8 %51 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true
  %52 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %52, align 1, !tbaa !51
  br label %if.end.52

if.else.41:                                       ; preds = %land.lhs.true, %if.end.37
  %53 = load i32, i32* %pixel, align 4, !tbaa !7
  %54 = load i32, i32* %mx, align 4, !tbaa !7
  %idxprom42 = sext i32 %54 to i64
  %55 = load i8*, i8** %matrix, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %55, i64 %idxprom42
  %56 = load i8, i8* %arrayidx43, align 1, !tbaa !51
  %conv44 = zext i8 %56 to i32
  %cmp45 = icmp sge i32 %53, %conv44
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.else.41
  %57 = load i32, i32* %hval, align 4, !tbaa !7
  %conv48 = trunc i32 %57 to i8
  %58 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 %conv48, i8* %58, align 1, !tbaa !51
  br label %if.end.51

if.else.49:                                       ; preds = %if.else.41
  %59 = load i32, i32* %lval, align 4, !tbaa !7
  %conv50 = trunc i32 %59 to i8
  %60 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 %conv50, i8* %60, align 1, !tbaa !51
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.40
  %61 = load i8*, i8** %res, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %res, align 8, !tbaa !1
  %62 = load i32, i32* %mx, align 4, !tbaa !7
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %mx, align 4, !tbaa !7
  %cmp53 = icmp eq i32 %inc, 16
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  store i32 0, i32* %mx, align 4, !tbaa !7
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %63 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool57 = icmp ne i8* %63, null
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.56
  %64 = load i8*, i8** %block, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr59, i8** %block, align 8, !tbaa !1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.56
  %65 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %step = getelementptr inbounds %struct.HTONE, %struct.HTONE* %65, i32 0, i32 2
  %66 = load i32, i32* %step, align 4, !tbaa !89
  %67 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %68 = load i32, i32* %x, align 4, !tbaa !7
  %inc61 = add nsw i32 %68, 1
  store i32 %inc61, i32* %x, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = bitcast i32* %hval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %lval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %mx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i8** %matrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i8** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @BendorThold(%struct.RENDER* %p) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  ret i32 5
}

; Function Attrs: nounwind uwtable
define internal void @BendorStart(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.RENDER, %struct.RENDER* %0, i32 0, i32 12
  %arraydecay = getelementptr inbounds [3 x [4 x [16500 x i16]]], [3 x [4 x [16500 x i16]]]* %err, i32 0, i32 0
  %1 = bitcast [4 x [16500 x i16]]* %arraydecay to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 132000) #5
  %2 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %2, i32 0, i32 12
  %arrayidx = getelementptr inbounds [3 x [4 x [16500 x i16]]], [3 x [4 x [16500 x i16]]]* %err1, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x [16500 x i16]], [4 x [16500 x i16]]* %arrayidx, i32 0, i32 0
  %3 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.RENDER, %struct.RENDER* %3, i32 0, i32 13
  %arrayidx3 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error, i32 0, i64 0
  store [16500 x i16]* %arraydecay2, [16500 x i16]** %arrayidx3, align 8, !tbaa !1
  %4 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %4, i32 0, i32 12
  %arrayidx5 = getelementptr inbounds [3 x [4 x [16500 x i16]]], [3 x [4 x [16500 x i16]]]* %err4, i32 0, i64 1
  %arraydecay6 = getelementptr inbounds [4 x [16500 x i16]], [4 x [16500 x i16]]* %arrayidx5, i32 0, i32 0
  %5 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error7 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %5, i32 0, i32 13
  %arrayidx8 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error7, i32 0, i64 1
  store [16500 x i16]* %arraydecay6, [16500 x i16]** %arrayidx8, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BendorEol(%struct.RENDER* %p, i32 %line) #1 {
entry:
  %p.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  %x = alloca i8*, align 8
  store %struct.RENDER* %p, %struct.RENDER** %p.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = bitcast i8** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.RENDER, %struct.RENDER* %1, i32 0, i32 13
  %arrayidx = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error, i32 0, i64 0
  %2 = load [16500 x i16]*, [16500 x i16]** %arrayidx, align 8, !tbaa !1
  %3 = bitcast [16500 x i16]* %2 to i8*
  store i8* %3, i8** %x, align 8, !tbaa !1
  %4 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error1 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %4, i32 0, i32 13
  %arrayidx2 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error1, i32 0, i64 1
  %5 = load [16500 x i16]*, [16500 x i16]** %arrayidx2, align 8, !tbaa !1
  %6 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error3 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %6, i32 0, i32 13
  %arrayidx4 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error3, i32 0, i64 0
  store [16500 x i16]* %5, [16500 x i16]** %arrayidx4, align 8, !tbaa !1
  %7 = load i8*, i8** %x, align 8, !tbaa !1
  %8 = bitcast i8* %7 to [16500 x i16]*
  %9 = load %struct.RENDER*, %struct.RENDER** %p.addr, align 8, !tbaa !1
  %error5 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %9, i32 0, i32 13
  %arrayidx6 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error5, i32 0, i64 1
  store [16500 x i16]* %8, [16500 x i16]** %arrayidx6, align 8, !tbaa !1
  %10 = bitcast i8** %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BendorLine(%struct.HTONE* %htone, i32 %y) #1 {
entry:
  %htone.addr = alloca %struct.HTONE*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixerr = alloca i32, align 4
  %pixe14 = alloca i32, align 4
  %sval = alloca i32, align 4
  %splash = alloca i32, align 4
  %leakage = alloca i32, align 4
  %length = alloca i32, align 4
  %res = alloca i8*, align 8
  %data = alloca i8*, align 8
  %block = alloca i8*, align 8
  %lim1 = alloca i32, align 4
  %lim2 = alloca i32, align 4
  %e0 = alloca i16, align 2
  %e1 = alloca i16, align 2
  %l0 = alloca i16*, align 8
  %l1 = alloca i16*, align 8
  store %struct.HTONE* %htone, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !7
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %pixerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %pixe14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %sval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %splash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %leakage to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i8** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %lim1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %lim2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i16* %e0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #2
  %14 = bitcast i16* %e1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = bitcast i16** %l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i16** %l1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.HTONE, %struct.HTONE* %17, i32 0, i32 0
  %18 = load %struct.RENDER*, %struct.RENDER** %render, align 8, !tbaa !82
  %dev = getelementptr inbounds %struct.RENDER, %struct.RENDER* %18, i32 0, i32 0
  %19 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !37
  %splash1 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %19, i32 0, i32 71
  %20 = load i32, i32* %splash1, align 4, !tbaa !90
  store i32 %20, i32* %splash, align 4, !tbaa !7
  %21 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %render2 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %21, i32 0, i32 0
  %22 = load %struct.RENDER*, %struct.RENDER** %render2, align 8, !tbaa !82
  %dev3 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %22, i32 0, i32 0
  %23 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev3, align 8, !tbaa !37
  %splash4 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %23, i32 0, i32 71
  %24 = load i32, i32* %splash4, align 4, !tbaa !90
  store i32 %24, i32* %leakage, align 4, !tbaa !7
  %25 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %render5 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %25, i32 0, i32 0
  %26 = load %struct.RENDER*, %struct.RENDER** %render5, align 8, !tbaa !82
  %width = getelementptr inbounds %struct.RENDER, %struct.RENDER* %26, i32 0, i32 5
  %27 = load i32, i32* %width, align 4, !tbaa !40
  store i32 %27, i32* %length, align 4, !tbaa !7
  %28 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %res6 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %28, i32 0, i32 3
  %29 = load i8*, i8** %res6, align 8, !tbaa !84
  store i8* %29, i8** %res, align 8, !tbaa !1
  %30 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %30, i32 0, i32 1
  %31 = load i8*, i8** %data7, align 8, !tbaa !85
  store i8* %31, i8** %data, align 8, !tbaa !1
  %32 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %block8 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %32, i32 0, i32 4
  %33 = load i8*, i8** %block8, align 8, !tbaa !86
  store i8* %33, i8** %block, align 8, !tbaa !1
  %34 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval = getelementptr inbounds %struct.HTONE, %struct.HTONE* %34, i32 0, i32 8
  %35 = load i32, i32* %mval, align 4, !tbaa !87
  %div = sdiv i32 %35, 2
  store i32 %div, i32* %lim1, align 4, !tbaa !7
  %36 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval9 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %36, i32 0, i32 8
  %37 = load i32, i32* %mval9, align 4, !tbaa !87
  %add = add nsw i32 %37, 256
  %div10 = sdiv i32 %add, 2
  store i32 %div10, i32* %lim2, align 4, !tbaa !7
  %38 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.HTONE, %struct.HTONE* %38, i32 0, i32 5
  %39 = load i16**, i16*** %err, align 8, !tbaa !88
  %arrayidx = getelementptr inbounds i16*, i16** %39, i64 0
  %40 = load i16*, i16** %arrayidx, align 8, !tbaa !1
  store i16* %40, i16** %l0, align 8, !tbaa !1
  %41 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %41, i32 0, i32 5
  %42 = load i16**, i16*** %err11, align 8, !tbaa !88
  %arrayidx12 = getelementptr inbounds i16*, i16** %42, i64 1
  %43 = load i16*, i16** %arrayidx12, align 8, !tbaa !1
  store i16* %43, i16** %l1, align 8, !tbaa !1
  %44 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %44, i64 2
  %45 = load i16, i16* %arrayidx13, align 2, !tbaa !50
  store i16 %45, i16* %e0, align 2, !tbaa !50
  %46 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %46, i64 3
  %47 = load i16, i16* %arrayidx14, align 2, !tbaa !50
  store i16 %47, i16* %e1, align 2, !tbaa !50
  %48 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %48, i64 2
  store i16 0, i16* %arrayidx15, align 2, !tbaa !50
  %49 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %49, i64 3
  store i16 0, i16* %arrayidx16, align 2, !tbaa !50
  store i32 0, i32* %x, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %50 = load i32, i32* %x, align 4, !tbaa !7
  %51 = load i32, i32* %length, align 4, !tbaa !7
  %cmp = icmp slt i32 %50, %51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %52, align 1, !tbaa !51
  %53 = load i8*, i8** %data, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !51
  %conv = zext i8 %54 to i32
  %shl = shl i32 %conv, 7
  %55 = load i16, i16* %e0, align 2, !tbaa !50
  %conv17 = sext i16 %55 to i32
  %add18 = add nsw i32 %shl, %conv17
  store i32 %add18, i32* %pixel, align 4, !tbaa !7
  %56 = load i16, i16* %e1, align 2, !tbaa !50
  store i16 %56, i16* %e0, align 2, !tbaa !50
  %57 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %57, i64 4
  %58 = load i16, i16* %arrayidx19, align 2, !tbaa !50
  %conv20 = sext i16 %58 to i32
  %59 = load i32, i32* %pixel, align 4, !tbaa !7
  %and = and i32 %59, 127
  %add21 = add nsw i32 %conv20, %and
  %conv22 = trunc i32 %add21 to i16
  store i16 %conv22, i16* %e1, align 2, !tbaa !50
  %60 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %60, i64 4
  store i16 0, i16* %arrayidx23, align 2, !tbaa !50
  %61 = load i32, i32* %pixel, align 4, !tbaa !7
  %shr = ashr i32 %61, 7
  store i32 %shr, i32* %pixel, align 4, !tbaa !7
  %62 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool = icmp ne i8* %62, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %63 = load i8*, i8** %block, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !51
  %conv24 = zext i8 %64 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %65 = load i32, i32* %pixel, align 4, !tbaa !7
  %66 = load i32, i32* %lim1, align 4, !tbaa !7
  %cmp26 = icmp slt i32 %65, %66
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %67 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 0, i8* %67, align 1, !tbaa !51
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false
  %68 = load i32, i32* %pixel, align 4, !tbaa !7
  %69 = load i32, i32* %lim2, align 4, !tbaa !7
  %cmp28 = icmp sge i32 %68, %69
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else
  %70 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 -1, i8* %70, align 1, !tbaa !51
  br label %if.end

if.else.31:                                       ; preds = %if.else
  %71 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %mval32 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %71, i32 0, i32 8
  %72 = load i32, i32* %mval32, align 4, !tbaa !87
  %conv33 = trunc i32 %72 to i8
  %73 = load i8*, i8** %res, align 8, !tbaa !1
  store i8 %conv33, i8* %73, align 1, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then
  %74 = load i32, i32* %pixel, align 4, !tbaa !7
  %75 = load i8*, i8** %res, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !51
  %conv35 = zext i8 %76 to i32
  %sub = sub nsw i32 %74, %conv35
  store i32 %sub, i32* %pixerr, align 4, !tbaa !7
  %77 = load i32, i32* %leakage, align 4, !tbaa !7
  %tobool36 = icmp ne i32 %77, 0
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %78 = load i32, i32* %pixerr, align 4, !tbaa !7
  %79 = load i32, i32* %leakage, align 4, !tbaa !7
  %mul = mul nsw i32 %78, %79
  %div38 = sdiv i32 %mul, 100
  %80 = load i32, i32* %pixerr, align 4, !tbaa !7
  %sub39 = sub nsw i32 %80, %div38
  store i32 %sub39, i32* %pixerr, align 4, !tbaa !7
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.34
  %81 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl41 = shl i32 %81, 1
  store i32 %shl41, i32* %pixerr, align 4, !tbaa !7
  %82 = load i32, i32* %pixerr, align 4, !tbaa !7
  store i32 %82, i32* %pixe14, align 4, !tbaa !7
  %83 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl42 = shl i32 %83, 1
  store i32 %shl42, i32* %pixerr, align 4, !tbaa !7
  %84 = load i32, i32* %pixerr, align 4, !tbaa !7
  %85 = load i32, i32* %pixe14, align 4, !tbaa !7
  %add43 = add nsw i32 %85, %84
  store i32 %add43, i32* %pixe14, align 4, !tbaa !7
  %86 = load i32, i32* %pixerr, align 4, !tbaa !7
  %87 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %87, i64 0
  %88 = load i16, i16* %arrayidx44, align 2, !tbaa !50
  %conv45 = sext i16 %88 to i32
  %add46 = add nsw i32 %conv45, %86
  %conv47 = trunc i32 %add46 to i16
  store i16 %conv47, i16* %arrayidx44, align 2, !tbaa !50
  %89 = load i32, i32* %pixerr, align 4, !tbaa !7
  %90 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %90, i64 4
  %91 = load i16, i16* %arrayidx48, align 2, !tbaa !50
  %conv49 = sext i16 %91 to i32
  %add50 = add nsw i32 %conv49, %89
  %conv51 = trunc i32 %add50 to i16
  store i16 %conv51, i16* %arrayidx48, align 2, !tbaa !50
  %92 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl52 = shl i32 %92, 1
  store i32 %shl52, i32* %pixerr, align 4, !tbaa !7
  %93 = load i32, i32* %pixerr, align 4, !tbaa !7
  %94 = load i32, i32* %pixe14, align 4, !tbaa !7
  %add53 = add nsw i32 %94, %93
  store i32 %add53, i32* %pixe14, align 4, !tbaa !7
  %95 = load i32, i32* %pixerr, align 4, !tbaa !7
  %96 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i16, i16* %96, i64 1
  %97 = load i16, i16* %arrayidx54, align 2, !tbaa !50
  %conv55 = sext i16 %97 to i32
  %add56 = add nsw i32 %conv55, %95
  %conv57 = trunc i32 %add56 to i16
  store i16 %conv57, i16* %arrayidx54, align 2, !tbaa !50
  %98 = load i32, i32* %pixerr, align 4, !tbaa !7
  %99 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i16, i16* %99, i64 3
  %100 = load i16, i16* %arrayidx58, align 2, !tbaa !50
  %conv59 = sext i16 %100 to i32
  %add60 = add nsw i32 %conv59, %98
  %conv61 = trunc i32 %add60 to i16
  store i16 %conv61, i16* %arrayidx58, align 2, !tbaa !50
  %101 = load i32, i32* %pixerr, align 4, !tbaa !7
  %102 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i16, i16* %102, i64 0
  %103 = load i16, i16* %arrayidx62, align 2, !tbaa !50
  %conv63 = sext i16 %103 to i32
  %add64 = add nsw i32 %conv63, %101
  %conv65 = trunc i32 %add64 to i16
  store i16 %conv65, i16* %arrayidx62, align 2, !tbaa !50
  %104 = load i32, i32* %pixerr, align 4, !tbaa !7
  %105 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i16, i16* %105, i64 4
  %106 = load i16, i16* %arrayidx66, align 2, !tbaa !50
  %conv67 = sext i16 %106 to i32
  %add68 = add nsw i32 %conv67, %104
  %conv69 = trunc i32 %add68 to i16
  store i16 %conv69, i16* %arrayidx66, align 2, !tbaa !50
  %107 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shr70 = ashr i32 %107, 2
  %108 = load i32, i32* %pixerr, align 4, !tbaa !7
  %add71 = add nsw i32 %108, %shr70
  store i32 %add71, i32* %pixerr, align 4, !tbaa !7
  %109 = load i32, i32* %pixerr, align 4, !tbaa !7
  %110 = load i16*, i16** %l0, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i16, i16* %110, i64 2
  %111 = load i16, i16* %arrayidx72, align 2, !tbaa !50
  %conv73 = sext i16 %111 to i32
  %add74 = add nsw i32 %conv73, %109
  %conv75 = trunc i32 %add74 to i16
  store i16 %conv75, i16* %arrayidx72, align 2, !tbaa !50
  %112 = load i32, i32* %pixerr, align 4, !tbaa !7
  %113 = load i16, i16* %e1, align 2, !tbaa !50
  %conv76 = sext i16 %113 to i32
  %add77 = add nsw i32 %conv76, %112
  %conv78 = trunc i32 %add77 to i16
  store i16 %conv78, i16* %e1, align 2, !tbaa !50
  %114 = load i32, i32* %pixerr, align 4, !tbaa !7
  %shl79 = shl i32 %114, 1
  store i32 %shl79, i32* %pixerr, align 4, !tbaa !7
  %115 = load i32, i32* %pixerr, align 4, !tbaa !7
  %116 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i16, i16* %116, i64 2
  %117 = load i16, i16* %arrayidx80, align 2, !tbaa !50
  %conv81 = sext i16 %117 to i32
  %add82 = add nsw i32 %conv81, %115
  %conv83 = trunc i32 %add82 to i16
  store i16 %conv83, i16* %arrayidx80, align 2, !tbaa !50
  %118 = load i32, i32* %pixerr, align 4, !tbaa !7
  %119 = load i16, i16* %e0, align 2, !tbaa !50
  %conv84 = sext i16 %119 to i32
  %add85 = add nsw i32 %conv84, %118
  %conv86 = trunc i32 %add85 to i16
  store i16 %conv86, i16* %e0, align 2, !tbaa !50
  %120 = load i32, i32* %pixe14, align 4, !tbaa !7
  %121 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i16, i16* %121, i64 1
  %122 = load i16, i16* %arrayidx87, align 2, !tbaa !50
  %conv88 = sext i16 %122 to i32
  %add89 = add nsw i32 %conv88, %120
  %conv90 = trunc i32 %add89 to i16
  store i16 %conv90, i16* %arrayidx87, align 2, !tbaa !50
  %123 = load i32, i32* %pixe14, align 4, !tbaa !7
  %124 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %124, i64 3
  %125 = load i16, i16* %arrayidx91, align 2, !tbaa !50
  %conv92 = sext i16 %125 to i32
  %add93 = add nsw i32 %conv92, %123
  %conv94 = trunc i32 %add93 to i16
  store i16 %conv94, i16* %arrayidx91, align 2, !tbaa !50
  %126 = load i32, i32* %splash, align 4, !tbaa !7
  %tobool95 = icmp ne i32 %126, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.119

land.lhs.true.96:                                 ; preds = %if.end.40
  %127 = load i8*, i8** %res, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !51
  %conv97 = zext i8 %128 to i32
  %tobool98 = icmp ne i32 %conv97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.119

if.then.99:                                       ; preds = %land.lhs.true.96
  %129 = load i32, i32* %splash, align 4, !tbaa !7
  %130 = load i8*, i8** %res, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !51
  %conv100 = zext i8 %131 to i32
  %mul101 = mul nsw i32 %129, %conv100
  store i32 %mul101, i32* %sval, align 4, !tbaa !7
  %132 = load i32, i32* %sval, align 4, !tbaa !7
  %133 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i16, i16* %133, i64 1
  %134 = load i16, i16* %arrayidx102, align 2, !tbaa !50
  %conv103 = sext i16 %134 to i32
  %sub104 = sub nsw i32 %conv103, %132
  %conv105 = trunc i32 %sub104 to i16
  store i16 %conv105, i16* %arrayidx102, align 2, !tbaa !50
  %135 = load i32, i32* %sval, align 4, !tbaa !7
  %136 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i16, i16* %136, i64 3
  %137 = load i16, i16* %arrayidx106, align 2, !tbaa !50
  %conv107 = sext i16 %137 to i32
  %sub108 = sub nsw i32 %conv107, %135
  %conv109 = trunc i32 %sub108 to i16
  store i16 %conv109, i16* %arrayidx106, align 2, !tbaa !50
  %138 = load i32, i32* %sval, align 4, !tbaa !7
  %shr110 = ashr i32 %138, 1
  %139 = load i32, i32* %sval, align 4, !tbaa !7
  %add111 = add nsw i32 %139, %shr110
  store i32 %add111, i32* %sval, align 4, !tbaa !7
  %140 = load i32, i32* %sval, align 4, !tbaa !7
  %141 = load i16, i16* %e0, align 2, !tbaa !50
  %conv112 = sext i16 %141 to i32
  %sub113 = sub nsw i32 %conv112, %140
  %conv114 = trunc i32 %sub113 to i16
  store i16 %conv114, i16* %e0, align 2, !tbaa !50
  %142 = load i32, i32* %sval, align 4, !tbaa !7
  %143 = load i16*, i16** %l1, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i16, i16* %143, i64 2
  %144 = load i16, i16* %arrayidx115, align 2, !tbaa !50
  %conv116 = sext i16 %144 to i32
  %sub117 = sub nsw i32 %conv116, %142
  %conv118 = trunc i32 %sub117 to i16
  store i16 %conv118, i16* %arrayidx115, align 2, !tbaa !50
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.99, %land.lhs.true.96, %if.end.40
  %145 = load i8*, i8** %res, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr, i8** %res, align 8, !tbaa !1
  %146 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool120 = icmp ne i8* %146, null
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.119
  %147 = load i8*, i8** %block, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr122, i8** %block, align 8, !tbaa !1
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.119
  %148 = load %struct.HTONE*, %struct.HTONE** %htone.addr, align 8, !tbaa !1
  %step = getelementptr inbounds %struct.HTONE, %struct.HTONE* %148, i32 0, i32 2
  %149 = load i32, i32* %step, align 4, !tbaa !89
  %150 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = sext i32 %149 to i64
  %add.ptr = getelementptr inbounds i8, i8* %150, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %151 = load i16*, i16** %l0, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i16, i16* %151, i32 1
  store i16* %incdec.ptr124, i16** %l0, align 8, !tbaa !1
  %152 = load i16*, i16** %l1, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i16, i16* %152, i32 1
  store i16* %incdec.ptr125, i16** %l1, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %153 = load i32, i32* %x, align 4, !tbaa !7
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %x, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %154 = bitcast i16** %l1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast i16** %l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast i16* %e1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %156) #2
  %157 = bitcast i16* %e0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %157) #2
  %158 = bitcast i32* %lim2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %lim1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i8** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %leakage to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %splash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %sval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i32* %pixe14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32* %pixerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @SchedulerInit(%struct.SCHEDUL* %p) #1 {
entry:
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %i = alloca i32, align 4
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %1, i32 0, i32 6
  store i32 0, i32* %top, align 4, !tbaa !76
  %2 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %2, i32 0, i32 1
  %3 = load i32, i32* %resol, align 4, !tbaa !81
  switch i32 %3, label %sw.epilog [
    i32 360, label %sw.bb
    i32 720, label %sw.bb.2
    i32 1440, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %4, i32 0, i32 5
  store i32 0, i32* %offset, align 4, !tbaa !91
  %5 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol1 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %5, i32 0, i32 1
  store i32 1, i32* %resol1, align 4, !tbaa !81
  %6 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %nozzle = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %6, i32 0, i32 2
  store i32 1, i32* %nozzle, align 4, !tbaa !77
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset3 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %7, i32 0, i32 5
  store i32 0, i32* %offset3, align 4, !tbaa !91
  %8 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol4 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %8, i32 0, i32 1
  store i32 31, i32* %resol4, align 4, !tbaa !81
  %9 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %nozzle5 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %9, i32 0, i32 2
  store i32 32, i32* %nozzle5, align 4, !tbaa !77
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset7 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %10, i32 0, i32 5
  store i32 1, i32* %offset7, align 4, !tbaa !91
  %11 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol8 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %11, i32 0, i32 1
  store i32 13, i32* %resol8, align 4, !tbaa !81
  %12 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %nozzle9 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %12, i32 0, i32 2
  store i32 32, i32* %nozzle9, align 4, !tbaa !77
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.6, %sw.bb.2, %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %13, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %head, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.15, %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %17, 256
  br i1 %cmp11, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %19, i32 0, i32 8
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !51
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !7
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  %21 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %markbeg = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %21, i32 0, i32 7
  store i32 0, i32* %markbeg, align 4, !tbaa !80
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ScheduleLeading(%struct.SCHEDUL* %p) #1 {
entry:
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %i = alloca i32, align 4
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %1, i32 0, i32 1
  %2 = load i32, i32* %resol, align 4, !tbaa !81
  %cmp = icmp eq i32 %2, 31
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %entry
  %3 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %3, i32 0, i32 4
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %head, i32 0, i32 0
  %4 = bitcast i32* %arraydecay to i8*
  %5 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %5, i32 0, i32 6
  %6 = load i32, i32* %top, align 4, !tbaa !76
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [8 x [32 x i32]], [8 x [32 x i32]]* @start_720, i32 0, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i32 0
  %7 = bitcast i32* %arraydecay1 to i8*
  %call = call i8* @memcpy(i8* %4, i8* %7, i64 128) #5
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %8, 32
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head4 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %10, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %head4, i32 0, i64 %idxprom3
  %11 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %cmp6 = icmp ne i32 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head9 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %13, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %head9, i32 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx10, align 4, !tbaa !7
  %rem = srem i32 %14, 256
  %idxprom11 = sext i32 %rem to i64
  %15 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %15, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom11
  store i8 1, i8* %arrayidx12, align 1, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top13 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %17, i32 0, i32 6
  %18 = load i32, i32* %top13, align 4, !tbaa !76
  %cmp14 = icmp eq i32 %18, 7
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.end
  %19 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top16 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %19, i32 0, i32 6
  %20 = load i32, i32* %top16, align 4, !tbaa !76
  %sub = sub nsw i32 31, %20
  %21 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %21, i32 0, i32 3
  store i32 %sub, i32* %down, align 4, !tbaa !78
  %22 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top17 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %22, i32 0, i32 6
  store i32 31, i32* %top17, align 4, !tbaa !76
  br label %if.end.21

if.else:                                          ; preds = %for.end
  %23 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down18 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %23, i32 0, i32 3
  store i32 1, i32* %down18, align 4, !tbaa !78
  %24 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top19 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %24, i32 0, i32 6
  %25 = load i32, i32* %top19, align 4, !tbaa !76
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %top19, align 4, !tbaa !76
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.15
  br label %if.end.95

if.else.22:                                       ; preds = %entry
  %26 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %26, i32 0, i32 5
  %27 = load i32, i32* %offset, align 4, !tbaa !91
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.23, label %if.else.52

if.then.23:                                       ; preds = %if.else.22
  %28 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head24 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %28, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [32 x i32], [32 x i32]* %head24, i32 0, i32 0
  %29 = bitcast i32* %arraydecay25 to i8*
  %30 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top26 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %30, i32 0, i32 6
  %31 = load i32, i32* %top26, align 4, !tbaa !76
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds [8 x [32 x i32]], [8 x [32 x i32]]* getelementptr inbounds ([2 x [8 x [32 x i32]]], [2 x [8 x [32 x i32]]]* @start_1440, i32 0, i64 0), i32 0, i64 %idxprom27
  %arraydecay29 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx28, i32 0, i32 0
  %32 = bitcast i32* %arraydecay29 to i8*
  %call30 = call i8* @memcpy(i8* %29, i8* %32, i64 128) #5
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.47, %if.then.23
  %33 = load i32, i32* %i, align 4, !tbaa !7
  %cmp32 = icmp slt i32 %33, 32
  br i1 %cmp32, label %for.body.33, label %for.end.49

for.body.33:                                      ; preds = %for.cond.31
  %34 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head35 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %35, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %head35, i32 0, i64 %idxprom34
  %36 = load i32, i32* %arrayidx36, align 4, !tbaa !7
  %cmp37 = icmp ne i32 %36, -1
  br i1 %cmp37, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %for.body.33
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom39 = sext i32 %37 to i64
  %38 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head40 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %38, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* %head40, i32 0, i64 %idxprom39
  %39 = load i32, i32* %arrayidx41, align 4, !tbaa !7
  %rem42 = srem i32 %39, 256
  %idxprom43 = sext i32 %rem42 to i64
  %40 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark44 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %40, i32 0, i32 8
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* %mark44, i32 0, i64 %idxprom43
  store i8 1, i8* %arrayidx45, align 1, !tbaa !51
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.38, %for.body.33
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %41 = load i32, i32* %i, align 4, !tbaa !7
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !7
  br label %for.cond.31

for.end.49:                                       ; preds = %for.cond.31
  %42 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset50 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %42, i32 0, i32 5
  store i32 0, i32* %offset50, align 4, !tbaa !91
  %43 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down51 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %43, i32 0, i32 3
  store i32 0, i32* %down51, align 4, !tbaa !78
  br label %if.end.94

if.else.52:                                       ; preds = %if.else.22
  %44 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head53 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %44, i32 0, i32 4
  %arraydecay54 = getelementptr inbounds [32 x i32], [32 x i32]* %head53, i32 0, i32 0
  %45 = bitcast i32* %arraydecay54 to i8*
  %46 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top55 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %46, i32 0, i32 6
  %47 = load i32, i32* %top55, align 4, !tbaa !76
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [8 x [32 x i32]], [8 x [32 x i32]]* getelementptr inbounds ([2 x [8 x [32 x i32]]], [2 x [8 x [32 x i32]]]* @start_1440, i32 0, i64 1), i32 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx57, i32 0, i32 0
  %48 = bitcast i32* %arraydecay58 to i8*
  %call59 = call i8* @memcpy(i8* %45, i8* %48, i64 128) #5
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.77, %if.else.52
  %49 = load i32, i32* %i, align 4, !tbaa !7
  %cmp61 = icmp slt i32 %49, 32
  br i1 %cmp61, label %for.body.62, label %for.end.79

for.body.62:                                      ; preds = %for.cond.60
  %50 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom63 = sext i32 %50 to i64
  %51 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head64 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %51, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %head64, i32 0, i64 %idxprom63
  %52 = load i32, i32* %arrayidx65, align 4, !tbaa !7
  %cmp66 = icmp ne i32 %52, -1
  br i1 %cmp66, label %if.then.67, label %if.end.76

if.then.67:                                       ; preds = %for.body.62
  %53 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom68 = sext i32 %53 to i64
  %54 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head69 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %54, i32 0, i32 4
  %arrayidx70 = getelementptr inbounds [32 x i32], [32 x i32]* %head69, i32 0, i64 %idxprom68
  %55 = load i32, i32* %arrayidx70, align 4, !tbaa !7
  %rem71 = srem i32 %55, 256
  %idxprom72 = sext i32 %rem71 to i64
  %56 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark73 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %56, i32 0, i32 8
  %arrayidx74 = getelementptr inbounds [256 x i8], [256 x i8]* %mark73, i32 0, i64 %idxprom72
  %57 = load i8, i8* %arrayidx74, align 1, !tbaa !51
  %conv = zext i8 %57 to i32
  %or = or i32 %conv, 2
  %conv75 = trunc i32 %or to i8
  store i8 %conv75, i8* %arrayidx74, align 1, !tbaa !51
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.67, %for.body.62
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %58 = load i32, i32* %i, align 4, !tbaa !7
  %inc78 = add nsw i32 %58, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !7
  br label %for.cond.60

for.end.79:                                       ; preds = %for.cond.60
  %59 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top80 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %59, i32 0, i32 6
  %60 = load i32, i32* %top80, align 4, !tbaa !76
  %cmp81 = icmp eq i32 %60, 7
  br i1 %cmp81, label %if.then.83, label %if.else.88

if.then.83:                                       ; preds = %for.end.79
  %61 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top84 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %61, i32 0, i32 6
  %62 = load i32, i32* %top84, align 4, !tbaa !76
  %sub85 = sub nsw i32 13, %62
  %63 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down86 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %63, i32 0, i32 3
  store i32 %sub85, i32* %down86, align 4, !tbaa !78
  %64 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top87 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %64, i32 0, i32 6
  store i32 13, i32* %top87, align 4, !tbaa !76
  br label %if.end.92

if.else.88:                                       ; preds = %for.end.79
  %65 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down89 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %65, i32 0, i32 3
  store i32 1, i32* %down89, align 4, !tbaa !78
  %66 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top90 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %66, i32 0, i32 6
  %67 = load i32, i32* %top90, align 4, !tbaa !76
  %inc91 = add nsw i32 %67, 1
  store i32 %inc91, i32* %top90, align 4, !tbaa !76
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.88, %if.then.83
  %68 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset93 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %68, i32 0, i32 5
  store i32 1, i32* %offset93, align 4, !tbaa !91
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.92, %for.end.49
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.21
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ScheduleTrailing(%struct.SCHEDUL* %p) #1 {
entry:
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %mask = alloca i32, align 4
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %1, i32 0, i32 3
  %2 = load i32, i32* %down, align 4, !tbaa !78
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %3, i32 0, i32 5
  store i32 1, i32* %offset, align 4, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %4, i32 0, i32 1
  %5 = load i32, i32* %resol, align 4, !tbaa !81
  %cmp1 = icmp eq i32 %5, 31
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset3 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %6, i32 0, i32 5
  store i32 0, i32* %offset3, align 4, !tbaa !91
  %7 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down4 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %7, i32 0, i32 3
  store i32 1, i32* %down4, align 4, !tbaa !78
  store i32 1, i32* %mask, align 4, !tbaa !7
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %8 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset5 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %8, i32 0, i32 5
  %9 = load i32, i32* %offset5, align 4, !tbaa !91
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %10 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset7 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %10, i32 0, i32 5
  store i32 0, i32* %offset7, align 4, !tbaa !91
  %11 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down8 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %11, i32 0, i32 3
  store i32 0, i32* %down8, align 4, !tbaa !78
  store i32 1, i32* %mask, align 4, !tbaa !7
  br label %if.end.12

if.else.9:                                        ; preds = %if.else
  %12 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset10 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %12, i32 0, i32 5
  store i32 1, i32* %offset10, align 4, !tbaa !91
  %13 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down11 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %13, i32 0, i32 3
  store i32 1, i32* %down11, align 4, !tbaa !78
  store i32 2, i32* %mask, align 4, !tbaa !7
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %14 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %15 = load i32, i32* %mask, align 4, !tbaa !7
  call void @ScheduleBand(%struct.SCHEDUL* %14, i32 %15) #4
  %16 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down14 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %16, i32 0, i32 3
  %17 = load i32, i32* %down14, align 4, !tbaa !78
  %18 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %18, i32 0, i32 6
  %19 = load i32, i32* %top, align 4, !tbaa !76
  %add = add nsw i32 %19, %17
  store i32 %add, i32* %top, align 4, !tbaa !76
  %20 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ScheduleMiddle(%struct.SCHEDUL* %p) #1 {
entry:
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %ph0 = alloca i32, align 4
  %ph1 = alloca i32, align 4
  %line = alloca i32, align 4
  %mask = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ph0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ph1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %resol = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %5, i32 0, i32 1
  %6 = load i32, i32* %resol, align 4, !tbaa !81
  %cmp = icmp eq i32 %6, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  call void @ScheduleBand(%struct.SCHEDUL* %7, i32 1) #4
  %8 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %8, i32 0, i32 3
  store i32 31, i32* %down, align 4, !tbaa !78
  %9 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %9, i32 0, i32 6
  %10 = load i32, i32* %top, align 4, !tbaa !76
  %add = add nsw i32 %10, 31
  store i32 %add, i32* %top, align 4, !tbaa !76
  br label %if.end.22

if.else:                                          ; preds = %entry
  store i32 0, i32* %ph1, align 4, !tbaa !7
  store i32 0, i32* %ph0, align 4, !tbaa !7
  %11 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top1 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %11, i32 0, i32 6
  %12 = load i32, i32* %top1, align 4, !tbaa !76
  store i32 %12, i32* %line, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %13, 32
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top3 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %14, i32 0, i32 6
  %15 = load i32, i32* %top3, align 4, !tbaa !76
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %mul = mul nsw i32 %16, 8
  %add4 = add nsw i32 %15, %mul
  store i32 %add4, i32* %line, align 4, !tbaa !7
  %17 = load i32, i32* %line, align 4, !tbaa !7
  %rem = srem i32 %17, 256
  %idxprom = sext i32 %rem to i64
  %18 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %18, i32 0, i32 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !51
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 1
  %20 = load i32, i32* %ph0, align 4, !tbaa !7
  %add5 = add nsw i32 %20, %and
  store i32 %add5, i32* %ph0, align 4, !tbaa !7
  %21 = load i32, i32* %line, align 4, !tbaa !7
  %rem6 = srem i32 %21, 256
  %idxprom7 = sext i32 %rem6 to i64
  %22 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark8 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %22, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %mark8, i32 0, i64 %idxprom7
  %23 = load i8, i8* %arrayidx9, align 1, !tbaa !51
  %conv10 = zext i8 %23 to i32
  %and11 = and i32 %conv10, 2
  %24 = load i32, i32* %ph1, align 4, !tbaa !7
  %add12 = add nsw i32 %24, %and11
  store i32 %add12, i32* %ph1, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  %26 = load i32, i32* %line, align 4, !tbaa !7
  %add13 = add nsw i32 %26, 8
  store i32 %add13, i32* %line, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %ph1, align 4, !tbaa !7
  %shr = ashr i32 %27, 1
  store i32 %shr, i32* %ph1, align 4, !tbaa !7
  %28 = load i32, i32* %ph0, align 4, !tbaa !7
  %29 = load i32, i32* %ph1, align 4, !tbaa !7
  %cmp14 = icmp sle i32 %28, %29
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %for.end
  %30 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %30, i32 0, i32 5
  store i32 0, i32* %offset, align 4, !tbaa !91
  store i32 1, i32* %mask, align 4, !tbaa !7
  br label %if.end

if.else.17:                                       ; preds = %for.end
  %31 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %offset18 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %31, i32 0, i32 5
  store i32 1, i32* %offset18, align 4, !tbaa !91
  store i32 2, i32* %mask, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  %32 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %33 = load i32, i32* %mask, align 4, !tbaa !7
  call void @ScheduleBand(%struct.SCHEDUL* %32, i32 %33) #4
  %34 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %down19 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %34, i32 0, i32 3
  store i32 13, i32* %down19, align 4, !tbaa !78
  %35 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top20 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %35, i32 0, i32 6
  %36 = load i32, i32* %top20, align 4, !tbaa !76
  %add21 = add nsw i32 %36, 13
  store i32 %add21, i32* %top20, align 4, !tbaa !76
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %ph1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %ph0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @ScheduleBand(%struct.SCHEDUL* %p, i32 %mask) #1 {
entry:
  %p.addr = alloca %struct.SCHEDUL*, align 8
  %mask.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %line = alloca i32, align 4
  store %struct.SCHEDUL* %p, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %2, i32 0, i32 6
  %3 = load i32, i32* %top, align 4, !tbaa !76
  store i32 %3, i32* %line, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %line, align 4, !tbaa !7
  %rem = srem i32 %5, 256
  %idxprom = sext i32 %rem to i64
  %6 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !51
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %mask.addr, align 4, !tbaa !7
  %and = and i32 %conv, %8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %10, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %head, i32 0, i64 %idxprom1
  store i32 -1, i32* %arrayidx2, align 4, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %line, align 4, !tbaa !7
  %12 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %head4 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %13, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %head4, i32 0, i64 %idxprom3
  store i32 %11, i32* %arrayidx5, align 4, !tbaa !7
  %14 = load i32, i32* %mask.addr, align 4, !tbaa !7
  %15 = load i32, i32* %line, align 4, !tbaa !7
  %rem6 = srem i32 %15, 256
  %idxprom7 = sext i32 %rem6 to i64
  %16 = load %struct.SCHEDUL*, %struct.SCHEDUL** %p.addr, align 8, !tbaa !1
  %mark8 = getelementptr inbounds %struct.SCHEDUL, %struct.SCHEDUL* %16, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %mark8, i32 0, i64 %idxprom7
  %17 = load i8, i8* %arrayidx9, align 1, !tbaa !51
  %conv10 = zext i8 %17 to i32
  %or = or i32 %conv10, %14
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, i8* %arrayidx9, align 1, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  %19 = load i32, i32* %line, align 4, !tbaa !7
  %add = add nsw i32 %19, 8
  store i32 %add, i32* %line, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret void
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @IsScanlineEmpty(%struct.RENDER* %r, i8* %line) #1 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.RENDER* %r, %struct.RENDER** %r.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i64*
  store i64* %3, i64** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %5 = load %struct.RENDER*, %struct.RENDER** %r.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.RENDER, %struct.RENDER* %5, i32 0, i32 5
  %6 = load i32, i32* %width, align 4, !tbaa !40
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %p, align 8, !tbaa !1
  %8 = load i64, i64* %7, align 8, !tbaa !57
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i64** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @HalftoneLine(%struct.RENDER* %render, i32 %line, i8* %data) #1 {
entry:
  %render.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %htone = alloca void (%struct.HTONE*, i32)*, align 8
  %dev = alloca %struct.gx_photoex_device_s*, align 8
  %offs = alloca i32, align 4
  %hdata = alloca %struct.HTONE, align 8
  %errs = alloca [3 x i16*], align 16
  %i = alloca i32, align 4
  store %struct.RENDER* %render, %struct.RENDER** %render.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast void (%struct.HTONE*, i32)** %htone to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.HTONE* %hdata to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast [3 x i16*]* %errs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %6, i32 0, i32 0
  %7 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev1, align 8, !tbaa !37
  store %struct.gx_photoex_device_s* %7, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %8 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %8, i32 0, i32 0
  %9 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev2, align 8, !tbaa !37
  %halftoner = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %9, i32 0, i32 70
  %10 = load i32, i32* %halftoner, align 4, !tbaa !73
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.HFUNCS], [3 x %struct.HFUNCS]* @htable, i32 0, i64 %idxprom
  %htone3 = getelementptr inbounds %struct.HFUNCS, %struct.HFUNCS* %arrayidx, i32 0, i32 3
  %11 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone3, align 8, !tbaa !92
  store void (%struct.HTONE*, i32)* %11, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %12 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %mono = getelementptr inbounds %struct.RENDER, %struct.RENDER* %12, i32 0, i32 7
  %13 = load i32, i32* %mono, align 4, !tbaa !45
  %tobool = icmp ne i32 %13, 0
  %cond = select i1 %tobool, i32 0, i32 3
  store i32 %cond, i32* %offs, align 4, !tbaa !7
  %14 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %mono4 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %14, i32 0, i32 73
  %15 = load i32, i32* %mono4, align 4, !tbaa !44
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %16, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.RENDER, %struct.RENDER* %18, i32 0, i32 13
  %arrayidx7 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error, i32 0, i64 %idxprom6
  %19 = load [16500 x i16]*, [16500 x i16]** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds [16500 x i16], [16500 x i16]* %19, i64 3
  %arraydecay = getelementptr inbounds [16500 x i16], [16500 x i16]* %arrayidx8, i32 0, i32 0
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i64 %idxprom9
  store i16* %arraydecay, i16** %arrayidx10, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %render11 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 0
  store %struct.RENDER* %22, %struct.RENDER** %render11, align 8, !tbaa !82
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 3
  %data12 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 1
  store i8* %add.ptr, i8** %data12, align 8, !tbaa !85
  %step = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 2
  store i32 1, i32* %step, align 4, !tbaa !89
  %24 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res = getelementptr inbounds %struct.RENDER, %struct.RENDER* %24, i32 0, i32 14
  %arrayidx13 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res, i32 0, i64 3
  %arraydecay14 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx13, i32 0, i32 0
  %res15 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 3
  store i8* %arraydecay14, i8** %res15, align 8, !tbaa !84
  %block = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 4
  store i8* null, i8** %block, align 8, !tbaa !86
  %arraydecay16 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i32 0
  %err = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 5
  store i16** %arraydecay16, i16*** %err, align 8, !tbaa !88
  %mval = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 8
  store i32 255, i32* %mval, align 4, !tbaa !87
  %25 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %26 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %25(%struct.HTONE* %hdata, i32 %26) #4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.27, %if.else
  %27 = load i32, i32* %i, align 4, !tbaa !7
  %cmp18 = icmp slt i32 %27, 3
  br i1 %cmp18, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.17
  %28 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %error21 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %29, i32 0, i32 13
  %arrayidx22 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error21, i32 0, i64 %idxprom20
  %30 = load [16500 x i16]*, [16500 x i16]** %arrayidx22, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds [16500 x i16], [16500 x i16]* %30, i64 3
  %arraydecay24 = getelementptr inbounds [16500 x i16], [16500 x i16]* %arrayidx23, i32 0, i32 0
  %31 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i64 %idxprom25
  store i16* %arraydecay24, i16** %arrayidx26, align 8, !tbaa !1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.19
  %32 = load i32, i32* %i, align 4, !tbaa !7
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !7
  br label %for.cond.17

for.end.29:                                       ; preds = %for.cond.17
  %33 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %render30 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 0
  store %struct.RENDER* %33, %struct.RENDER** %render30, align 8, !tbaa !82
  %step31 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 2
  store i32 8, i32* %step31, align 4, !tbaa !89
  %34 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %34, i64 3
  %data33 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 1
  store i8* %add.ptr32, i8** %data33, align 8, !tbaa !85
  %35 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res34 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %35, i32 0, i32 14
  %arrayidx35 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res34, i32 0, i64 3
  %arraydecay36 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx35, i32 0, i32 0
  %res37 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 3
  store i8* %arraydecay36, i8** %res37, align 8, !tbaa !84
  %block38 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 4
  store i8* null, i8** %block38, align 8, !tbaa !86
  %arraydecay39 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i32 0
  %err40 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 5
  store i16** %arraydecay39, i16*** %err40, align 8, !tbaa !88
  %mval41 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 8
  store i32 255, i32* %mval41, align 4, !tbaa !87
  %36 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %37 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %36(%struct.HTONE* %hdata, i32 %37) #4
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.52, %for.end.29
  %38 = load i32, i32* %i, align 4, !tbaa !7
  %cmp43 = icmp slt i32 %38, 3
  br i1 %cmp43, label %for.body.44, label %for.end.54

for.body.44:                                      ; preds = %for.cond.42
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom45 = sext i32 %39 to i64
  %40 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %error46 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %40, i32 0, i32 13
  %arrayidx47 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error46, i32 0, i64 %idxprom45
  %41 = load [16500 x i16]*, [16500 x i16]** %arrayidx47, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds [16500 x i16], [16500 x i16]* %41, i64 2
  %arraydecay49 = getelementptr inbounds [16500 x i16], [16500 x i16]* %arrayidx48, i32 0, i32 0
  %42 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom50 = sext i32 %42 to i64
  %arrayidx51 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i64 %idxprom50
  store i16* %arraydecay49, i16** %arrayidx51, align 8, !tbaa !1
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.44
  %43 = load i32, i32* %i, align 4, !tbaa !7
  %inc53 = add nsw i32 %43, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !7
  br label %for.cond.42

for.end.54:                                       ; preds = %for.cond.42
  %44 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %render55 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 0
  store %struct.RENDER* %44, %struct.RENDER** %render55, align 8, !tbaa !82
  %step56 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 2
  store i32 8, i32* %step56, align 4, !tbaa !89
  %45 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %45, i64 2
  %data58 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 1
  store i8* %add.ptr57, i8** %data58, align 8, !tbaa !85
  %46 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res59 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %46, i32 0, i32 14
  %arrayidx60 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res59, i32 0, i64 2
  %arraydecay61 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx60, i32 0, i32 0
  %res62 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 3
  store i8* %arraydecay61, i8** %res62, align 8, !tbaa !84
  %47 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %pureblack = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %47, i32 0, i32 74
  %48 = load i32, i32* %pureblack, align 4, !tbaa !93
  %tobool63 = icmp ne i32 %48, 0
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.54
  %49 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res64 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %49, i32 0, i32 14
  %arrayidx65 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res64, i32 0, i64 3
  %arraydecay66 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx65, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %for.end.54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond67 = phi i8* [ %arraydecay66, %cond.true ], [ null, %cond.false ]
  %block68 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 4
  store i8* %cond67, i8** %block68, align 8, !tbaa !86
  %arraydecay69 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i32 0
  %err70 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 5
  store i16** %arraydecay69, i16*** %err70, align 8, !tbaa !88
  %mval71 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 8
  store i32 255, i32* %mval71, align 4, !tbaa !87
  %50 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %51 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %50(%struct.HTONE* %hdata, i32 %51) #4
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.82, %cond.end
  %52 = load i32, i32* %i, align 4, !tbaa !7
  %cmp73 = icmp slt i32 %52, 3
  br i1 %cmp73, label %for.body.74, label %for.end.84

for.body.74:                                      ; preds = %for.cond.72
  %53 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom75 = sext i32 %53 to i64
  %54 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %error76 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %54, i32 0, i32 13
  %arrayidx77 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error76, i32 0, i64 %idxprom75
  %55 = load [16500 x i16]*, [16500 x i16]** %arrayidx77, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds [16500 x i16], [16500 x i16]* %55, i64 0
  %arraydecay79 = getelementptr inbounds [16500 x i16], [16500 x i16]* %arrayidx78, i32 0, i32 0
  %56 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom80 = sext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i64 %idxprom80
  store i16* %arraydecay79, i16** %arrayidx81, align 8, !tbaa !1
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.74
  %57 = load i32, i32* %i, align 4, !tbaa !7
  %inc83 = add nsw i32 %57, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !7
  br label %for.cond.72

for.end.84:                                       ; preds = %for.cond.72
  %58 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr85 = getelementptr inbounds i8, i8* %58, i64 0
  %data86 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 1
  store i8* %add.ptr85, i8** %data86, align 8, !tbaa !85
  %59 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res87 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %59, i32 0, i32 14
  %arrayidx88 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res87, i32 0, i64 0
  %arraydecay89 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx88, i32 0, i32 0
  %res90 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 3
  store i8* %arraydecay89, i8** %res90, align 8, !tbaa !84
  %60 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %pureblack91 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %60, i32 0, i32 74
  %61 = load i32, i32* %pureblack91, align 4, !tbaa !93
  %tobool92 = icmp ne i32 %61, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.97

cond.true.93:                                     ; preds = %for.end.84
  %62 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res94 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %62, i32 0, i32 14
  %arrayidx95 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res94, i32 0, i64 3
  %arraydecay96 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx95, i32 0, i32 0
  br label %cond.end.98

cond.false.97:                                    ; preds = %for.end.84
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.93
  %cond99 = phi i8* [ %arraydecay96, %cond.true.93 ], [ null, %cond.false.97 ]
  %block100 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 4
  store i8* %cond99, i8** %block100, align 8, !tbaa !86
  %63 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midcyan = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %63, i32 0, i32 75
  %64 = load i32, i32* %midcyan, align 4, !tbaa !94
  %mval101 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 8
  store i32 %64, i32* %mval101, align 4, !tbaa !87
  %65 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %66 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %65(%struct.HTONE* %hdata, i32 %66) #4
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.112, %cond.end.98
  %67 = load i32, i32* %i, align 4, !tbaa !7
  %cmp103 = icmp slt i32 %67, 3
  br i1 %cmp103, label %for.body.104, label %for.end.114

for.body.104:                                     ; preds = %for.cond.102
  %68 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom105 = sext i32 %68 to i64
  %69 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %error106 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %69, i32 0, i32 13
  %arrayidx107 = getelementptr inbounds [3 x [16500 x i16]*], [3 x [16500 x i16]*]* %error106, i32 0, i64 %idxprom105
  %70 = load [16500 x i16]*, [16500 x i16]** %arrayidx107, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds [16500 x i16], [16500 x i16]* %70, i64 1
  %arraydecay109 = getelementptr inbounds [16500 x i16], [16500 x i16]* %arrayidx108, i32 0, i32 0
  %71 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom110 = sext i32 %71 to i64
  %arrayidx111 = getelementptr inbounds [3 x i16*], [3 x i16*]* %errs, i32 0, i64 %idxprom110
  store i16* %arraydecay109, i16** %arrayidx111, align 8, !tbaa !1
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.104
  %72 = load i32, i32* %i, align 4, !tbaa !7
  %inc113 = add nsw i32 %72, 1
  store i32 %inc113, i32* %i, align 4, !tbaa !7
  br label %for.cond.102

for.end.114:                                      ; preds = %for.cond.102
  %73 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr115 = getelementptr inbounds i8, i8* %73, i64 1
  %data116 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 1
  store i8* %add.ptr115, i8** %data116, align 8, !tbaa !85
  %74 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res117 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %74, i32 0, i32 14
  %arrayidx118 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res117, i32 0, i64 1
  %arraydecay119 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx118, i32 0, i32 0
  %res120 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 3
  store i8* %arraydecay119, i8** %res120, align 8, !tbaa !84
  %75 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %pureblack121 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %75, i32 0, i32 74
  %76 = load i32, i32* %pureblack121, align 4, !tbaa !93
  %tobool122 = icmp ne i32 %76, 0
  br i1 %tobool122, label %cond.true.123, label %cond.false.127

cond.true.123:                                    ; preds = %for.end.114
  %77 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res124 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %77, i32 0, i32 14
  %arrayidx125 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res124, i32 0, i64 3
  %arraydecay126 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx125, i32 0, i32 0
  br label %cond.end.128

cond.false.127:                                   ; preds = %for.end.114
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.123
  %cond129 = phi i8* [ %arraydecay126, %cond.true.123 ], [ null, %cond.false.127 ]
  %block130 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 4
  store i8* %cond129, i8** %block130, align 8, !tbaa !86
  %78 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midmagenta = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %78, i32 0, i32 76
  %79 = load i32, i32* %midmagenta, align 4, !tbaa !95
  %mval131 = getelementptr inbounds %struct.HTONE, %struct.HTONE* %hdata, i32 0, i32 8
  store i32 %79, i32* %mval131, align 4, !tbaa !87
  %80 = load void (%struct.HTONE*, i32)*, void (%struct.HTONE*, i32)** %htone, align 8, !tbaa !1
  %81 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %80(%struct.HTONE* %hdata, i32 %81) #4
  br label %if.end

if.end:                                           ; preds = %cond.end.128, %for.end
  %82 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %mono132 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %82, i32 0, i32 73
  %83 = load i32, i32* %mono132, align 4, !tbaa !44
  %tobool133 = icmp ne i32 %83, 0
  br i1 %tobool133, label %if.then.134, label %if.else.169

if.then.134:                                      ; preds = %if.end
  %84 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct.RENDER, %struct.RENDER* %84, i32 0, i32 3
  %85 = load i32, i32* %xres, align 4, !tbaa !39
  %cmp135 = icmp eq i32 %85, 1440
  br i1 %cmp135, label %if.then.136, label %if.else.156

if.then.136:                                      ; preds = %if.then.134
  %86 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res137 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %86, i32 0, i32 14
  %arrayidx138 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res137, i32 0, i64 3
  %arraydecay139 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx138, i32 0, i32 0
  %87 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.RENDER, %struct.RENDER* %87, i32 0, i32 5
  %88 = load i32, i32* %width, align 4, !tbaa !40
  %89 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw = getelementptr inbounds %struct.RENDER, %struct.RENDER* %89, i32 0, i32 15
  %arrayidx140 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx140, i32 0, i64 0
  %arraydecay142 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx141, i32 0, i32 0
  %90 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem = srem i32 %90, 256
  %idx.ext = sext i32 %rem to i64
  %add.ptr143 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay142, i64 %idx.ext
  call void @PackLine(i8* %arraydecay139, i32 %88, i32 255, i32 2, %struct.RAWLINE* %add.ptr143) #4
  %91 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res144 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %91, i32 0, i32 14
  %arrayidx145 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res144, i32 0, i64 3
  %arraydecay146 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx145, i32 0, i32 0
  %add.ptr147 = getelementptr inbounds i8, i8* %arraydecay146, i64 1
  %92 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width148 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %92, i32 0, i32 5
  %93 = load i32, i32* %width148, align 4, !tbaa !40
  %sub = sub nsw i32 %93, 1
  %94 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw149 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %94, i32 0, i32 15
  %arrayidx150 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw149, i32 0, i64 1
  %arrayidx151 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx150, i32 0, i64 0
  %arraydecay152 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx151, i32 0, i32 0
  %95 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem153 = srem i32 %95, 256
  %idx.ext154 = sext i32 %rem153 to i64
  %add.ptr155 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay152, i64 %idx.ext154
  call void @PackLine(i8* %add.ptr147, i32 %sub, i32 255, i32 2, %struct.RAWLINE* %add.ptr155) #4
  br label %if.end.168

if.else.156:                                      ; preds = %if.then.134
  %96 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res157 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %96, i32 0, i32 14
  %arrayidx158 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res157, i32 0, i64 3
  %arraydecay159 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx158, i32 0, i32 0
  %97 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width160 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %97, i32 0, i32 5
  %98 = load i32, i32* %width160, align 4, !tbaa !40
  %99 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw161 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %99, i32 0, i32 15
  %arrayidx162 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw161, i32 0, i64 0
  %arrayidx163 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx162, i32 0, i64 0
  %arraydecay164 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx163, i32 0, i32 0
  %100 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem165 = srem i32 %100, 256
  %idx.ext166 = sext i32 %rem165 to i64
  %add.ptr167 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay164, i64 %idx.ext166
  call void @PackLine(i8* %arraydecay159, i32 %98, i32 255, i32 1, %struct.RAWLINE* %add.ptr167) #4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.156, %if.then.136
  br label %if.end.391

if.else.169:                                      ; preds = %if.end
  %101 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %xres170 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %101, i32 0, i32 3
  %102 = load i32, i32* %xres170, align 4, !tbaa !39
  %cmp171 = icmp eq i32 %102, 1440
  br i1 %cmp171, label %if.then.172, label %if.else.321

if.then.172:                                      ; preds = %if.else.169
  %103 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res173 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %103, i32 0, i32 14
  %arrayidx174 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res173, i32 0, i64 3
  %arraydecay175 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx174, i32 0, i32 0
  %104 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width176 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %104, i32 0, i32 5
  %105 = load i32, i32* %width176, align 4, !tbaa !40
  %106 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw177 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %106, i32 0, i32 15
  %arrayidx178 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw177, i32 0, i64 0
  %arrayidx179 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx178, i32 0, i64 0
  %arraydecay180 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx179, i32 0, i32 0
  %107 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem181 = srem i32 %107, 256
  %idx.ext182 = sext i32 %rem181 to i64
  %add.ptr183 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay180, i64 %idx.ext182
  call void @PackLine(i8* %arraydecay175, i32 %105, i32 255, i32 2, %struct.RAWLINE* %add.ptr183) #4
  %108 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res184 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %108, i32 0, i32 14
  %arrayidx185 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res184, i32 0, i64 3
  %arraydecay186 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx185, i32 0, i32 0
  %add.ptr187 = getelementptr inbounds i8, i8* %arraydecay186, i64 1
  %109 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width188 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %109, i32 0, i32 5
  %110 = load i32, i32* %width188, align 4, !tbaa !40
  %sub189 = sub nsw i32 %110, 1
  %111 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw190 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %111, i32 0, i32 15
  %arrayidx191 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw190, i32 0, i64 1
  %arrayidx192 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx191, i32 0, i64 0
  %arraydecay193 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx192, i32 0, i32 0
  %112 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem194 = srem i32 %112, 256
  %idx.ext195 = sext i32 %rem194 to i64
  %add.ptr196 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay193, i64 %idx.ext195
  call void @PackLine(i8* %add.ptr187, i32 %sub189, i32 255, i32 2, %struct.RAWLINE* %add.ptr196) #4
  %113 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res197 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %113, i32 0, i32 14
  %arrayidx198 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res197, i32 0, i64 0
  %arraydecay199 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx198, i32 0, i32 0
  %114 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width200 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %114, i32 0, i32 5
  %115 = load i32, i32* %width200, align 4, !tbaa !40
  %116 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw201 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %116, i32 0, i32 15
  %arrayidx202 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw201, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx202, i32 0, i64 1
  %arraydecay204 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx203, i32 0, i32 0
  %117 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem205 = srem i32 %117, 256
  %idx.ext206 = sext i32 %rem205 to i64
  %add.ptr207 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay204, i64 %idx.ext206
  call void @PackLine(i8* %arraydecay199, i32 %115, i32 255, i32 2, %struct.RAWLINE* %add.ptr207) #4
  %118 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res208 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %118, i32 0, i32 14
  %arrayidx209 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res208, i32 0, i64 0
  %arraydecay210 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx209, i32 0, i32 0
  %add.ptr211 = getelementptr inbounds i8, i8* %arraydecay210, i64 1
  %119 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width212 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %119, i32 0, i32 5
  %120 = load i32, i32* %width212, align 4, !tbaa !40
  %sub213 = sub nsw i32 %120, 1
  %121 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw214 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %121, i32 0, i32 15
  %arrayidx215 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw214, i32 0, i64 1
  %arrayidx216 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx215, i32 0, i64 1
  %arraydecay217 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx216, i32 0, i32 0
  %122 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem218 = srem i32 %122, 256
  %idx.ext219 = sext i32 %rem218 to i64
  %add.ptr220 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay217, i64 %idx.ext219
  call void @PackLine(i8* %add.ptr211, i32 %sub213, i32 255, i32 2, %struct.RAWLINE* %add.ptr220) #4
  %123 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res221 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %123, i32 0, i32 14
  %arrayidx222 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res221, i32 0, i64 1
  %arraydecay223 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx222, i32 0, i32 0
  %124 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width224 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %124, i32 0, i32 5
  %125 = load i32, i32* %width224, align 4, !tbaa !40
  %126 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw225 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %126, i32 0, i32 15
  %arrayidx226 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw225, i32 0, i64 0
  %arrayidx227 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx226, i32 0, i64 2
  %arraydecay228 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx227, i32 0, i32 0
  %127 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem229 = srem i32 %127, 256
  %idx.ext230 = sext i32 %rem229 to i64
  %add.ptr231 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay228, i64 %idx.ext230
  call void @PackLine(i8* %arraydecay223, i32 %125, i32 255, i32 2, %struct.RAWLINE* %add.ptr231) #4
  %128 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res232 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %128, i32 0, i32 14
  %arrayidx233 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res232, i32 0, i64 1
  %arraydecay234 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx233, i32 0, i32 0
  %add.ptr235 = getelementptr inbounds i8, i8* %arraydecay234, i64 1
  %129 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width236 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %129, i32 0, i32 5
  %130 = load i32, i32* %width236, align 4, !tbaa !40
  %sub237 = sub nsw i32 %130, 1
  %131 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw238 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %131, i32 0, i32 15
  %arrayidx239 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw238, i32 0, i64 1
  %arrayidx240 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx239, i32 0, i64 2
  %arraydecay241 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx240, i32 0, i32 0
  %132 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem242 = srem i32 %132, 256
  %idx.ext243 = sext i32 %rem242 to i64
  %add.ptr244 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay241, i64 %idx.ext243
  call void @PackLine(i8* %add.ptr235, i32 %sub237, i32 255, i32 2, %struct.RAWLINE* %add.ptr244) #4
  %133 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res245 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %133, i32 0, i32 14
  %arrayidx246 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res245, i32 0, i64 2
  %arraydecay247 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx246, i32 0, i32 0
  %134 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width248 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %134, i32 0, i32 5
  %135 = load i32, i32* %width248, align 4, !tbaa !40
  %136 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw249 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %136, i32 0, i32 15
  %arrayidx250 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw249, i32 0, i64 0
  %arrayidx251 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx250, i32 0, i64 3
  %arraydecay252 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx251, i32 0, i32 0
  %137 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem253 = srem i32 %137, 256
  %idx.ext254 = sext i32 %rem253 to i64
  %add.ptr255 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay252, i64 %idx.ext254
  call void @PackLine(i8* %arraydecay247, i32 %135, i32 255, i32 2, %struct.RAWLINE* %add.ptr255) #4
  %138 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res256 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %138, i32 0, i32 14
  %arrayidx257 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res256, i32 0, i64 2
  %arraydecay258 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx257, i32 0, i32 0
  %add.ptr259 = getelementptr inbounds i8, i8* %arraydecay258, i64 1
  %139 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width260 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %139, i32 0, i32 5
  %140 = load i32, i32* %width260, align 4, !tbaa !40
  %sub261 = sub nsw i32 %140, 1
  %141 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw262 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %141, i32 0, i32 15
  %arrayidx263 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw262, i32 0, i64 1
  %arrayidx264 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx263, i32 0, i64 3
  %arraydecay265 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx264, i32 0, i32 0
  %142 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem266 = srem i32 %142, 256
  %idx.ext267 = sext i32 %rem266 to i64
  %add.ptr268 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay265, i64 %idx.ext267
  call void @PackLine(i8* %add.ptr259, i32 %sub261, i32 255, i32 2, %struct.RAWLINE* %add.ptr268) #4
  %143 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res269 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %143, i32 0, i32 14
  %arrayidx270 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res269, i32 0, i64 0
  %arraydecay271 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx270, i32 0, i32 0
  %144 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width272 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %144, i32 0, i32 5
  %145 = load i32, i32* %width272, align 4, !tbaa !40
  %146 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midcyan273 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %146, i32 0, i32 75
  %147 = load i32, i32* %midcyan273, align 4, !tbaa !94
  %148 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw274 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %148, i32 0, i32 15
  %arrayidx275 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw274, i32 0, i64 0
  %arrayidx276 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx275, i32 0, i64 4
  %arraydecay277 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx276, i32 0, i32 0
  %149 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem278 = srem i32 %149, 256
  %idx.ext279 = sext i32 %rem278 to i64
  %add.ptr280 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay277, i64 %idx.ext279
  call void @PackLine(i8* %arraydecay271, i32 %145, i32 %147, i32 2, %struct.RAWLINE* %add.ptr280) #4
  %150 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res281 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %150, i32 0, i32 14
  %arrayidx282 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res281, i32 0, i64 0
  %arraydecay283 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx282, i32 0, i32 0
  %add.ptr284 = getelementptr inbounds i8, i8* %arraydecay283, i64 1
  %151 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width285 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %151, i32 0, i32 5
  %152 = load i32, i32* %width285, align 4, !tbaa !40
  %sub286 = sub nsw i32 %152, 1
  %153 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midcyan287 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %153, i32 0, i32 75
  %154 = load i32, i32* %midcyan287, align 4, !tbaa !94
  %155 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw288 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %155, i32 0, i32 15
  %arrayidx289 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw288, i32 0, i64 1
  %arrayidx290 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx289, i32 0, i64 4
  %arraydecay291 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx290, i32 0, i32 0
  %156 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem292 = srem i32 %156, 256
  %idx.ext293 = sext i32 %rem292 to i64
  %add.ptr294 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay291, i64 %idx.ext293
  call void @PackLine(i8* %add.ptr284, i32 %sub286, i32 %154, i32 2, %struct.RAWLINE* %add.ptr294) #4
  %157 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res295 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %157, i32 0, i32 14
  %arrayidx296 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res295, i32 0, i64 1
  %arraydecay297 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx296, i32 0, i32 0
  %158 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width298 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %158, i32 0, i32 5
  %159 = load i32, i32* %width298, align 4, !tbaa !40
  %160 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midmagenta299 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %160, i32 0, i32 76
  %161 = load i32, i32* %midmagenta299, align 4, !tbaa !95
  %162 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw300 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %162, i32 0, i32 15
  %arrayidx301 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw300, i32 0, i64 0
  %arrayidx302 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx301, i32 0, i64 5
  %arraydecay303 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx302, i32 0, i32 0
  %163 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem304 = srem i32 %163, 256
  %idx.ext305 = sext i32 %rem304 to i64
  %add.ptr306 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay303, i64 %idx.ext305
  call void @PackLine(i8* %arraydecay297, i32 %159, i32 %161, i32 2, %struct.RAWLINE* %add.ptr306) #4
  %164 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res307 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %164, i32 0, i32 14
  %arrayidx308 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res307, i32 0, i64 1
  %arraydecay309 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx308, i32 0, i32 0
  %add.ptr310 = getelementptr inbounds i8, i8* %arraydecay309, i64 1
  %165 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width311 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %165, i32 0, i32 5
  %166 = load i32, i32* %width311, align 4, !tbaa !40
  %sub312 = sub nsw i32 %166, 1
  %167 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midmagenta313 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %167, i32 0, i32 76
  %168 = load i32, i32* %midmagenta313, align 4, !tbaa !95
  %169 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw314 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %169, i32 0, i32 15
  %arrayidx315 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw314, i32 0, i64 1
  %arrayidx316 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx315, i32 0, i64 5
  %arraydecay317 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx316, i32 0, i32 0
  %170 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem318 = srem i32 %170, 256
  %idx.ext319 = sext i32 %rem318 to i64
  %add.ptr320 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay317, i64 %idx.ext319
  call void @PackLine(i8* %add.ptr310, i32 %sub312, i32 %168, i32 2, %struct.RAWLINE* %add.ptr320) #4
  br label %if.end.390

if.else.321:                                      ; preds = %if.else.169
  %171 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res322 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %171, i32 0, i32 14
  %arrayidx323 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res322, i32 0, i64 3
  %arraydecay324 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx323, i32 0, i32 0
  %172 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width325 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %172, i32 0, i32 5
  %173 = load i32, i32* %width325, align 4, !tbaa !40
  %174 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw326 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %174, i32 0, i32 15
  %arrayidx327 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw326, i32 0, i64 0
  %arrayidx328 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx327, i32 0, i64 0
  %arraydecay329 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx328, i32 0, i32 0
  %175 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem330 = srem i32 %175, 256
  %idx.ext331 = sext i32 %rem330 to i64
  %add.ptr332 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay329, i64 %idx.ext331
  call void @PackLine(i8* %arraydecay324, i32 %173, i32 255, i32 1, %struct.RAWLINE* %add.ptr332) #4
  %176 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res333 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %176, i32 0, i32 14
  %arrayidx334 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res333, i32 0, i64 0
  %arraydecay335 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx334, i32 0, i32 0
  %177 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width336 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %177, i32 0, i32 5
  %178 = load i32, i32* %width336, align 4, !tbaa !40
  %179 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw337 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %179, i32 0, i32 15
  %arrayidx338 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw337, i32 0, i64 0
  %arrayidx339 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx338, i32 0, i64 1
  %arraydecay340 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx339, i32 0, i32 0
  %180 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem341 = srem i32 %180, 256
  %idx.ext342 = sext i32 %rem341 to i64
  %add.ptr343 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay340, i64 %idx.ext342
  call void @PackLine(i8* %arraydecay335, i32 %178, i32 255, i32 1, %struct.RAWLINE* %add.ptr343) #4
  %181 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res344 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %181, i32 0, i32 14
  %arrayidx345 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res344, i32 0, i64 1
  %arraydecay346 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx345, i32 0, i32 0
  %182 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width347 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %182, i32 0, i32 5
  %183 = load i32, i32* %width347, align 4, !tbaa !40
  %184 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw348 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %184, i32 0, i32 15
  %arrayidx349 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw348, i32 0, i64 0
  %arrayidx350 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx349, i32 0, i64 2
  %arraydecay351 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx350, i32 0, i32 0
  %185 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem352 = srem i32 %185, 256
  %idx.ext353 = sext i32 %rem352 to i64
  %add.ptr354 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay351, i64 %idx.ext353
  call void @PackLine(i8* %arraydecay346, i32 %183, i32 255, i32 1, %struct.RAWLINE* %add.ptr354) #4
  %186 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res355 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %186, i32 0, i32 14
  %arrayidx356 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res355, i32 0, i64 2
  %arraydecay357 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx356, i32 0, i32 0
  %187 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width358 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %187, i32 0, i32 5
  %188 = load i32, i32* %width358, align 4, !tbaa !40
  %189 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw359 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %189, i32 0, i32 15
  %arrayidx360 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw359, i32 0, i64 0
  %arrayidx361 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx360, i32 0, i64 3
  %arraydecay362 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx361, i32 0, i32 0
  %190 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem363 = srem i32 %190, 256
  %idx.ext364 = sext i32 %rem363 to i64
  %add.ptr365 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay362, i64 %idx.ext364
  call void @PackLine(i8* %arraydecay357, i32 %188, i32 255, i32 1, %struct.RAWLINE* %add.ptr365) #4
  %191 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res366 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %191, i32 0, i32 14
  %arrayidx367 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res366, i32 0, i64 0
  %arraydecay368 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx367, i32 0, i32 0
  %192 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width369 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %192, i32 0, i32 5
  %193 = load i32, i32* %width369, align 4, !tbaa !40
  %194 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midcyan370 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %194, i32 0, i32 75
  %195 = load i32, i32* %midcyan370, align 4, !tbaa !94
  %196 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw371 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %196, i32 0, i32 15
  %arrayidx372 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw371, i32 0, i64 0
  %arrayidx373 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx372, i32 0, i64 4
  %arraydecay374 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx373, i32 0, i32 0
  %197 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem375 = srem i32 %197, 256
  %idx.ext376 = sext i32 %rem375 to i64
  %add.ptr377 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay374, i64 %idx.ext376
  call void @PackLine(i8* %arraydecay368, i32 %193, i32 %195, i32 1, %struct.RAWLINE* %add.ptr377) #4
  %198 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %res378 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %198, i32 0, i32 14
  %arrayidx379 = getelementptr inbounds [4 x [16500 x i8]], [4 x [16500 x i8]]* %res378, i32 0, i64 1
  %arraydecay380 = getelementptr inbounds [16500 x i8], [16500 x i8]* %arrayidx379, i32 0, i32 0
  %199 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %width381 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %199, i32 0, i32 5
  %200 = load i32, i32* %width381, align 4, !tbaa !40
  %201 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !1
  %midmagenta382 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %201, i32 0, i32 76
  %202 = load i32, i32* %midmagenta382, align 4, !tbaa !95
  %203 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %raw383 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %203, i32 0, i32 15
  %arrayidx384 = getelementptr inbounds [2 x [6 x [256 x %struct.RAWLINE]]], [2 x [6 x [256 x %struct.RAWLINE]]]* %raw383, i32 0, i64 0
  %arrayidx385 = getelementptr inbounds [6 x [256 x %struct.RAWLINE]], [6 x [256 x %struct.RAWLINE]]* %arrayidx384, i32 0, i64 5
  %arraydecay386 = getelementptr inbounds [256 x %struct.RAWLINE], [256 x %struct.RAWLINE]* %arrayidx385, i32 0, i32 0
  %204 = load i32, i32* %line.addr, align 4, !tbaa !7
  %rem387 = srem i32 %204, 256
  %idx.ext388 = sext i32 %rem387 to i64
  %add.ptr389 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %arraydecay386, i64 %idx.ext388
  call void @PackLine(i8* %arraydecay380, i32 %200, i32 %202, i32 1, %struct.RAWLINE* %add.ptr389) #4
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.321, %if.then.172
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %if.end.168
  %205 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %dev392 = getelementptr inbounds %struct.RENDER, %struct.RENDER* %205, i32 0, i32 0
  %206 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev392, align 8, !tbaa !37
  %halftoner393 = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %206, i32 0, i32 70
  %207 = load i32, i32* %halftoner393, align 4, !tbaa !73
  %idxprom394 = sext i32 %207 to i64
  %arrayidx395 = getelementptr inbounds [3 x %struct.HFUNCS], [3 x %struct.HFUNCS]* @htable, i32 0, i64 %idxprom394
  %hteol = getelementptr inbounds %struct.HFUNCS, %struct.HFUNCS* %arrayidx395, i32 0, i32 2
  %208 = load void (%struct.RENDER*, i32)*, void (%struct.RENDER*, i32)** %hteol, align 8, !tbaa !96
  %209 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %210 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %208(%struct.RENDER* %209, i32 %210) #4
  %211 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %212 = bitcast [3 x i16*]* %errs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %212) #2
  %213 = bitcast %struct.HTONE* %hdata to i8*
  call void @llvm.lifetime.end(i64 64, i8* %213) #2
  %214 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast %struct.gx_photoex_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #2
  %216 = bitcast void (%struct.HTONE*, i32)** %htone to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HalftonerStart(%struct.RENDER* %render, i32 %line) #1 {
entry:
  %render.addr = alloca %struct.RENDER*, align 8
  %line.addr = alloca i32, align 4
  store %struct.RENDER* %render, %struct.RENDER** %render.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.RENDER, %struct.RENDER* %0, i32 0, i32 0
  %1 = load %struct.gx_photoex_device_s*, %struct.gx_photoex_device_s** %dev, align 8, !tbaa !37
  %halftoner = getelementptr inbounds %struct.gx_photoex_device_s, %struct.gx_photoex_device_s* %1, i32 0, i32 70
  %2 = load i32, i32* %halftoner, align 4, !tbaa !73
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.HFUNCS], [3 x %struct.HFUNCS]* @htable, i32 0, i64 %idxprom
  %hstrt = getelementptr inbounds %struct.HFUNCS, %struct.HFUNCS* %arrayidx, i32 0, i32 1
  %3 = load void (%struct.RENDER*, i32)*, void (%struct.RENDER*, i32)** %hstrt, align 8, !tbaa !97
  %4 = load %struct.RENDER*, %struct.RENDER** %render.addr, align 8, !tbaa !1
  %5 = load i32, i32* %line.addr, align 4, !tbaa !7
  call void %3(%struct.RENDER* %4, i32 %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PackLine(i8* %input, i32 %pixnum, i32 %lev_on, i32 %step, %struct.RAWLINE* %line) #1 {
entry:
  %input.addr = alloca i8*, align 8
  %pixnum.addr = alloca i32, align 4
  %lev_on.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %line.addr = alloca %struct.RAWLINE*, align 8
  %bits = alloca i8, align 1
  %result = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8, !tbaa !1
  store i32 %pixnum, i32* %pixnum.addr, align 4, !tbaa !7
  store i32 %lev_on, i32* %lev_on.addr, align 4, !tbaa !7
  store i32 %step, i32* %step.addr, align 4, !tbaa !7
  store %struct.RAWLINE* %line, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %bits) #2
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1032 x i8], [1032 x i8]* %data, i32 0, i32 0
  store i8* %arraydecay, i8** %result, align 8, !tbaa !1
  %5 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %5, i32 0, i32 0
  store i32 8250, i32* %first, align 4, !tbaa !69
  %6 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %6, i32 0, i32 1
  store i32 0, i32* %last, align 4, !tbaa !71
  store i32 128, i32* %j, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  store i32 0, i32* %k, align 4, !tbaa !7
  store i8 0, i8* %bits, align 1, !tbaa !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !7
  %8 = load i32, i32* %pixnum.addr, align 4, !tbaa !7
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %input.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !51
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %lev_on.addr, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %conv, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4, !tbaa !7
  %13 = load i8, i8* %bits, align 1, !tbaa !51
  %conv3 = zext i8 %13 to i32
  %or = or i32 %conv3, %12
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %bits, align 1, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, i32* %j, align 4, !tbaa !7
  %shr = ashr i32 %14, 1
  store i32 %shr, i32* %j, align 4, !tbaa !7
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %if.end.21, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %15 = load i8, i8* %bits, align 1, !tbaa !51
  %tobool6 = icmp ne i8 %15, 0
  br i1 %tobool6, label %if.then.7, label %if.end.20

if.then.7:                                        ; preds = %if.then.5
  %16 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %first8 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %16, i32 0, i32 0
  %17 = load i32, i32* %first8, align 4, !tbaa !69
  %18 = load i32, i32* %k, align 4, !tbaa !7
  %cmp9 = icmp sgt i32 %17, %18
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.7
  %19 = load i32, i32* %k, align 4, !tbaa !7
  %20 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %first12 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %20, i32 0, i32 0
  store i32 %19, i32* %first12, align 4, !tbaa !69
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.7
  %21 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %last14 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %21, i32 0, i32 1
  %22 = load i32, i32* %last14, align 4, !tbaa !71
  %23 = load i32, i32* %k, align 4, !tbaa !7
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.13
  %24 = load i32, i32* %k, align 4, !tbaa !7
  %25 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %last18 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %25, i32 0, i32 1
  store i32 %24, i32* %last18, align 4, !tbaa !71
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.5
  %26 = load i8, i8* %bits, align 1, !tbaa !51
  %27 = load i8*, i8** %result, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %result, align 8, !tbaa !1
  store i8 %26, i8* %27, align 1, !tbaa !51
  store i32 128, i32* %j, align 4, !tbaa !7
  store i8 0, i8* %bits, align 1, !tbaa !51
  %28 = load i32, i32* %k, align 4, !tbaa !7
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %29 = load i32, i32* %step.addr, align 4, !tbaa !7
  %30 = load i32, i32* %i, align 4, !tbaa !7
  %add = add nsw i32 %30, %29
  store i32 %add, i32* %i, align 4, !tbaa !7
  %31 = load i32, i32* %step.addr, align 4, !tbaa !7
  %32 = load i8*, i8** %input.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %input.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %j, align 4, !tbaa !7
  %cmp22 = icmp ne i32 %33, 128
  br i1 %cmp22, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %for.end
  %34 = load i8, i8* %bits, align 1, !tbaa !51
  %35 = load i8*, i8** %result, align 8, !tbaa !1
  store i8 %34, i8* %35, align 1, !tbaa !51
  %36 = load i8, i8* %bits, align 1, !tbaa !51
  %tobool25 = icmp ne i8 %36, 0
  br i1 %tobool25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.then.24
  %37 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %first27 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %37, i32 0, i32 0
  %38 = load i32, i32* %first27, align 4, !tbaa !69
  %39 = load i32, i32* %k, align 4, !tbaa !7
  %cmp28 = icmp sgt i32 %38, %39
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %40 = load i32, i32* %k, align 4, !tbaa !7
  %41 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %first31 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %41, i32 0, i32 0
  store i32 %40, i32* %first31, align 4, !tbaa !69
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  %42 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %last33 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %42, i32 0, i32 1
  %43 = load i32, i32* %last33, align 4, !tbaa !71
  %44 = load i32, i32* %k, align 4, !tbaa !7
  %cmp34 = icmp slt i32 %43, %44
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.32
  %45 = load i32, i32* %k, align 4, !tbaa !7
  %46 = load %struct.RAWLINE*, %struct.RAWLINE** %line.addr, align 8, !tbaa !1
  %last37 = getelementptr inbounds %struct.RAWLINE, %struct.RAWLINE* %46, i32 0, i32 1
  store i32 %45, i32* %last37, align 4, !tbaa !71
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.24
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.end
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  call void @llvm.lifetime.end(i64 1, i8* %bits) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @RleFlush(i8* %first, i8* %reps, i8* %now, i8* %out) #1 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca i8*, align 8
  %reps.addr = alloca i8*, align 8
  %now.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %first, i8** %first.addr, align 8, !tbaa !1
  store i8* %reps, i8** %reps.addr, align 8, !tbaa !1
  store i8* %now, i8** %now.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %now.addr, align 8, !tbaa !1
  store i8* %4, i8** %reps.addr, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %count, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end.3
  %5 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %l, align 4, !tbaa !7
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %l, align 4, !tbaa !7
  %cmp = icmp sgt i32 %7, 128
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body
  %8 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !1
  store i8 127, i8* %8, align 1, !tbaa !51
  %9 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %9, i8* %10, i64 128) #5
  %11 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 128
  store i8* %add.ptr, i8** %out.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %12, i64 128
  store i8* %add.ptr7, i8** %first.addr, align 8, !tbaa !1
  %13 = load i32, i32* %count, align 4, !tbaa !7
  %add = add nsw i32 %13, 129
  store i32 %add, i32* %count, align 4, !tbaa !7
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %l, align 4, !tbaa !7
  %sub = sub nsw i32 %14, 1
  %conv8 = trunc i32 %sub to i8
  %15 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr9, i8** %out.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %15, align 1, !tbaa !51
  %16 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %18 = load i32, i32* %l, align 4, !tbaa !7
  %conv10 = sext i32 %18 to i64
  %call11 = call i8* @memcpy(i8* %16, i8* %17, i64 %conv10) #5
  %19 = load i32, i32* %l, align 4, !tbaa !7
  %add12 = add nsw i32 %19, 1
  %20 = load i32, i32* %count, align 4, !tbaa !7
  %add13 = add nsw i32 %20, %add12
  store i32 %add13, i32* %count, align 4, !tbaa !7
  %21 = load i32, i32* %l, align 4, !tbaa !7
  %22 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr14, i8** %first.addr, align 8, !tbaa !1
  %23 = load i32, i32* %l, align 4, !tbaa !7
  %24 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %idx.ext15 = sext i32 %23 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %24, i64 %idx.ext15
  store i8* %add.ptr16, i8** %out.addr, align 8, !tbaa !1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.47, %while.end
  %25 = load i8*, i8** %now.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast19 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %26 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %conv22 = trunc i64 %sub.ptr.sub21 to i32
  store i32 %conv22, i32* %l, align 4, !tbaa !7
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %while.body.24, label %while.end.48

while.body.24:                                    ; preds = %while.cond.18
  %27 = load i32, i32* %l, align 4, !tbaa !7
  %cmp25 = icmp sgt i32 %27, 128
  br i1 %cmp25, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %while.body.24
  %28 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr28, i8** %out.addr, align 8, !tbaa !1
  store i8 -128, i8* %28, align 1, !tbaa !51
  %29 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !51
  %31 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr29, i8** %out.addr, align 8, !tbaa !1
  store i8 %30, i8* %31, align 1, !tbaa !51
  %32 = load i32, i32* %count, align 4, !tbaa !7
  %add30 = add nsw i32 %32, 2
  store i32 %add30, i32* %count, align 4, !tbaa !7
  %33 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %33, i64 129
  store i8* %add.ptr31, i8** %reps.addr, align 8, !tbaa !1
  br label %if.end.47

if.else.32:                                       ; preds = %while.body.24
  %34 = load i32, i32* %l, align 4, !tbaa !7
  %cmp33 = icmp eq i32 %34, 1
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.32
  %35 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr36, i8** %out.addr, align 8, !tbaa !1
  store i8 0, i8* %35, align 1, !tbaa !51
  %36 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !51
  %38 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr37, i8** %out.addr, align 8, !tbaa !1
  store i8 %37, i8* %38, align 1, !tbaa !51
  %39 = load i32, i32* %count, align 4, !tbaa !7
  %add38 = add nsw i32 %39, 2
  store i32 %add38, i32* %count, align 4, !tbaa !7
  %40 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr39, i8** %reps.addr, align 8, !tbaa !1
  br label %if.end.46

if.else.40:                                       ; preds = %if.else.32
  %41 = load i32, i32* %l, align 4, !tbaa !7
  %sub41 = sub nsw i32 257, %41
  %conv42 = trunc i32 %sub41 to i8
  %42 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr43, i8** %out.addr, align 8, !tbaa !1
  store i8 %conv42, i8* %42, align 1, !tbaa !51
  %43 = load i8*, i8** %reps.addr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !51
  %45 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr44, i8** %out.addr, align 8, !tbaa !1
  store i8 %44, i8* %45, align 1, !tbaa !51
  %46 = load i32, i32* %count, align 4, !tbaa !7
  %add45 = add nsw i32 %46, 2
  store i32 %add45, i32* %count, align 4, !tbaa !7
  %47 = load i8*, i8** %now.addr, align 8, !tbaa !1
  store i8* %47, i8** %reps.addr, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %if.then.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.27
  br label %while.cond.18

while.end.48:                                     ; preds = %while.cond.18
  %48 = load i32, i32* %count, align 4, !tbaa !7
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.48, %if.then
  %49 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

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
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 836}
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
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !3, i64 0}
!27 = !{!28, !2, i64 24}
!28 = !{!"gx_photoex_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !24, i64 17256, !8, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !8, i64 18472, !8, i64 18476, !8, i64 18480, !8, i64 18484, !8, i64 18488, !8, i64 18492, !8, i64 18496, !8, i64 18500, !8, i64 18504, !8, i64 18508}
!29 = !{!30, !2, i64 200}
!30 = !{!"gs_memory_s", !2, i64 0, !31, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!31 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!32 = !{!30, !2, i64 88}
!33 = !{!34, !2, i64 40}
!34 = !{!"", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !35, i64 56, !3, i64 468, !3, i64 396472, !3, i64 396496, !3, i64 462496, !3, i64 3657376}
!35 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !3, i64 16, !8, i64 144, !8, i64 148, !8, i64 152, !3, i64 156}
!36 = !{!30, !2, i64 24}
!37 = !{!34, !2, i64 0}
!38 = !{!34, !8, i64 16}
!39 = !{!34, !8, i64 20}
!40 = !{!34, !8, i64 28}
!41 = !{!28, !8, i64 836}
!42 = !{!34, !8, i64 32}
!43 = !{!34, !2, i64 8}
!44 = !{!28, !8, i64 18492}
!45 = !{!34, !8, i64 36}
!46 = !{!28, !8, i64 18508}
!47 = !{!48, !8, i64 836}
!48 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!49 = !{!48, !8, i64 832}
!50 = !{!14, !14, i64 0}
!51 = !{!3, !3, i64 0}
!52 = !{!53, !8, i64 0}
!53 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!54 = !{!53, !8, i64 8}
!55 = !{!53, !8, i64 12}
!56 = !{!53, !8, i64 16}
!57 = !{!12, !12, i64 0}
!58 = !{!59, !2, i64 0}
!59 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !8, i64 16}
!60 = !{!61, !2, i64 56}
!61 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!62 = !{!34, !8, i64 48}
!63 = !{!34, !8, i64 52}
!64 = !{!34, !8, i64 204}
!65 = !{!34, !8, i64 60}
!66 = !{!34, !8, i64 56}
!67 = !{!34, !8, i64 200}
!68 = !{!34, !8, i64 64}
!69 = !{!70, !8, i64 0}
!70 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8}
!71 = !{!70, !8, i64 4}
!72 = !{!34, !8, i64 68}
!73 = !{!28, !8, i64 18480}
!74 = !{!75, !2, i64 0}
!75 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!76 = !{!35, !8, i64 148}
!77 = !{!35, !8, i64 8}
!78 = !{!35, !8, i64 12}
!79 = !{!35, !8, i64 0}
!80 = !{!35, !8, i64 152}
!81 = !{!35, !8, i64 4}
!82 = !{!83, !2, i64 0}
!83 = !{!"", !2, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56}
!84 = !{!83, !2, i64 24}
!85 = !{!83, !2, i64 8}
!86 = !{!83, !2, i64 32}
!87 = !{!83, !8, i64 56}
!88 = !{!83, !2, i64 40}
!89 = !{!83, !8, i64 16}
!90 = !{!28, !8, i64 18484}
!91 = !{!35, !8, i64 144}
!92 = !{!75, !2, i64 24}
!93 = !{!28, !8, i64 18496}
!94 = !{!28, !8, i64 18500}
!95 = !{!28, !8, i64 18504}
!96 = !{!75, !2, i64 16}
!97 = !{!75, !2, i64 8}
