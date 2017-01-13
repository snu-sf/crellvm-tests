; ModuleID = './gdevepsc.bc'
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

@epson_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @epson_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @epson_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"epsonc\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_epsonc_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @epson_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 0, i32 1, i32 1, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 1530, i32 1980, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] [float 1.800000e+02, float 1.800000e+02], [2 x float] zeroinitializer, [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.800000e+01, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @epsc_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@rgb_color = internal global [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\00\03", [2 x i8] c"\06\02"], [2 x [2 x i8]] [[2 x i8] c"\05\01", [2 x i8] c"\04\07"]], align 1
@epsc_print_page.graphics_modes_9 = internal global [5 x i32] [i32 -1, i32 0, i32 1, i32 -1, i32 131], align 16
@epsc_print_page.graphics_modes_24 = internal global [7 x i32] [i32 -1, i32 32, i32 33, i32 39, i32 -1, i32 -1, i32 168], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"epsc_print_page(in)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"epsc_print_page(out)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\1B@\1BP\1Bl\00\1BQ\FF\1BU\01\0D\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"epsc_print_page(color)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\1BJ\FF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\1BJ%c\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1Br%c\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\1BD%c%c\09\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"epsc_print_page(rin)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"KLYZ\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @epsc_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %y_24pin = alloca i32, align 4
  %y_mult = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %out_size = alloca i32, align 4
  %out = alloca i8*, align 8
  %x_dpi = alloca i32, align 4
  %start_graphics = alloca i8, align 1
  %first_pass = alloca i32, align 4
  %last_pass = alloca i32, align 4
  %dots_per_space = alloca i32, align 4
  %bytes_per_space = alloca i32, align 4
  %skip = alloca i32, align 4
  %lnum = alloca i32, align 4
  %pass = alloca i32, align 4
  %color_in = alloca i8*, align 8
  %color_line_size = alloca i32, align 4
  %color_in_size = alloca i32, align 4
  %spare_bits = alloca i32, align 4
  %whole_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lcnt = alloca i32, align 4
  %nextcolor = alloca i8*, align 8
  %nextmono = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out_end = alloca i8*, align 8
  %out_blk = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %outbuf = alloca i8*, align 8
  %realbuf = alloca i8*, align 8
  %current_color = alloca i8, align 1
  %end_next_bits = alloca i32, align 4
  %lastbits = alloca i32, align 4
  %zp = alloca i8*, align 8
  %tpos = alloca i32, align 4
  %newp = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %y_24pin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %2 = load float, float* %arrayidx, align 4, !tbaa !5
  %cmp = fcmp ogt float %2, 7.200000e+01
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %y_24pin, align 4, !tbaa !7
  %3 = bitcast i32* %y_mult to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %y_24pin, align 4, !tbaa !7
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 3, i32 1
  store i32 %cond, i32* %y_mult, align 4, !tbaa !7
  %5 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4, !tbaa !9
  %add = add nsw i32 %7, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %line_size, align 4, !tbaa !7
  %8 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %line_size, align 4, !tbaa !7
  %10 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul = mul nsw i32 8, %10
  %mul1 = mul nsw i32 %9, %mul
  store i32 %mul1, i32* %in_size, align 4, !tbaa !7
  %11 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !26
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !29
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !25
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !26
  %19 = load i32, i32* %in_size, align 4, !tbaa !7
  %add4 = add nsw i32 %19, 1
  %call = call i8* %15(%struct.gs_memory_s* %18, i32 %add4, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call, i8** %in, align 8, !tbaa !1
  %20 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width5, align 4, !tbaa !9
  %add6 = add nsw i32 %22, 7
  %and = and i32 %add6, -8
  %23 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul7 = mul nsw i32 %and, %23
  store i32 %mul7, i32* %out_size, align 4, !tbaa !7
  %24 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !25
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !26
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_byte_array11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 10
  %28 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array11, align 8, !tbaa !29
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !25
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !26
  %32 = load i32, i32* %out_size, align 4, !tbaa !7
  %add14 = add nsw i32 %32, 1
  %call15 = call i8* %28(%struct.gs_memory_s* %31, i32 %add14, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call15, i8** %out, align 8, !tbaa !1
  %33 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 0
  %35 = load float, float* %arrayidx17, align 4, !tbaa !5
  %conv18 = fptosi float %35 to i32
  store i32 %conv18, i32* %x_dpi, align 4, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %start_graphics) #2
  %36 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %div = sdiv i32 %36, 60
  %idxprom = sext i32 %div to i64
  %37 = load i32, i32* %y_24pin, align 4, !tbaa !7
  %tobool19 = icmp ne i32 %37, 0
  %cond20 = select i1 %tobool19, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @epsc_print_page.graphics_modes_24, i32 0, i32 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @epsc_print_page.graphics_modes_9, i32 0, i32 0)
  %arrayidx21 = getelementptr inbounds i32, i32* %cond20, i64 %idxprom
  %38 = load i32, i32* %arrayidx21, align 4, !tbaa !7
  %conv22 = trunc i32 %38 to i8
  store i8 %conv22, i8* %start_graphics, align 1, !tbaa !30
  %39 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i8, i8* %start_graphics, align 1, !tbaa !30
  %conv23 = sext i8 %40 to i32
  %and24 = and i32 %conv23, 128
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 1, i32 0
  store i32 %cond26, i32* %first_pass, align 4, !tbaa !7
  %41 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i32, i32* %first_pass, align 4, !tbaa !7
  %mul27 = mul nsw i32 %42, 2
  store i32 %mul27, i32* %last_pass, align 4, !tbaa !7
  %43 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %div28 = sdiv i32 %44, 10
  store i32 %div28, i32* %dots_per_space, align 4, !tbaa !7
  %45 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i32, i32* %dots_per_space, align 4, !tbaa !7
  %47 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul29 = mul nsw i32 %46, %47
  store i32 %mul29, i32* %bytes_per_space, align 4, !tbaa !7
  %48 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %skip, align 4, !tbaa !7
  %49 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  store i32 0, i32* %lnum, align 4, !tbaa !7
  %50 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = bitcast i8** %color_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #2
  %52 = bitcast i32* %color_line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = bitcast i32* %color_in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = bitcast i32* %spare_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 13
  %56 = load i32, i32* %width30, align 4, !tbaa !9
  %rem = srem i32 %56, 8
  store i32 %rem, i32* %spare_bits, align 4, !tbaa !7
  %57 = bitcast i32* %whole_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 13
  %59 = load i32, i32* %width31, align 4, !tbaa !9
  %60 = load i32, i32* %spare_bits, align 4, !tbaa !7
  %sub = sub nsw i32 %59, %60
  store i32 %sub, i32* %whole_bits, align 4, !tbaa !7
  %61 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %61, null
  br i1 %cmp32, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %62 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp34 = icmp eq i8* %62, null
  br i1 %cmp34, label %if.then, label %if.end.52

if.then:                                          ; preds = %lor.lhs.false, %entry
  %63 = load i8*, i8** %in, align 8, !tbaa !1
  %tobool36 = icmp ne i8* %63, null
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %if.then
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !25
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !26
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !25
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !26
  %71 = load i8*, i8** %in, align 8, !tbaa !1
  call void %67(%struct.gs_memory_s* %70, i8* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.37, %if.then
  %72 = load i8*, i8** %out, align 8, !tbaa !1
  %tobool43 = icmp ne i8* %72, null
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.end
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !25
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !26
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object48 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object48, align 8, !tbaa !31
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !25
  %non_gc_memory50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory50, align 8, !tbaa !26
  %80 = load i8*, i8** %out, align 8, !tbaa !1
  call void %76(%struct.gs_memory_s* %79, i8* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.52:                                        ; preds = %lor.lhs.false
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call53 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 14, %struct._IO_FILE* %81) #5
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %82, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %83 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp54 = icmp sgt i32 %83, 1
  br i1 %cmp54, label %if.then.61, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.52
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info57 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info57, i32 0, i32 4
  %85 = load i8, i8* %gray_index, align 1, !tbaa !33
  %conv58 = zext i8 %85 to i32
  %cmp59 = icmp eq i32 %conv58, 255
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %lor.lhs.false.56, %if.end.52
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gx_device_printer_s* %86 to %struct.gx_device_s*
  %88 = bitcast %struct.gx_device_s* %87 to %struct.gx_device_printer_s*
  %89 = bitcast %struct.gx_device_printer_s* %88 to %struct.gx_device_s*
  %call62 = call i32 @gx_device_raster(%struct.gx_device_s* %89, i32 0) #5
  store i32 %call62, i32* %color_line_size, align 4, !tbaa !7
  %90 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %91 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul63 = mul nsw i32 8, %91
  %mul64 = mul nsw i32 %90, %mul63
  store i32 %mul64, i32* %color_in_size, align 4, !tbaa !7
  %92 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %92, i32 0, i32 3
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !25
  %non_gc_memory66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory66, align 8, !tbaa !26
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %alloc_byte_array68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 10
  %95 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array68, align 8, !tbaa !29
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !25
  %non_gc_memory70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory70, align 8, !tbaa !26
  %99 = load i32, i32* %color_in_size, align 4, !tbaa !7
  %add71 = add nsw i32 %99, 1
  %call72 = call i8* %95(%struct.gs_memory_s* %98, i32 %add71, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call72, i8** %color_in, align 8, !tbaa !1
  %cmp73 = icmp eq i8* %call72, null
  br i1 %cmp73, label %if.then.75, label %if.end.88

if.then.75:                                       ; preds = %if.then.61
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !25
  %non_gc_memory77 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory77, align 8, !tbaa !26
  %procs78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 1
  %free_object79 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs78, i32 0, i32 2
  %103 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object79, align 8, !tbaa !31
  %104 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory80, align 8, !tbaa !25
  %non_gc_memory81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory81, align 8, !tbaa !26
  %107 = load i8*, i8** %in, align 8, !tbaa !1
  call void %103(%struct.gs_memory_s* %106, i8* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  %108 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory82 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory82, align 8, !tbaa !25
  %non_gc_memory83 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory83, align 8, !tbaa !26
  %procs84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %free_object85 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs84, i32 0, i32 2
  %111 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object85, align 8, !tbaa !31
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory86 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory86, align 8, !tbaa !25
  %non_gc_memory87 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 3
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory87, align 8, !tbaa !26
  %115 = load i8*, i8** %out, align 8, !tbaa !1
  call void %111(%struct.gs_memory_s* %114, i8* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.88:                                        ; preds = %if.then.61
  br label %if.end.89

if.else:                                          ; preds = %lor.lhs.false.56
  %116 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %116, i8** %color_in, align 8, !tbaa !1
  %117 = load i32, i32* %in_size, align 4, !tbaa !7
  store i32 %117, i32* %color_in_size, align 4, !tbaa !7
  %118 = load i32, i32* %line_size, align 4, !tbaa !7
  store i32 %118, i32* %color_line_size, align 4, !tbaa !7
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.end.88
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.89
  %119 = load i32, i32* %lnum, align 4, !tbaa !7
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %120, i32 0, i32 14
  %121 = load i32, i32* %height, align 4, !tbaa !34
  %cmp90 = icmp slt i32 %119, %121
  br i1 %cmp90, label %while.body, label %while.end.428

while.body:                                       ; preds = %while.cond
  %122 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #2
  %123 = bitcast i8** %nextcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #2
  store i8* null, i8** %nextcolor, align 8, !tbaa !1
  %124 = bitcast i8** %nextmono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #2
  store i8* null, i8** %nextmono, align 8, !tbaa !1
  %125 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %126 = load i32, i32* %lnum, align 4, !tbaa !7
  %127 = load i8*, i8** %color_in, align 8, !tbaa !1
  %128 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %call92 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %125, i32 %126, i8* %127, i32 %128) #5
  %129 = load i8*, i8** %color_in, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx93, align 1, !tbaa !30
  %conv94 = zext i8 %130 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %while.body
  %131 = load i8*, i8** %color_in, align 8, !tbaa !1
  %132 = load i8*, i8** %color_in, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %sub97 = sub nsw i32 %133, 1
  %conv98 = sext i32 %sub97 to i64
  %call99 = call i32 @memcmp(i8* %131, i8* %add.ptr, i64 %conv98) #6
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.104, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true
  %134 = load i32, i32* %lnum, align 4, !tbaa !7
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !7
  %135 = load i32, i32* %y_mult, align 4, !tbaa !7
  %div102 = sdiv i32 3, %135
  %136 = load i32, i32* %skip, align 4, !tbaa !7
  %add103 = add nsw i32 %136, %div102
  store i32 %add103, i32* %skip, align 4, !tbaa !7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %land.lhs.true, %while.body
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.108, %if.end.104
  %137 = load i32, i32* %skip, align 4, !tbaa !7
  %cmp106 = icmp sgt i32 %137, 255
  br i1 %cmp106, label %while.body.108, label %while.end

while.body.108:                                   ; preds = %while.cond.105
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call109 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %138) #5
  %139 = load i32, i32* %skip, align 4, !tbaa !7
  %sub110 = sub nsw i32 %139, 255
  store i32 %sub110, i32* %skip, align 4, !tbaa !7
  br label %while.cond.105

while.end:                                        ; preds = %while.cond.105
  %140 = load i32, i32* %skip, align 4, !tbaa !7
  %tobool111 = icmp ne i32 %140, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %while.end
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %142 = load i32, i32* %skip, align 4, !tbaa !7
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %142) #5
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %while.end
  %143 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %144 = load i32, i32* %lnum, align 4, !tbaa !7
  %add115 = add nsw i32 %144, 1
  %145 = load i8*, i8** %color_in, align 8, !tbaa !1
  %146 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %idx.ext = sext i32 %146 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %145, i64 %idx.ext
  %147 = load i32, i32* %color_in_size, align 4, !tbaa !7
  %148 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %sub117 = sub nsw i32 %147, %148
  %call118 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %143, i32 %add115, i8* %add.ptr116, i32 %sub117) #5
  %add119 = add nsw i32 1, %call118
  store i32 %add119, i32* %lcnt, align 4, !tbaa !7
  %149 = load i32, i32* %lcnt, align 4, !tbaa !7
  %150 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul120 = mul nsw i32 8, %150
  %cmp121 = icmp slt i32 %149, %mul120
  br i1 %cmp121, label %if.then.123, label %if.end.150

if.then.123:                                      ; preds = %if.end.114
  %151 = load i8*, i8** %color_in, align 8, !tbaa !1
  %152 = load i32, i32* %lcnt, align 4, !tbaa !7
  %153 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %mul124 = mul nsw i32 %152, %153
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %151, i64 %idx.ext125
  %154 = load i32, i32* %color_in_size, align 4, !tbaa !7
  %155 = load i32, i32* %lcnt, align 4, !tbaa !7
  %156 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %mul127 = mul nsw i32 %155, %156
  %sub128 = sub nsw i32 %154, %mul127
  %conv129 = sext i32 %sub128 to i64
  %call130 = call i8* @memset(i8* %add.ptr126, i32 0, i64 %conv129) #7
  %157 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %157, i32 0, i32 11
  %num_components132 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info131, i32 0, i32 1
  %158 = load i32, i32* %num_components132, align 4, !tbaa !32
  %cmp133 = icmp sgt i32 %158, 1
  br i1 %cmp133, label %if.then.141, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %if.then.123
  %159 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info136 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %159, i32 0, i32 11
  %gray_index137 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info136, i32 0, i32 4
  %160 = load i8, i8* %gray_index137, align 1, !tbaa !33
  %conv138 = zext i8 %160 to i32
  %cmp139 = icmp eq i32 %conv138, 255
  br i1 %cmp139, label %if.then.141, label %if.end.149

if.then.141:                                      ; preds = %lor.lhs.false.135, %if.then.123
  %161 = load i8*, i8** %in, align 8, !tbaa !1
  %162 = load i32, i32* %lcnt, align 4, !tbaa !7
  %163 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul142 = mul nsw i32 %162, %163
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %161, i64 %idx.ext143
  %164 = load i32, i32* %in_size, align 4, !tbaa !7
  %165 = load i32, i32* %lcnt, align 4, !tbaa !7
  %166 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul145 = mul nsw i32 %165, %166
  %sub146 = sub nsw i32 %164, %mul145
  %conv147 = sext i32 %sub146 to i64
  %call148 = call i8* @memset(i8* %add.ptr144, i32 0, i64 %conv147) #7
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.141, %lor.lhs.false.135
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.114
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.150
  %167 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #2
  %168 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %168, i8** %inp, align 8, !tbaa !1
  %169 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #2
  %170 = load i8*, i8** %in, align 8, !tbaa !1
  %171 = load i32, i32* %line_size, align 4, !tbaa !7
  %idx.ext151 = sext i32 %171 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %170, i64 %idx.ext151
  store i8* %add.ptr152, i8** %in_end, align 8, !tbaa !1
  %172 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #2
  %173 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %173, i8** %out_end, align 8, !tbaa !1
  %174 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #2
  %175 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #2
  %176 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info153 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %176, i32 0, i32 11
  %num_components154 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info153, i32 0, i32 1
  %177 = load i32, i32* %num_components154, align 4, !tbaa !32
  %cmp155 = icmp sgt i32 %177, 1
  br i1 %cmp155, label %if.then.163, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %do.body
  %178 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info158 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %178, i32 0, i32 11
  %gray_index159 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info158, i32 0, i32 4
  %179 = load i8, i8* %gray_index159, align 1, !tbaa !33
  %conv160 = zext i8 %179 to i32
  %cmp161 = icmp eq i32 %conv160, 255
  br i1 %cmp161, label %if.then.163, label %if.end.238

if.then.163:                                      ; preds = %lor.lhs.false.157, %do.body
  %180 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #2
  %181 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #2
  %182 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #2
  %183 = bitcast i8** %realbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #2
  call void @llvm.lifetime.start(i64 1, i8* %current_color) #2
  %184 = bitcast i32* %end_next_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #2
  %185 = load i32, i32* %whole_bits, align 4, !tbaa !7
  store i32 %185, i32* %end_next_bits, align 4, !tbaa !7
  %186 = bitcast i32* %lastbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #2
  %187 = load i8*, i8** %nextcolor, align 8, !tbaa !1
  %tobool164 = icmp ne i8* %187, null
  br i1 %tobool164, label %if.then.165, label %if.else.174

if.then.165:                                      ; preds = %if.then.163
  %188 = load i8*, i8** %nextcolor, align 8, !tbaa !1
  store i8* %188, i8** %realbuf, align 8, !tbaa !1
  %189 = load i8*, i8** %nextmono, align 8, !tbaa !1
  store i8* %189, i8** %outbuf, align 8, !tbaa !1
  %190 = load i8*, i8** %in, align 8, !tbaa !1
  %191 = load i8*, i8** %nextmono, align 8, !tbaa !1
  %192 = load i8*, i8** %in, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %191 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %192 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call166 = call i8* @memset(i8* %190, i32 0, i64 %sub.ptr.sub) #7
  %193 = load i8*, i8** %nextcolor, align 8, !tbaa !1
  %194 = load i8*, i8** %color_in, align 8, !tbaa !1
  %sub.ptr.lhs.cast167 = ptrtoint i8* %193 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %194 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %conv170 = trunc i64 %sub.ptr.sub169 to i32
  store i32 %conv170, i32* %i, align 4, !tbaa !7
  store i8* null, i8** %nextcolor, align 8, !tbaa !1
  %195 = load i32, i32* %i, align 4, !tbaa !7
  %196 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %div171 = sdiv i32 %195, %196
  %197 = load i32, i32* %color_line_size, align 4, !tbaa !7
  %mul172 = mul nsw i32 %div171, %197
  %198 = load i32, i32* %whole_bits, align 4, !tbaa !7
  %add173 = add nsw i32 %mul172, %198
  store i32 %add173, i32* %end_next_bits, align 4, !tbaa !7
  br label %if.end.175

if.else.174:                                      ; preds = %if.then.163
  store i32 0, i32* %i, align 4, !tbaa !7
  %199 = load i8*, i8** %color_in, align 8, !tbaa !1
  store i8* %199, i8** %realbuf, align 8, !tbaa !1
  %200 = load i8*, i8** %in, align 8, !tbaa !1
  store i8* %200, i8** %outbuf, align 8, !tbaa !1
  store i8* null, i8** %nextcolor, align 8, !tbaa !1
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.174, %if.then.165
  store i8 0, i8* %current_color, align 1, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc.230, %if.end.175
  %201 = load i32, i32* %i, align 4, !tbaa !7
  %202 = load i32, i32* %color_in_size, align 4, !tbaa !7
  %cmp176 = icmp sle i32 %201, %202
  br i1 %cmp176, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %203 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %204 = load i8*, i8** %in, align 8, !tbaa !1
  %205 = load i32, i32* %in_size, align 4, !tbaa !7
  %idx.ext178 = sext i32 %205 to i64
  %add.ptr179 = getelementptr inbounds i8, i8* %204, i64 %idx.ext178
  %cmp180 = icmp ult i8* %203, %add.ptr179
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %206 = phi i1 [ false, %for.cond ], [ %cmp180, %land.rhs ]
  br i1 %206, label %for.body, label %for.end.232

for.body:                                         ; preds = %land.end
  %207 = load i32, i32* %spare_bits, align 4, !tbaa !7
  %tobool182 = icmp ne i32 %207, 0
  br i1 %tobool182, label %land.lhs.true.183, label %if.else.190

land.lhs.true.183:                                ; preds = %for.body
  %208 = load i32, i32* %i, align 4, !tbaa !7
  %209 = load i32, i32* %end_next_bits, align 4, !tbaa !7
  %cmp184 = icmp eq i32 %208, %209
  br i1 %cmp184, label %if.then.186, label %if.else.190

if.then.186:                                      ; preds = %land.lhs.true.183
  %210 = load i32, i32* %whole_bits, align 4, !tbaa !7
  %211 = load i32, i32* %i, align 4, !tbaa !7
  %add187 = add nsw i32 %210, %211
  %212 = load i32, i32* %spare_bits, align 4, !tbaa !7
  %add188 = add nsw i32 %add187, %212
  store i32 %add188, i32* %end_next_bits, align 4, !tbaa !7
  %213 = load i32, i32* %spare_bits, align 4, !tbaa !7
  %sub189 = sub nsw i32 8, %213
  store i32 %sub189, i32* %lastbits, align 4, !tbaa !7
  br label %if.end.191

if.else.190:                                      ; preds = %land.lhs.true.183, %for.body
  store i32 0, i32* %lastbits, align 4, !tbaa !7
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.190, %if.then.186
  %214 = load i8*, i8** %outbuf, align 8, !tbaa !1
  store i8 0, i8* %214, align 1, !tbaa !30
  store i32 8, i32* %j, align 4, !tbaa !7
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc, %if.end.191
  %215 = load i32, i32* %j, align 4, !tbaa !7
  %dec = add nsw i32 %215, -1
  store i32 %dec, i32* %j, align 4, !tbaa !7
  %216 = load i32, i32* %lastbits, align 4, !tbaa !7
  %cmp193 = icmp sge i32 %dec, %216
  br i1 %cmp193, label %land.rhs.195, label %land.end.198

land.rhs.195:                                     ; preds = %for.cond.192
  %217 = load i32, i32* %i, align 4, !tbaa !7
  %218 = load i32, i32* %color_in_size, align 4, !tbaa !7
  %cmp196 = icmp sle i32 %217, %218
  br label %land.end.198

land.end.198:                                     ; preds = %land.rhs.195, %for.cond.192
  %219 = phi i1 [ false, %for.cond.192 ], [ %cmp196, %land.rhs.195 ]
  br i1 %219, label %for.body.199, label %for.end

for.body.199:                                     ; preds = %land.end.198
  %220 = load i8*, i8** %realbuf, align 8, !tbaa !1
  %221 = load i8, i8* %220, align 1, !tbaa !30
  %tobool200 = icmp ne i8 %221, 0
  br i1 %tobool200, label %if.then.201, label %if.end.228

if.then.201:                                      ; preds = %for.body.199
  %222 = load i8, i8* %current_color, align 1, !tbaa !30
  %conv202 = zext i8 %222 to i32
  %cmp203 = icmp sgt i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.222

if.then.205:                                      ; preds = %if.then.201
  %223 = load i8*, i8** %realbuf, align 8, !tbaa !1
  %224 = load i8, i8* %223, align 1, !tbaa !30
  %conv206 = zext i8 %224 to i32
  %225 = load i8, i8* %current_color, align 1, !tbaa !30
  %conv207 = zext i8 %225 to i32
  %cmp208 = icmp eq i32 %conv206, %conv207
  br i1 %cmp208, label %if.then.210, label %if.else.213

if.then.210:                                      ; preds = %if.then.205
  %226 = load i32, i32* %j, align 4, !tbaa !7
  %shl = shl i32 1, %226
  %227 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %228 = load i8, i8* %227, align 1, !tbaa !30
  %conv211 = zext i8 %228 to i32
  %or = or i32 %conv211, %shl
  %conv212 = trunc i32 %or to i8
  store i8 %conv212, i8* %227, align 1, !tbaa !30
  %229 = load i8*, i8** %realbuf, align 8, !tbaa !1
  store i8 0, i8* %229, align 1, !tbaa !30
  br label %if.end.221

if.else.213:                                      ; preds = %if.then.205
  %230 = load i8*, i8** %nextcolor, align 8, !tbaa !1
  %cmp214 = icmp eq i8* %230, null
  br i1 %cmp214, label %if.then.216, label %if.end.220

if.then.216:                                      ; preds = %if.else.213
  %231 = load i8*, i8** %realbuf, align 8, !tbaa !1
  %232 = load i32, i32* %j, align 4, !tbaa !7
  %sub217 = sub nsw i32 7, %232
  %idx.ext218 = sext i32 %sub217 to i64
  %idx.neg = sub i64 0, %idx.ext218
  %add.ptr219 = getelementptr inbounds i8, i8* %231, i64 %idx.neg
  store i8* %add.ptr219, i8** %nextcolor, align 8, !tbaa !1
  %233 = load i8*, i8** %outbuf, align 8, !tbaa !1
  store i8* %233, i8** %nextmono, align 8, !tbaa !1
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.216, %if.else.213
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.210
  br label %if.end.227

if.else.222:                                      ; preds = %if.then.201
  %234 = load i32, i32* %j, align 4, !tbaa !7
  %shl223 = shl i32 1, %234
  %235 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %236 = load i8, i8* %235, align 1, !tbaa !30
  %conv224 = zext i8 %236 to i32
  %or225 = or i32 %conv224, %shl223
  %conv226 = trunc i32 %or225 to i8
  store i8 %conv226, i8* %235, align 1, !tbaa !30
  %237 = load i8*, i8** %realbuf, align 8, !tbaa !1
  %238 = load i8, i8* %237, align 1, !tbaa !30
  store i8 %238, i8* %current_color, align 1, !tbaa !30
  %239 = load i8*, i8** %realbuf, align 8, !tbaa !1
  store i8 0, i8* %239, align 1, !tbaa !30
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.222, %if.end.221
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %for.body.199
  br label %for.inc

for.inc:                                          ; preds = %if.end.228
  %240 = load i8*, i8** %realbuf, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr, i8** %realbuf, align 8, !tbaa !1
  %241 = load i32, i32* %i, align 4, !tbaa !7
  %inc229 = add nsw i32 %241, 1
  store i32 %inc229, i32* %i, align 4, !tbaa !7
  br label %for.cond.192

for.end:                                          ; preds = %land.end.198
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.end
  %242 = load i8*, i8** %outbuf, align 8, !tbaa !1
  %incdec.ptr231 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr231, i8** %outbuf, align 8, !tbaa !1
  br label %for.cond

for.end.232:                                      ; preds = %land.end
  %243 = load i8*, i8** %outbuf, align 8, !tbaa !1
  store i8 0, i8* %243, align 1, !tbaa !30
  %244 = load i8, i8* %current_color, align 1, !tbaa !30
  %tobool233 = icmp ne i8 %244, 0
  br i1 %tobool233, label %if.then.234, label %if.end.237

if.then.234:                                      ; preds = %for.end.232
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %246 = load i8, i8* %current_color, align 1, !tbaa !30
  %conv235 = zext i8 %246 to i32
  %xor = xor i32 %conv235, 7
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %xor) #5
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.234, %for.end.232
  %247 = bitcast i32* %lastbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #2
  %248 = bitcast i32* %end_next_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #2
  call void @llvm.lifetime.end(i64 1, i8* %current_color) #2
  %249 = bitcast i8** %realbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #2
  %250 = bitcast i8** %outbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  %251 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %252 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %lor.lhs.false.157
  %253 = load i32, i32* %y_24pin, align 4, !tbaa !7
  %tobool239 = icmp ne i32 %253, 0
  br i1 %tobool239, label %if.then.240, label %if.else.279

if.then.240:                                      ; preds = %if.end.238
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.253, %if.then.240
  %254 = load i8*, i8** %inp, align 8, !tbaa !1
  %255 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp242 = icmp ult i8* %254, %255
  br i1 %cmp242, label %for.body.244, label %for.end.256

for.body.244:                                     ; preds = %for.cond.241
  %256 = load i8*, i8** %inp, align 8, !tbaa !1
  %257 = load i32, i32* %line_size, align 4, !tbaa !7
  %258 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %256, i32 %257, i8* %258, i32 3) #5
  %259 = load i8*, i8** %inp, align 8, !tbaa !1
  %260 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul245 = mul nsw i32 %260, 8
  %idx.ext246 = sext i32 %mul245 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %259, i64 %idx.ext246
  %261 = load i32, i32* %line_size, align 4, !tbaa !7
  %262 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr248 = getelementptr inbounds i8, i8* %262, i64 1
  call void @memflip8x8(i8* %add.ptr247, i32 %261, i8* %add.ptr248, i32 3) #5
  %263 = load i8*, i8** %inp, align 8, !tbaa !1
  %264 = load i32, i32* %line_size, align 4, !tbaa !7
  %mul249 = mul nsw i32 %264, 16
  %idx.ext250 = sext i32 %mul249 to i64
  %add.ptr251 = getelementptr inbounds i8, i8* %263, i64 %idx.ext250
  %265 = load i32, i32* %line_size, align 4, !tbaa !7
  %266 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr252 = getelementptr inbounds i8, i8* %266, i64 2
  call void @memflip8x8(i8* %add.ptr251, i32 %265, i8* %add.ptr252, i32 3) #5
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.244
  %267 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr254 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr254, i8** %inp, align 8, !tbaa !1
  %268 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr255 = getelementptr inbounds i8, i8* %268, i64 24
  store i8* %add.ptr255, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.241

for.end.256:                                      ; preds = %for.cond.241
  br label %while.cond.257

while.cond.257:                                   ; preds = %while.body.276, %for.end.256
  %269 = load i8*, i8** %out_end, align 8, !tbaa !1
  %270 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp258 = icmp ugt i8* %269, %270
  br i1 %cmp258, label %land.lhs.true.260, label %land.end.275

land.lhs.true.260:                                ; preds = %while.cond.257
  %271 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %271, i64 -1
  %272 = load i8, i8* %arrayidx261, align 1, !tbaa !30
  %conv262 = zext i8 %272 to i32
  %cmp263 = icmp eq i32 %conv262, 0
  br i1 %cmp263, label %land.lhs.true.265, label %land.end.275

land.lhs.true.265:                                ; preds = %land.lhs.true.260
  %273 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %273, i64 -2
  %274 = load i8, i8* %arrayidx266, align 1, !tbaa !30
  %conv267 = zext i8 %274 to i32
  %cmp268 = icmp eq i32 %conv267, 0
  br i1 %cmp268, label %land.rhs.270, label %land.end.275

land.rhs.270:                                     ; preds = %land.lhs.true.265
  %275 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %275, i64 -3
  %276 = load i8, i8* %arrayidx271, align 1, !tbaa !30
  %conv272 = zext i8 %276 to i32
  %cmp273 = icmp eq i32 %conv272, 0
  br label %land.end.275

land.end.275:                                     ; preds = %land.rhs.270, %land.lhs.true.265, %land.lhs.true.260, %while.cond.257
  %277 = phi i1 [ false, %land.lhs.true.265 ], [ false, %land.lhs.true.260 ], [ false, %while.cond.257 ], [ %cmp273, %land.rhs.270 ]
  br i1 %277, label %while.body.276, label %while.end.278

while.body.276:                                   ; preds = %land.end.275
  %278 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr277 = getelementptr inbounds i8, i8* %278, i64 -3
  store i8* %add.ptr277, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.257

while.end.278:                                    ; preds = %land.end.275
  br label %if.end.300

if.else.279:                                      ; preds = %if.end.238
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.284, %if.else.279
  %279 = load i8*, i8** %inp, align 8, !tbaa !1
  %280 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp281 = icmp ult i8* %279, %280
  br i1 %cmp281, label %for.body.283, label %for.end.287

for.body.283:                                     ; preds = %for.cond.280
  %281 = load i8*, i8** %inp, align 8, !tbaa !1
  %282 = load i32, i32* %line_size, align 4, !tbaa !7
  %283 = load i8*, i8** %out_end, align 8, !tbaa !1
  call void @memflip8x8(i8* %281, i32 %282, i8* %283, i32 1) #5
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.283
  %284 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %incdec.ptr285, i8** %inp, align 8, !tbaa !1
  %285 = load i8*, i8** %out_end, align 8, !tbaa !1
  %add.ptr286 = getelementptr inbounds i8, i8* %285, i64 8
  store i8* %add.ptr286, i8** %out_end, align 8, !tbaa !1
  br label %for.cond.280

for.end.287:                                      ; preds = %for.cond.280
  br label %while.cond.288

while.cond.288:                                   ; preds = %while.body.297, %for.end.287
  %286 = load i8*, i8** %out_end, align 8, !tbaa !1
  %287 = load i8*, i8** %out, align 8, !tbaa !1
  %cmp289 = icmp ugt i8* %286, %287
  br i1 %cmp289, label %land.rhs.291, label %land.end.296

land.rhs.291:                                     ; preds = %while.cond.288
  %288 = load i8*, i8** %out_end, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %288, i64 -1
  %289 = load i8, i8* %arrayidx292, align 1, !tbaa !30
  %conv293 = zext i8 %289 to i32
  %cmp294 = icmp eq i32 %conv293, 0
  br label %land.end.296

land.end.296:                                     ; preds = %land.rhs.291, %while.cond.288
  %290 = phi i1 [ false, %while.cond.288 ], [ %cmp294, %land.rhs.291 ]
  br i1 %290, label %while.body.297, label %while.end.299

while.body.297:                                   ; preds = %land.end.296
  %291 = load i8*, i8** %out_end, align 8, !tbaa !1
  %incdec.ptr298 = getelementptr inbounds i8, i8* %291, i32 -1
  store i8* %incdec.ptr298, i8** %out_end, align 8, !tbaa !1
  br label %while.cond.288

while.end.299:                                    ; preds = %land.end.296
  br label %if.end.300

if.end.300:                                       ; preds = %while.end.299, %while.end.278
  %292 = load i32, i32* %first_pass, align 4, !tbaa !7
  store i32 %292, i32* %pass, align 4, !tbaa !7
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.420, %if.end.300
  %293 = load i32, i32* %pass, align 4, !tbaa !7
  %294 = load i32, i32* %last_pass, align 4, !tbaa !7
  %cmp302 = icmp sle i32 %293, %294
  br i1 %cmp302, label %for.body.304, label %for.end.422

for.body.304:                                     ; preds = %for.cond.301
  %295 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %295, i8** %outp, align 8, !tbaa !1
  store i8* %295, i8** %out_blk, align 8, !tbaa !1
  br label %for.cond.305

for.cond.305:                                     ; preds = %if.end.409, %for.body.304
  %296 = load i8*, i8** %outp, align 8, !tbaa !1
  %297 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp306 = icmp ult i8* %296, %297
  br i1 %cmp306, label %for.body.308, label %for.end.410

for.body.308:                                     ; preds = %for.cond.305
  %298 = load i8*, i8** %outp, align 8, !tbaa !1
  %299 = load i8, i8* %298, align 1, !tbaa !30
  %conv309 = zext i8 %299 to i32
  %cmp310 = icmp eq i32 %conv309, 0
  br i1 %cmp310, label %land.lhs.true.312, label %if.else.406

land.lhs.true.312:                                ; preds = %for.body.308
  %300 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr313 = getelementptr inbounds i8, i8* %300, i64 12
  %301 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp314 = icmp ule i8* %add.ptr313, %301
  br i1 %cmp314, label %land.lhs.true.316, label %if.else.406

land.lhs.true.316:                                ; preds = %land.lhs.true.312
  %302 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %302, i64 1
  %303 = load i8, i8* %arrayidx317, align 1, !tbaa !30
  %conv318 = zext i8 %303 to i32
  %cmp319 = icmp eq i32 %conv318, 0
  br i1 %cmp319, label %land.lhs.true.321, label %if.else.406

land.lhs.true.321:                                ; preds = %land.lhs.true.316
  %304 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i8, i8* %304, i64 2
  %305 = load i8, i8* %arrayidx322, align 1, !tbaa !30
  %conv323 = zext i8 %305 to i32
  %cmp324 = icmp eq i32 %conv323, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.else.406

land.lhs.true.326:                                ; preds = %land.lhs.true.321
  %306 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i8, i8* %306, i64 3
  %307 = load i8, i8* %arrayidx327, align 1, !tbaa !30
  %conv328 = zext i8 %307 to i32
  %308 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds i8, i8* %308, i64 4
  %309 = load i8, i8* %arrayidx329, align 1, !tbaa !30
  %conv330 = zext i8 %309 to i32
  %or331 = or i32 %conv328, %conv330
  %310 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i8, i8* %310, i64 5
  %311 = load i8, i8* %arrayidx332, align 1, !tbaa !30
  %conv333 = zext i8 %311 to i32
  %or334 = or i32 %or331, %conv333
  %cmp335 = icmp eq i32 %or334, 0
  br i1 %cmp335, label %land.lhs.true.337, label %if.else.406

land.lhs.true.337:                                ; preds = %land.lhs.true.326
  %312 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds i8, i8* %312, i64 6
  %313 = load i8, i8* %arrayidx338, align 1, !tbaa !30
  %conv339 = zext i8 %313 to i32
  %314 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx340 = getelementptr inbounds i8, i8* %314, i64 7
  %315 = load i8, i8* %arrayidx340, align 1, !tbaa !30
  %conv341 = zext i8 %315 to i32
  %or342 = or i32 %conv339, %conv341
  %316 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds i8, i8* %316, i64 8
  %317 = load i8, i8* %arrayidx343, align 1, !tbaa !30
  %conv344 = zext i8 %317 to i32
  %or345 = or i32 %or342, %conv344
  %cmp346 = icmp eq i32 %or345, 0
  br i1 %cmp346, label %land.lhs.true.348, label %if.else.406

land.lhs.true.348:                                ; preds = %land.lhs.true.337
  %318 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds i8, i8* %318, i64 9
  %319 = load i8, i8* %arrayidx349, align 1, !tbaa !30
  %conv350 = zext i8 %319 to i32
  %320 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i8, i8* %320, i64 10
  %321 = load i8, i8* %arrayidx351, align 1, !tbaa !30
  %conv352 = zext i8 %321 to i32
  %or353 = or i32 %conv350, %conv352
  %322 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i8, i8* %322, i64 11
  %323 = load i8, i8* %arrayidx354, align 1, !tbaa !30
  %conv355 = zext i8 %323 to i32
  %or356 = or i32 %or353, %conv355
  %cmp357 = icmp eq i32 %or356, 0
  br i1 %cmp357, label %if.then.359, label %if.else.406

if.then.359:                                      ; preds = %land.lhs.true.348
  %324 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %324) #2
  %325 = load i8*, i8** %outp, align 8, !tbaa !1
  store i8* %325, i8** %zp, align 8, !tbaa !1
  %326 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #2
  %327 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %327) #2
  %328 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr360 = getelementptr inbounds i8, i8* %328, i64 12
  store i8* %add.ptr360, i8** %outp, align 8, !tbaa !1
  br label %while.cond.361

while.cond.361:                                   ; preds = %while.body.380, %if.then.359
  %329 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr362 = getelementptr inbounds i8, i8* %329, i64 3
  %330 = load i8*, i8** %out_end, align 8, !tbaa !1
  %cmp363 = icmp ule i8* %add.ptr362, %330
  br i1 %cmp363, label %land.lhs.true.365, label %land.end.379

land.lhs.true.365:                                ; preds = %while.cond.361
  %331 = load i8*, i8** %outp, align 8, !tbaa !1
  %332 = load i8, i8* %331, align 1, !tbaa !30
  %conv366 = zext i8 %332 to i32
  %cmp367 = icmp eq i32 %conv366, 0
  br i1 %cmp367, label %land.lhs.true.369, label %land.end.379

land.lhs.true.369:                                ; preds = %land.lhs.true.365
  %333 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i8, i8* %333, i64 1
  %334 = load i8, i8* %arrayidx370, align 1, !tbaa !30
  %conv371 = zext i8 %334 to i32
  %cmp372 = icmp eq i32 %conv371, 0
  br i1 %cmp372, label %land.rhs.374, label %land.end.379

land.rhs.374:                                     ; preds = %land.lhs.true.369
  %335 = load i8*, i8** %outp, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds i8, i8* %335, i64 2
  %336 = load i8, i8* %arrayidx375, align 1, !tbaa !30
  %conv376 = zext i8 %336 to i32
  %cmp377 = icmp eq i32 %conv376, 0
  br label %land.end.379

land.end.379:                                     ; preds = %land.rhs.374, %land.lhs.true.369, %land.lhs.true.365, %while.cond.361
  %337 = phi i1 [ false, %land.lhs.true.369 ], [ false, %land.lhs.true.365 ], [ false, %while.cond.361 ], [ %cmp377, %land.rhs.374 ]
  br i1 %337, label %while.body.380, label %while.end.382

while.body.380:                                   ; preds = %land.end.379
  %338 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr381 = getelementptr inbounds i8, i8* %338, i64 3
  store i8* %add.ptr381, i8** %outp, align 8, !tbaa !1
  br label %while.cond.361

while.end.382:                                    ; preds = %land.end.379
  %339 = load i8*, i8** %outp, align 8, !tbaa !1
  %340 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast383 = ptrtoint i8* %339 to i64
  %sub.ptr.rhs.cast384 = ptrtoint i8* %340 to i64
  %sub.ptr.sub385 = sub i64 %sub.ptr.lhs.cast383, %sub.ptr.rhs.cast384
  %341 = load i32, i32* %bytes_per_space, align 4, !tbaa !7
  %conv386 = sext i32 %341 to i64
  %div387 = sdiv i64 %sub.ptr.sub385, %conv386
  %conv388 = trunc i64 %div387 to i32
  store i32 %conv388, i32* %tpos, align 4, !tbaa !7
  %342 = load i8*, i8** %out, align 8, !tbaa !1
  %343 = load i32, i32* %tpos, align 4, !tbaa !7
  %344 = load i32, i32* %bytes_per_space, align 4, !tbaa !7
  %mul389 = mul nsw i32 %343, %344
  %idx.ext390 = sext i32 %mul389 to i64
  %add.ptr391 = getelementptr inbounds i8, i8* %342, i64 %idx.ext390
  store i8* %add.ptr391, i8** %newp, align 8, !tbaa !1
  %345 = load i8*, i8** %newp, align 8, !tbaa !1
  %346 = load i8*, i8** %zp, align 8, !tbaa !1
  %add.ptr392 = getelementptr inbounds i8, i8* %346, i64 10
  %cmp393 = icmp ugt i8* %345, %add.ptr392
  br i1 %cmp393, label %if.then.395, label %if.end.405

if.then.395:                                      ; preds = %while.end.382
  %347 = load i8*, i8** %zp, align 8, !tbaa !1
  %348 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp396 = icmp ugt i8* %347, %348
  br i1 %cmp396, label %if.then.398, label %if.end.403

if.then.398:                                      ; preds = %if.then.395
  %349 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %350 = load i8*, i8** %zp, align 8, !tbaa !1
  %351 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast399 = ptrtoint i8* %350 to i64
  %sub.ptr.rhs.cast400 = ptrtoint i8* %351 to i64
  %sub.ptr.sub401 = sub i64 %sub.ptr.lhs.cast399, %sub.ptr.rhs.cast400
  %conv402 = trunc i64 %sub.ptr.sub401 to i32
  %352 = load i32, i32* %y_mult, align 4, !tbaa !7
  %353 = load i8, i8* %start_graphics, align 1, !tbaa !30
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %355 = load i32, i32* %pass, align 4, !tbaa !7
  call void @epsc_output_run(i8* %349, i32 %conv402, i32 %352, i8 signext %353, %struct._IO_FILE* %354, i32 %355) #5
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.398, %if.then.395
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %357 = load i32, i32* %tpos, align 4, !tbaa !7
  %call404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %357, i32 0) #5
  %358 = load i8*, i8** %newp, align 8, !tbaa !1
  store i8* %358, i8** %outp, align 8, !tbaa !1
  store i8* %358, i8** %out_blk, align 8, !tbaa !1
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.403, %while.end.382
  %359 = bitcast i8** %newp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #2
  %360 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #2
  %361 = bitcast i8** %zp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #2
  br label %if.end.409

if.else.406:                                      ; preds = %land.lhs.true.348, %land.lhs.true.337, %land.lhs.true.326, %land.lhs.true.321, %land.lhs.true.316, %land.lhs.true.312, %for.body.308
  %362 = load i32, i32* %y_mult, align 4, !tbaa !7
  %363 = load i8*, i8** %outp, align 8, !tbaa !1
  %idx.ext407 = sext i32 %362 to i64
  %add.ptr408 = getelementptr inbounds i8, i8* %363, i64 %idx.ext407
  store i8* %add.ptr408, i8** %outp, align 8, !tbaa !1
  br label %if.end.409

if.end.409:                                       ; preds = %if.else.406, %if.end.405
  br label %for.cond.305

for.end.410:                                      ; preds = %for.cond.305
  %364 = load i8*, i8** %outp, align 8, !tbaa !1
  %365 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %cmp411 = icmp ugt i8* %364, %365
  br i1 %cmp411, label %if.then.413, label %if.end.418

if.then.413:                                      ; preds = %for.end.410
  %366 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %367 = load i8*, i8** %outp, align 8, !tbaa !1
  %368 = load i8*, i8** %out_blk, align 8, !tbaa !1
  %sub.ptr.lhs.cast414 = ptrtoint i8* %367 to i64
  %sub.ptr.rhs.cast415 = ptrtoint i8* %368 to i64
  %sub.ptr.sub416 = sub i64 %sub.ptr.lhs.cast414, %sub.ptr.rhs.cast415
  %conv417 = trunc i64 %sub.ptr.sub416 to i32
  %369 = load i32, i32* %y_mult, align 4, !tbaa !7
  %370 = load i8, i8* %start_graphics, align 1, !tbaa !30
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %372 = load i32, i32* %pass, align 4, !tbaa !7
  call void @epsc_output_run(i8* %366, i32 %conv417, i32 %369, i8 signext %370, %struct._IO_FILE* %371, i32 %372) #5
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.413, %for.end.410
  %373 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call419 = call i32 @fputc(i32 13, %struct._IO_FILE* %373) #5
  br label %for.inc.420

for.inc.420:                                      ; preds = %if.end.418
  %374 = load i32, i32* %pass, align 4, !tbaa !7
  %inc421 = add nsw i32 %374, 1
  store i32 %inc421, i32* %pass, align 4, !tbaa !7
  br label %for.cond.301

for.end.422:                                      ; preds = %for.cond.301
  %375 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #2
  %376 = bitcast i8** %out_blk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #2
  %377 = bitcast i8** %out_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #2
  %378 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #2
  %379 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #2
  br label %do.cond

do.cond:                                          ; preds = %for.end.422
  %380 = load i8*, i8** %nextcolor, align 8, !tbaa !1
  %tobool423 = icmp ne i8* %380, null
  br i1 %tobool423, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 24, i32* %skip, align 4, !tbaa !7
  %381 = load i32, i32* %y_mult, align 4, !tbaa !7
  %mul424 = mul nsw i32 8, %381
  %382 = load i32, i32* %lnum, align 4, !tbaa !7
  %add425 = add nsw i32 %382, %mul424
  store i32 %add425, i32* %lnum, align 4, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.101
  %383 = bitcast i8** %nextmono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #2
  %384 = bitcast i8** %nextcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #2
  %385 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.428:                                    ; preds = %while.cond
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call429 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %386) #5
  %387 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory430 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %387, i32 0, i32 3
  %388 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory430, align 8, !tbaa !25
  %non_gc_memory431 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %388, i32 0, i32 3
  %389 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory431, align 8, !tbaa !26
  %procs432 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %389, i32 0, i32 1
  %free_object433 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs432, i32 0, i32 2
  %390 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object433, align 8, !tbaa !31
  %391 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory434 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %391, i32 0, i32 3
  %392 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory434, align 8, !tbaa !25
  %non_gc_memory435 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %392, i32 0, i32 3
  %393 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory435, align 8, !tbaa !26
  %394 = load i8*, i8** %out, align 8, !tbaa !1
  call void %390(%struct.gs_memory_s* %393, i8* %394, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  %395 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory436 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %395, i32 0, i32 3
  %396 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory436, align 8, !tbaa !25
  %non_gc_memory437 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %396, i32 0, i32 3
  %397 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory437, align 8, !tbaa !26
  %procs438 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %397, i32 0, i32 1
  %free_object439 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs438, i32 0, i32 2
  %398 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object439, align 8, !tbaa !31
  %399 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory440 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %399, i32 0, i32 3
  %400 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory440, align 8, !tbaa !25
  %non_gc_memory441 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %400, i32 0, i32 3
  %401 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory441, align 8, !tbaa !26
  %402 = load i8*, i8** %in, align 8, !tbaa !1
  call void %398(%struct.gs_memory_s* %401, i8* %402, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  %403 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info442 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %403, i32 0, i32 11
  %num_components443 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info442, i32 0, i32 1
  %404 = load i32, i32* %num_components443, align 4, !tbaa !32
  %cmp444 = icmp sgt i32 %404, 1
  br i1 %cmp444, label %if.then.452, label %lor.lhs.false.446

lor.lhs.false.446:                                ; preds = %while.end.428
  %405 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info447 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %405, i32 0, i32 11
  %gray_index448 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info447, i32 0, i32 4
  %406 = load i8, i8* %gray_index448, align 1, !tbaa !33
  %conv449 = zext i8 %406 to i32
  %cmp450 = icmp eq i32 %conv449, 255
  br i1 %cmp450, label %if.then.452, label %if.end.459

if.then.452:                                      ; preds = %lor.lhs.false.446, %while.end.428
  %407 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory453 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %407, i32 0, i32 3
  %408 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory453, align 8, !tbaa !25
  %non_gc_memory454 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %408, i32 0, i32 3
  %409 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory454, align 8, !tbaa !26
  %procs455 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %409, i32 0, i32 1
  %free_object456 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs455, i32 0, i32 2
  %410 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object456, align 8, !tbaa !31
  %411 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory457 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %411, i32 0, i32 3
  %412 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory457, align 8, !tbaa !25
  %non_gc_memory458 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %412, i32 0, i32 3
  %413 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory458, align 8, !tbaa !26
  %414 = load i8*, i8** %color_in, align 8, !tbaa !1
  call void %410(%struct.gs_memory_s* %413, i8* %414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.452, %lor.lhs.false.446
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

cleanup.460:                                      ; preds = %if.end.459, %if.then.75, %if.end.51
  %415 = bitcast i32* %whole_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #2
  %416 = bitcast i32* %spare_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #2
  %417 = bitcast i32* %color_in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #2
  %418 = bitcast i32* %color_line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #2
  %419 = bitcast i8** %color_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #2
  %420 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #2
  %421 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #2
  %422 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #2
  %423 = bitcast i32* %bytes_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #2
  %424 = bitcast i32* %dots_per_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %424) #2
  %425 = bitcast i32* %last_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #2
  %426 = bitcast i32* %first_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #2
  call void @llvm.lifetime.end(i64 1, i8* %start_graphics) #2
  %427 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #2
  %428 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #2
  %429 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #2
  %430 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %430) #2
  %431 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #2
  %432 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #2
  %433 = bitcast i32* %y_mult to i8*
  call void @llvm.lifetime.end(i64 4, i8* %433) #2
  %434 = bitcast i32* %y_24pin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %434) #2
  %435 = load i32, i32* %retval
  ret i32 %435

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

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @epson_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  store i16 %2, i16* %r, align 2, !tbaa !35
  %3 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  store i16 %5, i16* %g, align 2, !tbaa !35
  %6 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  store i16 %8, i16* %b, align 2, !tbaa !35
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !36
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 4
  %12 = load i8, i8* %gray_index, align 1, !tbaa !38
  %conv = zext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 255
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i16, i16* %b, align 2, !tbaa !35
  %conv6 = zext i16 %13 to i32
  %shr = ashr i32 %conv6, 15
  %idxprom = sext i32 %shr to i64
  %14 = load i16, i16* %g, align 2, !tbaa !35
  %conv7 = zext i16 %14 to i32
  %shr8 = ashr i32 %conv7, 15
  %idxprom9 = sext i32 %shr8 to i64
  %15 = load i16, i16* %r, align 2, !tbaa !35
  %conv10 = zext i16 %15 to i32
  %shr11 = ashr i32 %conv10, 15
  %idxprom12 = sext i32 %shr11 to i64
  %arrayidx13 = getelementptr inbounds [2 x [2 x [2 x i8]]], [2 x [2 x [2 x i8]]]* @rgb_color, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %arrayidx13, i32 0, i64 %idxprom9
  %arrayidx15 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx14, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx15, align 1, !tbaa !30
  %conv16 = sext i8 %16 to i64
  %xor = xor i64 %conv16, 7
  store i64 %xor, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s* %17, i16* %18) #5
  store i64 %call, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %19 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #2
  %20 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #2
  %21 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %21) #2
  %22 = load i64, i64* %retval
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @epson_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !39
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %1 = load i32, i32* %num_components, align 4, !tbaa !36
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 4
  %3 = load i8, i8* %gray_index, align 1, !tbaa !38
  %conv = zext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i64, i64* %color.addr, align 8, !tbaa !39
  %conv4 = trunc i64 %4 to i16
  %conv5 = zext i16 %conv4 to i32
  %xor = xor i32 %conv5, 7
  switch i32 %xor, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.8
    i32 6, label %sw.bb.12
    i32 2, label %sw.bb.16
    i32 5, label %sw.bb.20
    i32 1, label %sw.bb.24
    i32 4, label %sw.bb.28
    i32 7, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !35
  %6 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 0, i16* %arrayidx6, align 2, !tbaa !35
  %7 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %7, i64 2
  store i16 0, i16* %arrayidx7, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx9, align 2, !tbaa !35
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 0, i16* %arrayidx10, align 2, !tbaa !35
  %10 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 -1, i16* %arrayidx11, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 0, i16* %arrayidx13, align 2, !tbaa !35
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %12, i64 1
  store i16 -1, i16* %arrayidx14, align 2, !tbaa !35
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %13, i64 2
  store i16 0, i16* %arrayidx15, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 0, i16* %arrayidx17, align 2, !tbaa !35
  %15 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %15, i64 1
  store i16 -1, i16* %arrayidx18, align 2, !tbaa !35
  %16 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 -1, i16* %arrayidx19, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %17, i64 0
  store i16 -1, i16* %arrayidx21, align 2, !tbaa !35
  %18 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %18, i64 1
  store i16 0, i16* %arrayidx22, align 2, !tbaa !35
  %19 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %19, i64 2
  store i16 0, i16* %arrayidx23, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then
  %20 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %20, i64 0
  store i16 -1, i16* %arrayidx25, align 2, !tbaa !35
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %21, i64 1
  store i16 0, i16* %arrayidx26, align 2, !tbaa !35
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %22, i64 2
  store i16 -1, i16* %arrayidx27, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then
  %23 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 -1, i16* %arrayidx29, align 2, !tbaa !35
  %24 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %24, i64 1
  store i16 -1, i16* %arrayidx30, align 2, !tbaa !35
  %25 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %25, i64 2
  store i16 0, i16* %arrayidx31, align 2, !tbaa !35
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then
  %26 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %26, i64 0
  store i16 -1, i16* %arrayidx33, align 2, !tbaa !35
  %27 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %27, i64 1
  store i16 -1, i16* %arrayidx34, align 2, !tbaa !35
  %28 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %28, i64 2
  store i16 -1, i16* %arrayidx35, align 2, !tbaa !35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.32, %sw.bb.28, %sw.bb.24, %sw.bb.20, %sw.bb.16, %sw.bb.12, %sw.bb.8, %sw.bb
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load i64, i64* %color.addr, align 8, !tbaa !39
  %31 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s* %29, i64 %30, i16* %31) #5
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @memflip8x8(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @epsc_output_run(i8* %data, i32 %count, i32 %y_mult, i8 signext %start_graphics, %struct._IO_FILE* %prn_stream, i32 %pass) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %y_mult.addr = alloca i32, align 4
  %start_graphics.addr = alloca i8, align 1
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pass.addr = alloca i32, align 4
  %xcount = alloca i32, align 4
  %which = alloca i32, align 4
  %dp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !7
  store i32 %y_mult, i32* %y_mult.addr, align 4, !tbaa !7
  store i8 %start_graphics, i8* %start_graphics.addr, align 1, !tbaa !30
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !7
  %0 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !7
  %2 = load i32, i32* %y_mult.addr, align 4, !tbaa !7
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %xcount, align 4, !tbaa !7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 27, %struct._IO_FILE* %3) #5
  %4 = load i8, i8* %start_graphics.addr, align 1, !tbaa !30
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, -4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %start_graphics.addr, align 1, !tbaa !30
  %conv1 = sext i8 %5 to i32
  %idxprom = sext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @.str.12, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv2 = sext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %7) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 42, %struct._IO_FILE* %8) #5
  %9 = load i8, i8* %start_graphics.addr, align 1, !tbaa !30
  %conv5 = sext i8 %9 to i32
  %and6 = and i32 %conv5, -129
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call7 = call i32 @fputc(i32 %and6, %struct._IO_FILE* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %xcount, align 4, !tbaa !7
  %and8 = and i32 %11, 255
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call9 = call i32 @fputc(i32 %and8, %struct._IO_FILE* %12) #5
  %13 = load i32, i32* %xcount, align 4, !tbaa !7
  %shr = ashr i32 %13, 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call10 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %14) #5
  %15 = load i32, i32* %pass.addr, align 4, !tbaa !7
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.else.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %count.addr, align 4, !tbaa !7
  %conv13 = sext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call14 = call i64 @fwrite(i8* %16, i64 1, i64 %conv13, %struct._IO_FILE* %18) #5
  br label %if.end.29

if.else.15:                                       ; preds = %if.end
  %19 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %pass.addr, align 4, !tbaa !7
  store i32 %20, i32* %which, align 4, !tbaa !7
  %21 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %22, i8** %dp, align 8, !tbaa !1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.else.15
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %26 = load i32, i32* %xcount, align 4, !tbaa !7
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !7
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !7
  %28 = load i32, i32* %y_mult.addr, align 4, !tbaa !7
  %cmp18 = icmp slt i32 %27, %28
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %29 = load i32, i32* %which, align 4, !tbaa !7
  %and21 = and i32 %29, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.20
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !30
  %conv23 = zext i8 %31 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ 0, %cond.false ]
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call24 = call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %32) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %33 = load i32, i32* %j, align 4, !tbaa !7
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4, !tbaa !7
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !7
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !7
  %36 = load i32, i32* %which, align 4, !tbaa !7
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %which, align 4, !tbaa !7
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %if.then.12
  %41 = bitcast i32* %xcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

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
!9 = !{!10, !8, i64 832}
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
!25 = !{!10, !2, i64 24}
!26 = !{!27, !2, i64 200}
!27 = !{!"gs_memory_s", !2, i64 0, !28, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!28 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!29 = !{!27, !2, i64 88}
!30 = !{!3, !3, i64 0}
!31 = !{!27, !2, i64 24}
!32 = !{!10, !8, i64 100}
!33 = !{!10, !3, i64 110}
!34 = !{!10, !8, i64 836}
!35 = !{!14, !14, i64 0}
!36 = !{!37, !8, i64 100}
!37 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!38 = !{!37, !3, i64 110}
!39 = !{!12, !12, i64 0}
