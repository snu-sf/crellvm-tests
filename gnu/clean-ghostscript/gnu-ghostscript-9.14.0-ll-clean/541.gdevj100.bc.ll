; ModuleID = './gdevj100.bc'
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
@.str = private unnamed_addr constant [6 x i8] c"jj100\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_jj100_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_std_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2952, i32 4140, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082733340000000, float 8.280000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] [float 3.600000e+02, float 3.600000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @jj100_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"jj100_print_page(in)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"jj100_print_page(out)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\1BP\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\1BG\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1BT16\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\1F%c\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\1BF%04d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\1CbP,48,%04d.\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @jj100_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
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
  %prn_buf = alloca [16 x i8], align 16
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
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 14
  %5 = load i32, i32* %height1, align 4, !tbaa !7
  store i32 %5, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 48, i32* %bits_per_column, align 4, !tbaa !5
  %7 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %div = sdiv i32 %8, 8
  store i32 %div, i32* %bytes_per_column, align 4, !tbaa !5
  %9 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %11 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %11
  store i32 %mul, i32* %chunk_size, align 4, !tbaa !5
  %12 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast [16 x i8]* %prn_buf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !24
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !24
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %21 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !23
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !24
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !24
  %26 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %27 = load i32, i32* %line_size, align 4, !tbaa !5
  %call6 = call i8* %21(%struct.gs_memory_s* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call6, i8** %in, align 8, !tbaa !1
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !23
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !24
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !24
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array11, align 8, !tbaa !27
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !23
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !24
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !24
  %37 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %38 = load i32, i32* %line_size, align 4, !tbaa !5
  %call15 = call i8* %32(%struct.gs_memory_s* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call15, i8** %out, align 8, !tbaa !1
  %39 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp = icmp eq i8* %39, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %40 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %40, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end:                                           ; preds = %lor.lhs.false
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 52
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !28
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %42) #5
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 52
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file18, align 8, !tbaa !28
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %44) #5
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 52
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file20, align 8, !tbaa !28
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %46) #5
  store i32 0, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %skip, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %47 = load i32, i32* %lnum, align 4, !tbaa !5
  %48 = load i32, i32* %height, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %47, %48
  br i1 %cmp22, label %while.body, label %while.end.159

while.body:                                       ; preds = %while.cond
  %49 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #2
  %52 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %59 = load i32, i32* %lnum, align 4, !tbaa !5
  %60 = load i8*, i8** %in, align 8, !tbaa !1
  %61 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %call23 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %58, i32 %59, i8* %60, i32 %61) #5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %while.body
  %62 = load i32, i32* %height, align 4, !tbaa !5
  %63 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub = sub nsw i32 %62, %63
  store i32 %sub, i32* %num_lines, align 4, !tbaa !5
  %64 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %sub, %64
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %65 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  store i32 %65, i32* %num_lines, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %66 = load i32, i32* %line_size, align 4, !tbaa !5
  %67 = load i32, i32* %num_lines, align 4, !tbaa !5
  %mul30 = mul nsw i32 %66, %67
  store i32 %mul30, i32* %size, align 4, !tbaa !5
  %68 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv = zext i8 %69 to i32
  %cmp31 = icmp eq i32 %conv, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end.29
  %70 = load i8*, i8** %in, align 8, !tbaa !1
  %71 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i32, i32* %size, align 4, !tbaa !5
  %sub33 = sub nsw i32 %72, 1
  %conv34 = sext i32 %sub33 to i64
  %call35 = call i32 @memcmp(i8* %70, i8* %add.ptr, i64 %conv34) #6
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true
  %73 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %74 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %74, %73
  store i32 %add, i32* %lnum, align 4, !tbaa !5
  %75 = load i32, i32* %skip, align 4, !tbaa !5
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %skip, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %land.lhs.true, %if.end.29
  %76 = load i32, i32* %num_lines, align 4, !tbaa !5
  %77 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %76, %77
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  %78 = load i32, i32* %line_size, align 4, !tbaa !5
  %79 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %80 = load i32, i32* %num_lines, align 4, !tbaa !5
  %sub41 = sub nsw i32 %79, %80
  %mul42 = mul nsw i32 %78, %sub41
  store i32 %mul42, i32* %size, align 4, !tbaa !5
  %81 = load i8*, i8** %in, align 8, !tbaa !1
  %82 = load i32, i32* %line_size, align 4, !tbaa !5
  %83 = load i32, i32* %num_lines, align 4, !tbaa !5
  %mul43 = mul nsw i32 %82, %83
  %idx.ext = sext i32 %mul43 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  %84 = load i32, i32* %size, align 4, !tbaa !5
  %conv45 = sext i32 %84 to i64
  %call46 = call i8* @memset(i8* %add.ptr44, i32 0, i64 %conv45) #7
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.37
  %85 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %86 = load i32, i32* %lnum, align 4, !tbaa !5
  %add48 = add nsw i32 %86, %85
  store i32 %add48, i32* %lnum, align 4, !tbaa !5
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.52, %if.end.47
  %87 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %87, 15
  br i1 %cmp50, label %while.body.52, label %while.end

while.body.52:                                    ; preds = %while.cond.49
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %call53 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 31) #5
  %arraydecay54 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 52
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %file55, align 8, !tbaa !28
  %call56 = call i32 @fputs(i8* %arraydecay54, %struct._IO_FILE* %89) #5
  %90 = load i32, i32* %skip, align 4, !tbaa !5
  %sub57 = sub nsw i32 %90, 15
  store i32 %sub57, i32* %skip, align 4, !tbaa !5
  br label %while.cond.49

while.end:                                        ; preds = %while.cond.49
  %91 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp58 = icmp sgt i32 %91, 0
  br i1 %cmp58, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %while.end
  %arraydecay61 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %92 = load i32, i32* %skip, align 4, !tbaa !5
  %add62 = add nsw i32 16, %92
  %call63 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %add62) #5
  %arraydecay64 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %93, i32 0, i32 52
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %file65, align 8, !tbaa !28
  %call66 = call i32 @fputs(i8* %arraydecay64, %struct._IO_FILE* %94) #5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %while.end
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %if.end.67
  %95 = load i32, i32* %y, align 4, !tbaa !5
  %96 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %95, %96
  br i1 %cmp68, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  %97 = load i8*, i8** %in, align 8, !tbaa !1
  %98 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul70 = mul nsw i32 %98, 8
  %99 = load i32, i32* %y, align 4, !tbaa !5
  %mul71 = mul nsw i32 %mul70, %99
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %97, i64 %idx.ext72
  store i8* %add.ptr73, i8** %inp, align 8, !tbaa !1
  %100 = load i8*, i8** %out, align 8, !tbaa !1
  %101 = load i32, i32* %y, align 4, !tbaa !5
  %idx.ext74 = sext i32 %101 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %100, i64 %idx.ext74
  store i8* %add.ptr75, i8** %outp, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %for.body
  %102 = load i32, i32* %x, align 4, !tbaa !5
  %103 = load i32, i32* %line_size, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %102, %103
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.76
  %104 = load i8*, i8** %inp, align 8, !tbaa !1
  %105 = load i32, i32* %line_size, align 4, !tbaa !5
  %106 = load i8*, i8** %outp, align 8, !tbaa !1
  %107 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %call80 = call i32 @jj100_transpose_8x8(i8* %104, i32 %105, i8* %106, i32 %107) #5
  %108 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !1
  %109 = load i32, i32* %bits_per_column, align 4, !tbaa !5
  %110 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext81 = sext i32 %109 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %110, i64 %idx.ext81
  store i8* %add.ptr82, i8** %outp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.79
  %111 = load i32, i32* %x, align 4, !tbaa !5
  %inc83 = add nsw i32 %111, 1
  store i32 %inc83, i32* %x, align 4, !tbaa !5
  br label %for.cond.76

for.end:                                          ; preds = %for.cond.76
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end
  %112 = load i32, i32* %y, align 4, !tbaa !5
  %inc85 = add nsw i32 %112, 1
  store i32 %inc85, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %113 = load i8*, i8** %out, align 8, !tbaa !1
  %114 = load i32, i32* %chunk_size, align 4, !tbaa !5
  %idx.ext87 = sext i32 %114 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %113, i64 %idx.ext87
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr88, i64 -1
  store i8* %add.ptr89, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.90

while.cond.90:                                    ; preds = %if.end.96, %for.end.86
  %115 = load i8*, i8** %out_end, align 8, !tbaa !1
  %116 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp91 = icmp uge i8* %115, %116
  br i1 %cmp91, label %while.body.93, label %while.end.98

while.body.93:                                    ; preds = %while.cond.90
  %117 = load i8*, i8** %out_end, align 8, !tbaa !1
  %118 = load i8, i8* %117, align 1, !tbaa !29
  %tobool94 = icmp ne i8 %118, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %while.body.93
  br label %while.end.98

if.end.96:                                        ; preds = %while.body.93
  %119 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %incdec.ptr97, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.90

while.end.98:                                     ; preds = %if.then.95, %while.cond.90
  %120 = load i8*, i8** %out_end, align 8, !tbaa !1
  %121 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %121 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add99 = add nsw i64 %sub.ptr.sub, 1
  %conv100 = trunc i64 %add99 to i32
  store i32 %conv100, i32* %size, align 4, !tbaa !5
  %122 = load i32, i32* %size, align 4, !tbaa !5
  %123 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %rem = srem i32 %122, %123
  store i32 %rem, i32* %mod, align 4, !tbaa !5
  %cmp101 = icmp ne i32 %rem, 0
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %while.end.98
  %124 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %125 = load i32, i32* %mod, align 4, !tbaa !5
  %sub104 = sub nsw i32 %124, %125
  %126 = load i8*, i8** %out_end, align 8, !tbaa !1
  %idx.ext105 = sext i32 %sub104 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %126, i64 %idx.ext105
  store i8* %add.ptr106, i8** %out_end, align 8, !tbaa !1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %while.end.98
  %127 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %127, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.108

while.cond.108:                                   ; preds = %if.end.114, %if.end.107
  %128 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %129 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp109 = icmp ule i8* %128, %129
  br i1 %cmp109, label %while.body.111, label %while.end.116

while.body.111:                                   ; preds = %while.cond.108
  %130 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !29
  %tobool112 = icmp ne i8 %131, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %while.body.111
  br label %while.end.116

if.end.114:                                       ; preds = %while.body.111
  %132 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %incdec.ptr115 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr115, i8** %out_beg, align 8, !tbaa !1
  br label %while.cond.108

while.end.116:                                    ; preds = %if.then.113, %while.cond.108
  %133 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %134 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast117 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast118 = ptrtoint i8* %134 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %135 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %mul120 = mul nsw i32 %135, 2
  %conv121 = sext i32 %mul120 to i64
  %rem122 = srem i64 %sub.ptr.sub119, %conv121
  %136 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %idx.neg = sub i64 0, %rem122
  %add.ptr123 = getelementptr inbounds i8, i8* %136, i64 %idx.neg
  store i8* %add.ptr123, i8** %out_beg, align 8, !tbaa !1
  %arraydecay124 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %137 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %138 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast125 = ptrtoint i8* %137 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %138 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %139 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %conv128 = sext i32 %139 to i64
  %div129 = sdiv i64 %sub.ptr.sub127, %conv128
  %div130 = sdiv i64 %div129, 2
  %call131 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 %div130) #5
  %arraydecay132 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file133 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %140, i32 0, i32 52
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %file133, align 8, !tbaa !28
  %call134 = call i32 @fputs(i8* %arraydecay132, %struct._IO_FILE* %141) #5
  %142 = load i8*, i8** %out_end, align 8, !tbaa !1
  %143 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast135 = ptrtoint i8* %142 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %143 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  %add138 = add nsw i64 %sub.ptr.sub137, 1
  %conv139 = trunc i64 %add138 to i32
  store i32 %conv139, i32* %size, align 4, !tbaa !5
  %arraydecay140 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %144 = load i32, i32* %size, align 4, !tbaa !5
  %145 = load i32, i32* %bytes_per_column, align 4, !tbaa !5
  %div141 = sdiv i32 %144, %145
  %call142 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %div141) #5
  %arraydecay143 = getelementptr inbounds [16 x i8], [16 x i8]* %prn_buf, i32 0, i32 0
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file144 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %146, i32 0, i32 52
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %file144, align 8, !tbaa !28
  %call145 = call i32 @fputs(i8* %arraydecay143, %struct._IO_FILE* %147) #5
  %148 = load i8*, i8** %out_beg, align 8, !tbaa !1
  %149 = load i32, i32* %size, align 4, !tbaa !5
  %conv146 = sext i32 %149 to i64
  %150 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file147 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %150, i32 0, i32 52
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %file147, align 8, !tbaa !28
  %call148 = call i64 @fwrite(i8* %148, i64 1, i64 %conv146, %struct._IO_FILE* %151) #5
  %152 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file149 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %152, i32 0, i32 52
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %file149, align 8, !tbaa !28
  %call150 = call i32 @fputc(i32 13, %struct._IO_FILE* %153) #5
  store i32 1, i32* %skip, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.116, %if.then.36, %if.then.25
  %154 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %num_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast i8** %out_beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.159
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.159:                                    ; preds = %cleanup, %while.cond
  %163 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file160 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %163, i32 0, i32 52
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %file160, align 8, !tbaa !28
  %call161 = call i32 @fputc(i32 12, %struct._IO_FILE* %164) #5
  %165 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %file162 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %165, i32 0, i32 52
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %file162, align 8, !tbaa !28
  %call163 = call i32 @fflush(%struct._IO_FILE* %166) #5
  %167 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %167, i32 0, i32 3
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory164, align 8, !tbaa !23
  %non_gc_memory165 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory165, align 8, !tbaa !24
  %non_gc_memory166 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory166, align 8, !tbaa !24
  %procs167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs167, i32 0, i32 2
  %171 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %172 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory168 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory168, align 8, !tbaa !23
  %non_gc_memory169 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory169, align 8, !tbaa !24
  %non_gc_memory170 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory170, align 8, !tbaa !24
  %176 = load i8*, i8** %out, align 8, !tbaa !1
  call void %171(%struct.gs_memory_s* %175, i8* %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  %177 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory171 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %177, i32 0, i32 3
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory171, align 8, !tbaa !23
  %non_gc_memory172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %178, i32 0, i32 3
  %179 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory172, align 8, !tbaa !24
  %non_gc_memory173 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %179, i32 0, i32 3
  %180 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory173, align 8, !tbaa !24
  %procs174 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %180, i32 0, i32 1
  %free_object175 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs174, i32 0, i32 2
  %181 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object175, align 8, !tbaa !30
  %182 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory176 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %182, i32 0, i32 3
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory176, align 8, !tbaa !23
  %non_gc_memory177 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %183, i32 0, i32 3
  %184 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory177, align 8, !tbaa !24
  %non_gc_memory178 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %184, i32 0, i32 3
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory178, align 8, !tbaa !24
  %186 = load i8*, i8** %in, align 8, !tbaa !1
  call void %181(%struct.gs_memory_s* %185, i8* %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %while.end.159, %if.then
  %187 = bitcast [16 x i8]* %prn_buf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %187) #2
  %188 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %bytes_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast i32* %bits_per_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = load i32, i32* %retval
  ret i32 %197

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

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @gs_sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @jj100_transpose_8x8(i8* %src, i32 %src_step, i8* %dst, i32 %dst_step) #1 {
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
  store i32 %src_step, i32* %src_step.addr, align 4, !tbaa !5
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i32 %dst_step, i32* %dst_step.addr, align 4, !tbaa !5
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
  store i8 0, i8* %d7, align 1, !tbaa !29
  store i8 0, i8* %d6, align 1, !tbaa !29
  store i8 0, i8* %d5, align 1, !tbaa !29
  store i8 0, i8* %d4, align 1, !tbaa !29
  store i8 0, i8* %d3, align 1, !tbaa !29
  store i8 0, i8* %d2, align 1, !tbaa !29
  store i8 0, i8* %d1, align 1, !tbaa !29
  store i8 0, i8* %d0, align 1, !tbaa !29
  store i32 0, i32* %i, align 4, !tbaa !5
  store i8 1, i8* %mask, align 1, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !29
  store i8 %3, i8* %s, align 1, !tbaa !29
  %4 = load i8, i8* %s, align 1, !tbaa !29
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8, i8* %mask, align 1, !tbaa !29
  %conv1 = zext i8 %5 to i32
  %6 = load i8, i8* %d0, align 1, !tbaa !29
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv1
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %d0, align 1, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8, i8* %s, align 1, !tbaa !29
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 64
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %8 = load i8, i8* %mask, align 1, !tbaa !29
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %d1, align 1, !tbaa !29
  %conv9 = zext i8 %9 to i32
  %or10 = or i32 %conv9, %conv8
  %conv11 = trunc i32 %or10 to i8
  store i8 %conv11, i8* %d1, align 1, !tbaa !29
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %10 = load i8, i8* %s, align 1, !tbaa !29
  %conv13 = zext i8 %10 to i32
  %and14 = and i32 %conv13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %11 = load i8, i8* %mask, align 1, !tbaa !29
  %conv17 = zext i8 %11 to i32
  %12 = load i8, i8* %d2, align 1, !tbaa !29
  %conv18 = zext i8 %12 to i32
  %or19 = or i32 %conv18, %conv17
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %d2, align 1, !tbaa !29
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.12
  %13 = load i8, i8* %s, align 1, !tbaa !29
  %conv22 = zext i8 %13 to i32
  %and23 = and i32 %conv22, 16
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %14 = load i8, i8* %mask, align 1, !tbaa !29
  %conv26 = zext i8 %14 to i32
  %15 = load i8, i8* %d3, align 1, !tbaa !29
  %conv27 = zext i8 %15 to i32
  %or28 = or i32 %conv27, %conv26
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %d3, align 1, !tbaa !29
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.21
  %16 = load i8, i8* %s, align 1, !tbaa !29
  %conv31 = zext i8 %16 to i32
  %and32 = and i32 %conv31, 8
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.30
  %17 = load i8, i8* %mask, align 1, !tbaa !29
  %conv35 = zext i8 %17 to i32
  %18 = load i8, i8* %d4, align 1, !tbaa !29
  %conv36 = zext i8 %18 to i32
  %or37 = or i32 %conv36, %conv35
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, i8* %d4, align 1, !tbaa !29
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.30
  %19 = load i8, i8* %s, align 1, !tbaa !29
  %conv40 = zext i8 %19 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.39
  %20 = load i8, i8* %mask, align 1, !tbaa !29
  %conv44 = zext i8 %20 to i32
  %21 = load i8, i8* %d5, align 1, !tbaa !29
  %conv45 = zext i8 %21 to i32
  %or46 = or i32 %conv45, %conv44
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %d5, align 1, !tbaa !29
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.39
  %22 = load i8, i8* %s, align 1, !tbaa !29
  %conv49 = zext i8 %22 to i32
  %and50 = and i32 %conv49, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.end.48
  %23 = load i8, i8* %mask, align 1, !tbaa !29
  %conv53 = zext i8 %23 to i32
  %24 = load i8, i8* %d6, align 1, !tbaa !29
  %conv54 = zext i8 %24 to i32
  %or55 = or i32 %conv54, %conv53
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, i8* %d6, align 1, !tbaa !29
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.end.48
  %25 = load i8, i8* %s, align 1, !tbaa !29
  %conv58 = zext i8 %25 to i32
  %and59 = and i32 %conv58, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.57
  %26 = load i8, i8* %mask, align 1, !tbaa !29
  %conv62 = zext i8 %26 to i32
  %27 = load i8, i8* %d7, align 1, !tbaa !29
  %conv63 = zext i8 %27 to i32
  %or64 = or i32 %conv63, %conv62
  %conv65 = trunc i32 %or64 to i8
  store i8 %conv65, i8* %d7, align 1, !tbaa !29
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.57
  %28 = load i32, i32* %src_step.addr, align 4, !tbaa !5
  %29 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %31 = load i8, i8* %mask, align 1, !tbaa !29
  %conv67 = zext i8 %31 to i32
  %shl = shl i32 %conv67, 1
  %conv68 = trunc i32 %shl to i8
  store i8 %conv68, i8* %mask, align 1, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i8, i8* %d0, align 1, !tbaa !29
  %33 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  store i8 %32, i8* %33, align 1, !tbaa !29
  %34 = load i8, i8* %d1, align 1, !tbaa !29
  %35 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %36 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext69 = sext i32 %35 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %36, i64 %idx.ext69
  store i8* %add.ptr70, i8** %dst.addr, align 8, !tbaa !1
  store i8 %34, i8* %add.ptr70, align 1, !tbaa !29
  %37 = load i8, i8* %d2, align 1, !tbaa !29
  %38 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %39 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext71 = sext i32 %38 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %39, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dst.addr, align 8, !tbaa !1
  store i8 %37, i8* %add.ptr72, align 1, !tbaa !29
  %40 = load i8, i8* %d3, align 1, !tbaa !29
  %41 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %42 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext73 = sext i32 %41 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %42, i64 %idx.ext73
  store i8* %add.ptr74, i8** %dst.addr, align 8, !tbaa !1
  store i8 %40, i8* %add.ptr74, align 1, !tbaa !29
  %43 = load i8, i8* %d4, align 1, !tbaa !29
  %44 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %45 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext75 = sext i32 %44 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %45, i64 %idx.ext75
  store i8* %add.ptr76, i8** %dst.addr, align 8, !tbaa !1
  store i8 %43, i8* %add.ptr76, align 1, !tbaa !29
  %46 = load i8, i8* %d5, align 1, !tbaa !29
  %47 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %48 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext77 = sext i32 %47 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %48, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dst.addr, align 8, !tbaa !1
  store i8 %46, i8* %add.ptr78, align 1, !tbaa !29
  %49 = load i8, i8* %d6, align 1, !tbaa !29
  %50 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %51 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext79 = sext i32 %50 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %51, i64 %idx.ext79
  store i8* %add.ptr80, i8** %dst.addr, align 8, !tbaa !1
  store i8 %49, i8* %add.ptr80, align 1, !tbaa !29
  %52 = load i8, i8* %d7, align 1, !tbaa !29
  %53 = load i32, i32* %dst_step.addr, align 4, !tbaa !5
  %54 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext81 = sext i32 %53 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %54, i64 %idx.ext81
  store i8* %add.ptr82, i8** %dst.addr, align 8, !tbaa !1
  store i8 %52, i8* %add.ptr82, align 1, !tbaa !29
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
!23 = !{!8, !2, i64 24}
!24 = !{!25, !2, i64 200}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!25, !2, i64 88}
!28 = !{!8, !2, i64 17176}
!29 = !{!3, !3, i64 0}
!30 = !{!25, !2, i64 24}
