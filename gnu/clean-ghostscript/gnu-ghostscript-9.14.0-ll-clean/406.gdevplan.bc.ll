; ModuleID = './gdevplan.bc'
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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

@plan_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plan_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @plan_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @plan_decode_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @plan_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"plan\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_plan_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @plan_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @plan_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@plang_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plan_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @plan_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @plang_decode_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @plang_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @plang_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"plang\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_plang_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @plang_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @plang_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@planm_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plan_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @plan_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"planm\00", align 1
@gs_planm_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @planm_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @planm_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@plank_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plan_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @plan_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @planc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @planc_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @planc_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"plank\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_plank_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @plank_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @plank_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@planc_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @plan_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @plan_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @planc_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @planc_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @planc_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"planc\00", align 1
@gs_planc_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @planc_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @planc_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"nul:\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6 %d %d 255\0A\00", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"P7\0AWIDTH %d\0AHEIGHT %d\0ADEPTH 4\0AMAXVAL 255\0ATUPLTYPE CMYK\0A# Image generated by %s\0AENDHDR\0A\00", align 1
@gs_product = external constant i8*, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"P4 %d %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"P5 %d %d 255\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @plan_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @plan_print_page_loop(%struct.gx_device_printer_s* %0, i32 3, i32 3, %struct._IO_FILE* %1) #5
  ret i32 %call
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
define internal i32 @plang_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @plan_print_page_loop(%struct.gx_device_printer_s* %0, i32 3, i32 1, %struct._IO_FILE* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @planm_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @plan_print_page_loop(%struct.gx_device_printer_s* %0, i32 0, i32 1, %struct._IO_FILE* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @plank_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @plan_print_page_loop(%struct.gx_device_printer_s* %0, i32 0, i32 4, %struct._IO_FILE* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @planc_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call = call i32 @plan_print_page_loop(%struct.gx_device_printer_s* %0, i32 3, i32 4, %struct._IO_FILE* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @plan_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_planar(%struct.gx_device_s* %4, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !7
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %8) #5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gx_device_printer_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @plan_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pldev = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %pldev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %3) #5
  %4 = bitcast %struct.gx_device_printer_s** %pldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @plan_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i32, align 4
  %colormask = alloca i32, align 4
  %max_rgb = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !20
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !21
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 3
  store i32 %div, i32* %bitspercolor, align 4, !tbaa !5
  %3 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %colormask, align 4, !tbaa !5
  %5 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 6
  %7 = load i32, i32* %max_color, align 4, !tbaa !22
  store i32 %7, i32* %max_rgb, align 4, !tbaa !5
  %8 = load i64, i64* %color.addr, align 8, !tbaa !20
  %9 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %mul = mul i32 %9, 2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %8, %sh_prom
  %10 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv2 = zext i32 %10 to i64
  %and = and i64 %shr, %conv2
  %mul3 = mul i64 %and, 65535
  %11 = load i32, i32* %max_rgb, align 4, !tbaa !5
  %conv4 = zext i32 %11 to i64
  %div5 = udiv i64 %mul3, %conv4
  %conv6 = trunc i64 %div5 to i16
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  store i16 %conv6, i16* %arrayidx, align 2, !tbaa !23
  %13 = load i64, i64* %color.addr, align 8, !tbaa !20
  %14 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %sh_prom7 = zext i32 %14 to i64
  %shr8 = lshr i64 %13, %sh_prom7
  %15 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv9 = zext i32 %15 to i64
  %and10 = and i64 %shr8, %conv9
  %mul11 = mul i64 %and10, 65535
  %16 = load i32, i32* %max_rgb, align 4, !tbaa !5
  %conv12 = zext i32 %16 to i64
  %div13 = udiv i64 %mul11, %conv12
  %conv14 = trunc i64 %div13 to i16
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %17, i64 1
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !23
  %18 = load i64, i64* %color.addr, align 8, !tbaa !20
  %19 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv16 = zext i32 %19 to i64
  %and17 = and i64 %18, %conv16
  %mul18 = mul i64 %and17, 65535
  %20 = load i32, i32* %max_rgb, align 4, !tbaa !5
  %conv19 = zext i32 %20 to i64
  %div20 = udiv i64 %mul18, %conv19
  %conv21 = trunc i64 %div20 to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv21, i16* %arrayidx22, align 2, !tbaa !23
  %22 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret i32 0
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_planar(%struct.gx_device_s*, i32) #0

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @plang_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !20
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !20
  %mul = mul i64 %1, 65535
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %3 = load i32, i32* %max_gray, align 4, !tbaa !24
  %conv = zext i32 %3 to i64
  %div = udiv i64 %mul, %conv
  %conv1 = trunc i64 %div to i16
  store i16 %conv1, i16* %gray, align 2, !tbaa !23
  %4 = load i16, i16* %gray, align 2, !tbaa !23
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !23
  %6 = load i16, i16* %gray, align 2, !tbaa !23
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx2, align 2, !tbaa !23
  %8 = load i16, i16* %gray, align 2, !tbaa !23
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx3, align 2, !tbaa !23
  %10 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @plang_encode_color(%struct.gx_device_s* %pdev, i16* %cv) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %gray = alloca i16, align 2
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !23
  store i16 %5, i16* %r, align 2, !tbaa !23
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx1, align 2, !tbaa !23
  store i16 %7, i16* %g, align 2, !tbaa !23
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx2, align 2, !tbaa !23
  store i16 %9, i16* %b, align 2, !tbaa !23
  %10 = load i16, i16* %r, align 2, !tbaa !23
  %conv = zext i16 %10 to i64
  %mul = mul i64 %conv, 30
  %11 = load i16, i16* %g, align 2, !tbaa !23
  %conv3 = zext i16 %11 to i64
  %mul4 = mul i64 %conv3, 59
  %add = add i64 %mul, %mul4
  %12 = load i16, i16* %b, align 2, !tbaa !23
  %conv5 = zext i16 %12 to i64
  %mul6 = mul i64 %conv5, 11
  %add7 = add i64 %add, %mul6
  %add8 = add i64 %add7, 50
  %div = udiv i64 %add8, 100
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %14 = load i32, i32* %max_gray, align 4, !tbaa !24
  %conv9 = zext i32 %14 to i64
  %mul10 = mul i64 %div, %conv9
  %div11 = udiv i64 %mul10, 65535
  %conv12 = trunc i64 %div11 to i16
  store i16 %conv12, i16* %gray, align 2, !tbaa !23
  %15 = load i16, i16* %gray, align 2, !tbaa !23
  %conv13 = zext i16 %15 to i64
  %16 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #2
  %17 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %17) #2
  %18 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #2
  %19 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #2
  ret i64 %conv13
}

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @planc_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i32, align 4
  %colormask = alloca i32, align 4
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !20
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !21
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 4
  store i32 %div, i32* %bitspercolor, align 4, !tbaa !5
  %3 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %colormask, align 4, !tbaa !5
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !20
  %10 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv1 = zext i32 %10 to i64
  %and = and i64 %9, %conv1
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %k, align 4, !tbaa !5
  %11 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %12 = load i64, i64* %color.addr, align 8, !tbaa !20
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 %12, %sh_prom
  store i64 %shr, i64* %color.addr, align 8, !tbaa !20
  %13 = load i64, i64* %color.addr, align 8, !tbaa !20
  %14 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv3 = zext i32 %14 to i64
  %and4 = and i64 %13, %conv3
  %conv5 = trunc i64 %and4 to i32
  store i32 %conv5, i32* %y, align 4, !tbaa !5
  %15 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %16 = load i64, i64* %color.addr, align 8, !tbaa !20
  %sh_prom6 = zext i32 %15 to i64
  %shr7 = lshr i64 %16, %sh_prom6
  store i64 %shr7, i64* %color.addr, align 8, !tbaa !20
  %17 = load i64, i64* %color.addr, align 8, !tbaa !20
  %18 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv8 = zext i32 %18 to i64
  %and9 = and i64 %17, %conv8
  %conv10 = trunc i64 %and9 to i32
  store i32 %conv10, i32* %m, align 4, !tbaa !5
  %19 = load i64, i64* %color.addr, align 8, !tbaa !20
  %20 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %sh_prom11 = zext i32 %20 to i64
  %shr12 = lshr i64 %19, %sh_prom11
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %c, align 4, !tbaa !5
  %21 = load i32, i32* %colormask, align 4, !tbaa !5
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %sub14 = sub i32 %21, %22
  store i32 %sub14, i32* %k, align 4, !tbaa !5
  %23 = load i32, i32* %colormask, align 4, !tbaa !5
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %sub15 = sub i32 %23, %24
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %mul = mul i32 %sub15, %25
  %26 = load i32, i32* %colormask, align 4, !tbaa !5
  %div16 = udiv i32 %mul, %26
  %conv17 = zext i32 %div16 to i64
  %mul18 = mul i64 %conv17, 65535
  %27 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv19 = zext i32 %27 to i64
  %div20 = udiv i64 %mul18, %conv19
  %conv21 = trunc i64 %div20 to i16
  %28 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %conv21, i16* %arrayidx, align 2, !tbaa !23
  %29 = load i32, i32* %colormask, align 4, !tbaa !5
  %30 = load i32, i32* %m, align 4, !tbaa !5
  %sub22 = sub i32 %29, %30
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %mul23 = mul i32 %sub22, %31
  %32 = load i32, i32* %colormask, align 4, !tbaa !5
  %div24 = udiv i32 %mul23, %32
  %conv25 = zext i32 %div24 to i64
  %mul26 = mul i64 %conv25, 65535
  %33 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv27 = zext i32 %33 to i64
  %div28 = udiv i64 %mul26, %conv27
  %conv29 = trunc i64 %div28 to i16
  %34 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %34, i64 1
  store i16 %conv29, i16* %arrayidx30, align 2, !tbaa !23
  %35 = load i32, i32* %colormask, align 4, !tbaa !5
  %36 = load i32, i32* %y, align 4, !tbaa !5
  %sub31 = sub i32 %35, %36
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %mul32 = mul i32 %sub31, %37
  %38 = load i32, i32* %colormask, align 4, !tbaa !5
  %div33 = udiv i32 %mul32, %38
  %conv34 = zext i32 %div33 to i64
  %mul35 = mul i64 %conv34, 65535
  %39 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv36 = zext i32 %39 to i64
  %div37 = udiv i64 %mul35, %conv36
  %conv38 = trunc i64 %div37 to i16
  %40 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 2
  store i16 %conv38, i16* %arrayidx39, align 2, !tbaa !23
  %41 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @planc_encode_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %color = alloca i64, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !21
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 4
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %7
  %sub = sub nsw i32 %shl, 1
  %8 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv1 = sext i32 %8 to i64
  %sub2 = sub i64 16, %conv1
  %sh_prom = trunc i64 %sub2 to i32
  %shl3 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl3, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !5
  %9 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv4 = sext i32 %9 to i64
  %sub5 = sub i64 32, %conv4
  %conv6 = trunc i64 %sub5 to i32
  store i32 %conv6, i32* %COLROUND_S, align 4, !tbaa !5
  %10 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub7 = sub i32 %10, 1
  %shl8 = shl i32 1, %sub7
  store i32 %shl8, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !23
  %conv9 = zext i16 %13 to i32
  %mul = mul i32 %11, %conv9
  %14 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add10 = add i32 %mul, %14
  %15 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr = lshr i32 %add10, %15
  %conv11 = zext i32 %shr to i64
  %16 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom12 = zext i32 %16 to i64
  %shl13 = shl i64 %conv11, %sh_prom12
  %17 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %18 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %18, i64 1
  %19 = load i16, i16* %arrayidx14, align 2, !tbaa !23
  %conv15 = zext i16 %19 to i32
  %mul16 = mul i32 %17, %conv15
  %20 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add17 = add i32 %mul16, %20
  %21 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr18 = lshr i32 %add17, %21
  %conv19 = zext i32 %shr18 to i64
  %add20 = add i64 %shl13, %conv19
  %22 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom21 = zext i32 %22 to i64
  %shl22 = shl i64 %add20, %sh_prom21
  %23 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %24 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %24, i64 2
  %25 = load i16, i16* %arrayidx23, align 2, !tbaa !23
  %conv24 = zext i16 %25 to i32
  %mul25 = mul i32 %23, %conv24
  %26 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add26 = add i32 %mul25, %26
  %27 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr27 = lshr i32 %add26, %27
  %conv28 = zext i32 %shr27 to i64
  %add29 = add i64 %shl22, %conv28
  %28 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom30 = zext i32 %28 to i64
  %shl31 = shl i64 %add29, %sh_prom30
  %29 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %30 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %30, i64 3
  %31 = load i16, i16* %arrayidx32, align 2, !tbaa !23
  %conv33 = zext i16 %31 to i32
  %mul34 = mul i32 %29, %conv33
  %32 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add35 = add i32 %mul34, %32
  %33 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr36 = lshr i32 %add35, %33
  %conv37 = zext i32 %shr36 to i64
  %add38 = add i64 %shl31, %conv37
  store i64 %add38, i64* %color, align 8, !tbaa !20
  %34 = load i64, i64* %color, align 8, !tbaa !20
  %cmp = icmp eq i64 %34, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %35 = load i64, i64* %color, align 8, !tbaa !20
  %xor = xor i64 %35, 1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %36 = load i64, i64* %color, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %36, %cond.false ]
  %37 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @planc_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i32, align 4
  %colormask = alloca i32, align 4
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !20
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !21
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 4
  store i32 %div, i32* %bitspercolor, align 4, !tbaa !5
  %3 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %colormask, align 4, !tbaa !5
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !20
  %10 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv1 = zext i32 %10 to i64
  %and = and i64 %9, %conv1
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %k, align 4, !tbaa !5
  %11 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %12 = load i64, i64* %color.addr, align 8, !tbaa !20
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 %12, %sh_prom
  store i64 %shr, i64* %color.addr, align 8, !tbaa !20
  %13 = load i64, i64* %color.addr, align 8, !tbaa !20
  %14 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv3 = zext i32 %14 to i64
  %and4 = and i64 %13, %conv3
  %conv5 = trunc i64 %and4 to i32
  store i32 %conv5, i32* %y, align 4, !tbaa !5
  %15 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %16 = load i64, i64* %color.addr, align 8, !tbaa !20
  %sh_prom6 = zext i32 %15 to i64
  %shr7 = lshr i64 %16, %sh_prom6
  store i64 %shr7, i64* %color.addr, align 8, !tbaa !20
  %17 = load i64, i64* %color.addr, align 8, !tbaa !20
  %18 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv8 = zext i32 %18 to i64
  %and9 = and i64 %17, %conv8
  %conv10 = trunc i64 %and9 to i32
  store i32 %conv10, i32* %m, align 4, !tbaa !5
  %19 = load i64, i64* %color.addr, align 8, !tbaa !20
  %20 = load i32, i32* %bitspercolor, align 4, !tbaa !5
  %sh_prom11 = zext i32 %20 to i64
  %shr12 = lshr i64 %19, %sh_prom11
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %c, align 4, !tbaa !5
  %21 = load i32, i32* %c, align 4, !tbaa !5
  %conv14 = zext i32 %21 to i64
  %mul = mul i64 %conv14, 65535
  %22 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv15 = zext i32 %22 to i64
  %div16 = udiv i64 %mul, %conv15
  %conv17 = trunc i64 %div16 to i16
  %23 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %conv17, i16* %arrayidx, align 2, !tbaa !23
  %24 = load i32, i32* %m, align 4, !tbaa !5
  %conv18 = zext i32 %24 to i64
  %mul19 = mul i64 %conv18, 65535
  %25 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv20 = zext i32 %25 to i64
  %div21 = udiv i64 %mul19, %conv20
  %conv22 = trunc i64 %div21 to i16
  %26 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %26, i64 1
  store i16 %conv22, i16* %arrayidx23, align 2, !tbaa !23
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %conv24 = zext i32 %27 to i64
  %mul25 = mul i64 %conv24, 65535
  %28 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv26 = zext i32 %28 to i64
  %div27 = udiv i64 %mul25, %conv26
  %conv28 = trunc i64 %div27 to i16
  %29 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %29, i64 2
  store i16 %conv28, i16* %arrayidx29, align 2, !tbaa !23
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %conv30 = zext i32 %30 to i64
  %mul31 = mul i64 %conv30, 65535
  %31 = load i32, i32* %colormask, align 4, !tbaa !5
  %conv32 = zext i32 %31 to i64
  %div33 = udiv i64 %mul31, %conv32
  %conv34 = trunc i64 %div33 to i16
  %32 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %32, i64 3
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !23
  %33 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %colormask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @plan_print_page_loop(%struct.gx_device_printer_s* %pdev, i32 %log2bits, i32 %numComps, %struct._IO_FILE* %pstream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %log2bits.addr = alloca i32, align 4
  %numComps.addr = alloca i32, align 4
  %pstream.addr = alloca %struct._IO_FILE*, align 8
  %pldev = alloca %struct.gx_device_printer_s*, align 8
  %lnum = alloca i32, align 4
  %code = alloca i32, align 4
  %options = alloca i64, align 8
  %row_proc = alloca void (i32, i8**, %struct._IO_FILE*)*, align 8
  %output_is_nul = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %unread = alloca %struct.gs_int_rect_s*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i32 %log2bits, i32* %log2bits.addr, align 4, !tbaa !5
  store i32 %numComps, i32* %numComps.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %pstream, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %pldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %1, %struct.gx_device_printer_s** %pldev, align 8, !tbaa !1
  %2 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast void (i32, i8**, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store void (i32, i8**, %struct._IO_FILE*)* null, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  %6 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  br i1 false, label %land.lhs.true, label %cond.false.54

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call1 = call i64 @strlen(i8* %arraydecay) #6
  %cmp = icmp ult i64 %call1, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 45
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname2, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ 4, %cond.false ]
  %cmp5 = icmp ult i64 %call, %cond
  br i1 %cmp5, label %cond.true.6, label %cond.false.54

cond.true.6:                                      ; preds = %cond.end
  %9 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true.7, label %cond.false.48

land.lhs.true.7:                                  ; preds = %cond.true.6
  %call8 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  store i64 %call8, i64* %__s2_len, align 8, !tbaa !20
  %11 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp9 = icmp ult i64 %11, 4
  br i1 %cmp9, label %cond.true.10, label %cond.false.48

cond.true.10:                                     ; preds = %land.lhs.true.7
  %12 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 45
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname12, i32 0, i32 0
  store i8* %arraydecay13, i8** %__s1, align 8, !tbaa !1
  %14 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %16 to i32
  %17 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !25
  %conv15 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv, %conv15
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %18 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp16 = icmp ugt i64 %18, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.46

land.lhs.true.18:                                 ; preds = %cond.true.10
  %19 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then, label %if.end.46

if.then:                                          ; preds = %land.lhs.true.18
  %20 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx21, align 1, !tbaa !25
  %conv22 = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !25
  %conv23 = zext i8 %22 to i32
  %sub24 = sub nsw i32 %conv22, %conv23
  store i32 %sub24, i32* %__result, align 4, !tbaa !5
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp25 = icmp ugt i64 %23, 1
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.45

land.lhs.true.27:                                 ; preds = %if.then
  %24 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then.30, label %if.end.45

if.then.30:                                       ; preds = %land.lhs.true.27
  %25 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx31, align 1, !tbaa !25
  %conv32 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !25
  %conv33 = zext i8 %27 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  store i32 %sub34, i32* %__result, align 4, !tbaa !5
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp35 = icmp ugt i64 %28, 2
  br i1 %cmp35, label %land.lhs.true.37, label %if.end

land.lhs.true.37:                                 ; preds = %if.then.30
  %29 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %29, 0
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.lhs.true.37
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx41, align 1, !tbaa !25
  %conv42 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !25
  %conv43 = zext i8 %32 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  store i32 %sub44, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.lhs.true.37, %if.then.30
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %land.lhs.true.27, %if.then
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.18, %cond.true.10
  %33 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %33, i32* %tmp47, !tbaa !5
  %34 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %tmp47, !tbaa !5
  br label %cond.end.52

cond.false.48:                                    ; preds = %land.lhs.true.7, %cond.true.6
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname49 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %37, i32 0, i32 45
  %arraydecay50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname49, i32 0, i32 0
  %call51 = call i32 @strcmp(i8* %arraydecay50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #7
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.48, %if.end.46
  %cond53 = phi i32 [ %36, %if.end.46 ], [ %call51, %cond.false.48 ]
  store i32 %cond53, i32* %tmp, !tbaa !5
  %38 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

cond.false.54:                                    ; preds = %cond.end, %entry
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname55 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 45
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname55, i32 0, i32 0
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 45
  %arraydecay58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname57, i32 0, i32 0
  %call59 = call i64 @strlen(i8* %arraydecay58) #6
  %cmp60 = icmp ult i64 %call59, 4
  br i1 %cmp60, label %cond.true.62, label %cond.false.66

cond.true.62:                                     ; preds = %cond.false.54
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname63 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 45
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname63, i32 0, i32 0
  %call65 = call i64 @strlen(i8* %arraydecay64) #6
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.false.54
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.62
  %cond68 = phi i64 [ %call65, %cond.true.62 ], [ 4, %cond.false.66 ]
  %call69 = call i32 @strncmp(i8* %arraydecay56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 %cond68) #6
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end.67, %cond.end.52
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname71 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 45
  %arraydecay72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname71, i32 0, i32 0
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 45
  %arraydecay74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname73, i32 0, i32 0
  %call75 = call i64 @strlen(i8* %arraydecay74) #6
  %cmp76 = icmp ult i64 %call75, 9
  br i1 %cmp76, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %lor.rhs
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 45
  %arraydecay80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname79, i32 0, i32 0
  %call81 = call i64 @strlen(i8* %arraydecay80) #6
  br label %cond.end.83

cond.false.82:                                    ; preds = %lor.rhs
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.78
  %cond84 = phi i64 [ %call81, %cond.true.78 ], [ 9, %cond.false.82 ]
  %call85 = call i32 @strncmp(i8* %arraydecay72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 %cond84) #6
  %tobool86 = icmp ne i32 %call85, 0
  %lnot = xor i1 %tobool86, true
  br label %lor.end

lor.end:                                          ; preds = %cond.end.83, %cond.end.67, %cond.end.52
  %47 = phi i1 [ true, %cond.end.67 ], [ true, %cond.end.52 ], [ %lnot, %cond.end.83 ]
  %lor.ext = zext i1 %47 to i32
  store i32 %lor.ext, i32* %output_is_nul, align 4, !tbaa !5
  %48 = load i32, i32* %output_is_nul, align 4, !tbaa !5
  %tobool87 = icmp ne i32 %48, 0
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %lor.end
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width, align 4, !tbaa !26
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 14
  %52 = load i32, i32* %height, align 4, !tbaa !31
  %53 = load i32, i32* %numComps.addr, align 4, !tbaa !5
  %54 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  %call89 = call void (i32, i8**, %struct._IO_FILE*)* @dump_start(i32 %50, i32 %52, i32 %53, i32 %54, %struct._IO_FILE* %55) #5
  store void (i32, i8**, %struct._IO_FILE*)* %call89, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %lor.end
  store i64 295698449, i64* %options, align 8, !tbaa !20
  %56 = load i32, i32* %numComps.addr, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %56, 1
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.90
  %57 = load i64, i64* %options, align 8, !tbaa !20
  %or = or i64 %57, 65536
  store i64 %or, i64* %options, align 8, !tbaa !20
  br label %if.end.95

if.else:                                          ; preds = %if.end.90
  %58 = load i64, i64* %options, align 8, !tbaa !20
  %or94 = or i64 %58, 131072
  store i64 %or94, i64* %options, align 8, !tbaa !20
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %if.then.93
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.95
  %59 = load i32, i32* %lnum, align 4, !tbaa !5
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height96 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 14
  %61 = load i32, i32* %height96, align 4, !tbaa !31
  %cmp97 = icmp slt i32 %59, %61
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = bitcast %struct.gs_int_rect_s** %unread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %63) #2
  %64 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %64) #2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !32
  %65 = load i32, i32* %lnum, align 4, !tbaa !5
  %p102 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p102, i32 0, i32 1
  store i32 %65, i32* %y, align 4, !tbaa !35
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width103 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 13
  %67 = load i32, i32* %width103, align 4, !tbaa !26
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %67, i32* %x104, align 4, !tbaa !36
  %68 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %68, 1
  %q105 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y106 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q105, i32 0, i32 1
  store i32 %add, i32* %y106, align 4, !tbaa !37
  %69 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  %call107 = call i8* @memset(i8* %69, i32 0, i64 536) #7
  %70 = load i64, i64* %options, align 8, !tbaa !20
  %options108 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 %70, i64* %options108, align 8, !tbaa !38
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !40
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %72 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !41
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_printer_s* %73 to %struct.gx_device_s*
  %call109 = call i32 %72(%struct.gx_device_s* %74, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #5
  store i32 %call109, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %75, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %for.body
  %76 = load void (i32, i8**, %struct._IO_FILE*)*, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  %tobool114 = icmp ne void (i32, i8**, %struct._IO_FILE*)* %76, null
  br i1 %tobool114, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %if.end.113
  %77 = load void (i32, i8**, %struct._IO_FILE*)*, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width116 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 13
  %79 = load i32, i32* %width116, align 4, !tbaa !26
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arraydecay117 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i32 0
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %pstream.addr, align 8, !tbaa !1
  call void %77(i32 %79, i8** %arraydecay117, %struct._IO_FILE* %80) #5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %if.end.113
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.112
  %81 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %81) #2
  %82 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #2
  %83 = bitcast %struct.gs_int_rect_s** %unread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %84 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %85, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %for.end
  %86 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.125

cond.false.124:                                   ; preds = %for.end
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ %86, %cond.true.123 ], [ 0, %cond.false.124 ]
  store i32 1, i32* %cleanup.dest.slot
  %87 = bitcast i32* %output_is_nul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast void (i32, i8**, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast %struct.gx_device_printer_s** %pldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  ret i32 %cond126

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void (i32, i8**, %struct._IO_FILE*)* @dump_start(i32 %w, i32 %h, i32 %num_comps, i32 %log2bits, %struct._IO_FILE* %dump_file) #1 {
entry:
  %retval = alloca void (i32, i8**, %struct._IO_FILE*)*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %num_comps.addr = alloca i32, align 4
  %log2bits.addr = alloca i32, align 4
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %row_proc = alloca void (i32, i8**, %struct._IO_FILE*)*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !5
  store i32 %log2bits, i32* %log2bits.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast void (i32, i8**, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store void (i32, i8**, %struct._IO_FILE*)* null, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  %1 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store void (i32, i8**, %struct._IO_FILE*)* @dump_row_ppm, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.6

land.lhs.true.3:                                  ; preds = %if.else
  %4 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store void (i32, i8**, %struct._IO_FILE*)* @dump_row_pbm, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.24

if.else.6:                                        ; preds = %land.lhs.true.3, %if.else
  %5 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.11

land.lhs.true.8:                                  ; preds = %if.else.6
  %6 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %6, 3
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true.8
  store void (i32, i8**, %struct._IO_FILE*)* @dump_row_pgm, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.23

if.else.11:                                       ; preds = %land.lhs.true.8, %if.else.6
  %7 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %7, 4
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %if.else.11
  %8 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  store void (i32, i8**, %struct._IO_FILE*)* @dump_row_pnmk, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end.22

if.else.16:                                       ; preds = %land.lhs.true.13, %if.else.11
  %9 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %9, 4
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.21

land.lhs.true.18:                                 ; preds = %if.else.16
  %10 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %10, 3
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store void (i32, i8**, %struct._IO_FILE*)* @dump_row_pnmc, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  br label %if.end

if.else.21:                                       ; preds = %land.lhs.true.18, %if.else.16
  store void (i32, i8**, %struct._IO_FILE*)* null, void (i32, i8**, %struct._IO_FILE*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.5
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp26 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %12 = load void (i32, i8**, %struct._IO_FILE*)*, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  store void (i32, i8**, %struct._IO_FILE*)* %12, void (i32, i8**, %struct._IO_FILE*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.25
  %13 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %13, 3
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.28
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %15 = load i32, i32* %w.addr, align 4, !tbaa !5
  %16 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %15, i32 %16) #5
  br label %if.end.48

if.else.31:                                       ; preds = %if.end.28
  %17 = load i32, i32* %num_comps.addr, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %17, 4
  br i1 %cmp32, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %if.else.31
  %18 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.then.33
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %20 = load i32, i32* %w.addr, align 4, !tbaa !5
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %22 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i32 0, i32 0), i32 %20, i32 %21, i8* %22) #5
  br label %if.end.39

if.else.37:                                       ; preds = %if.then.33
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %24 = load i32, i32* %w.addr, align 4, !tbaa !5
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %26 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i32 0, i32 0), i32 %24, i32 %25, i8* %26) #5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.35
  br label %if.end.47

if.else.40:                                       ; preds = %if.else.31
  %27 = load i32, i32* %log2bits.addr, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.else.40
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %29, i32 %30) #5
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.40
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %33 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %32, i32 %33) #5
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.30
  %34 = load void (i32, i8**, %struct._IO_FILE*)*, void (i32, i8**, %struct._IO_FILE*)** %row_proc, align 8, !tbaa !1
  store void (i32, i8**, %struct._IO_FILE*)* %34, void (i32, i8**, %struct._IO_FILE*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.27, %if.else.21
  %35 = bitcast void (i32, i8**, %struct._IO_FILE*)** %row_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load void (i32, i8**, %struct._IO_FILE*)*, void (i32, i8**, %struct._IO_FILE*)** %retval
  ret void (i32, i8**, %struct._IO_FILE*)* %36
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @dump_row_ppm(i32 %w, i8** %data, %struct._IO_FILE* %dump_file) #1 {
entry:
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8**, align 8
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %r = alloca i8*, align 8
  %g = alloca i8*, align 8
  %b = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  %3 = bitcast i8** %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %5, i8** %g, align 8, !tbaa !1
  %6 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %8, i8** %b, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !25
  %conv = zext i8 %12 to i32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %13) #5
  %14 = load i8*, i8** %g, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr3, i8** %g, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !25
  %conv4 = zext i8 %15 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call5 = call i32 @fputc(i32 %conv4, %struct._IO_FILE* %16) #5
  %17 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr6, i8** %b, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !25
  %conv7 = zext i8 %18 to i32
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call8 = call i32 @fputc(i32 %conv7, %struct._IO_FILE* %19) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %20 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i8** %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_row_pbm(i32 %w, i8** %data, %struct._IO_FILE* %dump_file) #1 {
entry:
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8**, align 8
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %r = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %4, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %w.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %w.addr, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !25
  %conv = zext i8 %7 to i32
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %8) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %9 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_row_pgm(i32 %w, i8** %data, %struct._IO_FILE* %dump_file) #1 {
entry:
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8**, align 8
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %r = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* %w.addr, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %7) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %8 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_row_pnmk(i32 %w, i8** %data, %struct._IO_FILE* %dump_file) #1 {
entry:
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8**, align 8
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %r = alloca i8*, align 8
  %g = alloca i8*, align 8
  %b = alloca i8*, align 8
  %k = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %C = alloca i8, align 1
  %M = alloca i8, align 1
  %Y = alloca i8, align 1
  %K = alloca i8, align 1
  %s = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  %3 = bitcast i8** %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %5, i8** %g, align 8, !tbaa !1
  %6 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %8, i8** %b, align 8, !tbaa !1
  %9 = bitcast i8** %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 3
  %11 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  store i8* %11, i8** %k, align 8, !tbaa !1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %C) #2
  %14 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !25
  store i8 %15, i8* %C, align 1, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %M) #2
  %16 = load i8*, i8** %g, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr4, i8** %g, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !25
  store i8 %17, i8* %M, align 1, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %Y) #2
  %18 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr5, i8** %b, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !25
  store i8 %19, i8* %Y, align 1, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %K) #2
  %20 = load i8*, i8** %k, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr6, i8** %k, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !25
  store i8 %21, i8* %K, align 1, !tbaa !25
  %22 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 7, i32* %s, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %23 = load i32, i32* %s, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %23, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8, i8* %C, align 1, !tbaa !25
  %conv = zext i8 %24 to i32
  %25 = load i32, i32* %s, align 4, !tbaa !5
  %shr = ashr i32 %conv, %25
  %and = and i32 %shr, 1
  %mul = mul nsw i32 255, %and
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %mul, %struct._IO_FILE* %26) #5
  %27 = load i8, i8* %M, align 1, !tbaa !25
  %conv8 = zext i8 %27 to i32
  %28 = load i32, i32* %s, align 4, !tbaa !5
  %shr9 = ashr i32 %conv8, %28
  %and10 = and i32 %shr9, 1
  %mul11 = mul nsw i32 255, %and10
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call12 = call i32 @fputc(i32 %mul11, %struct._IO_FILE* %29) #5
  %30 = load i8, i8* %Y, align 1, !tbaa !25
  %conv13 = zext i8 %30 to i32
  %31 = load i32, i32* %s, align 4, !tbaa !5
  %shr14 = ashr i32 %conv13, %31
  %and15 = and i32 %shr14, 1
  %mul16 = mul nsw i32 255, %and15
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call17 = call i32 @fputc(i32 %mul16, %struct._IO_FILE* %32) #5
  %33 = load i8, i8* %K, align 1, !tbaa !25
  %conv18 = zext i8 %33 to i32
  %34 = load i32, i32* %s, align 4, !tbaa !5
  %shr19 = ashr i32 %conv18, %34
  %and20 = and i32 %shr19, 1
  %mul21 = mul nsw i32 255, %and20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call22 = call i32 @fputc(i32 %mul21, %struct._IO_FILE* %35) #5
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !5
  %37 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %37, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  br label %for.end

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %38 = load i32, i32* %s, align 4, !tbaa !5
  %dec27 = add nsw i32 %38, -1
  store i32 %dec27, i32* %s, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %39 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  call void @llvm.lifetime.end(i64 1, i8* %K) #2
  call void @llvm.lifetime.end(i64 1, i8* %Y) #2
  call void @llvm.lifetime.end(i64 1, i8* %M) #2
  call void @llvm.lifetime.end(i64 1, i8* %C) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %40 = bitcast i8** %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i8** %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_row_pnmc(i32 %w, i8** %data, %struct._IO_FILE* %dump_file) #1 {
entry:
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8**, align 8
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %r = alloca i8*, align 8
  %g = alloca i8*, align 8
  %b = alloca i8*, align 8
  %k = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %2, i8** %r, align 8, !tbaa !1
  %3 = bitcast i8** %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %5, i8** %g, align 8, !tbaa !1
  %6 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %8, i8** %b, align 8, !tbaa !1
  %9 = bitcast i8** %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 3
  %11 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  store i8* %11, i8** %k, align 8, !tbaa !1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %r, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %r, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !25
  %conv = zext i8 %15 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %16) #5
  %17 = load i8*, i8** %g, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr4, i8** %g, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !25
  %conv5 = zext i8 %18 to i32
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call6 = call i32 @fputc(i32 %conv5, %struct._IO_FILE* %19) #5
  %20 = load i8*, i8** %b, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr7, i8** %b, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !25
  %conv8 = zext i8 %21 to i32
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %conv8, %struct._IO_FILE* %22) #5
  %23 = load i8*, i8** %k, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr10, i8** %k, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !25
  %conv11 = zext i8 %24 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8, !tbaa !1
  %call12 = call i32 @fputc(i32 %conv11, %struct._IO_FILE* %25) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %26 = bitcast i8** %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i8** %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

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
!7 = !{!8, !3, i64 136}
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
!20 = !{!10, !10, i64 0}
!21 = !{!8, !12, i64 108}
!22 = !{!8, !6, i64 116}
!23 = !{!12, !12, i64 0}
!24 = !{!8, !6, i64 112}
!25 = !{!3, !3, i64 0}
!26 = !{!27, !6, i64 832}
!27 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !28, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !30, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!28 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !29, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!29 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!30 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!31 = !{!27, !6, i64 836}
!32 = !{!33, !6, i64 0}
!33 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!34 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!35 = !{!33, !6, i64 4}
!36 = !{!33, !6, i64 8}
!37 = !{!33, !6, i64 12}
!38 = !{!39, !10, i64 0}
!39 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!40 = !{!39, !6, i64 520}
!41 = !{!27, !2, i64 1448}
