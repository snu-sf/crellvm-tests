; ModuleID = './gdevifno.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.Point = type { i32, i32 }
%struct.WImage = type { %struct._IO_FILE*, %struct.Rectangle, %struct.Rectangle, i32, [6000 x i8], i8*, i8*, i8*, i8*, i8*, i32, i32, i64, %struct.Dump, [512 x %struct.Hlist], [1024 x %struct.Hlist], %struct.Hlist*, i32, i32 }
%struct.Rectangle = type { %struct.Point, %struct.Point }
%struct.Dump = type { i32, i8*, [129 x i8] }
%struct.Hlist = type { i64, %struct.Hlist*, %struct.Hlist* }
%struct.inferno_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i64* }

@inferno_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @inferno_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @inferno_close, i64 (%struct.gx_device_s*, i16*)* @inferno_rgb2cmap, i32 (%struct.gx_device_s*, i64, i16*)* @inferno_cmap2rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"inferno\00", align 1
@st_inferno_device = internal constant %struct.gs_memory_struct_type_s { i32 18504, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @inferno_device_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_inferno_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i64* } { i32 18504, %struct.gx_device_procs_s* @inferno_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_inferno_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 16, i8 -1, i32 255, i32 255, i32 0, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 850, i32 1100, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @inferno_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i64* null }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"plan 9 colour cube\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"inferno_device\00", align 1
@inferno_device_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_device_printer, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @inferno_device_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@inferno_device_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 18496 }], align 2
@inferno_print_page.ppb = private unnamed_addr constant [4 x i32] [i32 8, i32 4, i32 2, i32 1], align 16
@inferno_print_page.bpp = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@.str.4 = private unnamed_addr constant [33 x i8] c"bitmap far too wide for inferno\0A\00", align 1
@ZP = internal constant %struct.Point zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"initwriteimage failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"inferno line buffer\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"couldn't allocate line buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"bad rectangle, ldepth\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"inferno image\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"compressed\0A%11d %11d %11d %11d %11d \00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"not enough data supplied to writeimage\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"data != edata.  uh oh\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"buffer too small for line\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%11d %11d \00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @inferno_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %f) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %w = alloca %struct.WImage*, align 8
  %bpl = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %xmod = alloca i32, align 4
  %ldepth = alloca i32, align 4
  %ppb = alloca [4 x i32], align 16
  %bpp = alloca [4 x i32], align 16
  %gsbpl = alloca i32, align 4
  %u = alloca i64, align 8
  %us = alloca i16, align 2
  %bdev = alloca %struct.inferno_device_s*, align 8
  %r = alloca %struct.Rectangle, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.WImage** %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %xmod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %ldepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast [4 x i32]* %ppb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast [4 x i32]* %ppb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([4 x i32]* @inferno_print_page.ppb to i8*), i64 16, i32 16, i1 false)
  %10 = bitcast [4 x i32]* %bpp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = bitcast [4 x i32]* %bpp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([4 x i32]* @inferno_print_page.bpp to i8*), i64 16, i32 16, i1 false)
  %12 = bitcast i32* %gsbpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i64* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i16* %us to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_printer_s* %16 to %struct.inferno_device_s*
  store %struct.inferno_device_s* %17, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %18 = bitcast %struct.Rectangle* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %20, i32 0) #4
  store i32 %call, i32* %gsbpl, align 4, !tbaa !5
  %21 = load i32, i32* %gsbpl, align 4, !tbaa !5
  %cmp = icmp sgt i32 %21, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call1 = call i8* @gs_program_name() #4
  %call2 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %23, i8* %call1, i64 %call2) #4
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !7
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %cmapcall = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %26, i32 0, i32 72
  %27 = load i32, i32* %cmapcall, align 4, !tbaa !23
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %28 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth6 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %28, i32 0, i32 68
  %29 = load i32, i32* %ldepth6, align 4, !tbaa !25
  %30 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %lastldepth = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %30, i32 0, i32 69
  store i32 %29, i32* %lastldepth, align 4, !tbaa !26
  %31 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth7 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %31, i32 0, i32 68
  store i32 0, i32* %ldepth7, align 4, !tbaa !25
  %32 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %cmapcall8 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %32, i32 0, i32 72
  store i32 0, i32* %cmapcall8, align 4, !tbaa !23
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %33 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %lastldepth10 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %33, i32 0, i32 69
  %34 = load i32, i32* %lastldepth10, align 4, !tbaa !26
  store i32 %34, i32* %ldepth, align 4, !tbaa !5
  %min = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %35 = bitcast %struct.Point* %min to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct.Point* @ZP to i8*), i64 8, i32 4, i1 false), !tbaa.struct !27
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 13
  %37 = load i32, i32* %width, align 4, !tbaa !28
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 0
  store i32 %37, i32* %x11, align 4, !tbaa !29
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height, align 4, !tbaa !32
  %max12 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.Point, %struct.Point* %max12, i32 0, i32 1
  store i32 %39, i32* %y13, align 4, !tbaa !33
  %40 = load i32, i32* %ldepth, align 4, !tbaa !5
  %41 = bitcast %struct.Rectangle* %r to { i64, i64 }*
  %42 = getelementptr { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 1
  %44 = getelementptr { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 1
  %call14 = call i32 @bytesperline(i64 %43, i64 %45, i32 %40) #4
  store i32 %call14, i32* %bpl, align 4, !tbaa !5
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %47 = load i32, i32* %ldepth, align 4, !tbaa !5
  %48 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !34
  %50 = bitcast %struct.Rectangle* %r to { i64, i64 }*
  %51 = getelementptr { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 1
  %53 = getelementptr { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 1
  %call16 = call %struct.WImage* @initwriteimage(%struct._IO_FILE* %46, i64 %52, i64 %54, i32 %47, %struct.gs_memory_s* %49) #4
  store %struct.WImage* %call16, %struct.WImage** %w, align 8, !tbaa !1
  %55 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.WImage* %55, null
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.9
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !7
  %call20 = call i8* @gs_program_name() #4
  %call21 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %57, i8* %call20, i64 %call21) #4
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !7
  %call23 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.9
  %60 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %62 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %63 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !34
  %65 = load i32, i32* %gsbpl, align 4, !tbaa !5
  %call27 = call i8* %62(%struct.gs_memory_s* %64, i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call27, i8** %buf, align 8, !tbaa !1
  %66 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp28 = icmp eq i8* %66, null
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.24
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !7
  %call31 = call i8* @gs_program_name() #4
  %call32 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %68, i8* %call31, i64 %call32) #4
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !7
  %call34 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.24
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.139, %if.end.35
  %71 = load i32, i32* %y, align 4, !tbaa !5
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height36 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %72, i32 0, i32 14
  %73 = load i32, i32* %height36, align 4, !tbaa !32
  %cmp37 = icmp slt i32 %71, %73
  br i1 %cmp37, label %for.body, label %for.end.141

for.body:                                         ; preds = %for.cond
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %75 = load i32, i32* %y, align 4, !tbaa !5
  %76 = load i8*, i8** %buf, align 8, !tbaa !1
  %call38 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %74, i32 %75, i8* %76, i8** %p) #4
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %77 = load i32, i32* %x, align 4, !tbaa !5
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width40 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 13
  %79 = load i32, i32* %width40, align 4, !tbaa !28
  %cmp41 = icmp slt i32 %77, %79
  br i1 %cmp41, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %80 = load i32, i32* %x, align 4, !tbaa !5
  %mul = mul nsw i32 2, %80
  %idxprom = sext i32 %mul to i64
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %81, i64 %idxprom
  %82 = load i8, i8* %arrayidx, align 1, !tbaa !38
  %conv = zext i8 %82 to i32
  %shl = shl i32 %conv, 8
  %83 = load i32, i32* %x, align 4, !tbaa !5
  %mul43 = mul nsw i32 2, %83
  %add = add nsw i32 %mul43, 1
  %idxprom44 = sext i32 %add to i64
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %84, i64 %idxprom44
  %85 = load i8, i8* %arrayidx45, align 1, !tbaa !38
  %conv46 = zext i8 %85 to i32
  %or = or i32 %shl, %conv46
  %conv47 = trunc i32 %or to i16
  store i16 %conv47, i16* %us, align 2, !tbaa !39
  %86 = load i32, i32* %ldepth, align 4, !tbaa !5
  switch i32 %86, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.57
    i32 0, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %for.body.42
  %87 = load i16, i16* %us, align 2, !tbaa !39
  %idxprom48 = zext i16 %87 to i64
  %88 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %p9color = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %88, i32 0, i32 74
  %89 = load i64*, i64** %p9color, align 8, !tbaa !40
  %arrayidx49 = getelementptr inbounds i64, i64* %89, i64 %idxprom48
  %90 = load i64, i64* %arrayidx49, align 8, !tbaa !41
  store i64 %90, i64* %u, align 8, !tbaa !41
  %91 = load i64, i64* %u, align 8, !tbaa !41
  %92 = load i32, i32* %y, align 4, !tbaa !5
  %rem = srem i32 %92, 2
  %93 = load i32, i32* %x, align 4, !tbaa !5
  %rem50 = srem i32 %93, 2
  %mul51 = mul nsw i32 2, %rem50
  %add52 = add nsw i32 %rem, %mul51
  %mul53 = mul nsw i32 8, %add52
  %sh_prom = zext i32 %mul53 to i64
  %shr = lshr i64 %91, %sh_prom
  %conv54 = trunc i64 %shr to i8
  %94 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom55 = sext i32 %94 to i64
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %95, i64 %idxprom55
  store i8 %conv54, i8* %arrayidx56, align 1, !tbaa !38
  br label %sw.epilog

sw.bb.57:                                         ; preds = %for.body.42
  %96 = load i16, i16* %us, align 2, !tbaa !39
  %conv58 = zext i16 %96 to i32
  %neg = xor i32 %conv58, -1
  %conv59 = trunc i32 %neg to i16
  store i16 %conv59, i16* %us, align 2, !tbaa !39
  %97 = load i32, i32* %x, align 4, !tbaa !5
  %rem60 = srem i32 %97, 2
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %sw.bb.57
  %98 = load i16, i16* %us, align 2, !tbaa !39
  %conv64 = zext i16 %98 to i32
  %and = and i32 %conv64, 15
  %conv65 = trunc i32 %and to i8
  %99 = load i32, i32* %x, align 4, !tbaa !5
  %div = sdiv i32 %99, 2
  %idxprom66 = sext i32 %div to i64
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %100, i64 %idxprom66
  store i8 %conv65, i8* %arrayidx67, align 1, !tbaa !38
  br label %if.end.80

if.else:                                          ; preds = %sw.bb.57
  %101 = load i32, i32* %x, align 4, !tbaa !5
  %div68 = sdiv i32 %101, 2
  %idxprom69 = sext i32 %div68 to i64
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %102, i64 %idxprom69
  %103 = load i8, i8* %arrayidx70, align 1, !tbaa !38
  %conv71 = zext i8 %103 to i32
  %shl72 = shl i32 %conv71, 4
  %104 = load i16, i16* %us, align 2, !tbaa !39
  %conv73 = zext i16 %104 to i32
  %and74 = and i32 %conv73, 15
  %or75 = or i32 %shl72, %and74
  %conv76 = trunc i32 %or75 to i8
  %105 = load i32, i32* %x, align 4, !tbaa !5
  %div77 = sdiv i32 %105, 2
  %idxprom78 = sext i32 %div77 to i64
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %106, i64 %idxprom78
  store i8 %conv76, i8* %arrayidx79, align 1, !tbaa !38
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.63
  br label %sw.epilog

sw.bb.81:                                         ; preds = %for.body.42
  %107 = load i16, i16* %us, align 2, !tbaa !39
  %conv82 = zext i16 %107 to i32
  %neg83 = xor i32 %conv82, -1
  %conv84 = trunc i32 %neg83 to i16
  store i16 %conv84, i16* %us, align 2, !tbaa !39
  %108 = load i32, i32* %x, align 4, !tbaa !5
  %rem85 = srem i32 %108, 8
  %cmp86 = icmp eq i32 %rem85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.95

if.then.88:                                       ; preds = %sw.bb.81
  %109 = load i16, i16* %us, align 2, !tbaa !39
  %conv89 = zext i16 %109 to i32
  %and90 = and i32 %conv89, 1
  %conv91 = trunc i32 %and90 to i8
  %110 = load i32, i32* %x, align 4, !tbaa !5
  %div92 = sdiv i32 %110, 8
  %idxprom93 = sext i32 %div92 to i64
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %111, i64 %idxprom93
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !38
  br label %if.end.108

if.else.95:                                       ; preds = %sw.bb.81
  %112 = load i32, i32* %x, align 4, !tbaa !5
  %div96 = sdiv i32 %112, 8
  %idxprom97 = sext i32 %div96 to i64
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %113, i64 %idxprom97
  %114 = load i8, i8* %arrayidx98, align 1, !tbaa !38
  %conv99 = zext i8 %114 to i32
  %shl100 = shl i32 %conv99, 1
  %115 = load i16, i16* %us, align 2, !tbaa !39
  %conv101 = zext i16 %115 to i32
  %and102 = and i32 %conv101, 1
  %or103 = or i32 %shl100, %and102
  %conv104 = trunc i32 %or103 to i8
  %116 = load i32, i32* %x, align 4, !tbaa !5
  %div105 = sdiv i32 %116, 8
  %idxprom106 = sext i32 %div105 to i64
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %117, i64 %idxprom106
  store i8 %conv104, i8* %arrayidx107, align 1, !tbaa !38
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.95, %if.then.88
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.42, %if.end.108, %if.end.80, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %118 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  %119 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width109 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %119, i32 0, i32 13
  %120 = load i32, i32* %width109, align 4, !tbaa !28
  %121 = load i32, i32* %ldepth, align 4, !tbaa !5
  %idxprom110 = sext i32 %121 to i64
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %ppb, i32 0, i64 %idxprom110
  %122 = load i32, i32* %arrayidx111, align 4, !tbaa !5
  %rem112 = srem i32 %120, %122
  store i32 %rem112, i32* %xmod, align 4, !tbaa !5
  %123 = load i32, i32* %xmod, align 4, !tbaa !5
  %tobool113 = icmp ne i32 %123, 0
  br i1 %tobool113, label %if.then.114, label %if.end.129

if.then.114:                                      ; preds = %for.end
  %124 = load i32, i32* %ldepth, align 4, !tbaa !5
  %idxprom115 = sext i32 %124 to i64
  %arrayidx116 = getelementptr inbounds [4 x i32], [4 x i32]* %ppb, i32 0, i64 %idxprom115
  %125 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %126 = load i32, i32* %xmod, align 4, !tbaa !5
  %sub = sub nsw i32 %125, %126
  %127 = load i32, i32* %ldepth, align 4, !tbaa !5
  %idxprom117 = sext i32 %127 to i64
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %bpp, i32 0, i64 %idxprom117
  %128 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %mul119 = mul nsw i32 %sub, %128
  %129 = load i32, i32* %x, align 4, !tbaa !5
  %sub120 = sub nsw i32 %129, 1
  %130 = load i32, i32* %ldepth, align 4, !tbaa !5
  %idxprom121 = sext i32 %130 to i64
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %ppb, i32 0, i64 %idxprom121
  %131 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %div123 = sdiv i32 %sub120, %131
  %idxprom124 = sext i32 %div123 to i64
  %132 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %132, i64 %idxprom124
  %133 = load i8, i8* %arrayidx125, align 1, !tbaa !38
  %conv126 = zext i8 %133 to i32
  %shl127 = shl i32 %conv126, %mul119
  %conv128 = trunc i32 %shl127 to i8
  store i8 %conv128, i8* %arrayidx125, align 1, !tbaa !38
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.114, %for.end
  %134 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %135 = load i8*, i8** %p, align 8, !tbaa !1
  %136 = load i32, i32* %bpl, align 4, !tbaa !5
  %137 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %137, i32 0, i32 3
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !34
  %call131 = call i32 @writeimageblock(%struct.WImage* %134, i8* %135, i32 %136, %struct.gs_memory_s* %138) #4
  %cmp132 = icmp eq i32 %call131, -2
  br i1 %cmp132, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %if.end.129
  %139 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !34
  %procs136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs136, i32 0, i32 2
  %141 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %142 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory137, align 8, !tbaa !34
  %144 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %141(%struct.gs_memory_s* %143, i8* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.138:                                       ; preds = %if.end.129
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %145 = load i32, i32* %y, align 4, !tbaa !5
  %inc140 = add nsw i32 %145, 1
  store i32 %inc140, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.141:                                      ; preds = %for.cond
  %146 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory142 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory142, align 8, !tbaa !34
  %procs143 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %free_object144 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs143, i32 0, i32 2
  %148 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object144, align 8, !tbaa !42
  %149 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory145 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %149, i32 0, i32 3
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory145, align 8, !tbaa !34
  %151 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %148(%struct.gs_memory_s* %150, i8* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #4
  %152 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %153 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %153, i32 0, i32 3
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !34
  %call147 = call i32 @writeimageblock(%struct.WImage* %152, i8* null, i32 0, %struct.gs_memory_s* %154) #4
  %cmp148 = icmp eq i32 %call147, -2
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %for.end.141
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %for.end.141
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.151, %if.then.150, %if.then.134, %if.then.29, %if.then.18, %if.then
  %155 = bitcast %struct.Rectangle* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %155) #2
  %156 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i16* %us to i8*
  call void @llvm.lifetime.end(i64 2, i8* %157) #2
  %158 = bitcast i64* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i32* %gsbpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast [4 x i32]* %bpp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %160) #2
  %161 = bitcast [4 x i32]* %ppb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %161) #2
  %162 = bitcast i32* %ldepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %xmod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast %struct.WImage** %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = load i32, i32* %retval
  ret i32 %170
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
define void @init_p9color(i64* %p9color) #1 {
entry:
  %p9color.addr = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %o = alloca i32, align 4
  %cur = alloca i64*, align 8
  %m0 = alloca i32, align 4
  %V = alloca i32, align 4
  %M = alloca i32, align 4
  %rM = alloca i32, align 4
  %gM = alloca i32, align 4
  %bM = alloca i32, align 4
  %m = alloca i32, align 4
  %m1 = alloca i32, align 4
  %rr = alloca i32, align 4
  %gg = alloca i32, align 4
  %bb = alloca i32, align 4
  %ij = alloca i32, align 4
  store i64* %p9color, i64** %p9color.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %o to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i64** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i64*, i64** %p9color.addr, align 8, !tbaa !1
  store i64* %5, i64** %cur, align 8, !tbaa !1
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %6 = load i32, i32* %b, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 16
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %g, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.41, %for.body
  %7 = load i32, i32* %g, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %7, 16
  br i1 %cmp2, label %for.body.3, label %for.end.43

for.body.3:                                       ; preds = %for.cond.1
  %8 = bitcast i32* %m0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %b, align 4, !tbaa !5
  %10 = load i32, i32* %g, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %9, %10
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %11 = load i32, i32* %b, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %12 = load i32, i32* %g, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %m0, align 4, !tbaa !5
  store i32 0, i32* %r, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.39, %cond.end
  %13 = load i32, i32* %r, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, 16
  br i1 %cmp6, label %for.body.7, label %for.end.40

for.body.7:                                       ; preds = %for.cond.5
  %14 = bitcast i32* %V to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %rM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %gM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %bM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %r, align 4, !tbaa !5
  %22 = load i32, i32* %m0, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %21, %22
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %for.body.7
  %23 = load i32, i32* %r, align 4, !tbaa !5
  br label %cond.end.11

cond.false.10:                                    ; preds = %for.body.7
  %24 = load i32, i32* %m0, align 4, !tbaa !5
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %23, %cond.true.9 ], [ %24, %cond.false.10 ]
  store i32 %cond12, i32* %m1, align 4, !tbaa !5
  %25 = load i32, i32* %m1, align 4, !tbaa !5
  %and = and i32 %25, 3
  store i32 %and, i32* %V, align 4, !tbaa !5
  %26 = load i32, i32* %m1, align 4, !tbaa !5
  %27 = load i32, i32* %V, align 4, !tbaa !5
  %sub = sub nsw i32 %26, %27
  %shl = shl i32 %sub, 1
  store i32 %shl, i32* %M, align 4, !tbaa !5
  %28 = load i32, i32* %m1, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %28, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.11
  store i32 1, i32* %m1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.11
  %29 = load i32, i32* %m1, align 4, !tbaa !5
  %shl14 = shl i32 %29, 3
  store i32 %shl14, i32* %m, align 4, !tbaa !5
  %30 = load i32, i32* %r, align 4, !tbaa !5
  %31 = load i32, i32* %M, align 4, !tbaa !5
  %mul = mul nsw i32 %30, %31
  store i32 %mul, i32* %rM, align 4, !tbaa !5
  %32 = load i32, i32* %g, align 4, !tbaa !5
  %33 = load i32, i32* %M, align 4, !tbaa !5
  %mul15 = mul nsw i32 %32, %33
  store i32 %mul15, i32* %gM, align 4, !tbaa !5
  %34 = load i32, i32* %b, align 4, !tbaa !5
  %35 = load i32, i32* %M, align 4, !tbaa !5
  %mul16 = mul nsw i32 %34, %35
  store i32 %mul16, i32* %bM, align 4, !tbaa !5
  %36 = load i64*, i64** %cur, align 8, !tbaa !1
  store i64 0, i64* %36, align 8, !tbaa !41
  %37 = load i32, i32* %m1, align 4, !tbaa !5
  %mul17 = mul nsw i32 7, %37
  store i32 %mul17, i32* %o, align 4, !tbaa !5
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end
  %38 = load i32, i32* %o, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %38, 0
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %39 = bitcast i32* %rr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i32, i32* %rM, align 4, !tbaa !5
  %41 = load i32, i32* %o, align 4, !tbaa !5
  %add = add nsw i32 %40, %41
  %42 = load i32, i32* %m, align 4, !tbaa !5
  %div = sdiv i32 %add, %42
  store i32 %div, i32* %rr, align 4, !tbaa !5
  %43 = bitcast i32* %gg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32, i32* %gM, align 4, !tbaa !5
  %45 = load i32, i32* %o, align 4, !tbaa !5
  %add21 = add nsw i32 %44, %45
  %46 = load i32, i32* %m, align 4, !tbaa !5
  %div22 = sdiv i32 %add21, %46
  store i32 %div22, i32* %gg, align 4, !tbaa !5
  %47 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i32, i32* %bM, align 4, !tbaa !5
  %49 = load i32, i32* %o, align 4, !tbaa !5
  %add23 = add nsw i32 %48, %49
  %50 = load i32, i32* %m, align 4, !tbaa !5
  %div24 = sdiv i32 %add23, %50
  store i32 %div24, i32* %bb, align 4, !tbaa !5
  %51 = bitcast i32* %ij to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i32, i32* %rr, align 4, !tbaa !5
  %shl25 = shl i32 %52, 6
  %53 = load i32, i32* %V, align 4, !tbaa !5
  %shl26 = shl i32 %53, 4
  %add27 = add nsw i32 %shl25, %shl26
  %54 = load i32, i32* %V, align 4, !tbaa !5
  %55 = load i32, i32* %rr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %54, %55
  %56 = load i32, i32* %gg, align 4, !tbaa !5
  %shl29 = shl i32 %56, 2
  %add30 = add nsw i32 %sub28, %shl29
  %57 = load i32, i32* %bb, align 4, !tbaa !5
  %add31 = add nsw i32 %add30, %57
  %and32 = and i32 %add31, 15
  %add33 = add nsw i32 %add27, %and32
  store i32 %add33, i32* %ij, align 4, !tbaa !5
  %58 = load i64*, i64** %cur, align 8, !tbaa !1
  %59 = load i64, i64* %58, align 8, !tbaa !41
  %shl34 = shl i64 %59, 8
  %add35 = add i64 %shl34, 255
  %60 = load i32, i32* %ij, align 4, !tbaa !5
  %conv = sext i32 %60 to i64
  %sub36 = sub i64 %add35, %conv
  %61 = load i64*, i64** %cur, align 8, !tbaa !1
  store i64 %sub36, i64* %61, align 8, !tbaa !41
  %62 = bitcast i32* %ij to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %gg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %rr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %66 = load i32, i32* %m1, align 4, !tbaa !5
  %mul37 = mul nsw i32 2, %66
  %67 = load i32, i32* %o, align 4, !tbaa !5
  %sub38 = sub nsw i32 %67, %mul37
  store i32 %sub38, i32* %o, align 4, !tbaa !5
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %68 = load i64*, i64** %cur, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %incdec.ptr, i64** %cur, align 8, !tbaa !1
  %69 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %bM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %gM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %rM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %V to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %76 = load i32, i32* %r, align 4, !tbaa !5
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %r, align 4, !tbaa !5
  br label %for.cond.5

for.end.40:                                       ; preds = %for.cond.5
  %77 = bitcast i32* %m0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %78 = load i32, i32* %g, align 4, !tbaa !5
  %inc42 = add nsw i32 %78, 1
  store i32 %inc42, i32* %g, align 4, !tbaa !5
  br label %for.cond.1

for.end.43:                                       ; preds = %for.cond.1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %79 = load i32, i32* %b, align 4, !tbaa !5
  %inc45 = add nsw i32 %79, 1
  store i32 %inc45, i32* %b, align 4, !tbaa !5
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %80 = bitcast i64** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %o to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @inferno_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.inferno_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.inferno_device_s*
  store %struct.inferno_device_s* %2, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %3 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %gray = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %3, i32 0, i32 71
  store i32 0, i32* %gray, align 4, !tbaa !43
  %4 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %4, i32 0, i32 70
  store i32 0, i32* %color, align 4, !tbaa !44
  %5 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %cmapcall = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %5, i32 0, i32 72
  store i32 0, i32* %cmapcall, align 4, !tbaa !23
  %6 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %6, i32 0, i32 68
  store i32 3, i32* %ldepth, align 4, !tbaa !25
  %7 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %nbits = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %7, i32 0, i32 73
  store i32 4, i32* %nbits, align 4, !tbaa !45
  %8 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %11 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !34
  %call = call i8* %10(%struct.gs_memory_s* %12, i32 32768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  %13 = bitcast i8* %call to i64*
  %14 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %p9color = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %14, i32 0, i32 74
  store i64* %13, i64** %p9color, align 8, !tbaa !40
  %15 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %p9color2 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %15, i32 0, i32 74
  %16 = load i64*, i64** %p9color2, align 8, !tbaa !40
  %cmp = icmp eq i64* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %p9color3 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %17, i32 0, i32 74
  %18 = load i64*, i64** %p9color3, align 8, !tbaa !40
  call void @init_p9color(i64* %18) #4
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call4 = call i32 @gdev_prn_open(%struct.gx_device_s* %19) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @inferno_close(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev = alloca %struct.inferno_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.inferno_device_s*
  store %struct.inferno_device_s* %2, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !46
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !46
  %9 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %p9color = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %9, i32 0, i32 74
  %10 = load i64*, i64** %p9color, align 8, !tbaa !40
  %11 = bitcast i64* %10 to i8*
  call void %6(%struct.gs_memory_s* %8, i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i64 @inferno_rgb2cmap(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %shift = alloca i32, align 4
  %bdev = alloca %struct.inferno_device_s*, align 8
  %nbits = alloca i32, align 4
  %mask = alloca i32, align 4
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.inferno_device_s*
  store %struct.inferno_device_s* %3, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %4 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %nbits1 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %5, i32 0, i32 73
  %6 = load i32, i32* %nbits1, align 4, !tbaa !45
  store i32 %6, i32* %nbits, align 4, !tbaa !5
  %7 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl = shl i32 1, %8
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %9 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !39
  store i16 %13, i16* %red, align 2, !tbaa !39
  %14 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %14, i64 1
  %15 = load i16, i16* %arrayidx2, align 2, !tbaa !39
  store i16 %15, i16* %green, align 2, !tbaa !39
  %16 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %16, i64 2
  %17 = load i16, i16* %arrayidx3, align 2, !tbaa !39
  store i16 %17, i16* %blue, align 2, !tbaa !39
  %18 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv = sext i32 %18 to i64
  %cmp = icmp ugt i64 16, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv5 = sext i32 %19 to i64
  %sub6 = sub i64 16, %conv5
  %conv7 = trunc i64 %sub6 to i32
  store i32 %conv7, i32* %shift, align 4, !tbaa !5
  %20 = load i32, i32* %shift, align 4, !tbaa !5
  %21 = load i16, i16* %red, align 2, !tbaa !39
  %conv8 = zext i16 %21 to i32
  %shr = ashr i32 %conv8, %20
  %conv9 = trunc i32 %shr to i16
  store i16 %conv9, i16* %red, align 2, !tbaa !39
  %22 = load i32, i32* %shift, align 4, !tbaa !5
  %23 = load i16, i16* %green, align 2, !tbaa !39
  %conv10 = zext i16 %23 to i32
  %shr11 = ashr i32 %conv10, %22
  %conv12 = trunc i32 %shr11 to i16
  store i16 %conv12, i16* %green, align 2, !tbaa !39
  %24 = load i32, i32* %shift, align 4, !tbaa !5
  %25 = load i16, i16* %blue, align 2, !tbaa !39
  %conv13 = zext i16 %25 to i32
  %shr14 = ashr i32 %conv13, %24
  %conv15 = trunc i32 %shr14 to i16
  store i16 %conv15, i16* %blue, align 2, !tbaa !39
  br label %if.end.32

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv16 = sext i32 %26 to i64
  %cmp17 = icmp ult i64 16, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %27 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv20 = sext i32 %27 to i64
  %sub21 = sub i64 %conv20, 16
  %conv22 = trunc i64 %sub21 to i32
  store i32 %conv22, i32* %shift, align 4, !tbaa !5
  %28 = load i32, i32* %shift, align 4, !tbaa !5
  %29 = load i16, i16* %red, align 2, !tbaa !39
  %conv23 = zext i16 %29 to i32
  %shl24 = shl i32 %conv23, %28
  %conv25 = trunc i32 %shl24 to i16
  store i16 %conv25, i16* %red, align 2, !tbaa !39
  %30 = load i32, i32* %shift, align 4, !tbaa !5
  %31 = load i16, i16* %green, align 2, !tbaa !39
  %conv26 = zext i16 %31 to i32
  %shl27 = shl i32 %conv26, %30
  %conv28 = trunc i32 %shl27 to i16
  store i16 %conv28, i16* %green, align 2, !tbaa !39
  %32 = load i32, i32* %shift, align 4, !tbaa !5
  %33 = load i16, i16* %blue, align 2, !tbaa !39
  %conv29 = zext i16 %33 to i32
  %shl30 = shl i32 %conv29, %32
  %conv31 = trunc i32 %shl30 to i16
  store i16 %conv31, i16* %blue, align 2, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  %34 = load i32, i32* %mask, align 4, !tbaa !5
  %35 = load i16, i16* %red, align 2, !tbaa !39
  %conv33 = zext i16 %35 to i32
  %and = and i32 %conv33, %34
  %conv34 = trunc i32 %and to i16
  store i16 %conv34, i16* %red, align 2, !tbaa !39
  %36 = load i32, i32* %mask, align 4, !tbaa !5
  %37 = load i16, i16* %green, align 2, !tbaa !39
  %conv35 = zext i16 %37 to i32
  %and36 = and i32 %conv35, %36
  %conv37 = trunc i32 %and36 to i16
  store i16 %conv37, i16* %green, align 2, !tbaa !39
  %38 = load i32, i32* %mask, align 4, !tbaa !5
  %39 = load i16, i16* %blue, align 2, !tbaa !39
  %conv38 = zext i16 %39 to i32
  %and39 = and i32 %conv38, %38
  %conv40 = trunc i32 %and39 to i16
  store i16 %conv40, i16* %blue, align 2, !tbaa !39
  %40 = load i16, i16* %red, align 2, !tbaa !39
  %conv41 = zext i16 %40 to i32
  %41 = load i16, i16* %green, align 2, !tbaa !39
  %conv42 = zext i16 %41 to i32
  %cmp43 = icmp eq i32 %conv41, %conv42
  br i1 %cmp43, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %if.end.32
  %42 = load i16, i16* %green, align 2, !tbaa !39
  %conv45 = zext i16 %42 to i32
  %43 = load i16, i16* %blue, align 2, !tbaa !39
  %conv46 = zext i16 %43 to i32
  %cmp47 = icmp eq i32 %conv45, %conv46
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.78

land.lhs.true.49:                                 ; preds = %land.lhs.true
  %44 = load i16, i16* %red, align 2, !tbaa !39
  %conv50 = zext i16 %44 to i32
  %cmp51 = icmp ne i32 %conv50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.78

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %45 = load i16, i16* %red, align 2, !tbaa !39
  %conv54 = zext i16 %45 to i32
  %46 = load i32, i32* %mask, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %conv54, %46
  br i1 %cmp55, label %if.then.57, label %if.else.78

if.then.57:                                       ; preds = %land.lhs.true.53
  %47 = load i16, i16* %red, align 2, !tbaa !39
  %conv58 = zext i16 %47 to i32
  %cmp59 = icmp eq i32 %conv58, 5
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.57
  %48 = load i16, i16* %red, align 2, !tbaa !39
  %conv61 = zext i16 %48 to i32
  %cmp62 = icmp eq i32 %conv61, 10
  br i1 %cmp62, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %lor.lhs.false, %if.then.57
  %49 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %49, i32 0, i32 68
  %50 = load i32, i32* %ldepth, align 4, !tbaa !25
  %cmp65 = icmp slt i32 %50, 1
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.64
  %51 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth68 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %51, i32 0, i32 68
  store i32 1, i32* %ldepth68, align 4, !tbaa !25
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.64
  br label %if.end.77

if.else.70:                                       ; preds = %lor.lhs.false
  %52 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth71 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %52, i32 0, i32 68
  %53 = load i32, i32* %ldepth71, align 4, !tbaa !25
  %cmp72 = icmp slt i32 %53, 2
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.else.70
  %54 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth75 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %54, i32 0, i32 68
  store i32 2, i32* %ldepth75, align 4, !tbaa !25
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.69
  br label %if.end.80

if.else.78:                                       ; preds = %land.lhs.true.53, %land.lhs.true.49, %land.lhs.true, %if.end.32
  %55 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %ldepth79 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %55, i32 0, i32 68
  store i32 3, i32* %ldepth79, align 4, !tbaa !25
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.end.77
  %56 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %cmapcall = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %56, i32 0, i32 72
  store i32 1, i32* %cmapcall, align 4, !tbaa !23
  %57 = load i16, i16* %blue, align 2, !tbaa !39
  %conv81 = zext i16 %57 to i32
  %shl82 = shl i32 %conv81, 4
  %58 = load i16, i16* %green, align 2, !tbaa !39
  %conv83 = zext i16 %58 to i32
  %or = or i32 %shl82, %conv83
  %shl84 = shl i32 %or, 4
  %59 = load i16, i16* %red, align 2, !tbaa !39
  %conv85 = zext i16 %59 to i32
  %or86 = or i32 %shl84, %conv85
  %conv87 = sext i32 %or86 to i64
  %60 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #2
  %61 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #2
  %62 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %62) #2
  %63 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  ret i64 %conv87
}

; Function Attrs: nounwind uwtable
define internal i32 @inferno_cmap2rgb(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %shift = alloca i32, align 4
  %i = alloca i32, align 4
  %bdev = alloca %struct.inferno_device_s*, align 8
  %nbits = alloca i32, align 4
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !41
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_s* %3 to %struct.inferno_device_s*
  store %struct.inferno_device_s* %4, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %5 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.inferno_device_s*, %struct.inferno_device_s** %bdev, align 8, !tbaa !1
  %nbits1 = getelementptr inbounds %struct.inferno_device_s, %struct.inferno_device_s* %6, i32 0, i32 73
  %7 = load i32, i32* %nbits1, align 4, !tbaa !45
  store i32 %7, i32* %nbits, align 4, !tbaa !5
  %8 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %nbits, align 4, !tbaa !5
  %shl = shl i32 1, %9
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %10 = load i64, i64* %color.addr, align 8, !tbaa !41
  %cmp = icmp ult i64 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i64, i64* %color.addr, align 8, !tbaa !41
  %cmp2 = icmp ugt i64 %11, 255
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i64, i64* %color.addr, align 8, !tbaa !41
  %13 = load i32, i32* %nbits, align 4, !tbaa !5
  %mul = mul nsw i32 2, %13
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %12, %sh_prom
  %14 = load i32, i32* %mask, align 4, !tbaa !5
  %conv = sext i32 %14 to i64
  %and = and i64 %shr, %conv
  %conv3 = trunc i64 %and to i16
  %15 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !39
  %16 = load i64, i64* %color.addr, align 8, !tbaa !41
  %17 = load i32, i32* %nbits, align 4, !tbaa !5
  %sh_prom4 = zext i32 %17 to i64
  %shr5 = lshr i64 %16, %sh_prom4
  %18 = load i32, i32* %mask, align 4, !tbaa !5
  %conv6 = sext i32 %18 to i64
  %and7 = and i64 %shr5, %conv6
  %conv8 = trunc i64 %and7 to i16
  %19 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %19, i64 1
  store i16 %conv8, i16* %arrayidx9, align 2, !tbaa !39
  %20 = load i64, i64* %color.addr, align 8, !tbaa !41
  %21 = load i32, i32* %mask, align 4, !tbaa !5
  %conv10 = sext i32 %21 to i64
  %and11 = and i64 %20, %conv10
  %conv12 = trunc i64 %and11 to i16
  %22 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !39
  %23 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv14 = sext i32 %23 to i64
  %cmp15 = icmp ugt i64 16, %conv14
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %24 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv18 = sext i32 %24 to i64
  %sub19 = sub i64 16, %conv18
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %shift, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %25, 3
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %shift, align 4, !tbaa !5
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %28, i64 %idxprom
  %29 = load i16, i16* %arrayidx23, align 2, !tbaa !39
  %conv24 = zext i16 %29 to i32
  %shl25 = shl i32 %conv24, %26
  %conv26 = trunc i32 %shl25 to i16
  store i16 %conv26, i16* %arrayidx23, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %31 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv27 = sext i32 %31 to i64
  %cmp28 = icmp ult i64 16, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %if.else
  %32 = load i32, i32* %nbits, align 4, !tbaa !5
  %conv31 = sext i32 %32 to i64
  %sub32 = sub i64 %conv31, 16
  %conv33 = trunc i64 %sub32 to i32
  store i32 %conv33, i32* %shift, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.43, %if.then.30
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %33, 3
  br i1 %cmp35, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.34
  %34 = load i32, i32* %shift, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %35 to i64
  %36 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %36, i64 %idxprom38
  %37 = load i16, i16* %arrayidx39, align 2, !tbaa !39
  %conv40 = zext i16 %37 to i32
  %shr41 = ashr i32 %conv40, %34
  %conv42 = trunc i32 %shr41 to i16
  store i16 %conv42, i16* %arrayidx39, align 2, !tbaa !39
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.37
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !5
  br label %for.cond.34

for.end.45:                                       ; preds = %for.cond.34
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then
  %39 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.inferno_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @bytesperline(i64 %r.coerce0, i64 %r.coerce1, i32 %ld) #1 {
entry:
  %r = alloca %struct.Rectangle, align 8
  %ld.addr = alloca i32, align 4
  %ws = alloca i64, align 8
  %l = alloca i64, align 8
  %t = alloca i64, align 8
  %bits = alloca i32, align 4
  %0 = bitcast %struct.Rectangle* %r to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %r.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %r.coerce1, i64* %2
  store i32 %ld, i32* %ld.addr, align 4, !tbaa !5
  %3 = bitcast i64* %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 8, i32* %bits, align 4, !tbaa !5
  %7 = load i32, i32* %bits, align 4, !tbaa !5
  %8 = load i32, i32* %ld.addr, align 4, !tbaa !5
  %shr = ashr i32 %7, %8
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %ws, align 8, !tbaa !41
  %min = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x = getelementptr inbounds %struct.Point, %struct.Point* %min, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !48
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 0
  %10 = load i32, i32* %x2, align 4, !tbaa !29
  %conv3 = sext i32 %10 to i64
  %11 = load i64, i64* %ws, align 8, !tbaa !41
  %add = add i64 %conv3, %11
  %sub = sub i64 %add, 1
  %12 = load i64, i64* %ws, align 8, !tbaa !41
  %div = udiv i64 %sub, %12
  store i64 %div, i64* %l, align 8, !tbaa !41
  %min4 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.Point, %struct.Point* %min4, i32 0, i32 0
  %13 = load i32, i32* %x5, align 4, !tbaa !48
  %conv6 = sext i32 %13 to i64
  %14 = load i64, i64* %ws, align 8, !tbaa !41
  %div7 = udiv i64 %conv6, %14
  %15 = load i64, i64* %l, align 8, !tbaa !41
  %sub8 = sub i64 %15, %div7
  store i64 %sub8, i64* %l, align 8, !tbaa !41
  br label %if.end

if.else:                                          ; preds = %entry
  %min9 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.Point, %struct.Point* %min9, i32 0, i32 0
  %16 = load i32, i32* %x10, align 4, !tbaa !48
  %sub11 = sub nsw i32 0, %16
  %conv12 = sext i32 %sub11 to i64
  %17 = load i64, i64* %ws, align 8, !tbaa !41
  %add13 = add i64 %conv12, %17
  %sub14 = sub i64 %add13, 1
  store i64 %sub14, i64* %t, align 8, !tbaa !41
  %18 = load i64, i64* %t, align 8, !tbaa !41
  %19 = load i64, i64* %ws, align 8, !tbaa !41
  %div15 = udiv i64 %18, %19
  %20 = load i64, i64* %ws, align 8, !tbaa !41
  %mul = mul i64 %div15, %20
  store i64 %mul, i64* %t, align 8, !tbaa !41
  %21 = load i64, i64* %t, align 8, !tbaa !41
  %max16 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x17 = getelementptr inbounds %struct.Point, %struct.Point* %max16, i32 0, i32 0
  %22 = load i32, i32* %x17, align 4, !tbaa !29
  %conv18 = sext i32 %22 to i64
  %add19 = add i64 %21, %conv18
  %23 = load i64, i64* %ws, align 8, !tbaa !41
  %add20 = add i64 %add19, %23
  %sub21 = sub i64 %add20, 1
  %24 = load i64, i64* %ws, align 8, !tbaa !41
  %div22 = udiv i64 %sub21, %24
  store i64 %div22, i64* %l, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i64, i64* %l, align 8, !tbaa !41
  %conv23 = trunc i64 %25 to i32
  %26 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i64* %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %conv23
}

; Function Attrs: nounwind uwtable
define internal %struct.WImage* @initwriteimage(%struct._IO_FILE* %f, i64 %r.coerce0, i64 %r.coerce1, i32 %ldepth, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca %struct.WImage*, align 8
  %r = alloca %struct.Rectangle, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %ldepth.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %w = alloca %struct.WImage*, align 8
  %n = alloca i32, align 4
  %bpl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.Rectangle* %r to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %r.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %r.coerce1, i64* %2
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i32 %ldepth, i32* %ldepth.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.WImage** %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %ldepth.addr, align 4, !tbaa !5
  %7 = bitcast %struct.Rectangle* %r to { i64, i64 }*
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 1
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 1
  %call = call i32 @bytesperline(i64 %9, i64 %11, i32 %6) #4
  store i32 %call, i32* %bpl, align 4, !tbaa !5
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 1
  %12 = load i32, i32* %y, align 4, !tbaa !33
  %min = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %y1 = getelementptr inbounds %struct.Point, %struct.Point* %min, i32 0, i32 1
  %13 = load i32, i32* %y1, align 4, !tbaa !49
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %max2 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x = getelementptr inbounds %struct.Point, %struct.Point* %max2, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !29
  %min3 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.Point, %struct.Point* %min3, i32 0, i32 0
  %15 = load i32, i32* %x4, align 4, !tbaa !48
  %cmp5 = icmp sle i32 %14, %15
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %bpl, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %16, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i8* @gs_program_name() #4
  %call9 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %17, i8* %call8, i64 %call9) #4
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #4
  store %struct.WImage* null, %struct.WImage** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %19 = load i32, i32* %bpl, align 4, !tbaa !5
  %mul = mul nsw i32 %19, 2
  %add = add nsw i32 1061, %mul
  store i32 %add, i32* %n, align 4, !tbaa !5
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %21 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i32, i32* %n, align 4, !tbaa !5
  %conv = sext i32 %23 to i64
  %add11 = add i64 %conv, 43136
  %conv12 = trunc i64 %add11 to i32
  %call13 = call i8* %21(%struct.gs_memory_s* %22, i32 %conv12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #4
  %24 = bitcast i8* %call13 to %struct.WImage*
  store %struct.WImage* %24, %struct.WImage** %w, align 8, !tbaa !1
  %25 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.WImage* %25, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store %struct.WImage* null, %struct.WImage** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %26 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.WImage, %struct.WImage* %26, i64 1
  %27 = bitcast %struct.WImage* %arrayidx to i8*
  %28 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %inbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %28, i32 0, i32 8
  store i8* %27, i8** %inbuf, align 8, !tbaa !50
  %29 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %inbuf18 = getelementptr inbounds %struct.WImage, %struct.WImage* %29, i32 0, i32 8
  %30 = load i8*, i8** %inbuf18, align 8, !tbaa !50
  %31 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %ibase = getelementptr inbounds %struct.WImage, %struct.WImage* %31, i32 0, i32 9
  store i8* %30, i8** %ibase, align 8, !tbaa !53
  %32 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.WImage, %struct.WImage* %32, i32 0, i32 12
  store i64 0, i64* %line, align 8, !tbaa !54
  %33 = load i32, i32* %n, align 4, !tbaa !5
  %34 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %minbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %34, i32 0, i32 10
  store i32 %33, i32* %minbuf, align 4, !tbaa !55
  %35 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %ninbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %35, i32 0, i32 11
  store i32 0, i32* %ninbuf, align 4, !tbaa !56
  %36 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %origr = getelementptr inbounds %struct.WImage, %struct.WImage* %36, i32 0, i32 1
  %37 = bitcast %struct.Rectangle* %origr to i8*
  %38 = bitcast %struct.Rectangle* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 4, i1 false), !tbaa.struct !57
  %39 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %r19 = getelementptr inbounds %struct.WImage, %struct.WImage* %39, i32 0, i32 2
  %40 = bitcast %struct.Rectangle* %r19 to i8*
  %41 = bitcast %struct.Rectangle* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 4, i1 false), !tbaa.struct !57
  %42 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %r20 = getelementptr inbounds %struct.WImage, %struct.WImage* %42, i32 0, i32 2
  %min21 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r20, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.Point, %struct.Point* %min21, i32 0, i32 1
  %43 = load i32, i32* %y22, align 4, !tbaa !58
  %44 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %r23 = getelementptr inbounds %struct.WImage, %struct.WImage* %44, i32 0, i32 2
  %max24 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r23, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.Point, %struct.Point* %max24, i32 0, i32 1
  store i32 %43, i32* %y25, align 4, !tbaa !59
  %45 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %outbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %45, i32 0, i32 4
  %arraydecay = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 6000
  %46 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %eout = getelementptr inbounds %struct.WImage, %struct.WImage* %46, i32 0, i32 6
  store i8* %add.ptr, i8** %eout, align 8, !tbaa !60
  %47 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %outbuf26 = getelementptr inbounds %struct.WImage, %struct.WImage* %47, i32 0, i32 4
  %arraydecay27 = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf26, i32 0, i32 0
  %48 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %loutp = getelementptr inbounds %struct.WImage, %struct.WImage* %48, i32 0, i32 7
  store i8* %arraydecay27, i8** %loutp, align 8, !tbaa !61
  %49 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %outp = getelementptr inbounds %struct.WImage, %struct.WImage* %49, i32 0, i32 5
  store i8* %arraydecay27, i8** %outp, align 8, !tbaa !62
  %50 = load i32, i32* %bpl, align 4, !tbaa !5
  %51 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %bpl28 = getelementptr inbounds %struct.WImage, %struct.WImage* %51, i32 0, i32 3
  store i32 %50, i32* %bpl28, align 4, !tbaa !63
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %53 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %f29 = getelementptr inbounds %struct.WImage, %struct.WImage* %53, i32 0, i32 0
  store %struct._IO_FILE* %52, %struct._IO_FILE** %f29, align 8, !tbaa !64
  %54 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %dump = getelementptr inbounds %struct.WImage, %struct.WImage* %54, i32 0, i32 13
  %buf = getelementptr inbounds %struct.Dump, %struct.Dump* %dump, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [129 x i8], [129 x i8]* %buf, i32 0, i32 0
  %add.ptr31 = getelementptr inbounds i8, i8* %arraydecay30, i64 1
  %55 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %dump32 = getelementptr inbounds %struct.WImage, %struct.WImage* %55, i32 0, i32 13
  %dumpbuf = getelementptr inbounds %struct.Dump, %struct.Dump* %dump32, i32 0, i32 1
  store i8* %add.ptr31, i8** %dumpbuf, align 8, !tbaa !65
  %56 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  %dump33 = getelementptr inbounds %struct.WImage, %struct.WImage* %56, i32 0, i32 13
  %ndump = getelementptr inbounds %struct.Dump, %struct.Dump* %dump33, i32 0, i32 0
  store i32 0, i32* %ndump, align 4, !tbaa !66
  %57 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  call void @zerohash(%struct.WImage* %57) #4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %59 = load i32, i32* %ldepth.addr, align 4, !tbaa !5
  %min34 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.Point, %struct.Point* %min34, i32 0, i32 0
  %60 = load i32, i32* %x35, align 4, !tbaa !48
  %min36 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %y37 = getelementptr inbounds %struct.Point, %struct.Point* %min36, i32 0, i32 1
  %61 = load i32, i32* %y37, align 4, !tbaa !49
  %max38 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.Point, %struct.Point* %max38, i32 0, i32 0
  %62 = load i32, i32* %x39, align 4, !tbaa !29
  %max40 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.Point, %struct.Point* %max40, i32 0, i32 1
  %63 = load i32, i32* %y41, align 4, !tbaa !33
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 %59, i32 %60, i32 %61, i32 %62, i32 %63) #4
  %64 = load %struct.WImage*, %struct.WImage** %w, align 8, !tbaa !1
  store %struct.WImage* %64, %struct.WImage** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then
  %65 = bitcast i32* %bpl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast %struct.WImage** %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load %struct.WImage*, %struct.WImage** %retval
  ret %struct.WImage* %68
}

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @writeimageblock(%struct.WImage* %w, i8* %data, i32 %ndata, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.WImage*, align 8
  %data.addr = alloca i8*, align 8
  %ndata.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %edata = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %ndata, i32* %ndata.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %edata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.WImage, %struct.WImage* %2, i32 0, i32 12
  %3 = load i64, i64* %line, align 8, !tbaa !54
  %4 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %4, i32 0, i32 11
  %5 = load i32, i32* %ninbuf, align 4, !tbaa !56
  %conv = sext i32 %5 to i64
  %cmp1 = icmp ult i64 %3, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call = call i32 @gobbleline(%struct.WImage* %6) #4
  %cmp3 = icmp eq i32 %call, -2
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call6 = call i32 @addbuf(%struct.WImage* %7, i8* null, i32 0) #4
  %8 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %r = getelementptr inbounds %struct.WImage, %struct.WImage* %8, i32 0, i32 2
  %min = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %y = getelementptr inbounds %struct.Point, %struct.Point* %min, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !58
  %10 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %origr = getelementptr inbounds %struct.WImage, %struct.WImage* %10, i32 0, i32 1
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %origr, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 1
  %11 = load i32, i32* %y7, align 4, !tbaa !67
  %cmp8 = icmp ne i32 %9, %11
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %while.end
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call11 = call i8* @gs_program_name() #4
  %call12 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %12, i8* %call11, i64 %call12) #4
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %while.end
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %18 = bitcast %struct.WImage* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %entry
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %20 = load i32, i32* %ndata.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %edata, align 8, !tbaa !1
  %21 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %edata, align 8, !tbaa !1
  %call16 = call i8* @shiftwindow(%struct.WImage* %21, i8* %22, i8* %23) #4
  store i8* %call16, i8** %data.addr, align 8, !tbaa !1
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.30, %if.end.15
  %24 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf18 = getelementptr inbounds %struct.WImage, %struct.WImage* %24, i32 0, i32 11
  %25 = load i32, i32* %ninbuf18, align 4, !tbaa !56
  %conv19 = sext i32 %25 to i64
  %26 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line20 = getelementptr inbounds %struct.WImage, %struct.WImage* %26, i32 0, i32 12
  %27 = load i64, i64* %line20, align 8, !tbaa !54
  %28 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %bpl = getelementptr inbounds %struct.WImage, %struct.WImage* %28, i32 0, i32 3
  %29 = load i32, i32* %bpl, align 4, !tbaa !63
  %conv21 = sext i32 %29 to i64
  %add = add i64 %27, %conv21
  %add22 = add i64 %add, 3
  %cmp23 = icmp uge i64 %conv19, %add22
  br i1 %cmp23, label %while.body.25, label %while.end.32

while.body.25:                                    ; preds = %while.cond.17
  %30 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call26 = call i32 @gobbleline(%struct.WImage* %30) #4
  %cmp27 = icmp eq i32 %call26, -2
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body.25
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %while.body.25
  %31 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %edata, align 8, !tbaa !1
  %call31 = call i8* @shiftwindow(%struct.WImage* %31, i8* %32, i8* %33) #4
  store i8* %call31, i8** %data.addr, align 8, !tbaa !1
  br label %while.cond.17

while.end.32:                                     ; preds = %while.cond.17
  %34 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %edata, align 8, !tbaa !1
  %cmp33 = icmp ne i8* %34, %35
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.end.32
  %36 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.WImage, %struct.WImage* %36, i32 0, i32 0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !64
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %while.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.35, %if.then.29, %if.end.14, %if.then.5
  %38 = bitcast i8** %edata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @zerohash(%struct.WImage* %w) #1 {
entry:
  %w.addr = alloca %struct.WImage*, align 8
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  %0 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.WImage, %struct.WImage* %0, i32 0, i32 14
  %arraydecay = getelementptr inbounds [512 x %struct.Hlist], [512 x %struct.Hlist]* %hash, i32 0, i32 0
  %1 = bitcast %struct.Hlist* %arraydecay to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 12288) #5
  %2 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %chain = getelementptr inbounds %struct.WImage, %struct.WImage* %2, i32 0, i32 15
  %arraydecay1 = getelementptr inbounds [1024 x %struct.Hlist], [1024 x %struct.Hlist]* %chain, i32 0, i32 0
  %3 = bitcast %struct.Hlist* %arraydecay1 to i8*
  %call2 = call i8* @memset(i8* %3, i32 0, i64 24576) #5
  %4 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %chain3 = getelementptr inbounds %struct.WImage, %struct.WImage* %4, i32 0, i32 15
  %arraydecay4 = getelementptr inbounds [1024 x %struct.Hlist], [1024 x %struct.Hlist]* %chain3, i32 0, i32 0
  %5 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %cp = getelementptr inbounds %struct.WImage, %struct.WImage* %5, i32 0, i32 16
  store %struct.Hlist* %arraydecay4, %struct.Hlist** %cp, align 8, !tbaa !68
  %6 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %needhash = getelementptr inbounds %struct.WImage, %struct.WImage* %6, i32 0, i32 18
  store i32 1, i32* %needhash, align 4, !tbaa !69
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @gobbleline(%struct.WImage* %w) #1 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.WImage*, align 8
  %runlen = alloca i32, align 4
  %n = alloca i32, align 4
  %offs = alloca i32, align 4
  %eline = alloca i8*, align 8
  %es = alloca i8*, align 8
  %best = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %hp = alloca %struct.Hlist*, align 8
  %buf = alloca [2 x i8], align 1
  %rv = alloca i32, align 4
  %ss = alloca i8*, align 8
  %tt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  %0 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i8** %eline to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %es to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %best to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct.Hlist** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %needhash = getelementptr inbounds %struct.WImage, %struct.WImage* %12, i32 0, i32 18
  %13 = load i32, i32* %needhash, align 4, !tbaa !69
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.WImage, %struct.WImage* %14, i32 0, i32 17
  store i32 0, i32* %h, align 4, !tbaa !70
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp ne i32 %15, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct.WImage, %struct.WImage* %16, i32 0, i32 17
  %17 = load i32, i32* %h1, align 4, !tbaa !70
  %shl = shl i32 %17, 3
  %18 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.WImage, %struct.WImage* %18, i32 0, i32 12
  %19 = load i64, i64* %line, align 8, !tbaa !54
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %add = add i64 %19, %conv
  %21 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %21, i32 0, i32 8
  %22 = load i8*, i8** %inbuf, align 8, !tbaa !50
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %add
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !38
  %conv2 = zext i8 %23 to i32
  %xor = xor i32 %shl, %conv2
  %and = and i32 %xor, 511
  %24 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h3 = getelementptr inbounds %struct.WImage, %struct.WImage* %24, i32 0, i32 17
  store i32 %and, i32* %h3, align 4, !tbaa !70
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %needhash4 = getelementptr inbounds %struct.WImage, %struct.WImage* %26, i32 0, i32 18
  store i32 0, i32* %needhash4, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %27 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump = getelementptr inbounds %struct.WImage, %struct.WImage* %27, i32 0, i32 13
  %ndump = getelementptr inbounds %struct.Dump, %struct.Dump* %dump, i32 0, i32 0
  store i32 0, i32* %ndump, align 4, !tbaa !66
  %28 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf5 = getelementptr inbounds %struct.WImage, %struct.WImage* %28, i32 0, i32 8
  %29 = load i8*, i8** %inbuf5, align 8, !tbaa !50
  %30 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line6 = getelementptr inbounds %struct.WImage, %struct.WImage* %30, i32 0, i32 12
  %31 = load i64, i64* %line6, align 8, !tbaa !54
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %31
  %32 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %bpl = getelementptr inbounds %struct.WImage, %struct.WImage* %32, i32 0, i32 3
  %33 = load i32, i32* %bpl, align 4, !tbaa !63
  %idx.ext = sext i32 %33 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr7, i8** %eline, align 8, !tbaa !1
  %34 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf8 = getelementptr inbounds %struct.WImage, %struct.WImage* %34, i32 0, i32 8
  %35 = load i8*, i8** %inbuf8, align 8, !tbaa !50
  %36 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line9 = getelementptr inbounds %struct.WImage, %struct.WImage* %36, i32 0, i32 12
  %37 = load i64, i64* %line9, align 8, !tbaa !54
  %add.ptr10 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %add.ptr10, i8** %p, align 8, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %if.end.120, %if.end
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8*, i8** %eline, align 8, !tbaa !1
  %cmp12 = icmp ne i8* %38, %39
  br i1 %cmp12, label %for.body.14, label %for.end.125

for.body.14:                                      ; preds = %for.cond.11
  %40 = load i8*, i8** %eline, align 8, !tbaa !1
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i8, i8* %41, i64 34
  %cmp16 = icmp ult i8* %40, %add.ptr15
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  %42 = load i8*, i8** %eline, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body.14
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %43, i64 34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %42, %cond.true ], [ %add.ptr18, %cond.false ]
  store i8* %cond, i8** %es, align 8, !tbaa !1
  store i8* null, i8** %best, align 8, !tbaa !1
  store i32 0, i32* %runlen, align 4, !tbaa !5
  %44 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h19 = getelementptr inbounds %struct.WImage, %struct.WImage* %44, i32 0, i32 17
  %45 = load i32, i32* %h19, align 4, !tbaa !70
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.WImage, %struct.WImage* %46, i32 0, i32 14
  %arrayidx20 = getelementptr inbounds [512 x %struct.Hlist], [512 x %struct.Hlist]* %hash, i32 0, i64 %idxprom
  %next = getelementptr inbounds %struct.Hlist, %struct.Hlist* %arrayidx20, i32 0, i32 1
  %47 = load %struct.Hlist*, %struct.Hlist** %next, align 8, !tbaa !71
  store %struct.Hlist* %47, %struct.Hlist** %hp, align 8, !tbaa !1
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.69, %cond.end
  %48 = load %struct.Hlist*, %struct.Hlist** %hp, align 8, !tbaa !1
  %tobool22 = icmp ne %struct.Hlist* %48, null
  br i1 %tobool22, label %for.body.23, label %for.end.71

for.body.23:                                      ; preds = %for.cond.21
  %49 = bitcast i8** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = bitcast i8** %tt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %runlen, align 4, !tbaa !5
  %idx.ext24 = sext i32 %52 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %51, i64 %idx.ext24
  store i8* %add.ptr25, i8** %s, align 8, !tbaa !1
  %53 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ibase = getelementptr inbounds %struct.WImage, %struct.WImage* %53, i32 0, i32 9
  %54 = load i8*, i8** %ibase, align 8, !tbaa !53
  %55 = load %struct.Hlist*, %struct.Hlist** %hp, align 8, !tbaa !1
  %p26 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %55, i32 0, i32 0
  %56 = load i64, i64* %p26, align 8, !tbaa !73
  %add.ptr27 = getelementptr inbounds i8, i8* %54, i64 %56
  %57 = load i32, i32* %runlen, align 4, !tbaa !5
  %idx.ext28 = sext i32 %57 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr27, i64 %idx.ext28
  store i8* %add.ptr29, i8** %t, align 8, !tbaa !1
  %58 = load i8*, i8** %s, align 8, !tbaa !1
  store i8* %58, i8** %ss, align 8, !tbaa !1
  %59 = load i8*, i8** %t, align 8, !tbaa !1
  store i8* %59, i8** %tt, align 8, !tbaa !1
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %for.body.23
  %60 = load i8*, i8** %ss, align 8, !tbaa !1
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp31 = icmp uge i8* %60, %61
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.30
  %62 = load i8*, i8** %ss, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !38
  %conv33 = zext i8 %63 to i32
  %64 = load i8*, i8** %tt, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !38
  %conv34 = zext i8 %65 to i32
  %cmp35 = icmp eq i32 %conv33, %conv34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.30
  %66 = phi i1 [ false, %for.cond.30 ], [ %cmp35, %land.rhs ]
  br i1 %66, label %for.body.37, label %for.end.40

for.body.37:                                      ; preds = %land.end
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.37
  %67 = load i8*, i8** %ss, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr, i8** %ss, align 8, !tbaa !1
  %68 = load i8*, i8** %tt, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %incdec.ptr39, i8** %tt, align 8, !tbaa !1
  br label %for.cond.30

for.end.40:                                       ; preds = %land.end
  %69 = load i8*, i8** %ss, align 8, !tbaa !1
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp41 = icmp ult i8* %69, %70
  br i1 %cmp41, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %for.end.40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.43
  %71 = load i8*, i8** %s, align 8, !tbaa !1
  %72 = load i8*, i8** %es, align 8, !tbaa !1
  %cmp44 = icmp ult i8* %71, %72
  br i1 %cmp44, label %land.rhs.46, label %land.end.51

land.rhs.46:                                      ; preds = %while.cond
  %73 = load i8*, i8** %s, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !38
  %conv47 = zext i8 %74 to i32
  %75 = load i8*, i8** %t, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !38
  %conv48 = zext i8 %76 to i32
  %cmp49 = icmp eq i32 %conv47, %conv48
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.46, %while.cond
  %77 = phi i1 [ false, %while.cond ], [ %cmp49, %land.rhs.46 ]
  br i1 %77, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.51
  %78 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr52, i8** %s, align 8, !tbaa !1
  %79 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr53, i8** %t, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end.51
  br label %if.end.54

if.end.54:                                        ; preds = %while.end, %for.end.40
  %80 = bitcast i8** %tt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i8** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = load i8*, i8** %s, align 8, !tbaa !1
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %83 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv55, i32* %n, align 4, !tbaa !5
  %84 = load i32, i32* %n, align 4, !tbaa !5
  %85 = load i32, i32* %runlen, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %84, %85
  br i1 %cmp56, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.end.54
  %86 = load i32, i32* %n, align 4, !tbaa !5
  store i32 %86, i32* %runlen, align 4, !tbaa !5
  %87 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ibase59 = getelementptr inbounds %struct.WImage, %struct.WImage* %87, i32 0, i32 9
  %88 = load i8*, i8** %ibase59, align 8, !tbaa !53
  %89 = load %struct.Hlist*, %struct.Hlist** %hp, align 8, !tbaa !1
  %p60 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %89, i32 0, i32 0
  %90 = load i64, i64* %p60, align 8, !tbaa !73
  %add.ptr61 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %add.ptr61, i8** %best, align 8, !tbaa !1
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %92 = load i32, i32* %runlen, align 4, !tbaa !5
  %idx.ext62 = sext i32 %92 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %91, i64 %idx.ext62
  %93 = load i8*, i8** %es, align 8, !tbaa !1
  %cmp64 = icmp eq i8* %add.ptr63, %93
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.58
  br label %for.end.71

if.end.67:                                        ; preds = %if.then.58
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.54
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %94 = load %struct.Hlist*, %struct.Hlist** %hp, align 8, !tbaa !1
  %next70 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %94, i32 0, i32 1
  %95 = load %struct.Hlist*, %struct.Hlist** %next70, align 8, !tbaa !71
  store %struct.Hlist* %95, %struct.Hlist** %hp, align 8, !tbaa !1
  br label %for.cond.21

for.end.71:                                       ; preds = %if.then.66, %for.cond.21
  %96 = load i32, i32* %runlen, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %96, 3
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %for.end.71
  %97 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump75 = getelementptr inbounds %struct.WImage, %struct.WImage* %97, i32 0, i32 13
  %ndump76 = getelementptr inbounds %struct.Dump, %struct.Dump* %dump75, i32 0, i32 0
  %98 = load i32, i32* %ndump76, align 4, !tbaa !66
  %cmp77 = icmp eq i32 %98, 128
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.then.74
  %99 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call = call i32 @flushdump(%struct.WImage* %99) #4
  store i32 %call, i32* %rv, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %call, -2
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.then.79
  %100 = load i32, i32* %rv, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %100, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.83
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.74
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !38
  %103 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump89 = getelementptr inbounds %struct.WImage, %struct.WImage* %103, i32 0, i32 13
  %ndump90 = getelementptr inbounds %struct.Dump, %struct.Dump* %dump89, i32 0, i32 0
  %104 = load i32, i32* %ndump90, align 4, !tbaa !66
  %inc91 = add nsw i32 %104, 1
  store i32 %inc91, i32* %ndump90, align 4, !tbaa !66
  %idxprom92 = sext i32 %104 to i64
  %105 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump93 = getelementptr inbounds %struct.WImage, %struct.WImage* %105, i32 0, i32 13
  %dumpbuf = getelementptr inbounds %struct.Dump, %struct.Dump* %dump93, i32 0, i32 1
  %106 = load i8*, i8** %dumpbuf, align 8, !tbaa !65
  %arrayidx94 = getelementptr inbounds i8, i8* %106, i64 %idxprom92
  store i8 %102, i8* %arrayidx94, align 1, !tbaa !38
  store i32 1, i32* %runlen, align 4, !tbaa !5
  br label %if.end.120

if.else:                                          ; preds = %for.end.71
  %107 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call95 = call i32 @flushdump(%struct.WImage* %107) #4
  store i32 %call95, i32* %rv, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %call95, -2
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.else
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %if.else
  %108 = load i32, i32* %rv, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %108, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.99
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  %110 = load i8*, i8** %best, align 8, !tbaa !1
  %sub.ptr.lhs.cast104 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %110 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %sub = sub nsw i64 %sub.ptr.sub106, 1
  %conv107 = trunc i64 %sub to i32
  store i32 %conv107, i32* %offs, align 4, !tbaa !5
  %111 = load i32, i32* %runlen, align 4, !tbaa !5
  %sub108 = sub nsw i32 %111, 3
  %shl109 = shl i32 %sub108, 2
  %112 = load i32, i32* %offs, align 4, !tbaa !5
  %shr = ashr i32 %112, 8
  %or = or i32 %shl109, %shr
  %conv110 = trunc i32 %or to i8
  %arrayidx111 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv110, i8* %arrayidx111, align 1, !tbaa !38
  %113 = load i32, i32* %offs, align 4, !tbaa !5
  %and112 = and i32 %113, 255
  %conv113 = trunc i32 %and112 to i8
  %arrayidx114 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 %conv113, i8* %arrayidx114, align 1, !tbaa !38
  %114 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %call115 = call i32 @addbuf(%struct.WImage* %114, i8* %arraydecay, i32 2) #4
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.119:                                       ; preds = %if.end.103
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.88
  %115 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %118 = load i32, i32* %runlen, align 4, !tbaa !5
  %idx.ext121 = sext i32 %118 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %117, i64 %idx.ext121
  call void @updatehash(%struct.WImage* %115, i8* %116, i8* %add.ptr122) #4
  %119 = load i32, i32* %runlen, align 4, !tbaa !5
  %120 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext123 = sext i32 %119 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %120, i64 %idx.ext123
  store i8* %add.ptr124, i8** %p, align 8, !tbaa !1
  br label %for.cond.11

for.end.125:                                      ; preds = %for.cond.11
  %121 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %call126 = call i32 @flushdump(%struct.WImage* %121) #4
  store i32 %call126, i32* %rv, align 4, !tbaa !5
  %cmp127 = icmp eq i32 %call126, -2
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %for.end.125
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.130:                                       ; preds = %for.end.125
  %122 = load i32, i32* %rv, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %122, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.134:                                       ; preds = %if.end.130
  %123 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %bpl135 = getelementptr inbounds %struct.WImage, %struct.WImage* %123, i32 0, i32 3
  %124 = load i32, i32* %bpl135, align 4, !tbaa !63
  %conv136 = sext i32 %124 to i64
  %125 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line137 = getelementptr inbounds %struct.WImage, %struct.WImage* %125, i32 0, i32 12
  %126 = load i64, i64* %line137, align 8, !tbaa !54
  %add138 = add i64 %126, %conv136
  store i64 %add138, i64* %line137, align 8, !tbaa !54
  %127 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outp = getelementptr inbounds %struct.WImage, %struct.WImage* %127, i32 0, i32 5
  %128 = load i8*, i8** %outp, align 8, !tbaa !62
  %129 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %loutp = getelementptr inbounds %struct.WImage, %struct.WImage* %129, i32 0, i32 7
  store i8* %128, i8** %loutp, align 8, !tbaa !61
  %130 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %r = getelementptr inbounds %struct.WImage, %struct.WImage* %130, i32 0, i32 2
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 1
  %131 = load i32, i32* %y, align 4, !tbaa !59
  %inc139 = add nsw i32 %131, 1
  store i32 %inc139, i32* %y, align 4, !tbaa !59
  %132 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %bpl140 = getelementptr inbounds %struct.WImage, %struct.WImage* %132, i32 0, i32 3
  %133 = load i32, i32* %bpl140, align 4, !tbaa !63
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.134, %if.then.133, %if.then.129, %if.then.118, %if.then.102, %if.then.98, %if.then.86, %if.then.82
  %134 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %135) #2
  %136 = bitcast %struct.Hlist** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i8** %best to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i8** %es to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i8** %eline to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define internal i32 @addbuf(%struct.WImage* %w, i8* %buf, i32 %nbuf) #1 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.WImage*, align 8
  %buf.addr = alloca i8*, align 8
  %nbuf.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %nbuf, i32* %nbuf.addr, align 4, !tbaa !5
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outp = getelementptr inbounds %struct.WImage, %struct.WImage* %2, i32 0, i32 5
  %3 = load i8*, i8** %outp, align 8, !tbaa !62
  %4 = load i32, i32* %nbuf.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %eout = getelementptr inbounds %struct.WImage, %struct.WImage* %5, i32 0, i32 6
  %6 = load i8*, i8** %eout, align 8, !tbaa !60
  %cmp1 = icmp ugt i8* %add.ptr, %6
  br i1 %cmp1, label %if.then, label %if.end.26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %loutp = getelementptr inbounds %struct.WImage, %struct.WImage* %7, i32 0, i32 7
  %8 = load i8*, i8** %loutp, align 8, !tbaa !61
  %9 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf, i32 0, i32 0
  %cmp2 = icmp eq i8* %8, %arraydecay
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call = call i8* @gs_program_name() #4
  %call4 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call4) #4
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0)) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %loutp6 = getelementptr inbounds %struct.WImage, %struct.WImage* %10, i32 0, i32 7
  %11 = load i8*, i8** %loutp6, align 8, !tbaa !61
  %12 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outbuf7 = getelementptr inbounds %struct.WImage, %struct.WImage* %12, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf7, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %n, align 4, !tbaa !5
  %13 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.WImage, %struct.WImage* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !64
  %15 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %r = getelementptr inbounds %struct.WImage, %struct.WImage* %15, i32 0, i32 2
  %max = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y = getelementptr inbounds %struct.Point, %struct.Point* %max, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !59
  %17 = load i32, i32* %n, align 4, !tbaa !5
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 %16, i32 %17) #4
  %18 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outbuf10 = getelementptr inbounds %struct.WImage, %struct.WImage* %18, i32 0, i32 4
  %arraydecay11 = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf10, i32 0, i32 0
  %19 = load i32, i32* %n, align 4, !tbaa !5
  %conv12 = sext i32 %19 to i64
  %20 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %f13 = getelementptr inbounds %struct.WImage, %struct.WImage* %20, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f13, align 8, !tbaa !64
  %call14 = call i64 @fwrite(i8* %arraydecay11, i64 1, i64 %conv12, %struct._IO_FILE* %21) #4
  %22 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %r15 = getelementptr inbounds %struct.WImage, %struct.WImage* %22, i32 0, i32 2
  %max16 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r15, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.Point, %struct.Point* %max16, i32 0, i32 1
  %23 = load i32, i32* %y17, align 4, !tbaa !59
  %24 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %r18 = getelementptr inbounds %struct.WImage, %struct.WImage* %24, i32 0, i32 2
  %min = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r18, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.Point, %struct.Point* %min, i32 0, i32 1
  store i32 %23, i32* %y19, align 4, !tbaa !58
  %25 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outbuf20 = getelementptr inbounds %struct.WImage, %struct.WImage* %25, i32 0, i32 4
  %arraydecay21 = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf20, i32 0, i32 0
  %26 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outp22 = getelementptr inbounds %struct.WImage, %struct.WImage* %26, i32 0, i32 5
  store i8* %arraydecay21, i8** %outp22, align 8, !tbaa !62
  %27 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outbuf23 = getelementptr inbounds %struct.WImage, %struct.WImage* %27, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [6000 x i8], [6000 x i8]* %outbuf23, i32 0, i32 0
  %28 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %loutp25 = getelementptr inbounds %struct.WImage, %struct.WImage* %28, i32 0, i32 7
  store i8* %arraydecay24, i8** %loutp25, align 8, !tbaa !61
  %29 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  call void @zerohash(%struct.WImage* %29) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false
  %30 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outp27 = getelementptr inbounds %struct.WImage, %struct.WImage* %30, i32 0, i32 5
  %31 = load i8*, i8** %outp27, align 8, !tbaa !62
  %32 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %33 = load i32, i32* %nbuf.addr, align 4, !tbaa !5
  %conv28 = sext i32 %33 to i64
  %call29 = call i8* @memmove(i8* %31, i8* %32, i64 %conv28) #5
  %34 = load i32, i32* %nbuf.addr, align 4, !tbaa !5
  %35 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %outp30 = getelementptr inbounds %struct.WImage, %struct.WImage* %35, i32 0, i32 5
  %36 = load i8*, i8** %outp30, align 8, !tbaa !62
  %idx.ext31 = sext i32 %34 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %36, i64 %idx.ext31
  store i8* %add.ptr32, i8** %outp30, align 8, !tbaa !62
  %37 = load i32, i32* %nbuf.addr, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.end, %if.then.3
  %38 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i8* @shiftwindow(%struct.WImage* %w, i8* %data, i8* %edata) #1 {
entry:
  %w.addr = alloca %struct.WImage*, align 8
  %data.addr = alloca i8*, align 8
  %edata.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %edata, i8** %edata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.WImage, %struct.WImage* %2, i32 0, i32 12
  %3 = load i64, i64* %line, align 8, !tbaa !54
  %cmp = icmp ugt i64 %3, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line1 = getelementptr inbounds %struct.WImage, %struct.WImage* %4, i32 0, i32 12
  %5 = load i64, i64* %line1, align 8, !tbaa !54
  %sub = sub i64 %5, 1024
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %n, align 4, !tbaa !5
  %6 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %6, i32 0, i32 8
  %7 = load i8*, i8** %inbuf, align 8, !tbaa !50
  %8 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf2 = getelementptr inbounds %struct.WImage, %struct.WImage* %8, i32 0, i32 8
  %9 = load i8*, i8** %inbuf2, align 8, !tbaa !50
  %10 = load i32, i32* %n, align 4, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %11, i32 0, i32 11
  %12 = load i32, i32* %ninbuf, align 4, !tbaa !56
  %13 = load i32, i32* %n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %12, %13
  %conv4 = sext i32 %sub3 to i64
  %call = call i8* @memmove(i8* %7, i8* %add.ptr, i64 %conv4) #5
  %14 = load i32, i32* %n, align 4, !tbaa !5
  %conv5 = sext i32 %14 to i64
  %15 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %line6 = getelementptr inbounds %struct.WImage, %struct.WImage* %15, i32 0, i32 12
  %16 = load i64, i64* %line6, align 8, !tbaa !54
  %sub7 = sub i64 %16, %conv5
  store i64 %sub7, i64* %line6, align 8, !tbaa !54
  %17 = load i32, i32* %n, align 4, !tbaa !5
  %18 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ibase = getelementptr inbounds %struct.WImage, %struct.WImage* %18, i32 0, i32 9
  %19 = load i8*, i8** %ibase, align 8, !tbaa !53
  %idx.ext8 = sext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 %idx.neg
  store i8* %add.ptr9, i8** %ibase, align 8, !tbaa !53
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %21 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf10 = getelementptr inbounds %struct.WImage, %struct.WImage* %21, i32 0, i32 11
  %22 = load i32, i32* %ninbuf10, align 4, !tbaa !56
  %sub11 = sub nsw i32 %22, %20
  store i32 %sub11, i32* %ninbuf10, align 4, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %minbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %23, i32 0, i32 10
  %24 = load i32, i32* %minbuf, align 4, !tbaa !55
  %25 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf12 = getelementptr inbounds %struct.WImage, %struct.WImage* %25, i32 0, i32 11
  %26 = load i32, i32* %ninbuf12, align 4, !tbaa !56
  %cmp13 = icmp sgt i32 %24, %26
  br i1 %cmp13, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end
  %27 = load i8*, i8** %edata.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp15 = icmp ugt i8* %27, %28
  br i1 %cmp15, label %if.then.17, label %if.end.39

if.then.17:                                       ; preds = %land.lhs.true
  %29 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %minbuf18 = getelementptr inbounds %struct.WImage, %struct.WImage* %29, i32 0, i32 10
  %30 = load i32, i32* %minbuf18, align 4, !tbaa !55
  %31 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf19 = getelementptr inbounds %struct.WImage, %struct.WImage* %31, i32 0, i32 11
  %32 = load i32, i32* %ninbuf19, align 4, !tbaa !56
  %sub20 = sub nsw i32 %30, %32
  store i32 %sub20, i32* %m, align 4, !tbaa !5
  %33 = load i8*, i8** %edata.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i32, i32* %m, align 4, !tbaa !5
  %conv21 = sext i32 %35 to i64
  %cmp22 = icmp slt i64 %sub.ptr.sub, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.then.17
  %36 = load i8*, i8** %edata.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast25 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %37 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %conv28 = trunc i64 %sub.ptr.sub27 to i32
  store i32 %conv28, i32* %m, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.then.17
  %38 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf30 = getelementptr inbounds %struct.WImage, %struct.WImage* %38, i32 0, i32 8
  %39 = load i8*, i8** %inbuf30, align 8, !tbaa !50
  %40 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf31 = getelementptr inbounds %struct.WImage, %struct.WImage* %40, i32 0, i32 11
  %41 = load i32, i32* %ninbuf31, align 4, !tbaa !56
  %idx.ext32 = sext i32 %41 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %39, i64 %idx.ext32
  %42 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %43 = load i32, i32* %m, align 4, !tbaa !5
  %conv34 = sext i32 %43 to i64
  %call35 = call i8* @memmove(i8* %add.ptr33, i8* %42, i64 %conv34) #5
  %44 = load i32, i32* %m, align 4, !tbaa !5
  %45 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext36 = sext i32 %44 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %45, i64 %idx.ext36
  store i8* %add.ptr37, i8** %data.addr, align 8, !tbaa !1
  %46 = load i32, i32* %m, align 4, !tbaa !5
  %47 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf38 = getelementptr inbounds %struct.WImage, %struct.WImage* %47, i32 0, i32 11
  %48 = load i32, i32* %ninbuf38, align 4, !tbaa !56
  %add = add nsw i32 %48, %46
  store i32 %add, i32* %ninbuf38, align 4, !tbaa !56
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.29, %land.lhs.true, %if.end
  %49 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %50 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  ret i8* %49
}

; Function Attrs: nounwind uwtable
define internal i32 @flushdump(%struct.WImage* %w) #1 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.WImage*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump = getelementptr inbounds %struct.WImage, %struct.WImage* %1, i32 0, i32 13
  %ndump = getelementptr inbounds %struct.Dump, %struct.Dump* %dump, i32 0, i32 0
  %2 = load i32, i32* %ndump, align 4, !tbaa !66
  store i32 %2, i32* %n, align 4, !tbaa !5
  %3 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %or = or i32 128, %sub
  %conv = trunc i32 %or to i8
  %5 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump1 = getelementptr inbounds %struct.WImage, %struct.WImage* %5, i32 0, i32 13
  %buf = getelementptr inbounds %struct.Dump, %struct.Dump* %dump1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [129 x i8], [129 x i8]* %buf, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !38
  %6 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %7 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump2 = getelementptr inbounds %struct.WImage, %struct.WImage* %7, i32 0, i32 13
  %buf3 = getelementptr inbounds %struct.Dump, %struct.Dump* %dump2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [129 x i8], [129 x i8]* %buf3, i32 0, i32 0
  %8 = load i32, i32* %n, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %call = call i32 @addbuf(%struct.WImage* %6, i8* %arraydecay, i32 %add) #4
  store i32 %call, i32* %n, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %call, -2
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %9 = load i32, i32* %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %10 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %dump12 = getelementptr inbounds %struct.WImage, %struct.WImage* %10, i32 0, i32 13
  %ndump13 = getelementptr inbounds %struct.Dump, %struct.Dump* %dump12, i32 0, i32 0
  store i32 0, i32* %ndump13, align 4, !tbaa !66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then
  %11 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @updatehash(%struct.WImage* %w, i8* %p, i8* %ep) #1 {
entry:
  %w.addr = alloca %struct.WImage*, align 8
  %p.addr = alloca i8*, align 8
  %ep.addr = alloca i8*, align 8
  %q = alloca i8*, align 8
  %cp = alloca %struct.Hlist*, align 8
  %hash = alloca %struct.Hlist*, align 8
  %h = alloca i32, align 4
  store %struct.WImage* %w, %struct.WImage** %w.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %ep, i8** %ep.addr, align 8, !tbaa !1
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.Hlist** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.Hlist** %hash to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %hash1 = getelementptr inbounds %struct.WImage, %struct.WImage* %4, i32 0, i32 14
  %arraydecay = getelementptr inbounds [512 x %struct.Hlist], [512 x %struct.Hlist]* %hash1, i32 0, i32 0
  store %struct.Hlist* %arraydecay, %struct.Hlist** %hash, align 8, !tbaa !1
  %5 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %cp2 = getelementptr inbounds %struct.WImage, %struct.WImage* %5, i32 0, i32 16
  %6 = load %struct.Hlist*, %struct.Hlist** %cp2, align 8, !tbaa !68
  store %struct.Hlist* %6, %struct.Hlist** %cp, align 8, !tbaa !1
  %7 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h3 = getelementptr inbounds %struct.WImage, %struct.WImage* %7, i32 0, i32 17
  %8 = load i32, i32* %h3, align 4, !tbaa !70
  store i32 %8, i32* %h, align 4, !tbaa !5
  %9 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %9, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i8*, i8** %q, align 8, !tbaa !1
  %11 = load i8*, i8** %ep.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.Hlist, %struct.Hlist* %12, i32 0, i32 2
  %13 = load %struct.Hlist*, %struct.Hlist** %prev, align 8, !tbaa !74
  %tobool = icmp ne %struct.Hlist* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.Hlist, %struct.Hlist* %14, i32 0, i32 1
  %15 = load %struct.Hlist*, %struct.Hlist** %next, align 8, !tbaa !71
  %16 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %prev4 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %16, i32 0, i32 2
  %17 = load %struct.Hlist*, %struct.Hlist** %prev4, align 8, !tbaa !74
  %next5 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %17, i32 0, i32 1
  store %struct.Hlist* %15, %struct.Hlist** %next5, align 8, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i32, i32* %h, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.Hlist*, %struct.Hlist** %hash, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.Hlist, %struct.Hlist* %19, i64 %idxprom
  %next6 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %arrayidx, i32 0, i32 1
  %20 = load %struct.Hlist*, %struct.Hlist** %next6, align 8, !tbaa !71
  %21 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %21, i32 0, i32 1
  store %struct.Hlist* %20, %struct.Hlist** %next7, align 8, !tbaa !71
  %22 = load i32, i32* %h, align 4, !tbaa !5
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.Hlist*, %struct.Hlist** %hash, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %23, i64 %idxprom8
  %24 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %prev10 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %24, i32 0, i32 2
  store %struct.Hlist* %arrayidx9, %struct.Hlist** %prev10, align 8, !tbaa !74
  %25 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %26 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %prev11 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %26, i32 0, i32 2
  %27 = load %struct.Hlist*, %struct.Hlist** %prev11, align 8, !tbaa !74
  %next12 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %27, i32 0, i32 1
  store %struct.Hlist* %25, %struct.Hlist** %next12, align 8, !tbaa !71
  %28 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %next13 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %28, i32 0, i32 1
  %29 = load %struct.Hlist*, %struct.Hlist** %next13, align 8, !tbaa !71
  %tobool14 = icmp ne %struct.Hlist* %29, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %30 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %31 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %next16 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %31, i32 0, i32 1
  %32 = load %struct.Hlist*, %struct.Hlist** %next16, align 8, !tbaa !71
  %prev17 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %32, i32 0, i32 2
  store %struct.Hlist* %30, %struct.Hlist** %prev17, align 8, !tbaa !74
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %34 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ibase = getelementptr inbounds %struct.WImage, %struct.WImage* %34, i32 0, i32 9
  %35 = load i8*, i8** %ibase, align 8, !tbaa !53
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %p19 = getelementptr inbounds %struct.Hlist, %struct.Hlist* %36, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %p19, align 8, !tbaa !73
  %37 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.Hlist, %struct.Hlist* %37, i32 1
  store %struct.Hlist* %incdec.ptr, %struct.Hlist** %cp, align 8, !tbaa !1
  %38 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %chain = getelementptr inbounds %struct.WImage, %struct.WImage* %38, i32 0, i32 15
  %arraydecay20 = getelementptr inbounds [1024 x %struct.Hlist], [1024 x %struct.Hlist]* %chain, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.Hlist, %struct.Hlist* %arraydecay20, i64 1024
  %cmp21 = icmp eq %struct.Hlist* %incdec.ptr, %add.ptr
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.18
  %39 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %chain23 = getelementptr inbounds %struct.WImage, %struct.WImage* %39, i32 0, i32 15
  %arraydecay24 = getelementptr inbounds [1024 x %struct.Hlist], [1024 x %struct.Hlist]* %chain23, i32 0, i32 0
  store %struct.Hlist* %arraydecay24, %struct.Hlist** %cp, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.18
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %ninbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %41, i32 0, i32 11
  %42 = load i32, i32* %ninbuf, align 4, !tbaa !56
  %idxprom27 = sext i32 %42 to i64
  %43 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %inbuf = getelementptr inbounds %struct.WImage, %struct.WImage* %43, i32 0, i32 8
  %44 = load i8*, i8** %inbuf, align 8, !tbaa !50
  %arrayidx28 = getelementptr inbounds i8, i8* %44, i64 %idxprom27
  %cmp29 = icmp ult i8* %arrayidx26, %arrayidx28
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %45 = load i32, i32* %h, align 4, !tbaa !5
  %shl = shl i32 %45, 3
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx31, align 1, !tbaa !38
  %conv = zext i8 %47 to i32
  %xor = xor i32 %shl, %conv
  %and = and i32 %xor, 511
  store i32 %and, i32* %h, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr33, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.Hlist*, %struct.Hlist** %cp, align 8, !tbaa !1
  %50 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %cp34 = getelementptr inbounds %struct.WImage, %struct.WImage* %50, i32 0, i32 16
  store %struct.Hlist* %49, %struct.Hlist** %cp34, align 8, !tbaa !68
  %51 = load i32, i32* %h, align 4, !tbaa !5
  %52 = load %struct.WImage*, %struct.WImage** %w.addr, align 8, !tbaa !1
  %h35 = getelementptr inbounds %struct.WImage, %struct.WImage* %52, i32 0, i32 17
  store i32 %51, i32* %h35, align 4, !tbaa !70
  %53 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.Hlist** %hash to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.Hlist** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  ret void
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

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
!7 = !{!8, !2, i64 24}
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
!23 = !{!24, !6, i64 18488}
!24 = !{!"inferno_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !2, i64 18496}
!25 = !{!24, !6, i64 18472}
!26 = !{!24, !6, i64 18476}
!27 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!28 = !{!8, !6, i64 832}
!29 = !{!30, !6, i64 8}
!30 = !{!"Rectangle", !31, i64 0, !31, i64 8}
!31 = !{!"Point", !6, i64 0, !6, i64 4}
!32 = !{!8, !6, i64 836}
!33 = !{!30, !6, i64 12}
!34 = !{!24, !2, i64 24}
!35 = !{!36, !2, i64 64}
!36 = !{!"gs_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!37 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!38 = !{!3, !3, i64 0}
!39 = !{!12, !12, i64 0}
!40 = !{!24, !2, i64 18496}
!41 = !{!10, !10, i64 0}
!42 = !{!36, !2, i64 24}
!43 = !{!24, !6, i64 18484}
!44 = !{!24, !6, i64 18480}
!45 = !{!24, !6, i64 18492}
!46 = !{!47, !2, i64 24}
!47 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!48 = !{!30, !6, i64 0}
!49 = !{!30, !6, i64 4}
!50 = !{!51, !2, i64 6072}
!51 = !{!"WImage", !2, i64 0, !30, i64 8, !30, i64 24, !6, i64 40, !3, i64 44, !2, i64 6048, !2, i64 6056, !2, i64 6064, !2, i64 6072, !2, i64 6080, !6, i64 6088, !6, i64 6092, !10, i64 6096, !52, i64 6104, !3, i64 6256, !3, i64 18544, !2, i64 43120, !6, i64 43128, !6, i64 43132}
!52 = !{!"Dump", !6, i64 0, !2, i64 8, !3, i64 16}
!53 = !{!51, !2, i64 6080}
!54 = !{!51, !10, i64 6096}
!55 = !{!51, !6, i64 6088}
!56 = !{!51, !6, i64 6092}
!57 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!58 = !{!51, !6, i64 28}
!59 = !{!51, !6, i64 36}
!60 = !{!51, !2, i64 6056}
!61 = !{!51, !2, i64 6064}
!62 = !{!51, !2, i64 6048}
!63 = !{!51, !6, i64 40}
!64 = !{!51, !2, i64 0}
!65 = !{!51, !2, i64 6112}
!66 = !{!51, !6, i64 6104}
!67 = !{!51, !6, i64 20}
!68 = !{!51, !2, i64 43120}
!69 = !{!51, !6, i64 43132}
!70 = !{!51, !6, i64 43128}
!71 = !{!72, !2, i64 8}
!72 = !{!"Hlist", !10, i64 0, !2, i64 8, !2, i64 16}
!73 = !{!72, !10, i64 0}
!74 = !{!72, !2, i64 16}
