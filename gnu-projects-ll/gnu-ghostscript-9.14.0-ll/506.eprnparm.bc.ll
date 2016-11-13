; ModuleID = './eprnparm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eprn_StringAndInt = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, {}*, {}*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.s_eprn_Device = type { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }
%struct.eprn_PrinterDescription = type { i8*, %struct.eprn_PageDescription*, %struct.eprn_CustomPageDescription*, float, %struct.eprn_ColourInfo* }
%struct.eprn_CustomPageDescription = type { i32, float, float, float, float, float, float, float, float }
%struct.eprn_ColourInfo = type { i32, [2 x %struct.eprn_ResLev*] }
%struct.eprn_ResLev = type { %struct.eprn_Resolution*, %struct.eprn_IntensityLevels* }
%struct.eprn_Resolution = type { float, float }
%struct.eprn_IntensityLevels = type { i16, i16 }
%struct.eprn_PageDescription = type { i32, float, float, float, float }
%struct.ms_Flag = type { i32, i8* }
%struct.eprn_OctetString = type { i8*, i32 }
%struct.eprn_Device = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.s_eprn_Device }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"CMY+K\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@eprn_colour_model_list = constant [6 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 3 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [58 x i8] c"? eprn: Memory allocation failure in eprn_get_int(): %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"BlackLevels\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CMYLevels\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"RGBLevels\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ColourModel\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ColorModel\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"CUPSAccounting\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"CUPSMessages\00", align 1
@intensity_rendering_list = internal constant [4 x %struct.eprn_StringAndInt] [%struct.eprn_StringAndInt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1 }, %struct.eprn_StringAndInt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 2 }, %struct.eprn_StringAndInt zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [19 x i8] c"IntensityRendering\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"LeadingEdge\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"MediaConfigurationFile\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"MediaPosition\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"PageCountFile\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"eprn_set_media_data\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"%s? eprn: Memory allocation failure from gs_malloc() in eprn_set_media_data().\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s? eprn: Unknown colour model: `\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"'.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"./contrib/pcl3/eprn/eprnparm.c\00", align 1
@__PRETTY_FUNCTION__.eprn_put_params = private unnamed_addr constant [50 x i8] c"int eprn_put_params(gx_device *, gs_param_list *)\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"%s? eprn: The value for BlackLevels is outside the range permitted: %d.\0A\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"%s? eprn: The value for CMYLevels is outside the range permitted: %d.\0A\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"WARNING: ?-W eprn: Attempt to set CUPSAccounting from true to false.\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"%s? eprn: Invalid method for IntensityRendering: `\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"%s? eprn: LeadingEdge may only have values 0 to 3, not %d.\0A\00", align 1
@.str.32 = private unnamed_addr constant [103 x i8] c"%s?-W eprn: Ghostscript does not accept negative values (%d) for the\0A%s    `MediaPosition' parameter.\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"eprn_put_params\00", align 1
@.str.34 = private unnamed_addr constant [76 x i8] c"%s? eprn: Memory allocation failure from gs_malloc() in eprn_put_params().\0A\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"%s? eprn: The value for RGBLevels is outside the range permitted: %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.37 = private unnamed_addr constant [104 x i8] c"%s? eprn: Attempt to set `BitsPerPixel' to a value (%d)\0A%s  other than the one selected by the driver.\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c".HWMargins\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"printer\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"halftones\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Floyd-Steinberg\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [86 x i8] c"%s? eprn: Error opening the media configuration file\0A%s    `%s'\0A%s  for reading: %s.\0A\00", align 1
@.str.44 = private unnamed_addr constant [81 x i8] c"%s? eprn: Exceeding line length %d in media configuration file\0A%s  %s, line %d.\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"%s? eprn: Memory allocation failure in eprn_read_media_data(): %s.\0A\00", align 1
@.str.49 = private unnamed_addr constant [80 x i8] c"%s? eprn: Unknown media name (%s) in media configuration file\0A%s  %s, line %d.\0A\00", align 1
@.str.50 = private unnamed_addr constant [103 x i8] c"%s? eprn: Invalid substring \22Rotated\22 in media name (%s)\0A%s  in media configuration file %s, line %d.\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"%g %g %g %g%n\00", align 1
@.str.52 = private unnamed_addr constant [74 x i8] c"%s? eprn: Syntax error in media configuration file %s, line %d:\0A%s    %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [107 x i8] c"%s? eprn: Ghostscript does not support negative margins (line %d in the\0A%s  media configuration file %s).\0A\00", align 1
@.str.54 = private unnamed_addr constant [154 x i8] c"%s?-W eprn: The media configuration file %s\0A%s    contains a custom page size entry in line %d, but custom page sizes\0A%s    are not supported by the %s.\0A\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"%s? eprn: Unidentified system error while reading `%s'.\0A\00", align 1
@.str.56 = private unnamed_addr constant [87 x i8] c"%s? eprn: The media configuration file %s\0A%s  does not contain any media information.\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"eprn_read_media_data\00", align 1
@.str.58 = private unnamed_addr constant [81 x i8] c"%s? eprn: Memory allocation failure from gs_malloc() in eprn_read_media_data().\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @eprn_get_string(i32 %in_value, %struct.eprn_StringAndInt* %table, %struct.gs_param_string_s* %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %in_value.addr = alloca i32, align 4
  %table.addr = alloca %struct.eprn_StringAndInt*, align 8
  %out_value.addr = alloca %struct.gs_param_string_s*, align 8
  store i32 %in_value, i32* %in_value.addr, align 4, !tbaa !1
  store %struct.eprn_StringAndInt* %table, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  store %struct.gs_param_string_s* %out_value, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !7
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %2, i32 0, i32 1
  %3 = load i32, i32* %value, align 4, !tbaa !9
  %4 = load i32, i32* %in_value.addr, align 4, !tbaa !1
  %cmp1 = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %6, i32 1
  store %struct.eprn_StringAndInt* %incdec.ptr, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name2 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %7, i32 0, i32 0
  %8 = load i8*, i8** %name2, align 8, !tbaa !7
  %cmp3 = icmp eq i8* %8, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %9 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name4 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %9, i32 0, i32 0
  %10 = load i8*, i8** %name4, align 8, !tbaa !7
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  store i8* %10, i8** %data, align 8, !tbaa !10
  %12 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name5 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8, !tbaa !7
  %call = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !12
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %out_value.addr, align 8, !tbaa !5
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @eprn_get_int(%struct.gs_param_string_s* %in_value, %struct.eprn_StringAndInt* %table, i32* %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %in_value.addr = alloca %struct.gs_param_string_s*, align 8
  %table.addr = alloca %struct.eprn_StringAndInt*, align 8
  %out_value.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.gs_param_string_s* %in_value, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !5
  store %struct.eprn_StringAndInt* %table, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  store i32* %out_value, i32** %out_value.addr, align 8, !tbaa !5
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !12
  %add = add i32 %2, 1
  %conv = zext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  store i8* %call, i8** %s, align 8, !tbaa !5
  %3 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i8* @gs_program_name() #9
  %call3 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call2, i64 %call3) #9
  %call4 = call i32* @__errno_location() #10
  %4 = load i32, i32* %call4, align 4, !tbaa !1
  %call5 = call i8* @strerror(i32 %4) #8
  %call6 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8* %call5) #9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %s, align 8, !tbaa !5
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !10
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !5
  %size7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size7, align 4, !tbaa !12
  %conv8 = zext i32 %9 to i64
  %call9 = call i8* @strncpy(i8* %5, i8* %7, i64 %conv8) #8
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %in_value.addr, align 8, !tbaa !5
  %size10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size10, align 4, !tbaa !12
  %idxprom = zext i32 %11 to i64
  %12 = load i8*, i8** %s, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %13, i32 0, i32 0
  %14 = load i8*, i8** %name, align 8, !tbaa !7
  %cmp11 = icmp ne i8* %14, null
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name13 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %17, i32 0, i32 0
  %18 = load i8*, i8** %name13, align 8, !tbaa !7
  %19 = load i8*, i8** %s, align 8, !tbaa !5
  %call14 = call i32 @strcmp(i8* %18, i8* %19) #8
  store i32 %call14, i32* %tmp, !tbaa !1
  %20 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %tmp, !tbaa !1
  %cmp15 = icmp ne i32 %22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %24, i32 1
  store %struct.eprn_StringAndInt* %incdec.ptr, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %name17 = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %25, i32 0, i32 0
  %26 = load i8*, i8** %name17, align 8, !tbaa !7
  %cmp18 = icmp ne i8* %26, null
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %while.end
  %27 = load %struct.eprn_StringAndInt*, %struct.eprn_StringAndInt** %table.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.eprn_StringAndInt, %struct.eprn_StringAndInt* %27, i32 0, i32 1
  %28 = load i32, i32* %value, align 4, !tbaa !9
  %29 = load i32*, i32** %out_value.addr, align 8, !tbaa !5
  store i32 %28, i32* %29, align 4, !tbaa !1
  br label %if.end.21

if.else:                                          ; preds = %while.end
  %30 = load i8*, i8** %s, align 8, !tbaa !5
  call void @free(i8* %30) #8
  store i8* null, i8** %s, align 8, !tbaa !5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.20
  %31 = load i8*, i8** %s, align 8, !tbaa !5
  call void @free(i8* %31) #8
  store i8* null, i8** %s, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.else, %if.then
  %32 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @eprintf_program_ident(i8*, i64) #4

declare i8* @gs_program_name() #4

declare i64 @gs_revision_number() #4

declare i32 @errprintf_nomem(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @eprn_get_params(%struct.gx_device_s* %device, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !5
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !5
  %3 = bitcast %struct.gx_device_s* %2 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %3, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %4 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !5
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6) #9
  store i32 %call, i32* %rc, align 4, !tbaa !1
  %7 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %10 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %10, i32 0, i32 15
  %call2 = call i32 @param_write_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %black_levels) #9
  store i32 %call2, i32* %rc, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %13 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %13, i32 0, i32 16
  %call6 = call i32 @param_write_int(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %non_black_levels) #9
  store i32 %call6, i32* %rc, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels10 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 16
  %call11 = call i32 @param_write_int(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32* %non_black_levels10) #9
  store i32 %call11, i32* %rc, align 4, !tbaa !1
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %17 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %18 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %18, i32 0, i32 14
  %19 = load i32, i32* %colour_model, align 4, !tbaa !15
  %call15 = call i32 @eprn_get_string(i32 %19, %struct.eprn_StringAndInt* getelementptr inbounds ([6 x %struct.eprn_StringAndInt], [6 x %struct.eprn_StringAndInt]* @eprn_colour_model_list, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call16 = call i32 @param_write_string(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call16, i32* %rc, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call18 = call i32 @param_write_string(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call18, i32* %rc, align 4, !tbaa !1
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.14
  %22 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %24 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_accounting = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %24, i32 0, i32 19
  %call22 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %CUPS_accounting) #9
  store i32 %call22, i32* %rc, align 4, !tbaa !1
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %25 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %27 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %27, i32 0, i32 20
  %call26 = call i32 @param_write_bool(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32* %CUPS_messages) #9
  store i32 %call26, i32* %rc, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %28 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %29 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %29, i32 0, i32 17
  %30 = load i32, i32* %intensity_rendering, align 4, !tbaa !18
  %call30 = call i32 @eprn_get_string(i32 %30, %struct.eprn_StringAndInt* getelementptr inbounds ([4 x %struct.eprn_StringAndInt], [4 x %struct.eprn_StringAndInt]* @intensity_rendering_list, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call31 = call i32 @param_write_string(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call31, i32* %rc, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  %32 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.29
  %33 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %leading_edge_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %33, i32 0, i32 9
  %34 = load i32, i32* %leading_edge_set, align 4, !tbaa !19
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.34
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %36 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %default_orientation = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %36, i32 0, i32 8
  %call36 = call i32 @param_write_int(%struct.gs_param_list_s* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %default_orientation) #9
  store i32 %call36, i32* %rc, align 4, !tbaa !1
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  %37 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.35
  br label %if.end.44

if.else:                                          ; preds = %if.end.34
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call40 = call i32 @param_write_null(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #9
  store i32 %call40, i32* %rc, align 4, !tbaa !1
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  %39 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.39
  %40 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %40, i32 0, i32 1
  %41 = load i8*, i8** %media_file, align 8, !tbaa !20
  %cmp45 = icmp eq i8* %41, null
  br i1 %cmp45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.end.44
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call47 = call i32 @param_write_null(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0)) #9
  store i32 %call47, i32* %rc, align 4, !tbaa !1
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.46
  %43 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.then.46
  br label %if.end.60

if.else.51:                                       ; preds = %if.end.44
  %44 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file52 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %44, i32 0, i32 1
  %45 = load i8*, i8** %media_file52, align 8, !tbaa !20
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %45, i8** %data, align 8, !tbaa !10
  %data53 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %46 = load i8*, i8** %data53, align 8, !tbaa !10
  %call54 = call i64 @strlen(i8* %46) #7
  %conv = trunc i64 %call54 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !12
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !13
  %47 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call55 = call i32 @param_write_string(%struct.gs_param_list_s* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call55, i32* %rc, align 4, !tbaa !1
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.51
  %48 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.else.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.50
  %49 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %49, i32 0, i32 21
  %50 = load i32, i32* %media_position_set, align 4, !tbaa !21
  %tobool61 = icmp ne i32 %50, 0
  br i1 %tobool61, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %if.end.60
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %52 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %52, i32 0, i32 22
  %call63 = call i32 @param_write_int(%struct.gs_param_list_s* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32* %media_position) #9
  store i32 %call63, i32* %rc, align 4, !tbaa !1
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.62
  %53 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.then.62
  br label %if.end.74

if.else.68:                                       ; preds = %if.end.60
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call69 = call i32 @param_write_null(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #9
  store i32 %call69, i32* %rc, align 4, !tbaa !1
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else.68
  %55 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.else.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.67
  %56 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %56, i32 0, i32 18
  %57 = load i8*, i8** %pagecount_file, align 8, !tbaa !22
  %cmp75 = icmp eq i8* %57, null
  br i1 %cmp75, label %if.then.77, label %if.else.83

if.then.77:                                       ; preds = %if.end.74
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call78 = call i32 @param_write_null(%struct.gs_param_list_s* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #9
  store i32 %call78, i32* %rc, align 4, !tbaa !1
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.77
  %59 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.then.77
  br label %if.end.96

if.else.83:                                       ; preds = %if.end.74
  %60 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file84 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %60, i32 0, i32 18
  %61 = load i8*, i8** %pagecount_file84, align 8, !tbaa !22
  %data85 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  store i8* %61, i8** %data85, align 8, !tbaa !10
  %data86 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %62 = load i8*, i8** %data86, align 8, !tbaa !10
  %call87 = call i64 @strlen(i8* %62) #7
  %conv88 = trunc i64 %call87 to i32
  %size89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  store i32 %conv88, i32* %size89, align 4, !tbaa !12
  %persistent90 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 2
  store i32 0, i32* %persistent90, align 4, !tbaa !13
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call91 = call i32 @param_write_string(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call91, i32* %rc, align 4, !tbaa !1
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.else.83
  %64 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %if.else.83
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.then.94, %if.then.81, %if.then.72, %if.then.66, %if.then.58, %if.then.49, %if.then.42, %if.then.38, %if.then.33, %if.then.28, %if.then.24, %if.then.20, %if.then.13, %if.then.8, %if.then.4, %if.then
  %65 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #4

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #4

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #4

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #4

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @eprn_set_media_data(%struct.eprn_Device* %dev, i8* %media_file, i64 %length) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %media_file.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %epref = alloca i8*, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  store i8* %media_file, i8** %media_file.addr, align 8, !tbaa !5
  store i64 %length, i64* %length.addr, align 8, !tbaa !23
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %1, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %2 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %3, i32 0, i32 20
  %4 = load i32, i32* %CUPS_messages, align 4, !tbaa !25
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !5
  %5 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %rc, align 4, !tbaa !1
  %6 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %6, i32 0, i32 7
  store i32 0, i32* %code, align 4, !tbaa !26
  %7 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file2 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %7, i32 0, i32 1
  %8 = load i8*, i8** %media_file2, align 8, !tbaa !20
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !27
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !42
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !42
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !45
  %14 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory4 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !27
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !42
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !42
  %18 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file7 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %18, i32 0, i32 1
  %19 = load i8*, i8** %media_file7, align 8, !tbaa !20
  call void %13(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #9
  %20 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %20, i32 0, i32 1
  store i8* null, i8** %media_file8, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_overrides = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %21, i32 0, i32 2
  %22 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides, align 8, !tbaa !46
  %cmp9 = icmp ne %struct.eprn_PageDescription* %22, null
  br i1 %cmp9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.end
  %23 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 0, i32* %n, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.10
  %24 = load i32, i32* %n, align 4, !tbaa !1
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_overrides11 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %25, i32 0, i32 2
  %26 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides11, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %26, i64 %idxprom
  %code12 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %arrayidx, i32 0, i32 0
  %27 = load i32, i32* %code12, align 4, !tbaa !47
  %cmp13 = icmp ne i32 %27, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i32, i32* %n, align 4, !tbaa !1
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory14 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !27
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !42
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !42
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object18 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object18, align 8, !tbaa !45
  %34 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory19 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !27
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !42
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !42
  %38 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_overrides22 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %38, i32 0, i32 2
  %39 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides22, align 8, !tbaa !46
  %40 = bitcast %struct.eprn_PageDescription* %39 to i8*
  call void %33(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #9
  %41 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_overrides23 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %41, i32 0, i32 2
  store %struct.eprn_PageDescription* null, %struct.eprn_PageDescription** %media_overrides23, align 8, !tbaa !46
  %42 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  br label %if.end.24

if.end.24:                                        ; preds = %while.end, %if.end
  %43 = load i8*, i8** %media_file.addr, align 8, !tbaa !5
  %cmp25 = icmp ne i8* %43, null
  br i1 %cmp25, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.24
  %44 = load i64, i64* %length.addr, align 8, !tbaa !23
  %cmp26 = icmp eq i64 %44, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %media_file.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %45) #7
  store i64 %call, i64* %length.addr, align 8, !tbaa !23
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.24
  %46 = load i8*, i8** %media_file.addr, align 8, !tbaa !5
  %cmp29 = icmp ne i8* %46, null
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.71

land.lhs.true.30:                                 ; preds = %if.end.28
  %47 = load i64, i64* %length.addr, align 8, !tbaa !23
  %cmp31 = icmp ugt i64 %47, 0
  br i1 %cmp31, label %if.then.32, label %if.end.71

if.then.32:                                       ; preds = %land.lhs.true.30
  %48 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory33 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !27
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !42
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !42
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 10
  %52 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !49
  %53 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory37 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !27
  %non_gc_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory38, align 8, !tbaa !42
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !42
  %57 = load i64, i64* %length.addr, align 8, !tbaa !23
  %add = add i64 %57, 1
  %conv = trunc i64 %add to i32
  %call40 = call i8* %52(%struct.gs_memory_s* %56, i32 %conv, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #9
  %58 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file41 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %58, i32 0, i32 1
  store i8* %call40, i8** %media_file41, align 8, !tbaa !20
  %59 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file42 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %59, i32 0, i32 1
  %60 = load i8*, i8** %media_file42, align 8, !tbaa !20
  %cmp43 = icmp eq i8* %60, null
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.32
  %call46 = call i8* @gs_program_name() #9
  %call47 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call46, i64 %call47) #9
  %61 = load i8*, i8** %epref, align 8, !tbaa !5
  %call48 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.21, i32 0, i32 0), i8* %61) #9
  store i32 -25, i32* %rc, align 4, !tbaa !1
  br label %if.end.70

if.else:                                          ; preds = %if.then.32
  %62 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file49 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %62, i32 0, i32 1
  %63 = load i8*, i8** %media_file49, align 8, !tbaa !20
  %64 = load i8*, i8** %media_file.addr, align 8, !tbaa !5
  %65 = load i64, i64* %length.addr, align 8, !tbaa !23
  %call50 = call i8* @strncpy(i8* %63, i8* %64, i64 %65) #8
  %66 = load i64, i64* %length.addr, align 8, !tbaa !23
  %67 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file51 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %67, i32 0, i32 1
  %68 = load i8*, i8** %media_file51, align 8, !tbaa !20
  %arrayidx52 = getelementptr inbounds i8, i8* %68, i64 %66
  store i8 0, i8* %arrayidx52, align 1, !tbaa !14
  %69 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %70 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory53 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !27
  %non_gc_memory54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory54, align 8, !tbaa !42
  %call55 = call i32 @eprn_read_media_data(%struct.s_eprn_Device* %69, %struct.gs_memory_s* %72) #9
  store i32 %call55, i32* %rc, align 4, !tbaa !1
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.69

if.then.58:                                       ; preds = %if.else
  %73 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory59 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory59, align 8, !tbaa !27
  %non_gc_memory60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory60, align 8, !tbaa !42
  %non_gc_memory61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory61, align 8, !tbaa !42
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 1
  %free_object63 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 2
  %77 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object63, align 8, !tbaa !45
  %78 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %memory64 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory64, align 8, !tbaa !27
  %non_gc_memory65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory65, align 8, !tbaa !42
  %non_gc_memory66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory66, align 8, !tbaa !42
  %82 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file67 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %82, i32 0, i32 1
  %83 = load i8*, i8** %media_file67, align 8, !tbaa !20
  call void %77(%struct.gs_memory_s* %81, i8* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #9
  %84 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file68 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %84, i32 0, i32 1
  store i8* null, i8** %media_file68, align 8, !tbaa !20
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.58, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.45
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.30, %if.end.28
  %85 = load i32, i32* %rc, align 4, !tbaa !1
  %86 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @eprn_read_media_data(%struct.s_eprn_Device* %eprn, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %eprn.addr = alloca %struct.s_eprn_Device*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %buffer = alloca [200 x i8], align 16
  %epref = alloca i8*, align 8
  %wpref = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %conversion_factor = alloca float, align 4
  %line = alloca i32, align 4
  %read = alloca i32, align 4
  %list = alloca %struct.eprn_PageDescription*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %current = alloca %struct.eprn_PageDescription*, align 8
  %chars_read = alloca i32, align 4
  %unit_name = alloca i8*, align 8
  %new_list = alloca %struct.eprn_PageDescription*, align 8
  %code = alloca i32, align 4
  store %struct.s_eprn_Device* %eprn, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %0 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 200, i8* %0) #2
  %1 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %2, i32 0, i32 20
  %3 = load i32, i32* %CUPS_messages, align 4, !tbaa !25
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !5
  %4 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %CUPS_messages1 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %5, i32 0, i32 20
  %6 = load i32, i32* %CUPS_messages1, align 4, !tbaa !25
  %tobool2 = icmp ne i32 %6, 0
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond3, i8** %wpref, align 8, !tbaa !5
  %7 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast float* %conversion_factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store float 7.200000e+01, float* %conversion_factor, align 4, !tbaa !50
  %9 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %line, align 4, !tbaa !1
  %10 = bitcast i32* %read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %read, align 4, !tbaa !1
  %11 = bitcast %struct.eprn_PageDescription** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  store %struct.eprn_PageDescription* null, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %12 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %12, i32 0, i32 1
  %13 = load i8*, i8** %media_file, align 8, !tbaa !20
  %call = call %struct._IO_FILE* @gp_fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8, !tbaa !5
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i8* @gs_program_name() #9
  %call5 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call4, i64 %call5) #9
  %14 = load i8*, i8** %epref, align 8, !tbaa !5
  %15 = load i8*, i8** %epref, align 8, !tbaa !5
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file6 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 1
  %17 = load i8*, i8** %media_file6, align 8, !tbaa !20
  %18 = load i8*, i8** %epref, align 8, !tbaa !5
  %call7 = call i32* @__errno_location() #10
  %19 = load i32, i32* %call7, align 4, !tbaa !1
  %call8 = call i8* @strerror(i32 %19) #8
  %call9 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.43, i32 0, i32 0), i8* %14, i8* %15, i8* %17, i8* %18, i8* %call8) #9
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.228, %cleanup.223, %if.end
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call10 = call i8* @fgets(i8* %arraydecay, i32 200, %struct._IO_FILE* %20) #9
  %cmp11 = icmp ne i8* %call10, null
  br i1 %cmp11, label %while.body, label %while.end.229

while.body:                                       ; preds = %while.cond
  %21 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast %struct.eprn_PageDescription** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i32* %chars_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %line, align 4, !tbaa !1
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %line, align 4, !tbaa !1
  %arraydecay12 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call13 = call i8* @strchr(i8* %arraydecay12, i32 10) #8
  store i8* %call13, i8** %s, align 8, !tbaa !5
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.body
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call15 = call i32 @fgetc(%struct._IO_FILE* %26) #9
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %land.lhs.true
  %call18 = call i8* @gs_program_name() #9
  %call19 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call18, i64 %call19) #9
  %27 = load i8*, i8** %epref, align 8, !tbaa !5
  %28 = load i8*, i8** %epref, align 8, !tbaa !5
  %29 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file20 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %29, i32 0, i32 1
  %30 = load i8*, i8** %media_file20, align 8, !tbaa !20
  %31 = load i32, i32* %line, align 4, !tbaa !1
  %call21 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.44, i32 0, i32 0), i8* %27, i32 198, i8* %28, i8* %30, i32 %31) #9
  %32 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %33 = bitcast %struct.eprn_PageDescription* %32 to i8*
  call void @free(i8* %33) #8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call22 = call i32 @fclose(%struct._IO_FILE* %34) #9
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.23:                                        ; preds = %land.lhs.true, %while.body
  %35 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp24 = icmp ne i8* %35, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %36 = load i8*, i8** %s, align 8, !tbaa !5
  store i8 0, i8* %36, align 1, !tbaa !14
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %37 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp27 = icmp eq i8* %37, null
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.26
  %arraydecay29 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call30 = call i8* @__rawmemchr(i8* %arraydecay29, i32 0) #9
  store i8* %call30, i8** %s, align 8, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.26
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.38, %if.end.31
  %arraydecay33 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %38 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp34 = icmp ult i8* %arraydecay33, %38
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.32
  %39 = load i8*, i8** %s, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 -1
  %40 = load i8, i8* %add.ptr, align 1, !tbaa !14
  %conv = sext i8 %40 to i32
  %idxprom = sext i32 %conv to i64
  %call35 = call i16** @__ctype_b_loc() #10
  %41 = load i16*, i16** %call35, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %41, i64 %idxprom
  %42 = load i16, i16* %arrayidx, align 2, !tbaa !51
  %conv36 = zext i16 %42 to i32
  %and = and i32 %conv36, 8192
  %tobool37 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.32
  %43 = phi i1 [ false, %while.cond.32 ], [ %tobool37, %land.rhs ]
  br i1 %43, label %while.body.38, label %while.end

while.body.38:                                    ; preds = %land.end
  %44 = load i8*, i8** %s, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !5
  br label %while.cond.32

while.end:                                        ; preds = %land.end
  %45 = load i8*, i8** %s, align 8, !tbaa !5
  store i8 0, i8* %45, align 1, !tbaa !14
  %arraydecay39 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay39, i8** %s, align 8, !tbaa !5
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.48, %while.end
  %46 = load i8*, i8** %s, align 8, !tbaa !5
  %47 = load i8, i8* %46, align 1, !tbaa !14
  %conv41 = sext i8 %47 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #10
  %48 = load i16*, i16** %call43, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i16, i16* %48, i64 %idxprom42
  %49 = load i16, i16* %arrayidx44, align 2, !tbaa !51
  %conv45 = zext i16 %49 to i32
  %and46 = and i32 %conv45, 8192
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %while.cond.40
  %50 = load i8*, i8** %s, align 8, !tbaa !5
  %incdec.ptr49 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8, !tbaa !5
  br label %while.cond.40

while.end.50:                                     ; preds = %while.cond.40
  %51 = load i8*, i8** %s, align 8, !tbaa !5
  %52 = load i8, i8* %51, align 1, !tbaa !14
  %conv51 = sext i8 %52 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.50
  %53 = load i8*, i8** %s, align 8, !tbaa !5
  %54 = load i8, i8* %53, align 1, !tbaa !14
  %conv54 = sext i8 %54 to i32
  %cmp55 = icmp eq i32 %conv54, 35
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %while.end.50
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.58:                                        ; preds = %lor.lhs.false
  %55 = load i8*, i8** %s, align 8, !tbaa !5
  %call59 = call i32 @is_word(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #9
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.80

if.then.61:                                       ; preds = %if.end.58
  %56 = bitcast i8** %unit_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load i8*, i8** %s, align 8, !tbaa !5
  %call62 = call i8* @next_word(i8* %57) #9
  store i8* %call62, i8** %unit_name, align 8, !tbaa !5
  %58 = load i8*, i8** %unit_name, align 8, !tbaa !5
  %cmp63 = icmp ne i8* %58, null
  br i1 %cmp63, label %if.then.65, label %if.end.79

if.then.65:                                       ; preds = %if.then.61
  %59 = load i8*, i8** %unit_name, align 8, !tbaa !5
  %call66 = call i8* @next_word(i8* %59) #9
  store i8* %call66, i8** %s, align 8, !tbaa !5
  %60 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp67 = icmp eq i8* %60, null
  br i1 %cmp67, label %if.then.69, label %if.end.78

if.then.69:                                       ; preds = %if.then.65
  %61 = load i8*, i8** %unit_name, align 8, !tbaa !5
  %call70 = call i32 @is_word(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #9
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.69
  store float 7.200000e+01, float* %conversion_factor, align 4, !tbaa !50
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.69
  %62 = load i8*, i8** %unit_name, align 8, !tbaa !5
  %call74 = call i32 @is_word(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #9
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  store float 0x4006AD5AC0000000, float* %conversion_factor, align 4, !tbaa !50
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.73
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.65
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.76, %if.then.72
  %63 = bitcast i8** %unit_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.223 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont, %if.end.58
  %64 = bitcast %struct.eprn_PageDescription** %new_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %66 = bitcast %struct.eprn_PageDescription* %65 to i8*
  %67 = load i32, i32* %read, align 4, !tbaa !1
  %add = add nsw i32 %67, 1
  %conv81 = sext i32 %add to i64
  %mul = mul i64 %conv81, 20
  %call82 = call i8* @realloc(i8* %66, i64 %mul) #8
  %68 = bitcast i8* %call82 to %struct.eprn_PageDescription*
  store %struct.eprn_PageDescription* %68, %struct.eprn_PageDescription** %new_list, align 8, !tbaa !5
  %69 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %new_list, align 8, !tbaa !5
  %cmp83 = icmp eq %struct.eprn_PageDescription* %69, null
  br i1 %cmp83, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %if.end.80
  %call86 = call i8* @gs_program_name() #9
  %call87 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call86, i64 %call87) #9
  %70 = load i8*, i8** %epref, align 8, !tbaa !5
  %call88 = call i32* @__errno_location() #10
  %71 = load i32, i32* %call88, align 4, !tbaa !1
  %call89 = call i8* @strerror(i32 %71) #8
  %call90 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.48, i32 0, i32 0), i8* %70, i8* %call89) #9
  %72 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %73 = bitcast %struct.eprn_PageDescription* %72 to i8*
  call void @free(i8* %73) #8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call91 = call i32 @fclose(%struct._IO_FILE* %74) #9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end.92:                                        ; preds = %if.end.80
  %75 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %new_list, align 8, !tbaa !5
  store %struct.eprn_PageDescription* %75, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.92, %if.then.85
  %76 = bitcast %struct.eprn_PageDescription** %new_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %cleanup.dest.94 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.94, label %cleanup.223 [
    i32 0, label %cleanup.cont.95
  ]

cleanup.cont.95:                                  ; preds = %cleanup.93
  %77 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %78 = load i32, i32* %read, align 4, !tbaa !1
  %idx.ext = sext i32 %78 to i64
  %add.ptr96 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %77, i64 %idx.ext
  store %struct.eprn_PageDescription* %add.ptr96, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %arraydecay97 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay97, i8** %s, align 8, !tbaa !5
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.body.106, %cleanup.cont.95
  %79 = load i8*, i8** %s, align 8, !tbaa !5
  %80 = load i8, i8* %79, align 1, !tbaa !14
  %conv99 = sext i8 %80 to i32
  %idxprom100 = sext i32 %conv99 to i64
  %call101 = call i16** @__ctype_b_loc() #10
  %81 = load i16*, i16** %call101, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i16, i16* %81, i64 %idxprom100
  %82 = load i16, i16* %arrayidx102, align 2, !tbaa !51
  %conv103 = zext i16 %82 to i32
  %and104 = and i32 %conv103, 8192
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %while.body.106, label %while.end.108

while.body.106:                                   ; preds = %while.cond.98
  %83 = load i8*, i8** %s, align 8, !tbaa !5
  %incdec.ptr107 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr107, i8** %s, align 8, !tbaa !5
  br label %while.cond.98

while.end.108:                                    ; preds = %while.cond.98
  %84 = load i8*, i8** %s, align 8, !tbaa !5
  %add.ptr109 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %add.ptr109, i8** %t, align 8, !tbaa !5
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.123, %while.end.108
  %85 = load i8*, i8** %t, align 8, !tbaa !5
  %86 = load i8, i8* %85, align 1, !tbaa !14
  %conv111 = sext i8 %86 to i32
  %cmp112 = icmp ne i32 %conv111, 0
  br i1 %cmp112, label %land.rhs.114, label %land.end.122

land.rhs.114:                                     ; preds = %while.cond.110
  %87 = load i8*, i8** %t, align 8, !tbaa !5
  %88 = load i8, i8* %87, align 1, !tbaa !14
  %conv115 = sext i8 %88 to i32
  %idxprom116 = sext i32 %conv115 to i64
  %call117 = call i16** @__ctype_b_loc() #10
  %89 = load i16*, i16** %call117, align 8, !tbaa !5
  %arrayidx118 = getelementptr inbounds i16, i16* %89, i64 %idxprom116
  %90 = load i16, i16* %arrayidx118, align 2, !tbaa !51
  %conv119 = zext i16 %90 to i32
  %and120 = and i32 %conv119, 8192
  %tobool121 = icmp ne i32 %and120, 0
  %lnot = xor i1 %tobool121, true
  br label %land.end.122

land.end.122:                                     ; preds = %land.rhs.114, %while.cond.110
  %91 = phi i1 [ false, %while.cond.110 ], [ %lnot, %land.rhs.114 ]
  br i1 %91, label %while.body.123, label %while.end.125

while.body.123:                                   ; preds = %land.end.122
  %92 = load i8*, i8** %t, align 8, !tbaa !5
  %incdec.ptr124 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr124, i8** %t, align 8, !tbaa !5
  br label %while.cond.110

while.end.125:                                    ; preds = %land.end.122
  %93 = load i8*, i8** %t, align 8, !tbaa !5
  %94 = load i8, i8* %93, align 1, !tbaa !14
  %conv126 = sext i8 %94 to i32
  %cmp127 = icmp ne i32 %conv126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %while.end.125
  %95 = load i8*, i8** %t, align 8, !tbaa !5
  store i8 0, i8* %95, align 1, !tbaa !14
  %96 = load i8*, i8** %t, align 8, !tbaa !5
  %incdec.ptr130 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr130, i8** %t, align 8, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %while.end.125
  %97 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = load i8*, i8** %s, align 8, !tbaa !5
  %99 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %flag_desc = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %99, i32 0, i32 3
  %100 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_desc, align 8, !tbaa !52
  %call132 = call i32 @ms_find_code_from_name(i8* %98, %struct.ms_Flag* %100) #9
  store i32 %call132, i32* %code, align 4, !tbaa !1
  %101 = load i32, i32* %code, align 4, !tbaa !1
  %cmp133 = icmp eq i32 %101, 0
  br i1 %cmp133, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %if.end.131
  %call136 = call i8* @gs_program_name() #9
  %call137 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call136, i64 %call137) #9
  %102 = load i8*, i8** %epref, align 8, !tbaa !5
  %103 = load i8*, i8** %s, align 8, !tbaa !5
  %104 = load i8*, i8** %epref, align 8, !tbaa !5
  %105 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file138 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %105, i32 0, i32 1
  %106 = load i8*, i8** %media_file138, align 8, !tbaa !20
  %107 = load i32, i32* %line, align 4, !tbaa !1
  %call139 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.49, i32 0, i32 0), i8* %102, i8* %103, i8* %104, i8* %106, i32 %107) #9
  %108 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %109 = bitcast %struct.eprn_PageDescription* %108 to i8*
  call void @free(i8* %109) #8
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call140 = call i32 @fclose(%struct._IO_FILE* %110) #9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.141:                                       ; preds = %if.end.131
  %111 = load i32, i32* %code, align 4, !tbaa !1
  %and142 = and i32 %111, 4096
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %if.end.141
  %call145 = call i8* @gs_program_name() #9
  %call146 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call145, i64 %call146) #9
  %112 = load i8*, i8** %epref, align 8, !tbaa !5
  %113 = load i8*, i8** %s, align 8, !tbaa !5
  %114 = load i8*, i8** %epref, align 8, !tbaa !5
  %115 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file147 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %115, i32 0, i32 1
  %116 = load i8*, i8** %media_file147, align 8, !tbaa !20
  %117 = load i32, i32* %line, align 4, !tbaa !1
  %call148 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.50, i32 0, i32 0), i8* %112, i8* %113, i8* %114, i8* %116, i32 %117) #9
  %118 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %119 = bitcast %struct.eprn_PageDescription* %118 to i8*
  call void @free(i8* %119) #8
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call149 = call i32 @fclose(%struct._IO_FILE* %120) #9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.150:                                       ; preds = %if.end.141
  %121 = load i32, i32* %code, align 4, !tbaa !1
  %122 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %code151 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %122, i32 0, i32 0
  store i32 %121, i32* %code151, align 4, !tbaa !47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.150, %if.then.144, %if.then.135
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.223 [
    i32 0, label %cleanup.cont.154
  ]

cleanup.cont.154:                                 ; preds = %cleanup.152
  %124 = load i8*, i8** %t, align 8, !tbaa !5
  %125 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %left = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %125, i32 0, i32 1
  %126 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %bottom = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %126, i32 0, i32 2
  %127 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %right = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %127, i32 0, i32 3
  %128 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %top = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %128, i32 0, i32 4
  %call155 = call i32 (i8*, i8*, ...) @sscanf(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), float* %left, float* %bottom, float* %right, float* %top, i32* %chars_read) #8
  %cmp156 = icmp ne i32 %call155, 4
  br i1 %cmp156, label %if.then.164, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %cleanup.cont.154
  %129 = load i32, i32* %chars_read, align 4, !tbaa !1
  %idxprom159 = sext i32 %129 to i64
  %130 = load i8*, i8** %t, align 8, !tbaa !5
  %arrayidx160 = getelementptr inbounds i8, i8* %130, i64 %idxprom159
  %131 = load i8, i8* %arrayidx160, align 1, !tbaa !14
  %conv161 = sext i8 %131 to i32
  %cmp162 = icmp ne i32 %conv161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.177

if.then.164:                                      ; preds = %lor.lhs.false.158, %cleanup.cont.154
  %132 = load i8*, i8** %t, align 8, !tbaa !5
  %133 = load i8, i8* %132, align 1, !tbaa !14
  %conv165 = sext i8 %133 to i32
  %cmp166 = icmp ne i32 %conv165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.then.164
  %134 = load i8*, i8** %t, align 8, !tbaa !5
  %add.ptr169 = getelementptr inbounds i8, i8* %134, i64 -1
  store i8 32, i8* %add.ptr169, align 1, !tbaa !14
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.then.164
  %call171 = call i8* @gs_program_name() #9
  %call172 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call171, i64 %call172) #9
  %135 = load i8*, i8** %epref, align 8, !tbaa !5
  %136 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file173 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %136, i32 0, i32 1
  %137 = load i8*, i8** %media_file173, align 8, !tbaa !20
  %138 = load i32, i32* %line, align 4, !tbaa !1
  %139 = load i8*, i8** %epref, align 8, !tbaa !5
  %arraydecay174 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call175 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.52, i32 0, i32 0), i8* %135, i8* %137, i32 %138, i8* %139, i8* %arraydecay174) #9
  %140 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %141 = bitcast %struct.eprn_PageDescription* %140 to i8*
  call void @free(i8* %141) #8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call176 = call i32 @fclose(%struct._IO_FILE* %142) #9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.177:                                       ; preds = %lor.lhs.false.158
  %143 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %left178 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %143, i32 0, i32 1
  %144 = load float, float* %left178, align 4, !tbaa !53
  %cmp179 = fcmp olt float %144, 0.000000e+00
  br i1 %cmp179, label %if.then.193, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.end.177
  %145 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %bottom182 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %145, i32 0, i32 2
  %146 = load float, float* %bottom182, align 4, !tbaa !54
  %cmp183 = fcmp olt float %146, 0.000000e+00
  br i1 %cmp183, label %if.then.193, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %lor.lhs.false.181
  %147 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %right186 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %147, i32 0, i32 3
  %148 = load float, float* %right186, align 4, !tbaa !55
  %cmp187 = fcmp olt float %148, 0.000000e+00
  br i1 %cmp187, label %if.then.193, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %lor.lhs.false.185
  %149 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %top190 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %149, i32 0, i32 4
  %150 = load float, float* %top190, align 4, !tbaa !56
  %cmp191 = fcmp olt float %150, 0.000000e+00
  br i1 %cmp191, label %if.then.193, label %if.end.199

if.then.193:                                      ; preds = %lor.lhs.false.189, %lor.lhs.false.185, %lor.lhs.false.181, %if.end.177
  %call194 = call i8* @gs_program_name() #9
  %call195 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call194, i64 %call195) #9
  %151 = load i8*, i8** %epref, align 8, !tbaa !5
  %152 = load i32, i32* %line, align 4, !tbaa !1
  %153 = load i8*, i8** %epref, align 8, !tbaa !5
  %154 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file196 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %154, i32 0, i32 1
  %155 = load i8*, i8** %media_file196, align 8, !tbaa !20
  %call197 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.53, i32 0, i32 0), i8* %151, i32 %152, i8* %153, i8* %155) #9
  %156 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %157 = bitcast %struct.eprn_PageDescription* %156 to i8*
  call void @free(i8* %157) #8
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call198 = call i32 @fclose(%struct._IO_FILE* %158) #9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.199:                                       ; preds = %lor.lhs.false.189
  %159 = load i32, i32* %read, align 4, !tbaa !1
  %inc200 = add nsw i32 %159, 1
  store i32 %inc200, i32* %read, align 4, !tbaa !1
  %160 = load float, float* %conversion_factor, align 4, !tbaa !50
  %161 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %left201 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %161, i32 0, i32 1
  %162 = load float, float* %left201, align 4, !tbaa !53
  %mul202 = fmul float %162, %160
  store float %mul202, float* %left201, align 4, !tbaa !53
  %163 = load float, float* %conversion_factor, align 4, !tbaa !50
  %164 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %bottom203 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %164, i32 0, i32 2
  %165 = load float, float* %bottom203, align 4, !tbaa !54
  %mul204 = fmul float %165, %163
  store float %mul204, float* %bottom203, align 4, !tbaa !54
  %166 = load float, float* %conversion_factor, align 4, !tbaa !50
  %167 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %right205 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %167, i32 0, i32 3
  %168 = load float, float* %right205, align 4, !tbaa !55
  %mul206 = fmul float %168, %166
  store float %mul206, float* %right205, align 4, !tbaa !55
  %169 = load float, float* %conversion_factor, align 4, !tbaa !50
  %170 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %top207 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %170, i32 0, i32 4
  %171 = load float, float* %top207, align 4, !tbaa !56
  %mul208 = fmul float %171, %169
  store float %mul208, float* %top207, align 4, !tbaa !56
  %172 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %current, align 8, !tbaa !5
  %code209 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %172, i32 0, i32 0
  %173 = load i32, i32* %code209, align 4, !tbaa !47
  %and210 = and i32 %173, -65281
  %cmp211 = icmp eq i32 %and210, 76
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.222

land.lhs.true.213:                                ; preds = %if.end.199
  %174 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %174, i32 0, i32 0
  %175 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !57
  %custom = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %175, i32 0, i32 2
  %176 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %custom, align 8, !tbaa !58
  %cmp214 = icmp eq %struct.eprn_CustomPageDescription* %176, null
  br i1 %cmp214, label %if.then.216, label %if.end.222

if.then.216:                                      ; preds = %land.lhs.true.213
  %call217 = call i8* @gs_program_name() #9
  %call218 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call217, i64 %call218) #9
  %177 = load i8*, i8** %wpref, align 8, !tbaa !5
  %178 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file219 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %178, i32 0, i32 1
  %179 = load i8*, i8** %media_file219, align 8, !tbaa !20
  %180 = load i8*, i8** %wpref, align 8, !tbaa !5
  %181 = load i32, i32* %line, align 4, !tbaa !1
  %182 = load i8*, i8** %wpref, align 8, !tbaa !5
  %183 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %cap220 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %183, i32 0, i32 0
  %184 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap220, align 8, !tbaa !57
  %name = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %184, i32 0, i32 0
  %185 = load i8*, i8** %name, align 8, !tbaa !60
  %call221 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.54, i32 0, i32 0), i8* %177, i8* %179, i8* %180, i32 %181, i8* %182, i8* %185) #9
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.216, %land.lhs.true.213, %if.end.199
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.223

cleanup.223:                                      ; preds = %if.end.222, %if.then.193, %if.end.170, %cleanup.152, %cleanup.93, %cleanup, %if.then.57, %if.then.17
  %186 = bitcast i32* %chars_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast %struct.eprn_PageDescription** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %cleanup.dest.227 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.227, label %cleanup.267 [
    i32 0, label %cleanup.cont.228
    i32 2, label %while.cond
  ]

cleanup.cont.228:                                 ; preds = %cleanup.223
  br label %while.cond

while.end.229:                                    ; preds = %while.cond
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call230 = call i32 @ferror(%struct._IO_FILE* %190) #8
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.238

if.then.232:                                      ; preds = %while.end.229
  %call233 = call i8* @gs_program_name() #9
  %call234 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call233, i64 %call234) #9
  %191 = load i8*, i8** %epref, align 8, !tbaa !5
  %192 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file235 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %192, i32 0, i32 1
  %193 = load i8*, i8** %media_file235, align 8, !tbaa !20
  %call236 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.55, i32 0, i32 0), i8* %191, i8* %193) #9
  %194 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %195 = bitcast %struct.eprn_PageDescription* %194 to i8*
  call void @free(i8* %195) #8
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call237 = call i32 @fclose(%struct._IO_FILE* %196) #9
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.238:                                       ; preds = %while.end.229
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call239 = call i32 @fclose(%struct._IO_FILE* %197) #9
  %198 = load i32, i32* %read, align 4, !tbaa !1
  %cmp240 = icmp eq i32 %198, 0
  br i1 %cmp240, label %if.then.242, label %if.end.247

if.then.242:                                      ; preds = %if.end.238
  %call243 = call i8* @gs_program_name() #9
  %call244 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call243, i64 %call244) #9
  %199 = load i8*, i8** %epref, align 8, !tbaa !5
  %200 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_file245 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %200, i32 0, i32 1
  %201 = load i8*, i8** %media_file245, align 8, !tbaa !20
  %202 = load i8*, i8** %epref, align 8, !tbaa !5
  %call246 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.56, i32 0, i32 0), i8* %199, i8* %201, i8* %202) #9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.247:                                       ; preds = %if.end.238
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %203, i32 0, i32 3
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !42
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %204, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %205 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !49
  %206 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %non_gc_memory248 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %206, i32 0, i32 3
  %207 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory248, align 8, !tbaa !42
  %208 = load i32, i32* %read, align 4, !tbaa !1
  %add249 = add nsw i32 %208, 1
  %call250 = call i8* %205(%struct.gs_memory_s* %207, i32 %add249, i32 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #9
  %209 = bitcast i8* %call250 to %struct.eprn_PageDescription*
  %210 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_overrides = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %210, i32 0, i32 2
  store %struct.eprn_PageDescription* %209, %struct.eprn_PageDescription** %media_overrides, align 8, !tbaa !46
  %211 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_overrides251 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %211, i32 0, i32 2
  %212 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides251, align 8, !tbaa !46
  %cmp252 = icmp eq %struct.eprn_PageDescription* %212, null
  br i1 %cmp252, label %if.then.254, label %if.end.258

if.then.254:                                      ; preds = %if.end.247
  %call255 = call i8* @gs_program_name() #9
  %call256 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call255, i64 %call256) #9
  %213 = load i8*, i8** %epref, align 8, !tbaa !5
  %call257 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.58, i32 0, i32 0), i8* %213) #9
  %214 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %215 = bitcast %struct.eprn_PageDescription* %214 to i8*
  call void @free(i8* %215) #8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.258:                                       ; preds = %if.end.247
  %216 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_overrides259 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %216, i32 0, i32 2
  %217 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides259, align 8, !tbaa !46
  %218 = bitcast %struct.eprn_PageDescription* %217 to i8*
  %219 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %220 = bitcast %struct.eprn_PageDescription* %219 to i8*
  %221 = load i32, i32* %read, align 4, !tbaa !1
  %conv260 = sext i32 %221 to i64
  %mul261 = mul i64 %conv260, 20
  %call262 = call i8* @memcpy(i8* %218, i8* %220, i64 %mul261) #8
  %222 = load i32, i32* %read, align 4, !tbaa !1
  %idxprom263 = sext i32 %222 to i64
  %223 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !5
  %media_overrides264 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %223, i32 0, i32 2
  %224 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides264, align 8, !tbaa !46
  %arrayidx265 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %224, i64 %idxprom263
  %code266 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %arrayidx265, i32 0, i32 0
  store i32 0, i32* %code266, align 4, !tbaa !47
  %225 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %list, align 8, !tbaa !5
  %226 = bitcast %struct.eprn_PageDescription* %225 to i8*
  call void @free(i8* %226) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

cleanup.267:                                      ; preds = %if.end.258, %if.then.254, %if.then.242, %if.then.232, %cleanup.223, %if.then
  %227 = bitcast %struct.eprn_PageDescription** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = bitcast i32* %read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast float* %conversion_factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 200, i8* %234) #2
  %235 = load i32, i32* %retval
  ret i32 %235
}

; Function Attrs: nounwind uwtable
define i32 @eprn_bits_for_levels(i32 %levels) #0 {
entry:
  %levels.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i64, align 8
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %bits, align 4, !tbaa !1
  %1 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i64 1, i64* %n, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %n, align 8, !tbaa !23
  %3 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %bits, align 4, !tbaa !1
  %inc = add i32 %4, 1
  store i32 %inc, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %n, align 8, !tbaa !23
  %mul = mul i64 %5, 2
  store i64 %mul, i64* %n, align 8, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %bits, align 4, !tbaa !1
  %7 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  %8 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @eprn_check_colour_info(%struct.eprn_ColourInfo* %list, i32* %model, float* %hres, float* %vres, i32* %black_levels, i32* %non_black_levels) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.eprn_ColourInfo*, align 8
  %model.addr = alloca i32*, align 8
  %hres.addr = alloca float*, align 8
  %vres.addr = alloca float*, align 8
  %black_levels.addr = alloca i32*, align 8
  %non_black_levels.addr = alloca i32*, align 8
  %entry1 = alloca %struct.eprn_ColourInfo*, align 8
  %rl = alloca %struct.eprn_ResLev*, align 8
  %levels = alloca i32, align 4
  %rl2 = alloca %struct.eprn_ResLev*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.eprn_ColourInfo* %list, %struct.eprn_ColourInfo** %list.addr, align 8, !tbaa !5
  store i32* %model, i32** %model.addr, align 8, !tbaa !5
  store float* %hres, float** %hres.addr, align 8, !tbaa !5
  store float* %vres, float** %vres.addr, align 8, !tbaa !5
  store i32* %black_levels, i32** %black_levels.addr, align 8, !tbaa !5
  store i32* %non_black_levels, i32** %non_black_levels.addr, align 8, !tbaa !5
  %0 = bitcast %struct.eprn_ColourInfo** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %list.addr, align 8, !tbaa !5
  store %struct.eprn_ColourInfo* %1, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %2 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info, i32 0, i64 0
  %3 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx, align 8, !tbaa !5
  %cmp = icmp ne %struct.eprn_ResLev* %3, null
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %4 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %colour_model, align 4, !tbaa !61
  %6 = load i32*, i32** %model.addr, align 8, !tbaa !5
  %7 = load i32, i32* %6, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model3 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %colour_model3, align 4, !tbaa !61
  %cmp4 = icmp eq i32 %9, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i32*, i32** %model.addr, align 8, !tbaa !5
  %11 = load i32, i32* %10, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %11, 3
  br i1 %cmp5, label %if.then, label %if.end.64

if.then:                                          ; preds = %land.lhs.true, %for.body
  %12 = bitcast %struct.eprn_ResLev** %rl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model6 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %colour_model6, align 4, !tbaa !61
  %cmp7 = icmp eq i32 %15, 1
  br i1 %cmp7, label %cond.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.then
  %16 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model9 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %colour_model9, align 4, !tbaa !61
  %cmp10 = icmp eq i32 %17, 2
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.8, %if.then
  %18 = load i32*, i32** %non_black_levels.addr, align 8, !tbaa !5
  %19 = load i32, i32* %18, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.8
  %20 = load i32*, i32** %black_levels.addr, align 8, !tbaa !5
  %21 = load i32, i32* %20, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %levels, align 4, !tbaa !1
  %22 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info11 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %22, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info11, i32 0, i64 0
  %23 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx12, align 8, !tbaa !5
  store %struct.eprn_ResLev* %23, %struct.eprn_ResLev** %rl, align 8, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.57, %cond.end
  %24 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl, align 8, !tbaa !5
  %levels14 = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %24, i32 0, i32 1
  %25 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %levels14, align 8, !tbaa !63
  %cmp15 = icmp ne %struct.eprn_IntensityLevels* %25, null
  br i1 %cmp15, label %for.body.16, label %for.end.59

for.body.16:                                      ; preds = %for.cond.13
  %26 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl, align 8, !tbaa !5
  %27 = load float*, float** %hres.addr, align 8, !tbaa !5
  %28 = load float, float* %27, align 4, !tbaa !50
  %29 = load float*, float** %vres.addr, align 8, !tbaa !5
  %30 = load float, float* %29, align 4, !tbaa !50
  %31 = load i32, i32* %levels, align 4, !tbaa !1
  %call = call i32 @reslev_supported(%struct.eprn_ResLev* %26, float %28, float %30, i32 %31) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.17, label %if.end.56

if.then.17:                                       ; preds = %for.body.16
  %32 = bitcast %struct.eprn_ResLev** %rl2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  store %struct.eprn_ResLev* null, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  %33 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model18 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %33, i32 0, i32 0
  %34 = load i32, i32* %colour_model18, align 4, !tbaa !61
  %cmp19 = icmp eq i32 %34, 0
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.then.17
  %35 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model21 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %colour_model21, align 4, !tbaa !61
  %cmp22 = icmp eq i32 %36, 1
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %37 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %colour_model24 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %colour_model24, align 4, !tbaa !61
  %cmp25 = icmp eq i32 %38, 2
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %if.then.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.23
  %39 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info27 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %39, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info27, i32 0, i64 1
  %40 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx28, align 8, !tbaa !5
  %cmp29 = icmp ne %struct.eprn_ResLev* %40, null
  br i1 %cmp29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.end
  %41 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info31 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %41, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info31, i32 0, i64 1
  %42 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx32, align 8, !tbaa !5
  store %struct.eprn_ResLev* %42, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.then.30
  %43 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  %levels34 = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %43, i32 0, i32 1
  %44 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %levels34, align 8, !tbaa !63
  %cmp35 = icmp ne %struct.eprn_IntensityLevels* %44, null
  br i1 %cmp35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %45 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  %46 = load float*, float** %hres.addr, align 8, !tbaa !5
  %47 = load float, float* %46, align 4, !tbaa !50
  %48 = load float*, float** %vres.addr, align 8, !tbaa !5
  %49 = load float, float* %48, align 4, !tbaa !50
  %50 = load i32*, i32** %non_black_levels.addr, align 8, !tbaa !5
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %call37 = call i32 @reslev_supported(%struct.eprn_ResLev* %45, float %47, float %49, i32 %51) #9
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.36
  br label %for.end

if.end.40:                                        ; preds = %for.body.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %52 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %52, i32 1
  store %struct.eprn_ResLev* %incdec.ptr, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  br label %for.cond.33

for.end:                                          ; preds = %if.then.39, %for.cond.33
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.end
  %53 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info42 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %53, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info42, i32 0, i64 1
  %54 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx43, align 8, !tbaa !5
  %cmp44 = icmp eq %struct.eprn_ResLev* %54, null
  br i1 %cmp44, label %land.lhs.true.45, label %lor.lhs.false.47

land.lhs.true.45:                                 ; preds = %if.end.41
  %55 = load i32*, i32** %black_levels.addr, align 8, !tbaa !5
  %56 = load i32, i32* %55, align 4, !tbaa !1
  %57 = load i32*, i32** %non_black_levels.addr, align 8, !tbaa !5
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %cmp46 = icmp eq i32 %56, %58
  br i1 %cmp46, label %if.then.54, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.45, %if.end.41
  %59 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %info48 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %59, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [2 x %struct.eprn_ResLev*], [2 x %struct.eprn_ResLev*]* %info48, i32 0, i64 1
  %60 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %arrayidx49, align 8, !tbaa !5
  %cmp50 = icmp ne %struct.eprn_ResLev* %60, null
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.55

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47
  %61 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl2, align 8, !tbaa !5
  %levels52 = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %61, i32 0, i32 1
  %62 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %levels52, align 8, !tbaa !63
  %cmp53 = icmp ne %struct.eprn_IntensityLevels* %62, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.51, %land.lhs.true.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %land.lhs.true.51, %lor.lhs.false.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.54, %if.then.26
  %63 = bitcast %struct.eprn_ResLev** %rl2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %for.body.16
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %64 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %rl, align 8, !tbaa !5
  %incdec.ptr58 = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %64, i32 1
  store %struct.eprn_ResLev* %incdec.ptr58, %struct.eprn_ResLev** %rl, align 8, !tbaa !5
  br label %for.cond.13

for.end.59:                                       ; preds = %for.cond.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %for.end.59, %cleanup
  %65 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast %struct.eprn_ResLev** %rl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %cleanup.68 [
    i32 0, label %cleanup.cont.63
  ]

cleanup.cont.63:                                  ; preds = %cleanup.60
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont.63, %land.lhs.true, %lor.lhs.false
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %67 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  %incdec.ptr66 = getelementptr inbounds %struct.eprn_ColourInfo, %struct.eprn_ColourInfo* %67, i32 1
  store %struct.eprn_ColourInfo* %incdec.ptr66, %struct.eprn_ColourInfo** %entry1, align 8, !tbaa !5
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %for.end.67, %cleanup.60
  %68 = bitcast %struct.eprn_ColourInfo** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @reslev_supported(%struct.eprn_ResLev* %entry1, float %hres, float %vres, i32 %levels) #0 {
entry:
  %entry.addr = alloca %struct.eprn_ResLev*, align 8
  %hres.addr = alloca float, align 4
  %vres.addr = alloca float, align 4
  %levels.addr = alloca i32, align 4
  store %struct.eprn_ResLev* %entry1, %struct.eprn_ResLev** %entry.addr, align 8, !tbaa !5
  store float %hres, float* %hres.addr, align 4, !tbaa !50
  store float %vres, float* %vres.addr, align 4, !tbaa !50
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !1
  %0 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %entry.addr, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %0, i32 0, i32 0
  %1 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %resolutions, align 8, !tbaa !65
  %2 = load float, float* %hres.addr, align 4, !tbaa !50
  %3 = load float, float* %vres.addr, align 4, !tbaa !50
  %call = call i32 @res_supported(%struct.eprn_Resolution* %1, float %2, float %3) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.eprn_ResLev*, %struct.eprn_ResLev** %entry.addr, align 8, !tbaa !5
  %levels2 = getelementptr inbounds %struct.eprn_ResLev, %struct.eprn_ResLev* %4, i32 0, i32 1
  %5 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %levels2, align 8, !tbaa !63
  %6 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %call3 = call i32 @levels_supported(%struct.eprn_IntensityLevels* %5, i32 %6) #9
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @eprn_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %colour_mode_given_and_valid = alloca i32, align 4
  %pname = alloca i8*, align 8
  %string_value = alloca %struct.gs_param_string_s, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %epref = alloca i8*, align 8
  %wpref = alloca i8*, align 8
  %mediasize = alloca [2 x float], align 4
  %height = alloca i32, align 4
  %last_error = alloca i32, align 4
  %temp = alloca i32, align 4
  %rc = alloca i32, align 4
  %width = alloca i32, align 4
  %temp233 = alloca i32, align 4
  %temp609 = alloca %struct.gs_param_typed_value_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %0 = bitcast i32* %colour_mode_given_and_valid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %colour_mode_given_and_valid, align 4, !tbaa !1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %5 = bitcast %struct.gx_device_s* %4 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %5, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %6 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %7, i32 0, i32 20
  %8 = load i32, i32* %CUPS_messages, align 4, !tbaa !25
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !5
  %9 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages2 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %10, i32 0, i32 20
  %11 = load i32, i32* %CUPS_messages2, align 4, !tbaa !25
  %tobool3 = icmp ne i32 %11, 0
  %cond4 = select i1 %tobool3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond4, i8** %wpref, align 8, !tbaa !5
  %12 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %height5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height5, align 4, !tbaa !66
  store i32 %15, i32* %height, align 4, !tbaa !1
  %16 = bitcast i32* %last_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %last_error, align 4, !tbaa !1
  %17 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width6, align 4, !tbaa !68
  store i32 %21, i32* %width, align 4, !tbaa !1
  store i32 0, i32* %temp, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp = icmp slt i32 %22, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %temp, align 4, !tbaa !1
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 %idxprom
  %25 = load float, float* %arrayidx, align 4, !tbaa !50
  %26 = load i32, i32* %temp, align 4, !tbaa !1
  %idxprom7 = sext i32 %26 to i64
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 %idxprom7
  store float %25, float* %arrayidx8, align 4, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %temp, align 4, !tbaa !1
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %temp, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %29 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages9 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %29, i32 0, i32 20
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32* %CUPS_messages9) #9
  store i32 %call, i32* %rc, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %30 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages11 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %30, i32 0, i32 20
  %31 = load i32, i32* %CUPS_messages11, align 4, !tbaa !25
  %tobool12 = icmp ne i32 %31, 0
  %cond13 = select i1 %tobool12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond13, i8** %epref, align 8, !tbaa !5
  %32 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_messages14 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %32, i32 0, i32 20
  %33 = load i32, i32* %CUPS_messages14, align 4, !tbaa !25
  %tobool15 = icmp ne i32 %33, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  store i8* %cond16, i8** %wpref, align 8, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %for.end
  %34 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %34, 0
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %35 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %35, i32* %last_error, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call20 = call i32 @param_read_string(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call20, i32* %rc, align 4, !tbaa !1
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.40

if.then.22:                                       ; preds = %if.end.19
  %call23 = call i32 @eprn_get_int(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([6 x %struct.eprn_StringAndInt], [6 x %struct.eprn_StringAndInt]* @eprn_colour_model_list, i32 0, i32 0), i32* %temp) #9
  store i32 %call23, i32* %rc, align 4, !tbaa !1
  %37 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp24 = icmp ne i32 %37, 0
  br i1 %cmp24, label %if.then.25, label %if.else.38

if.then.25:                                       ; preds = %if.then.22
  %38 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp26 = icmp ne i32 %38, -25
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.then.25
  %call28 = call i8* @gs_program_name() #9
  %call29 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call28, i64 %call29) #9
  %39 = load i8*, i8** %epref, align 8, !tbaa !5
  %call30 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %39) #9
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8, !tbaa !10
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %43 = load i32, i32* %size, align 4, !tbaa !12
  %conv = zext i32 %43 to i64
  %mul = mul i64 1, %conv
  %conv31 = trunc i64 %mul to i32
  %call32 = call i32 @errwrite(%struct.gs_memory_s* %41, i8* %42, i32 %conv31) #9
  %call33 = call i8* @gs_program_name() #9
  %call34 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call33, i64 %call34) #9
  %call35 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #9
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.27, %if.then.25
  %44 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %44, i32* %last_error, align 4, !tbaa !1
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !70
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !72
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %49 = load i8*, i8** %pname, align 8, !tbaa !5
  %50 = load i32, i32* %last_error, align 4, !tbaa !1
  %call37 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #9
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.22
  store i32 1, i32* %colour_mode_given_and_valid, align 4, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.end.36
  br label %if.end.45

if.else.40:                                       ; preds = %if.end.19
  %51 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp41 = icmp slt i32 %51, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.40
  %52 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %52, i32* %last_error, align 4, !tbaa !1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.39
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call46 = call i32 @param_read_string(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call46, i32* %rc, align 4, !tbaa !1
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.76

if.then.49:                                       ; preds = %if.end.45
  %call50 = call i32 @eprn_get_int(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([6 x %struct.eprn_StringAndInt], [6 x %struct.eprn_StringAndInt]* @eprn_colour_model_list, i32 0, i32 0), i32* %temp) #9
  store i32 %call50, i32* %rc, align 4, !tbaa !1
  %54 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp51 = icmp ne i32 %54, 0
  br i1 %cmp51, label %if.then.53, label %if.else.74

if.then.53:                                       ; preds = %if.then.49
  %55 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp54 = icmp ne i32 %55, -25
  br i1 %cmp54, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %if.then.53
  %call57 = call i8* @gs_program_name() #9
  %call58 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call57, i64 %call58) #9
  %56 = load i8*, i8** %epref, align 8, !tbaa !5
  %call59 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %56) #9
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory60, align 8, !tbaa !69
  %data61 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %59 = load i8*, i8** %data61, align 8, !tbaa !10
  %size62 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %60 = load i32, i32* %size62, align 4, !tbaa !12
  %conv63 = zext i32 %60 to i64
  %mul64 = mul i64 1, %conv63
  %conv65 = trunc i64 %mul64 to i32
  %call66 = call i32 @errwrite(%struct.gs_memory_s* %58, i8* %59, i32 %conv65) #9
  %call67 = call i8* @gs_program_name() #9
  %call68 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call67, i64 %call68) #9
  %call69 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #9
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.56, %if.then.53
  %61 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %61, i32* %last_error, align 4, !tbaa !1
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs71 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %62, i32 0, i32 0
  %63 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs71, align 8, !tbaa !70
  %signal_error72 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %63, i32 0, i32 7
  %64 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error72, align 8, !tbaa !72
  %65 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %66 = load i8*, i8** %pname, align 8, !tbaa !5
  %67 = load i32, i32* %last_error, align 4, !tbaa !1
  %call73 = call i32 %64(%struct.gs_param_list_s* %65, i8* %66, i32 %67) #9
  br label %if.end.75

if.else.74:                                       ; preds = %if.then.49
  store i32 1, i32* %colour_mode_given_and_valid, align 4, !tbaa !1
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.end.70
  br label %if.end.81

if.else.76:                                       ; preds = %if.end.45
  %68 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp77 = icmp slt i32 %68, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else.76
  %69 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %69, i32* %last_error, align 4, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.else.76
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.75
  %70 = load i32, i32* %colour_mode_given_and_valid, align 4, !tbaa !1
  %tobool82 = icmp ne i32 %70, 0
  br i1 %tobool82, label %if.then.83, label %if.end.134

if.then.83:                                       ; preds = %if.end.81
  %71 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %71, i32 0, i32 14
  %72 = load i32, i32* %colour_model, align 4, !tbaa !15
  %73 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp84 = icmp ne i32 %72, %73
  br i1 %cmp84, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.then.83
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 9
  %75 = load i32, i32* %is_open, align 4, !tbaa !74
  %tobool86 = icmp ne i32 %75, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %land.lhs.true
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call88 = call i32 @gs_closedevice(%struct.gx_device_s* %76) #9
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true, %if.then.83
  %77 = load i32, i32* %temp, align 4, !tbaa !1
  %78 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model90 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %78, i32 0, i32 14
  store i32 %77, i32* %colour_model90, align 4, !tbaa !15
  %79 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model91 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %79, i32 0, i32 14
  %80 = load i32, i32* %colour_model91, align 4, !tbaa !15
  switch i32 %80, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.92
    i32 2, label %sw.bb.92
    i32 3, label %sw.bb.92
    i32 4, label %sw.bb.95
  ]

sw.bb:                                            ; preds = %if.end.89
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  store i32 1, i32* %num_components, align 4, !tbaa !75
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.89, %if.end.89, %if.end.89
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 11
  %num_components94 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info93, i32 0, i32 1
  store i32 3, i32* %num_components94, align 4, !tbaa !75
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.89
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info96 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 11
  %num_components97 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info96, i32 0, i32 1
  store i32 4, i32* %num_components97, align 4, !tbaa !75
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.89
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 964, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.eprn_put_params, i32 0, i32 0)) #11
  unreachable

sw.epilog:                                        ; preds = %sw.bb.95, %sw.bb.92, %sw.bb
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 11
  %num_components99 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info98, i32 0, i32 1
  %85 = load i32, i32* %num_components99, align 4, !tbaa !75
  %cmp100 = icmp sge i32 %85, 4
  %cond102 = select i1 %cmp100, i32 0, i32 1
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info103 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info103, i32 0, i32 2
  store i32 %cond102, i32* %polarity, align 4, !tbaa !76
  %87 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model104 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %87, i32 0, i32 14
  %88 = load i32, i32* %colour_model104, align 4, !tbaa !15
  %cmp105 = icmp eq i32 %88, 2
  br i1 %cmp105, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %89 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model107 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %89, i32 0, i32 14
  %90 = load i32, i32* %colour_model107, align 4, !tbaa !15
  %cmp108 = icmp eq i32 %90, 1
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %lor.lhs.false, %sw.epilog
  %91 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %91, i32 0, i32 15
  %92 = load i32, i32* %black_levels, align 4, !tbaa !77
  %cmp111 = icmp ne i32 %92, 0
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.110
  %93 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels114 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %93, i32 0, i32 15
  store i32 0, i32* %black_levels114, align 4, !tbaa !77
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.110
  br label %if.end.123

if.else.116:                                      ; preds = %lor.lhs.false
  %94 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels117 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %94, i32 0, i32 15
  %95 = load i32, i32* %black_levels117, align 4, !tbaa !77
  %cmp118 = icmp eq i32 %95, 0
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.else.116
  %96 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels121 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %96, i32 0, i32 15
  store i32 2, i32* %black_levels121, align 4, !tbaa !77
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.else.116
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.115
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 11
  %num_components125 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info124, i32 0, i32 1
  %98 = load i32, i32* %num_components125, align 4, !tbaa !75
  %cmp126 = icmp sgt i32 %98, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.133

land.lhs.true.128:                                ; preds = %if.end.123
  %99 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %99, i32 0, i32 16
  %100 = load i32, i32* %non_black_levels, align 4, !tbaa !78
  %cmp129 = icmp ule i32 %100, 0
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %land.lhs.true.128
  %101 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels132 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %101, i32 0, i32 16
  store i32 2, i32* %non_black_levels132, align 4, !tbaa !78
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %land.lhs.true.128, %if.end.123
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.81
  %102 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call135 = call i32 @param_read_int(%struct.gs_param_list_s* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %temp) #9
  store i32 %call135, i32* %rc, align 4, !tbaa !1
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then.138, label %if.else.182

if.then.138:                                      ; preds = %if.end.134
  %103 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp139 = icmp eq i32 %103, 0
  br i1 %cmp139, label %land.lhs.true.141, label %lor.lhs.false.149

land.lhs.true.141:                                ; preds = %if.then.138
  %104 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model142 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %104, i32 0, i32 14
  %105 = load i32, i32* %colour_model142, align 4, !tbaa !15
  %cmp143 = icmp eq i32 %105, 1
  br i1 %cmp143, label %if.then.163, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.lhs.true.141
  %106 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model146 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %106, i32 0, i32 14
  %107 = load i32, i32* %colour_model146, align 4, !tbaa !15
  %cmp147 = icmp eq i32 %107, 2
  br i1 %cmp147, label %if.then.163, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.145, %if.then.138
  %108 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp150 = icmp sle i32 2, %108
  br i1 %cmp150, label %land.lhs.true.152, label %if.else.174

land.lhs.true.152:                                ; preds = %lor.lhs.false.149
  %109 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp153 = icmp sle i32 %109, 256
  br i1 %cmp153, label %land.lhs.true.155, label %if.else.174

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %110 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model156 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %110, i32 0, i32 14
  %111 = load i32, i32* %colour_model156, align 4, !tbaa !15
  %cmp157 = icmp ne i32 %111, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.else.174

land.lhs.true.159:                                ; preds = %land.lhs.true.155
  %112 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model160 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %112, i32 0, i32 14
  %113 = load i32, i32* %colour_model160, align 4, !tbaa !15
  %cmp161 = icmp ne i32 %113, 2
  br i1 %cmp161, label %if.then.163, label %if.else.174

if.then.163:                                      ; preds = %land.lhs.true.159, %lor.lhs.false.145, %land.lhs.true.141
  %114 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels164 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %114, i32 0, i32 15
  %115 = load i32, i32* %black_levels164, align 4, !tbaa !77
  %116 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp165 = icmp ne i32 %115, %116
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.172

land.lhs.true.167:                                ; preds = %if.then.163
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open168 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 9
  %118 = load i32, i32* %is_open168, align 4, !tbaa !74
  %tobool169 = icmp ne i32 %118, 0
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %land.lhs.true.167
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call171 = call i32 @gs_closedevice(%struct.gx_device_s* %119) #9
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %land.lhs.true.167, %if.then.163
  %120 = load i32, i32* %temp, align 4, !tbaa !1
  %121 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels173 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %121, i32 0, i32 15
  store i32 %120, i32* %black_levels173, align 4, !tbaa !77
  br label %if.end.181

if.else.174:                                      ; preds = %land.lhs.true.159, %land.lhs.true.155, %land.lhs.true.152, %lor.lhs.false.149
  %call175 = call i8* @gs_program_name() #9
  %call176 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call175, i64 %call176) #9
  %122 = load i8*, i8** %epref, align 8, !tbaa !5
  %123 = load i32, i32* %temp, align 4, !tbaa !1
  %call177 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i32 0, i32 0), i8* %122, i32 %123) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %124 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs178 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %124, i32 0, i32 0
  %125 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs178, align 8, !tbaa !70
  %signal_error179 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %125, i32 0, i32 7
  %126 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error179, align 8, !tbaa !72
  %127 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %128 = load i8*, i8** %pname, align 8, !tbaa !5
  %129 = load i32, i32* %last_error, align 4, !tbaa !1
  %call180 = call i32 %126(%struct.gs_param_list_s* %127, i8* %128, i32 %129) #9
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.174, %if.end.172
  br label %if.end.187

if.else.182:                                      ; preds = %if.end.134
  %130 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp183 = icmp slt i32 %130, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.else.182
  %131 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %131, i32* %last_error, align 4, !tbaa !1
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.else.182
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.181
  %132 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call188 = call i32 @param_read_int(%struct.gs_param_list_s* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %temp) #9
  store i32 %call188, i32* %rc, align 4, !tbaa !1
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %if.then.191, label %if.else.227

if.then.191:                                      ; preds = %if.end.187
  %133 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp192 = icmp eq i32 %133, 0
  br i1 %cmp192, label %land.lhs.true.194, label %lor.lhs.false.198

land.lhs.true.194:                                ; preds = %if.then.191
  %134 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model195 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %134, i32 0, i32 14
  %135 = load i32, i32* %colour_model195, align 4, !tbaa !15
  %cmp196 = icmp eq i32 %135, 0
  br i1 %cmp196, label %if.then.208, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.194, %if.then.191
  %136 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp199 = icmp sle i32 2, %136
  br i1 %cmp199, label %land.lhs.true.201, label %if.else.219

land.lhs.true.201:                                ; preds = %lor.lhs.false.198
  %137 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp202 = icmp sle i32 %137, 256
  br i1 %cmp202, label %land.lhs.true.204, label %if.else.219

land.lhs.true.204:                                ; preds = %land.lhs.true.201
  %138 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %colour_model205 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %138, i32 0, i32 14
  %139 = load i32, i32* %colour_model205, align 4, !tbaa !15
  %cmp206 = icmp ne i32 %139, 0
  br i1 %cmp206, label %if.then.208, label %if.else.219

if.then.208:                                      ; preds = %land.lhs.true.204, %land.lhs.true.194
  %140 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels209 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %140, i32 0, i32 16
  %141 = load i32, i32* %non_black_levels209, align 4, !tbaa !78
  %142 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp210 = icmp ne i32 %141, %142
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.217

land.lhs.true.212:                                ; preds = %if.then.208
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open213 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 9
  %144 = load i32, i32* %is_open213, align 4, !tbaa !74
  %tobool214 = icmp ne i32 %144, 0
  br i1 %tobool214, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %land.lhs.true.212
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call216 = call i32 @gs_closedevice(%struct.gx_device_s* %145) #9
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %land.lhs.true.212, %if.then.208
  %146 = load i32, i32* %temp, align 4, !tbaa !1
  %147 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels218 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %147, i32 0, i32 16
  store i32 %146, i32* %non_black_levels218, align 4, !tbaa !78
  br label %if.end.226

if.else.219:                                      ; preds = %land.lhs.true.204, %land.lhs.true.201, %lor.lhs.false.198
  %call220 = call i8* @gs_program_name() #9
  %call221 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call220, i64 %call221) #9
  %148 = load i8*, i8** %epref, align 8, !tbaa !5
  %149 = load i32, i32* %temp, align 4, !tbaa !1
  %call222 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i32 0, i32 0), i8* %148, i32 %149) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %150 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs223 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %150, i32 0, i32 0
  %151 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs223, align 8, !tbaa !70
  %signal_error224 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %151, i32 0, i32 7
  %152 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error224, align 8, !tbaa !72
  %153 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %154 = load i8*, i8** %pname, align 8, !tbaa !5
  %155 = load i32, i32* %last_error, align 4, !tbaa !1
  %call225 = call i32 %152(%struct.gs_param_list_s* %153, i8* %154, i32 %155) #9
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.219, %if.end.217
  br label %if.end.232

if.else.227:                                      ; preds = %if.end.187
  %156 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp228 = icmp slt i32 %156, 0
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.else.227
  %157 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %157, i32* %last_error, align 4, !tbaa !1
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.else.227
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.226
  %158 = bitcast i32* %temp233 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #2
  %159 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call234 = call i32 @param_read_bool(%struct.gs_param_list_s* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %temp233) #9
  store i32 %call234, i32* %rc, align 4, !tbaa !1
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then.237, label %if.else.248

if.then.237:                                      ; preds = %if.end.232
  %160 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_accounting = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %160, i32 0, i32 19
  %161 = load i32, i32* %CUPS_accounting, align 4, !tbaa !79
  %tobool238 = icmp ne i32 %161, 0
  br i1 %tobool238, label %land.lhs.true.239, label %if.else.245

land.lhs.true.239:                                ; preds = %if.then.237
  %162 = load i32, i32* %temp233, align 4, !tbaa !1
  %tobool240 = icmp ne i32 %162, 0
  br i1 %tobool240, label %if.else.245, label %if.then.241

if.then.241:                                      ; preds = %land.lhs.true.239
  %call242 = call i8* @gs_program_name() #9
  %call243 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call242, i64 %call243) #9
  %call244 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i32 0, i32 0)) #9
  br label %if.end.247

if.else.245:                                      ; preds = %land.lhs.true.239, %if.then.237
  %163 = load i32, i32* %temp233, align 4, !tbaa !1
  %164 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %CUPS_accounting246 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %164, i32 0, i32 19
  store i32 %163, i32* %CUPS_accounting246, align 4, !tbaa !79
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.245, %if.then.241
  br label %if.end.253

if.else.248:                                      ; preds = %if.end.232
  %165 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp249 = icmp slt i32 %165, 0
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.else.248
  %166 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %166, i32* %last_error, align 4, !tbaa !1
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.else.248
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.247
  %167 = bitcast i32* %temp233 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call254 = call i32 @param_read_string(%struct.gs_param_list_s* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %string_value) #9
  store i32 %call254, i32* %rc, align 4, !tbaa !1
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then.257, label %if.else.289

if.then.257:                                      ; preds = %if.end.253
  %call258 = call i32 @eprn_get_int(%struct.gs_param_string_s* %string_value, %struct.eprn_StringAndInt* getelementptr inbounds ([4 x %struct.eprn_StringAndInt], [4 x %struct.eprn_StringAndInt]* @intensity_rendering_list, i32 0, i32 0), i32* %temp) #9
  store i32 %call258, i32* %rc, align 4, !tbaa !1
  %169 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp259 = icmp eq i32 %169, 0
  br i1 %cmp259, label %if.then.261, label %if.else.271

if.then.261:                                      ; preds = %if.then.257
  %170 = load i32, i32* %temp, align 4, !tbaa !1
  %171 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %171, i32 0, i32 17
  %172 = load i32, i32* %intensity_rendering, align 4, !tbaa !18
  %cmp262 = icmp ne i32 %170, %172
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.269

land.lhs.true.264:                                ; preds = %if.then.261
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open265 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %173, i32 0, i32 9
  %174 = load i32, i32* %is_open265, align 4, !tbaa !74
  %tobool266 = icmp ne i32 %174, 0
  br i1 %tobool266, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %land.lhs.true.264
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call268 = call i32 @gs_closedevice(%struct.gx_device_s* %175) #9
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %land.lhs.true.264, %if.then.261
  %176 = load i32, i32* %temp, align 4, !tbaa !1
  %177 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %intensity_rendering270 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %177, i32 0, i32 17
  store i32 %176, i32* %intensity_rendering270, align 4, !tbaa !18
  br label %if.end.288

if.else.271:                                      ; preds = %if.then.257
  %call272 = call i8* @gs_program_name() #9
  %call273 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call272, i64 %call273) #9
  %178 = load i8*, i8** %epref, align 8, !tbaa !5
  %call274 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i32 0, i32 0), i8* %178) #9
  %179 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory275 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %179, i32 0, i32 3
  %180 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory275, align 8, !tbaa !69
  %data276 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %181 = load i8*, i8** %data276, align 8, !tbaa !10
  %size277 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %182 = load i32, i32* %size277, align 4, !tbaa !12
  %conv278 = zext i32 %182 to i64
  %mul279 = mul i64 1, %conv278
  %conv280 = trunc i64 %mul279 to i32
  %call281 = call i32 @errwrite(%struct.gs_memory_s* %180, i8* %181, i32 %conv280) #9
  %call282 = call i8* @gs_program_name() #9
  %call283 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call282, i64 %call283) #9
  %call284 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %183 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs285 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %183, i32 0, i32 0
  %184 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs285, align 8, !tbaa !70
  %signal_error286 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %184, i32 0, i32 7
  %185 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error286, align 8, !tbaa !72
  %186 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %187 = load i8*, i8** %pname, align 8, !tbaa !5
  %188 = load i32, i32* %last_error, align 4, !tbaa !1
  %call287 = call i32 %185(%struct.gs_param_list_s* %186, i8* %187, i32 %188) #9
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.271, %if.end.269
  br label %if.end.294

if.else.289:                                      ; preds = %if.end.253
  %189 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp290 = icmp slt i32 %189, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.else.289
  %190 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %190, i32* %last_error, align 4, !tbaa !1
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %if.else.289
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.288
  %191 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call295 = call i32 @param_read_null(%struct.gs_param_list_s* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #9
  store i32 %call295, i32* %rc, align 4, !tbaa !1
  %cmp296 = icmp eq i32 %call295, 0
  br i1 %cmp296, label %if.then.298, label %if.else.307

if.then.298:                                      ; preds = %if.end.294
  %192 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %leading_edge_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %192, i32 0, i32 9
  %193 = load i32, i32* %leading_edge_set, align 4, !tbaa !19
  %tobool299 = icmp ne i32 %193, 0
  br i1 %tobool299, label %land.lhs.true.300, label %if.end.305

land.lhs.true.300:                                ; preds = %if.then.298
  %194 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open301 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %194, i32 0, i32 9
  %195 = load i32, i32* %is_open301, align 4, !tbaa !74
  %tobool302 = icmp ne i32 %195, 0
  br i1 %tobool302, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %land.lhs.true.300
  %196 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call304 = call i32 @gs_closedevice(%struct.gx_device_s* %196) #9
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %land.lhs.true.300, %if.then.298
  %197 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %leading_edge_set306 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %197, i32 0, i32 9
  store i32 0, i32* %leading_edge_set306, align 4, !tbaa !19
  br label %if.end.353

if.else.307:                                      ; preds = %if.end.294
  %198 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp308 = icmp slt i32 %198, 0
  br i1 %cmp308, label %land.lhs.true.310, label %if.else.314

land.lhs.true.310:                                ; preds = %if.else.307
  %199 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp311 = icmp ne i32 %199, -20
  br i1 %cmp311, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %land.lhs.true.310
  %200 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %200, i32* %last_error, align 4, !tbaa !1
  br label %if.end.352

if.else.314:                                      ; preds = %land.lhs.true.310, %if.else.307
  %201 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call315 = call i32 @param_read_int(%struct.gs_param_list_s* %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %temp) #9
  store i32 %call315, i32* %rc, align 4, !tbaa !1
  %cmp316 = icmp eq i32 %call315, 0
  br i1 %cmp316, label %if.then.318, label %if.else.346

if.then.318:                                      ; preds = %if.else.314
  %202 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp319 = icmp sle i32 0, %202
  br i1 %cmp319, label %land.lhs.true.321, label %if.else.338

land.lhs.true.321:                                ; preds = %if.then.318
  %203 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp322 = icmp sle i32 %203, 3
  br i1 %cmp322, label %if.then.324, label %if.else.338

if.then.324:                                      ; preds = %land.lhs.true.321
  %204 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %leading_edge_set325 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %204, i32 0, i32 9
  %205 = load i32, i32* %leading_edge_set325, align 4, !tbaa !19
  %tobool326 = icmp ne i32 %205, 0
  br i1 %tobool326, label %lor.lhs.false.327, label %land.lhs.true.330

lor.lhs.false.327:                                ; preds = %if.then.324
  %206 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %default_orientation = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %206, i32 0, i32 8
  %207 = load i32, i32* %default_orientation, align 4, !tbaa !80
  %208 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp328 = icmp ne i32 %207, %208
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.335

land.lhs.true.330:                                ; preds = %lor.lhs.false.327, %if.then.324
  %209 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open331 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %209, i32 0, i32 9
  %210 = load i32, i32* %is_open331, align 4, !tbaa !74
  %tobool332 = icmp ne i32 %210, 0
  br i1 %tobool332, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %land.lhs.true.330
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call334 = call i32 @gs_closedevice(%struct.gx_device_s* %211) #9
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %land.lhs.true.330, %lor.lhs.false.327
  %212 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %leading_edge_set336 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %212, i32 0, i32 9
  store i32 1, i32* %leading_edge_set336, align 4, !tbaa !19
  %213 = load i32, i32* %temp, align 4, !tbaa !1
  %214 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %default_orientation337 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %214, i32 0, i32 8
  store i32 %213, i32* %default_orientation337, align 4, !tbaa !80
  br label %if.end.345

if.else.338:                                      ; preds = %land.lhs.true.321, %if.then.318
  %call339 = call i8* @gs_program_name() #9
  %call340 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call339, i64 %call340) #9
  %215 = load i8*, i8** %epref, align 8, !tbaa !5
  %216 = load i32, i32* %temp, align 4, !tbaa !1
  %call341 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.31, i32 0, i32 0), i8* %215, i32 %216) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %217 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs342 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %217, i32 0, i32 0
  %218 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs342, align 8, !tbaa !70
  %signal_error343 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %218, i32 0, i32 7
  %219 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error343, align 8, !tbaa !72
  %220 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %221 = load i8*, i8** %pname, align 8, !tbaa !5
  %222 = load i32, i32* %last_error, align 4, !tbaa !1
  %call344 = call i32 %219(%struct.gs_param_list_s* %220, i8* %221, i32 %222) #9
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.338, %if.end.335
  br label %if.end.351

if.else.346:                                      ; preds = %if.else.314
  %223 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp347 = icmp slt i32 %223, 0
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.else.346
  %224 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %224, i32* %last_error, align 4, !tbaa !1
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.else.346
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.end.345
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.then.313
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.305
  %225 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call354 = call i32 @param_read_null(%struct.gs_param_list_s* %225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0)) #9
  store i32 %call354, i32* %rc, align 4, !tbaa !1
  %cmp355 = icmp eq i32 %call354, 0
  br i1 %cmp355, label %if.then.357, label %if.else.367

if.then.357:                                      ; preds = %if.end.353
  %226 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %226, i32 0, i32 1
  %227 = load i8*, i8** %media_file, align 8, !tbaa !20
  %cmp358 = icmp ne i8* %227, null
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.365

land.lhs.true.360:                                ; preds = %if.then.357
  %228 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open361 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %228, i32 0, i32 9
  %229 = load i32, i32* %is_open361, align 4, !tbaa !74
  %tobool362 = icmp ne i32 %229, 0
  br i1 %tobool362, label %if.then.363, label %if.end.365

if.then.363:                                      ; preds = %land.lhs.true.360
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call364 = call i32 @gs_closedevice(%struct.gx_device_s* %230) #9
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.363, %land.lhs.true.360, %if.then.357
  %231 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %232 = bitcast %struct.gx_device_s* %231 to %struct.eprn_Device*
  %call366 = call i32 @eprn_set_media_data(%struct.eprn_Device* %232, i8* null, i64 0) #9
  store i32 %call366, i32* %rc, align 4, !tbaa !1
  br label %if.end.438

if.else.367:                                      ; preds = %if.end.353
  %233 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp368 = icmp slt i32 %233, 0
  br i1 %cmp368, label %land.lhs.true.370, label %if.else.374

land.lhs.true.370:                                ; preds = %if.else.367
  %234 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp371 = icmp ne i32 %234, -20
  br i1 %cmp371, label %if.then.373, label %if.else.374

if.then.373:                                      ; preds = %land.lhs.true.370
  %235 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %235, i32* %last_error, align 4, !tbaa !1
  br label %if.end.437

if.else.374:                                      ; preds = %land.lhs.true.370, %if.else.367
  %236 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %237 = load i8*, i8** %pname, align 8, !tbaa !5
  %call375 = call i32 @param_read_string(%struct.gs_param_list_s* %236, i8* %237, %struct.gs_param_string_s* %string_value) #9
  store i32 %call375, i32* %rc, align 4, !tbaa !1
  %cmp376 = icmp eq i32 %call375, 0
  br i1 %cmp376, label %if.then.378, label %if.else.431

if.then.378:                                      ; preds = %if.else.374
  %size379 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %238 = load i32, i32* %size379, align 4, !tbaa !12
  %cmp380 = icmp ugt i32 %238, 0
  br i1 %cmp380, label %if.then.382, label %if.else.412

if.then.382:                                      ; preds = %if.then.378
  %239 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file383 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %239, i32 0, i32 1
  %240 = load i8*, i8** %media_file383, align 8, !tbaa !20
  %cmp384 = icmp eq i8* %240, null
  br i1 %cmp384, label %land.lhs.true.402, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %if.then.382
  %241 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file387 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %241, i32 0, i32 1
  %242 = load i8*, i8** %media_file387, align 8, !tbaa !20
  %data388 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %243 = load i8*, i8** %data388, align 8, !tbaa !10
  %size389 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %244 = load i32, i32* %size389, align 4, !tbaa !12
  %conv390 = zext i32 %244 to i64
  %call391 = call i32 @strncmp(i8* %242, i8* %243, i64 %conv390) #7
  %cmp392 = icmp ne i32 %call391, 0
  br i1 %cmp392, label %land.lhs.true.402, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %lor.lhs.false.386
  %size395 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %245 = load i32, i32* %size395, align 4, !tbaa !12
  %idxprom396 = zext i32 %245 to i64
  %246 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file397 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %246, i32 0, i32 1
  %247 = load i8*, i8** %media_file397, align 8, !tbaa !20
  %arrayidx398 = getelementptr inbounds i8, i8* %247, i64 %idxprom396
  %248 = load i8, i8* %arrayidx398, align 1, !tbaa !14
  %conv399 = sext i8 %248 to i32
  %cmp400 = icmp ne i32 %conv399, 0
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.407

land.lhs.true.402:                                ; preds = %lor.lhs.false.394, %lor.lhs.false.386, %if.then.382
  %249 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open403 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %249, i32 0, i32 9
  %250 = load i32, i32* %is_open403, align 4, !tbaa !74
  %tobool404 = icmp ne i32 %250, 0
  br i1 %tobool404, label %if.then.405, label %if.end.407

if.then.405:                                      ; preds = %land.lhs.true.402
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call406 = call i32 @gs_closedevice(%struct.gx_device_s* %251) #9
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.405, %land.lhs.true.402, %lor.lhs.false.394
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %253 = bitcast %struct.gx_device_s* %252 to %struct.eprn_Device*
  %data408 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %254 = load i8*, i8** %data408, align 8, !tbaa !10
  %size409 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %255 = load i32, i32* %size409, align 4, !tbaa !12
  %conv410 = zext i32 %255 to i64
  %call411 = call i32 @eprn_set_media_data(%struct.eprn_Device* %253, i8* %254, i64 %conv410) #9
  store i32 %call411, i32* %rc, align 4, !tbaa !1
  br label %if.end.423

if.else.412:                                      ; preds = %if.then.378
  %256 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_file413 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %256, i32 0, i32 1
  %257 = load i8*, i8** %media_file413, align 8, !tbaa !20
  %cmp414 = icmp ne i8* %257, null
  br i1 %cmp414, label %land.lhs.true.416, label %if.end.421

land.lhs.true.416:                                ; preds = %if.else.412
  %258 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open417 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %258, i32 0, i32 9
  %259 = load i32, i32* %is_open417, align 4, !tbaa !74
  %tobool418 = icmp ne i32 %259, 0
  br i1 %tobool418, label %if.then.419, label %if.end.421

if.then.419:                                      ; preds = %land.lhs.true.416
  %260 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call420 = call i32 @gs_closedevice(%struct.gx_device_s* %260) #9
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.419, %land.lhs.true.416, %if.else.412
  %261 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %262 = bitcast %struct.gx_device_s* %261 to %struct.eprn_Device*
  %call422 = call i32 @eprn_set_media_data(%struct.eprn_Device* %262, i8* null, i64 0) #9
  store i32 %call422, i32* %rc, align 4, !tbaa !1
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.421, %if.end.407
  %263 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp424 = icmp ne i32 %263, 0
  br i1 %cmp424, label %if.then.426, label %if.end.430

if.then.426:                                      ; preds = %if.end.423
  %264 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %264, i32* %last_error, align 4, !tbaa !1
  %265 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs427 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %265, i32 0, i32 0
  %266 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs427, align 8, !tbaa !70
  %signal_error428 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %266, i32 0, i32 7
  %267 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error428, align 8, !tbaa !72
  %268 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %269 = load i8*, i8** %pname, align 8, !tbaa !5
  %270 = load i32, i32* %last_error, align 4, !tbaa !1
  %call429 = call i32 %267(%struct.gs_param_list_s* %268, i8* %269, i32 %270) #9
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.426, %if.end.423
  br label %if.end.436

if.else.431:                                      ; preds = %if.else.374
  %271 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp432 = icmp slt i32 %271, 0
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %if.else.431
  %272 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %272, i32* %last_error, align 4, !tbaa !1
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.434, %if.else.431
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %if.end.430
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %if.then.373
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %if.end.365
  %273 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call439 = call i32 @param_read_null(%struct.gs_param_list_s* %273, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #9
  store i32 %call439, i32* %rc, align 4, !tbaa !1
  %cmp440 = icmp eq i32 %call439, 0
  br i1 %cmp440, label %if.then.442, label %if.else.443

if.then.442:                                      ; preds = %if.end.438
  %274 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %274, i32 0, i32 21
  store i32 0, i32* %media_position_set, align 4, !tbaa !21
  br label %if.end.467

if.else.443:                                      ; preds = %if.end.438
  %275 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp444 = icmp slt i32 %275, 0
  br i1 %cmp444, label %land.lhs.true.446, label %if.else.461

land.lhs.true.446:                                ; preds = %if.else.443
  %276 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %277 = load i8*, i8** %pname, align 8, !tbaa !5
  %278 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %278, i32 0, i32 22
  %call447 = call i32 @param_read_int(%struct.gs_param_list_s* %276, i8* %277, i32* %media_position) #9
  store i32 %call447, i32* %rc, align 4, !tbaa !1
  %cmp448 = icmp eq i32 %call447, 0
  br i1 %cmp448, label %if.then.450, label %if.else.461

if.then.450:                                      ; preds = %land.lhs.true.446
  %279 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position451 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %279, i32 0, i32 22
  %280 = load i32, i32* %media_position451, align 4, !tbaa !81
  %cmp452 = icmp slt i32 %280, 0
  br i1 %cmp452, label %if.then.454, label %if.end.459

if.then.454:                                      ; preds = %if.then.450
  %call455 = call i8* @gs_program_name() #9
  %call456 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call455, i64 %call456) #9
  %281 = load i8*, i8** %wpref, align 8, !tbaa !5
  %282 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position457 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %282, i32 0, i32 22
  %283 = load i32, i32* %media_position457, align 4, !tbaa !81
  %284 = load i8*, i8** %wpref, align 8, !tbaa !5
  %call458 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.32, i32 0, i32 0), i8* %281, i32 %283, i8* %284) #9
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.454, %if.then.450
  %285 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %media_position_set460 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %285, i32 0, i32 21
  store i32 1, i32* %media_position_set460, align 4, !tbaa !21
  br label %if.end.466

if.else.461:                                      ; preds = %land.lhs.true.446, %if.else.443
  %286 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp462 = icmp slt i32 %286, 0
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.else.461
  %287 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %287, i32* %last_error, align 4, !tbaa !1
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %if.else.461
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.end.459
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.then.442
  %288 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call468 = call i32 @param_read_null(%struct.gs_param_list_s* %288, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #9
  store i32 %call468, i32* %rc, align 4, !tbaa !1
  %cmp469 = icmp eq i32 %call468, 0
  br i1 %cmp469, label %if.then.471, label %if.else.484

if.then.471:                                      ; preds = %if.end.467
  %289 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %289, i32 0, i32 18
  %290 = load i8*, i8** %pagecount_file, align 8, !tbaa !22
  %cmp472 = icmp ne i8* %290, null
  br i1 %cmp472, label %if.then.474, label %if.end.483

if.then.474:                                      ; preds = %if.then.471
  %291 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory475 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory475, align 8, !tbaa !69
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !42
  %non_gc_memory476 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %293, i32 0, i32 3
  %294 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory476, align 8, !tbaa !42
  %procs477 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %294, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs477, i32 0, i32 2
  %295 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !45
  %296 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory478 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %296, i32 0, i32 3
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory478, align 8, !tbaa !69
  %non_gc_memory479 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %297, i32 0, i32 3
  %298 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory479, align 8, !tbaa !42
  %non_gc_memory480 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %298, i32 0, i32 3
  %299 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory480, align 8, !tbaa !42
  %300 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file481 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %300, i32 0, i32 18
  %301 = load i8*, i8** %pagecount_file481, align 8, !tbaa !22
  call void %295(%struct.gs_memory_s* %299, i8* %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)) #9
  %302 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file482 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %302, i32 0, i32 18
  store i8* null, i8** %pagecount_file482, align 8, !tbaa !22
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.474, %if.then.471
  br label %if.end.549

if.else.484:                                      ; preds = %if.end.467
  %303 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp485 = icmp slt i32 %303, 0
  br i1 %cmp485, label %land.lhs.true.487, label %if.else.491

land.lhs.true.487:                                ; preds = %if.else.484
  %304 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp488 = icmp ne i32 %304, -20
  br i1 %cmp488, label %if.then.490, label %if.else.491

if.then.490:                                      ; preds = %land.lhs.true.487
  %305 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %305, i32* %last_error, align 4, !tbaa !1
  br label %if.end.548

if.else.491:                                      ; preds = %land.lhs.true.487, %if.else.484
  %306 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %307 = load i8*, i8** %pname, align 8, !tbaa !5
  %call492 = call i32 @param_read_string(%struct.gs_param_list_s* %306, i8* %307, %struct.gs_param_string_s* %string_value) #9
  store i32 %call492, i32* %rc, align 4, !tbaa !1
  %cmp493 = icmp eq i32 %call492, 0
  br i1 %cmp493, label %if.then.495, label %if.end.547

if.then.495:                                      ; preds = %if.else.491
  %308 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file496 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %308, i32 0, i32 18
  %309 = load i8*, i8** %pagecount_file496, align 8, !tbaa !22
  %cmp497 = icmp ne i8* %309, null
  br i1 %cmp497, label %if.then.499, label %if.end.510

if.then.499:                                      ; preds = %if.then.495
  %310 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory500 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %310, i32 0, i32 3
  %311 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory500, align 8, !tbaa !69
  %non_gc_memory501 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %311, i32 0, i32 3
  %312 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory501, align 8, !tbaa !42
  %non_gc_memory502 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %312, i32 0, i32 3
  %313 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory502, align 8, !tbaa !42
  %procs503 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %313, i32 0, i32 1
  %free_object504 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs503, i32 0, i32 2
  %314 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object504, align 8, !tbaa !45
  %315 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory505 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %315, i32 0, i32 3
  %316 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory505, align 8, !tbaa !69
  %non_gc_memory506 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %316, i32 0, i32 3
  %317 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory506, align 8, !tbaa !42
  %non_gc_memory507 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %317, i32 0, i32 3
  %318 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory507, align 8, !tbaa !42
  %319 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file508 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %319, i32 0, i32 18
  %320 = load i8*, i8** %pagecount_file508, align 8, !tbaa !22
  call void %314(%struct.gs_memory_s* %318, i8* %320, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)) #9
  %321 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file509 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %321, i32 0, i32 18
  store i8* null, i8** %pagecount_file509, align 8, !tbaa !22
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.499, %if.then.495
  %size511 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %322 = load i32, i32* %size511, align 4, !tbaa !12
  %cmp512 = icmp ugt i32 %322, 0
  br i1 %cmp512, label %if.then.514, label %if.end.546

if.then.514:                                      ; preds = %if.end.510
  %323 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory515 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %323, i32 0, i32 3
  %324 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory515, align 8, !tbaa !69
  %non_gc_memory516 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %324, i32 0, i32 3
  %325 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory516, align 8, !tbaa !42
  %non_gc_memory517 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %325, i32 0, i32 3
  %326 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory517, align 8, !tbaa !42
  %procs518 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %326, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs518, i32 0, i32 10
  %327 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !49
  %328 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory519 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %328, i32 0, i32 3
  %329 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory519, align 8, !tbaa !69
  %non_gc_memory520 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %329, i32 0, i32 3
  %330 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory520, align 8, !tbaa !42
  %non_gc_memory521 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %330, i32 0, i32 3
  %331 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory521, align 8, !tbaa !42
  %size522 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %332 = load i32, i32* %size522, align 4, !tbaa !12
  %add = add i32 %332, 1
  %call523 = call i8* %327(%struct.gs_memory_s* %331, i32 %add, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)) #9
  %333 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file524 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %333, i32 0, i32 18
  store i8* %call523, i8** %pagecount_file524, align 8, !tbaa !22
  %334 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file525 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %334, i32 0, i32 18
  %335 = load i8*, i8** %pagecount_file525, align 8, !tbaa !22
  %cmp526 = icmp eq i8* %335, null
  br i1 %cmp526, label %if.then.528, label %if.else.535

if.then.528:                                      ; preds = %if.then.514
  %call529 = call i8* @gs_program_name() #9
  %call530 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call529, i64 %call530) #9
  %336 = load i8*, i8** %epref, align 8, !tbaa !5
  %call531 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.34, i32 0, i32 0), i8* %336) #9
  store i32 -25, i32* %last_error, align 4, !tbaa !1
  %337 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs532 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %337, i32 0, i32 0
  %338 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs532, align 8, !tbaa !70
  %signal_error533 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %338, i32 0, i32 7
  %339 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error533, align 8, !tbaa !72
  %340 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %341 = load i8*, i8** %pname, align 8, !tbaa !5
  %342 = load i32, i32* %last_error, align 4, !tbaa !1
  %call534 = call i32 %339(%struct.gs_param_list_s* %340, i8* %341, i32 %342) #9
  br label %if.end.545

if.else.535:                                      ; preds = %if.then.514
  %343 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file536 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %343, i32 0, i32 18
  %344 = load i8*, i8** %pagecount_file536, align 8, !tbaa !22
  %data537 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 0
  %345 = load i8*, i8** %data537, align 8, !tbaa !10
  %size538 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %346 = load i32, i32* %size538, align 4, !tbaa !12
  %conv539 = zext i32 %346 to i64
  %call540 = call i8* @strncpy(i8* %344, i8* %345, i64 %conv539) #8
  %size541 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %string_value, i32 0, i32 1
  %347 = load i32, i32* %size541, align 4, !tbaa !12
  %idxprom542 = zext i32 %347 to i64
  %348 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %pagecount_file543 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %348, i32 0, i32 18
  %349 = load i8*, i8** %pagecount_file543, align 8, !tbaa !22
  %arrayidx544 = getelementptr inbounds i8, i8* %349, i64 %idxprom542
  store i8 0, i8* %arrayidx544, align 1, !tbaa !14
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.535, %if.then.528
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %if.end.510
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.else.491
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.then.490
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %if.end.483
  %350 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call550 = call i32 @param_read_int(%struct.gs_param_list_s* %350, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32* %temp) #9
  store i32 %call550, i32* %rc, align 4, !tbaa !1
  %cmp551 = icmp eq i32 %call550, 0
  br i1 %cmp551, label %if.then.553, label %if.else.581

if.then.553:                                      ; preds = %if.end.549
  %351 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp554 = icmp eq i32 %351, 0
  br i1 %cmp554, label %if.then.562, label %lor.lhs.false.556

lor.lhs.false.556:                                ; preds = %if.then.553
  %352 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp557 = icmp sle i32 2, %352
  br i1 %cmp557, label %land.lhs.true.559, label %if.else.573

land.lhs.true.559:                                ; preds = %lor.lhs.false.556
  %353 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp560 = icmp sle i32 %353, 256
  br i1 %cmp560, label %if.then.562, label %if.else.573

if.then.562:                                      ; preds = %land.lhs.true.559, %if.then.553
  %354 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels563 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %354, i32 0, i32 16
  %355 = load i32, i32* %non_black_levels563, align 4, !tbaa !78
  %356 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp564 = icmp ne i32 %355, %356
  br i1 %cmp564, label %land.lhs.true.566, label %if.end.571

land.lhs.true.566:                                ; preds = %if.then.562
  %357 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open567 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %357, i32 0, i32 9
  %358 = load i32, i32* %is_open567, align 4, !tbaa !74
  %tobool568 = icmp ne i32 %358, 0
  br i1 %tobool568, label %if.then.569, label %if.end.571

if.then.569:                                      ; preds = %land.lhs.true.566
  %359 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call570 = call i32 @gs_closedevice(%struct.gx_device_s* %359) #9
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.569, %land.lhs.true.566, %if.then.562
  %360 = load i32, i32* %temp, align 4, !tbaa !1
  %361 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels572 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %361, i32 0, i32 16
  store i32 %360, i32* %non_black_levels572, align 4, !tbaa !78
  br label %if.end.580

if.else.573:                                      ; preds = %land.lhs.true.559, %lor.lhs.false.556
  %call574 = call i8* @gs_program_name() #9
  %call575 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call574, i64 %call575) #9
  %362 = load i8*, i8** %epref, align 8, !tbaa !5
  %363 = load i32, i32* %temp, align 4, !tbaa !1
  %call576 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.35, i32 0, i32 0), i8* %362, i32 %363) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %364 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs577 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %364, i32 0, i32 0
  %365 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs577, align 8, !tbaa !70
  %signal_error578 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %365, i32 0, i32 7
  %366 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error578, align 8, !tbaa !72
  %367 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %368 = load i8*, i8** %pname, align 8, !tbaa !5
  %369 = load i32, i32* %last_error, align 4, !tbaa !1
  %call579 = call i32 %366(%struct.gs_param_list_s* %367, i8* %368, i32 %369) #9
  br label %if.end.580

if.end.580:                                       ; preds = %if.else.573, %if.end.571
  br label %if.end.586

if.else.581:                                      ; preds = %if.end.549
  %370 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp582 = icmp slt i32 %370, 0
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %if.else.581
  %371 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %371, i32* %last_error, align 4, !tbaa !1
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.584, %if.else.581
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %if.end.580
  %372 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %373 = bitcast %struct.gx_device_s* %372 to %struct.eprn_Device*
  call void @set_derived_colour_data(%struct.eprn_Device* %373) #9
  %374 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8** %pname, align 8, !tbaa !5
  %call587 = call i32 @param_read_int(%struct.gs_param_list_s* %374, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32* %temp) #9
  store i32 %call587, i32* %rc, align 4, !tbaa !1
  %cmp588 = icmp eq i32 %call587, 0
  br i1 %cmp588, label %if.then.590, label %if.else.603

if.then.590:                                      ; preds = %if.end.586
  %375 = load i32, i32* %temp, align 4, !tbaa !1
  %376 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info591 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %376, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info591, i32 0, i32 3
  %377 = load i16, i16* %depth, align 2, !tbaa !82
  %conv592 = zext i16 %377 to i32
  %cmp593 = icmp ne i32 %375, %conv592
  br i1 %cmp593, label %if.then.595, label %if.end.602

if.then.595:                                      ; preds = %if.then.590
  %call596 = call i8* @gs_program_name() #9
  %call597 = call i64 @gs_revision_number() #9
  call void @eprintf_program_ident(i8* %call596, i64 %call597) #9
  %378 = load i8*, i8** %epref, align 8, !tbaa !5
  %379 = load i32, i32* %temp, align 4, !tbaa !1
  %380 = load i8*, i8** %epref, align 8, !tbaa !5
  %call598 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.37, i32 0, i32 0), i8* %378, i32 %379, i8* %380) #9
  store i32 -15, i32* %last_error, align 4, !tbaa !1
  %381 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %procs599 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %381, i32 0, i32 0
  %382 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs599, align 8, !tbaa !70
  %signal_error600 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %382, i32 0, i32 7
  %383 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error600, align 8, !tbaa !72
  %384 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %385 = load i8*, i8** %pname, align 8, !tbaa !5
  %386 = load i32, i32* %last_error, align 4, !tbaa !1
  %call601 = call i32 %383(%struct.gs_param_list_s* %384, i8* %385, i32 %386) #9
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.595, %if.then.590
  br label %if.end.608

if.else.603:                                      ; preds = %if.end.586
  %387 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp604 = icmp slt i32 %387, 0
  br i1 %cmp604, label %if.then.606, label %if.end.607

if.then.606:                                      ; preds = %if.else.603
  %388 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %388, i32* %last_error, align 4, !tbaa !1
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.606, %if.else.603
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.end.602
  %389 = bitcast %struct.gs_param_typed_value_s* %temp609 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %389) #2
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %temp609, i32 0, i32 1
  store i32 -1, i32* %type, align 4, !tbaa !83
  %390 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call610 = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %390, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %struct.gs_param_typed_value_s* %temp609) #9
  %cmp611 = icmp eq i32 %call610, 0
  br i1 %cmp611, label %if.then.613, label %if.end.614

if.then.613:                                      ; preds = %if.end.608
  %391 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %keep_margins = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %391, i32 0, i32 12
  store i32 1, i32* %keep_margins, align 4, !tbaa !85
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.613, %if.end.608
  %392 = bitcast %struct.gs_param_typed_value_s* %temp609 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %392) #2
  %393 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %394 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %call615 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %393, %struct.gs_param_list_s* %394) #9
  store i32 %call615, i32* %rc, align 4, !tbaa !1
  %cmp616 = icmp slt i32 %call615, 0
  br i1 %cmp616, label %if.then.624, label %lor.lhs.false.618

lor.lhs.false.618:                                ; preds = %if.end.614
  %395 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp619 = icmp sgt i32 %395, 0
  br i1 %cmp619, label %land.lhs.true.621, label %if.end.625

land.lhs.true.621:                                ; preds = %lor.lhs.false.618
  %396 = load i32, i32* %last_error, align 4, !tbaa !1
  %cmp622 = icmp sge i32 %396, 0
  br i1 %cmp622, label %if.then.624, label %if.end.625

if.then.624:                                      ; preds = %land.lhs.true.621, %if.end.614
  %397 = load i32, i32* %rc, align 4, !tbaa !1
  store i32 %397, i32* %last_error, align 4, !tbaa !1
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.624, %land.lhs.true.621, %lor.lhs.false.618
  %398 = load i32, i32* %last_error, align 4, !tbaa !1
  %cmp626 = icmp slt i32 %398, 0
  br i1 %cmp626, label %if.then.628, label %if.end.629

if.then.628:                                      ; preds = %if.end.625
  %399 = load i32, i32* %last_error, align 4, !tbaa !1
  store i32 %399, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.629:                                       ; preds = %if.end.625
  %400 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %is_open630 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %400, i32 0, i32 9
  %401 = load i32, i32* %is_open630, align 4, !tbaa !74
  %tobool631 = icmp ne i32 %401, 0
  br i1 %tobool631, label %land.lhs.true.632, label %if.end.654

land.lhs.true.632:                                ; preds = %if.end.629
  %402 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width633 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %402, i32 0, i32 13
  %403 = load i32, i32* %width633, align 4, !tbaa !68
  %404 = load i32, i32* %width, align 4, !tbaa !1
  %cmp634 = icmp ne i32 %403, %404
  br i1 %cmp634, label %if.then.652, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %land.lhs.true.632
  %405 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %height637 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %405, i32 0, i32 14
  %406 = load i32, i32* %height637, align 4, !tbaa !66
  %407 = load i32, i32* %height, align 4, !tbaa !1
  %cmp638 = icmp ne i32 %406, %407
  br i1 %cmp638, label %if.then.652, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %lor.lhs.false.636
  %arrayidx641 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 0
  %408 = load float, float* %arrayidx641, align 4, !tbaa !50
  %409 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %MediaSize642 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %409, i32 0, i32 19
  %arrayidx643 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize642, i32 0, i64 0
  %410 = load float, float* %arrayidx643, align 4, !tbaa !50
  %cmp644 = fcmp une float %408, %410
  br i1 %cmp644, label %if.then.652, label %lor.lhs.false.646

lor.lhs.false.646:                                ; preds = %lor.lhs.false.640
  %arrayidx647 = getelementptr inbounds [2 x float], [2 x float]* %mediasize, i32 0, i64 1
  %411 = load float, float* %arrayidx647, align 4, !tbaa !50
  %412 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %MediaSize648 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %412, i32 0, i32 19
  %arrayidx649 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize648, i32 0, i64 1
  %413 = load float, float* %arrayidx649, align 4, !tbaa !50
  %cmp650 = fcmp une float %411, %413
  br i1 %cmp650, label %if.then.652, label %if.end.654

if.then.652:                                      ; preds = %lor.lhs.false.646, %lor.lhs.false.640, %lor.lhs.false.636, %land.lhs.true.632
  %414 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call653 = call i32 @gs_closedevice(%struct.gx_device_s* %414) #9
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.652, %lor.lhs.false.646, %if.end.629
  %415 = load i32, i32* %last_error, align 4, !tbaa !1
  store i32 %415, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.654, %if.then.628
  %416 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #2
  %417 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #2
  %418 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #2
  %419 = bitcast i32* %last_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #2
  %420 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #2
  %421 = bitcast [2 x float]* %mediasize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #2
  %422 = bitcast i8** %wpref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #2
  %423 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #2
  %424 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #2
  %425 = bitcast %struct.gs_param_string_s* %string_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %425) #2
  %426 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #2
  %427 = bitcast i32* %colour_mode_given_and_valid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #2
  %428 = load i32, i32* %retval
  ret i32 %428
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #4

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #4

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #4

declare i32 @gs_closedevice(%struct.gx_device_s*) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #4

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_derived_colour_data(%struct.eprn_Device* %dev) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %levels = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %1, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %2 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %3, i32 0, i32 17
  %4 = load i32, i32* %intensity_rendering, align 4, !tbaa !18
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 256, i32* %levels, align 4, !tbaa !1
  br label %if.end.7

if.else:                                          ; preds = %entry
  %5 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %5, i32 0, i32 15
  %6 = load i32, i32* %black_levels, align 4, !tbaa !77
  %7 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %7, i32 0, i32 16
  %8 = load i32, i32* %non_black_levels, align 4, !tbaa !78
  %cmp2 = icmp uge i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %9 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels4 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %9, i32 0, i32 15
  %10 = load i32, i32* %black_levels4, align 4, !tbaa !77
  store i32 %10, i32* %levels, align 4, !tbaa !1
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %11 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels6 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %11, i32 0, i32 16
  %12 = load i32, i32* %non_black_levels6, align 4, !tbaa !78
  store i32 %12, i32* %levels, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %levels, align 4, !tbaa !1
  %call = call i32 @eprn_bits_for_levels(i32 %13) #9
  %14 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %14, i32 0, i32 23
  store i32 %call, i32* %bits_per_colorant, align 4, !tbaa !86
  %15 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %15, i32 0, i32 16
  %16 = load i32, i32* %non_black_levels8, align 4, !tbaa !78
  %cmp9 = icmp eq i32 %16, 0
  %cond = select i1 %cmp9, i32 1, i32 4
  %17 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %bits_per_colorant10 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %17, i32 0, i32 23
  %18 = load i32, i32* %bits_per_colorant10, align 4, !tbaa !86
  %mul = mul i32 %cond, %18
  %conv = trunc i32 %mul to i16
  %19 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %19, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !87
  %20 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info11 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %20, i32 0, i32 11
  %depth12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %21 = load i16, i16* %depth12, align 2, !tbaa !87
  %conv13 = zext i16 %21 to i32
  %cmp14 = icmp sgt i32 %conv13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.44

if.then.16:                                       ; preds = %if.end.7
  %22 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info17 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %22, i32 0, i32 11
  %depth18 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 3
  %23 = load i16, i16* %depth18, align 2, !tbaa !87
  %conv19 = zext i16 %23 to i32
  %cmp20 = icmp sle i32 %conv19, 4
  br i1 %cmp20, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.16
  %24 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info23 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %24, i32 0, i32 11
  %depth24 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info23, i32 0, i32 3
  store i16 4, i16* %depth24, align 2, !tbaa !87
  br label %if.end.43

if.else.25:                                       ; preds = %if.then.16
  %25 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info26 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %25, i32 0, i32 11
  %depth27 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info26, i32 0, i32 3
  %26 = load i16, i16* %depth27, align 2, !tbaa !87
  %conv28 = zext i16 %26 to i32
  %cmp29 = icmp sle i32 %conv28, 8
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.25
  %27 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info32 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %27, i32 0, i32 11
  %depth33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 3
  store i16 8, i16* %depth33, align 2, !tbaa !87
  br label %if.end.42

if.else.34:                                       ; preds = %if.else.25
  %28 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info35 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %28, i32 0, i32 11
  %depth36 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 3
  %29 = load i16, i16* %depth36, align 2, !tbaa !87
  %conv37 = zext i16 %29 to i32
  %add = add nsw i32 %conv37, 7
  %div = sdiv i32 %add, 8
  %mul38 = mul nsw i32 %div, 8
  %conv39 = trunc i32 %mul38 to i16
  %30 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info40 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %30, i32 0, i32 11
  %depth41 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info40, i32 0, i32 3
  store i16 %conv39, i16* %depth41, align 2, !tbaa !87
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.34, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.22
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.7
  %31 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %intensity_rendering45 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %31, i32 0, i32 17
  %32 = load i32, i32* %intensity_rendering45, align 4, !tbaa !18
  %cmp46 = icmp ne i32 %32, 1
  br i1 %cmp46, label %if.then.48, label %if.else.72

if.then.48:                                       ; preds = %if.end.44
  %33 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels49 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %33, i32 0, i32 16
  %34 = load i32, i32* %non_black_levels49, align 4, !tbaa !78
  %cmp50 = icmp ugt i32 %34, 0
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.then.48
  %35 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info53 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %35, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info53, i32 0, i32 6
  store i32 255, i32* %max_color, align 4, !tbaa !88
  br label %if.end.57

if.else.54:                                       ; preds = %if.then.48
  %36 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info55 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %36, i32 0, i32 11
  %max_color56 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info55, i32 0, i32 6
  store i32 0, i32* %max_color56, align 4, !tbaa !88
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.52
  %37 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info58 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %37, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info58, i32 0, i32 5
  store i32 255, i32* %max_gray, align 4, !tbaa !89
  %38 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info59 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %38, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info59, i32 0, i32 7
  store i32 256, i32* %dither_grays, align 4, !tbaa !90
  %39 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info60 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %39, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info60, i32 0, i32 1
  %40 = load i32, i32* %num_components, align 4, !tbaa !91
  %cmp61 = icmp eq i32 %40, 1
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.57
  %41 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info64 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %41, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info64, i32 0, i32 8
  store i32 0, i32* %dither_colors, align 4, !tbaa !92
  br label %if.end.71

if.else.65:                                       ; preds = %if.end.57
  %42 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info66 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %42, i32 0, i32 11
  %max_color67 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info66, i32 0, i32 6
  %43 = load i32, i32* %max_color67, align 4, !tbaa !88
  %add68 = add i32 %43, 1
  %44 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info69 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %44, i32 0, i32 11
  %dither_colors70 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info69, i32 0, i32 8
  store i32 %add68, i32* %dither_colors70, align 4, !tbaa !92
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.121

if.else.72:                                       ; preds = %if.end.44
  %45 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels73 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %45, i32 0, i32 16
  %46 = load i32, i32* %non_black_levels73, align 4, !tbaa !78
  %cmp74 = icmp ugt i32 %46, 0
  br i1 %cmp74, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %if.else.72
  %47 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels77 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %47, i32 0, i32 16
  %48 = load i32, i32* %non_black_levels77, align 4, !tbaa !78
  %sub = sub i32 %48, 1
  %49 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info78 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %49, i32 0, i32 11
  %max_color79 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info78, i32 0, i32 6
  store i32 %sub, i32* %max_color79, align 4, !tbaa !88
  br label %if.end.83

if.else.80:                                       ; preds = %if.else.72
  %50 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info81 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %50, i32 0, i32 11
  %max_color82 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info81, i32 0, i32 6
  store i32 0, i32* %max_color82, align 4, !tbaa !88
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.76
  %51 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels84 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %51, i32 0, i32 15
  %52 = load i32, i32* %black_levels84, align 4, !tbaa !77
  %cmp85 = icmp ugt i32 %52, 0
  br i1 %cmp85, label %if.then.87, label %if.else.92

if.then.87:                                       ; preds = %if.end.83
  %53 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels88 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %53, i32 0, i32 15
  %54 = load i32, i32* %black_levels88, align 4, !tbaa !77
  %sub89 = sub i32 %54, 1
  %55 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info90 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %55, i32 0, i32 11
  %max_gray91 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info90, i32 0, i32 5
  store i32 %sub89, i32* %max_gray91, align 4, !tbaa !89
  br label %if.end.97

if.else.92:                                       ; preds = %if.end.83
  %56 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info93 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %56, i32 0, i32 11
  %max_color94 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info93, i32 0, i32 6
  %57 = load i32, i32* %max_color94, align 4, !tbaa !88
  %58 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info95 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %58, i32 0, i32 11
  %max_gray96 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info95, i32 0, i32 5
  store i32 %57, i32* %max_gray96, align 4, !tbaa !89
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.92, %if.then.87
  %59 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels98 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %59, i32 0, i32 15
  %60 = load i32, i32* %black_levels98, align 4, !tbaa !77
  %cmp99 = icmp ugt i32 %60, 0
  br i1 %cmp99, label %if.then.101, label %if.else.105

if.then.101:                                      ; preds = %if.end.97
  %61 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %black_levels102 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %61, i32 0, i32 15
  %62 = load i32, i32* %black_levels102, align 4, !tbaa !77
  %63 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info103 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %63, i32 0, i32 11
  %dither_grays104 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info103, i32 0, i32 7
  store i32 %62, i32* %dither_grays104, align 4, !tbaa !90
  br label %if.end.109

if.else.105:                                      ; preds = %if.end.97
  %64 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels106 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %64, i32 0, i32 16
  %65 = load i32, i32* %non_black_levels106, align 4, !tbaa !78
  %66 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info107 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %66, i32 0, i32 11
  %dither_grays108 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info107, i32 0, i32 7
  store i32 %65, i32* %dither_grays108, align 4, !tbaa !90
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.101
  %67 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels110 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %67, i32 0, i32 16
  %68 = load i32, i32* %non_black_levels110, align 4, !tbaa !78
  %cmp111 = icmp ugt i32 %68, 0
  br i1 %cmp111, label %if.then.113, label %if.else.117

if.then.113:                                      ; preds = %if.end.109
  %69 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !5
  %non_black_levels114 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %69, i32 0, i32 16
  %70 = load i32, i32* %non_black_levels114, align 4, !tbaa !78
  %71 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info115 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %71, i32 0, i32 11
  %dither_colors116 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info115, i32 0, i32 8
  store i32 %70, i32* %dither_colors116, align 4, !tbaa !92
  br label %if.end.120

if.else.117:                                      ; preds = %if.end.109
  %72 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !5
  %color_info118 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %72, i32 0, i32 11
  %dither_colors119 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info118, i32 0, i32 8
  store i32 0, i32* %dither_colors119, align 4, !tbaa !92
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.113
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.71
  %73 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  ret void
}

declare i32 @param_read_requested_typed(%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*) #4

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #4

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @fgetc(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

declare i8* @__rawmemchr(i8*, i32) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define internal i32 @is_word(i8* %s, i8* %word) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %word.addr = alloca i8*, align 8
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  store i8* %word, i8** %word.addr, align 8, !tbaa !5
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %word.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %1) #7
  store i64 %call, i64* %l, align 8, !tbaa !23
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %3 = load i8*, i8** %word.addr, align 8, !tbaa !5
  %4 = load i64, i64* %l, align 8, !tbaa !23
  %call1 = call i32 @strncmp(i8* %2, i8* %3, i64 %4) #7
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %l, align 8, !tbaa !23
  %6 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %8 = load i64, i64* %l, align 8, !tbaa !23
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !14
  %conv5 = sext i8 %10 to i32
  %idxprom = sext i32 %conv5 to i64
  %call6 = call i16** @__ctype_b_loc() #10
  %11 = load i16*, i16** %call6, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx7, align 2, !tbaa !51
  %conv8 = zext i16 %12 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %13 = phi i1 [ true, %if.end ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then
  %14 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i8* @next_word(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %1 = load i8, i8* %0, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !14
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #10
  %4 = load i16*, i16** %call, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !51
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.17, %while.end
  %8 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %9 = load i8, i8* %8, align 1, !tbaa !14
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %land.rhs.8, label %land.end.16

land.rhs.8:                                       ; preds = %while.cond.4
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !14
  %conv9 = sext i8 %11 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %call11 = call i16** @__ctype_b_loc() #10
  %12 = load i16*, i16** %call11, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i16, i16* %12, i64 %idxprom10
  %13 = load i16, i16* %arrayidx12, align 2, !tbaa !51
  %conv13 = zext i16 %13 to i32
  %and14 = and i32 %conv13, 8192
  %tobool15 = icmp ne i32 %and14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.8, %while.cond.4
  %14 = phi i1 [ false, %while.cond.4 ], [ %tobool15, %land.rhs.8 ]
  br i1 %14, label %while.body.17, label %while.end.19

while.body.17:                                    ; preds = %land.end.16
  %15 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %s.addr, align 8, !tbaa !5
  br label %while.cond.4

while.end.19:                                     ; preds = %land.end.16
  %16 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %17 = load i8, i8* %16, align 1, !tbaa !14
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.19
  br label %cond.end

cond.false:                                       ; preds = %while.end.19
  %18 = load i8*, i8** %s.addr, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %18, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare i32 @ms_find_code_from_name(i8*, %struct.ms_Flag*) #4

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @res_supported(%struct.eprn_Resolution* %list, float %hres, float %vres) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.eprn_Resolution*, align 8
  %hres.addr = alloca float, align 4
  %vres.addr = alloca float, align 4
  store %struct.eprn_Resolution* %list, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  store float %hres, float* %hres.addr, align 4, !tbaa !50
  store float %vres, float* %vres.addr, align 4, !tbaa !50
  %0 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %cmp = icmp eq %struct.eprn_Resolution* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %h = getelementptr inbounds %struct.eprn_Resolution, %struct.eprn_Resolution* %1, i32 0, i32 0
  %2 = load float, float* %h, align 4, !tbaa !93
  %conv = fpext float %2 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %h3 = getelementptr inbounds %struct.eprn_Resolution, %struct.eprn_Resolution* %3, i32 0, i32 0
  %4 = load float, float* %h3, align 4, !tbaa !93
  %5 = load float, float* %hres.addr, align 4, !tbaa !50
  %cmp4 = fcmp une float %4, %5
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %v = getelementptr inbounds %struct.eprn_Resolution, %struct.eprn_Resolution* %6, i32 0, i32 1
  %7 = load float, float* %v, align 4, !tbaa !95
  %8 = load float, float* %vres.addr, align 4, !tbaa !50
  %cmp6 = fcmp une float %7, %8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %9, %lor.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.eprn_Resolution, %struct.eprn_Resolution* %11, i32 1
  store %struct.eprn_Resolution* %incdec.ptr, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.eprn_Resolution*, %struct.eprn_Resolution** %list.addr, align 8, !tbaa !5
  %h8 = getelementptr inbounds %struct.eprn_Resolution, %struct.eprn_Resolution* %12, i32 0, i32 0
  %13 = load float, float* %h8, align 4, !tbaa !93
  %conv9 = fpext float %13 to double
  %cmp10 = fcmp ogt double %conv9, 0.000000e+00
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @levels_supported(%struct.eprn_IntensityLevels* %list, i32 %levels) #0 {
entry:
  %list.addr = alloca %struct.eprn_IntensityLevels*, align 8
  %levels.addr = alloca i32, align 4
  store %struct.eprn_IntensityLevels* %list, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  %from = getelementptr inbounds %struct.eprn_IntensityLevels, %struct.eprn_IntensityLevels* %0, i32 0, i32 0
  %1 = load i16, i16* %from, align 2, !tbaa !96
  %conv = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %3 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  %from2 = getelementptr inbounds %struct.eprn_IntensityLevels, %struct.eprn_IntensityLevels* %3, i32 0, i32 0
  %4 = load i16, i16* %from2, align 2, !tbaa !96
  %conv3 = zext i16 %4 to i32
  %cmp4 = icmp ult i32 %2, %conv3
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  %to = getelementptr inbounds %struct.eprn_IntensityLevels, %struct.eprn_IntensityLevels* %5, i32 0, i32 1
  %6 = load i16, i16* %to, align 2, !tbaa !98
  %conv6 = zext i16 %6 to i32
  %7 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %cmp7 = icmp ult i32 %conv6, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.eprn_IntensityLevels, %struct.eprn_IntensityLevels* %10, i32 1
  store %struct.eprn_IntensityLevels* %incdec.ptr, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.eprn_IntensityLevels*, %struct.eprn_IntensityLevels** %list.addr, align 8, !tbaa !5
  %from9 = getelementptr inbounds %struct.eprn_IntensityLevels, %struct.eprn_IntensityLevels* %11, i32 0, i32 0
  %12 = load i16, i16* %from9, align 2, !tbaa !96
  %conv10 = zext i16 %12 to i32
  %cmp11 = icmp sgt i32 %conv10, 0
  %conv12 = zext i1 %cmp11 to i32
  ret i32 %conv12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readnone }
attributes #11 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"", !6, i64 0, !2, i64 8}
!9 = !{!8, !2, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"gs_param_string_s", !6, i64 0, !2, i64 8, !2, i64 12}
!12 = !{!11, !2, i64 8}
!13 = !{!11, !2, i64 12}
!14 = !{!3, !3, i64 0}
!15 = !{!16, !3, i64 84}
!16 = !{!"s_eprn_Device", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !2, i64 32, !6, i64 40, !6, i64 48, !2, i64 56, !2, i64 60, !2, i64 64, !17, i64 68, !17, i64 72, !2, i64 76, !2, i64 80, !3, i64 84, !2, i64 88, !2, i64 92, !3, i64 96, !6, i64 104, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !2, i64 128, !8, i64 136, !8, i64 152, !2, i64 168, !2, i64 172, !2, i64 176}
!17 = !{!"float", !3, i64 0}
!18 = !{!16, !3, i64 96}
!19 = !{!16, !2, i64 64}
!20 = !{!16, !6, i64 8}
!21 = !{!16, !2, i64 120}
!22 = !{!16, !6, i64 104}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !3, i64 0}
!25 = !{!16, !2, i64 116}
!26 = !{!16, !2, i64 56}
!27 = !{!28, !6, i64 24}
!28 = !{!"", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !29, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !30, i64 96, !33, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !24, i64 928, !24, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !24, i64 968, !24, i64 976, !34, i64 984, !2, i64 1052, !2, i64 1056, !35, i64 1064, !6, i64 1104, !3, i64 1112, !37, i64 1120, !38, i64 1144, !3, i64 1728, !39, i64 12968, !3, i64 13056, !2, i64 17152, !2, i64 17156, !2, i64 17160, !2, i64 17164, !2, i64 17168, !2, i64 17172, !6, i64 17176, !24, i64 17184, !6, i64 17192, !6, i64 17200, !6, i64 17208, !6, i64 17216, !6, i64 17224, !2, i64 17232, !6, i64 17240, !2, i64 17248, !2, i64 17252, !41, i64 17256, !2, i64 17288, !6, i64 17296, !38, i64 17304, !38, i64 17888, !16, i64 18472}
!29 = !{!"rc_header_s", !24, i64 0, !6, i64 8, !6, i64 16}
!30 = !{!"gx_device_color_info_s", !2, i64 0, !2, i64 4, !3, i64 8, !31, i64 12, !3, i64 14, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !32, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !6, i64 688, !3, i64 696, !24, i64 704, !2, i64 712}
!31 = !{!"short", !3, i64 0}
!32 = !{!"gx_device_anti_alias_info_s", !2, i64 0, !2, i64 4}
!33 = !{!"gx_device_cached_colors_s", !24, i64 0, !24, i64 8}
!34 = !{!"gx_stroked_gradient_recognizer_s", !2, i64 0, !3, i64 4, !3, i64 36}
!35 = !{!"gdev_space_params_s", !24, i64 0, !24, i64 8, !36, i64 16, !2, i64 32, !3, i64 36}
!36 = !{!"gx_band_params_s", !2, i64 0, !2, i64 4, !24, i64 8}
!37 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!38 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576}
!39 = !{!"gx_printer_device_procs_s", !6, i64 0, !6, i64 8, !40, i64 16, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80}
!40 = !{!"gx_device_buf_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!41 = !{!"bg_print_s", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !2, i64 28}
!42 = !{!43, !6, i64 200}
!43 = !{!"gs_memory_s", !6, i64 0, !44, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!44 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!45 = !{!43, !6, i64 24}
!46 = !{!16, !6, i64 16}
!47 = !{!48, !2, i64 0}
!48 = !{!"", !2, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16}
!49 = !{!43, !6, i64 88}
!50 = !{!17, !17, i64 0}
!51 = !{!31, !31, i64 0}
!52 = !{!16, !6, i64 24}
!53 = !{!48, !17, i64 4}
!54 = !{!48, !17, i64 8}
!55 = !{!48, !17, i64 12}
!56 = !{!48, !17, i64 16}
!57 = !{!16, !6, i64 0}
!58 = !{!59, !6, i64 16}
!59 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !6, i64 32}
!60 = !{!59, !6, i64 0}
!61 = !{!62, !3, i64 0}
!62 = !{!"", !3, i64 0, !3, i64 8}
!63 = !{!64, !6, i64 8}
!64 = !{!"", !6, i64 0, !6, i64 8}
!65 = !{!64, !6, i64 0}
!66 = !{!67, !2, i64 836}
!67 = !{!"gx_device_s", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !29, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !30, i64 96, !33, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !24, i64 928, !24, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !24, i64 968, !24, i64 976, !34, i64 984, !2, i64 1052, !2, i64 1056, !35, i64 1064, !6, i64 1104, !3, i64 1112, !37, i64 1120, !38, i64 1144}
!68 = !{!67, !2, i64 832}
!69 = !{!67, !6, i64 24}
!70 = !{!71, !6, i64 0}
!71 = !{!"gs_param_list_s", !6, i64 0, !6, i64 8, !2, i64 16}
!72 = !{!73, !6, i64 56}
!73 = !{!"gs_param_list_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!74 = !{!67, !2, i64 84}
!75 = !{!67, !2, i64 100}
!76 = !{!67, !3, i64 104}
!77 = !{!16, !2, i64 88}
!78 = !{!16, !2, i64 92}
!79 = !{!16, !2, i64 112}
!80 = !{!16, !2, i64 60}
!81 = !{!16, !2, i64 124}
!82 = !{!67, !31, i64 108}
!83 = !{!84, !3, i64 16}
!84 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!85 = !{!16, !2, i64 76}
!86 = !{!16, !2, i64 128}
!87 = !{!28, !31, i64 108}
!88 = !{!28, !2, i64 116}
!89 = !{!28, !2, i64 112}
!90 = !{!28, !2, i64 120}
!91 = !{!28, !2, i64 100}
!92 = !{!28, !2, i64 124}
!93 = !{!94, !17, i64 0}
!94 = !{!"", !17, i64 0, !17, i64 4}
!95 = !{!94, !17, i64 4}
!96 = !{!97, !31, i64 0}
!97 = !{!"", !31, i64 0, !31, i64 2}
!98 = !{!97, !31, i64 2}
