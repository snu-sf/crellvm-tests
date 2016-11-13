; ModuleID = './gdevlp8k.bc'
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
@.str = private unnamed_addr constant [7 x i8] c"lp8000\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lp8000_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_bg_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float -7.500000e+01, float -7.500000e+01], [4 x float] [float 1.800000e+01, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lp8000_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"lp8000_print_page(buf1)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"lp8000_print_page(buf2)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\1B\01@EJL \0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"@EJL EN LA=ESC/PAGE\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\1DrhE\1B\01@EJL \0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"@EJL SE LA=ESC/PAGE\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"@EJL SET PU=1 PS=A4 ZO=OFF\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\1D0;0.24muE\1D2;300;300drE\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\1D0;300;300drE\1D1tsE\1D1mmE\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\1D7isE\1D5iaF\1D5ipP\1D14psE\1D0poE\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\1D60;60loE\1D0X\1D0Y\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\1D0;0;2360;3388caE\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"\1D1cmE\1D0alfP\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\1D0affP\1D0boP\1D0abP\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\1D4ilG\1D0bcI\1D0sarG\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\1D1;0;100spE\1D2owE\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\1D\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\1D3bcI\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Y\1D\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"1;0bi{I\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\1D0bcI\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\1D1coO\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\1DrhE\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lp8000_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %lnum = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %left = alloca i32, align 4
  %width = alloca i32, align 4
  %count = alloca i32, align 4
  %left1 = alloca i32, align 4
  %left2 = alloca i32, align 4
  %left0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in_data = alloca i8*, align 8
  %inp = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %line_size, align 4, !tbaa !5
  store i32 %6, i32* %in_size, align 4, !tbaa !5
  %7 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %11 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %15 = load i32, i32* %in_size, align 4, !tbaa !5
  %call3 = call i8* %11(%struct.gs_memory_s* %14, i32 %15, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call3, i8** %buf1, align 8, !tbaa !1
  %16 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %20 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !26
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !23
  %24 = load i32, i32* %in_size, align 4, !tbaa !5
  %call10 = call i8* %20(%struct.gs_memory_s* %23, i32 %24, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call10, i8** %buf2, align 8, !tbaa !1
  %25 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %26, i8** %in, align 8, !tbaa !1
  %27 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load i8*, i8** %buf2, align 8, !tbaa !1
  store i8* %28, i8** %out, align 8, !tbaa !1
  %29 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = bitcast i32* %left1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = bitcast i32* %left2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = bitcast i32* %left0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp = icmp eq i8* %38, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %39 = load i8*, i8** %buf2, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %39, null
  br i1 %cmp11, label %if.then, label %if.end.27

if.then:                                          ; preds = %lor.lhs.false, %entry
  %40 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool = icmp ne i8* %40, null
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !23
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !7
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !23
  %48 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %44(%struct.gs_memory_s* %47, i8* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %49 = load i8*, i8** %buf2, align 8, !tbaa !1
  %tobool18 = icmp ne i8* %49, null
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !7
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !23
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %53 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !27
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !7
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !23
  %57 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %53(%struct.gs_memory_s* %56, i8* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.27:                                        ; preds = %lor.lhs.false
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call28 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %58) #4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call29 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 20, %struct._IO_FILE* %59) #4
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call30 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 1, i64 12, %struct._IO_FILE* %60) #4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call31 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 1, i64 20, %struct._IO_FILE* %61) #4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call32 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 27, %struct._IO_FILE* %62) #4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call33 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 20, %struct._IO_FILE* %63) #4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call34 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 23, %struct._IO_FILE* %64) #4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call35 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i64 1, i64 23, %struct._IO_FILE* %65) #4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call36 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i64 1, i64 26, %struct._IO_FILE* %66) #4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call37 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i64 1, i64 15, %struct._IO_FILE* %67) #4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call38 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i64 1, i64 17, %struct._IO_FILE* %68) #4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call39 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 1, i64 11, %struct._IO_FILE* %69) #4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call40 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i64 1, i64 16, %struct._IO_FILE* %70) #4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i64 1, i64 16, %struct._IO_FILE* %71) #4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call42 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i64 1, i64 16, %struct._IO_FILE* %72) #4
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %74 = load float, float* %arrayidx, align 4, !tbaa !28
  %conv = fpext float %74 to double
  %mul = fmul double 2.500000e-01, %conv
  %conv43 = fptosi double %mul to i32
  %sub = sub nsw i32 %conv43, 60
  store i32 %sub, i32* %left1, align 4, !tbaa !5
  %75 = load i32, i32* %left1, align 4, !tbaa !5
  %shr = ashr i32 %75, 3
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %left1, align 4, !tbaa !5
  %76 = load i32, i32* %left1, align 4, !tbaa !5
  store i32 %76, i32* %left0, align 4, !tbaa !5
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call44 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %77) #4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %79 = load i32, i32* %left1, align 4, !tbaa !5
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %79) #4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call46 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %80) #4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call47 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %81) #4
  %82 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution48 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %82, i32 0, i32 22
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution48, i32 0, i64 1
  %83 = load float, float* %arrayidx49, align 4, !tbaa !28
  %conv50 = fpext float %83 to double
  %mul51 = fmul double 2.500000e-01, %conv50
  %conv52 = fptosi double %mul51 to i32
  store i32 %conv52, i32* %top, align 4, !tbaa !5
  %84 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %84, i32 0, i32 14
  %85 = load i32, i32* %height, align 4, !tbaa !30
  %conv53 = sitofp i32 %85 to double
  %86 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %86, i32 0, i32 22
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution54, i32 0, i64 1
  %87 = load float, float* %arrayidx55, align 4, !tbaa !28
  %conv56 = fpext float %87 to double
  %mul57 = fmul double 2.500000e-01, %conv56
  %sub58 = fsub double %conv53, %mul57
  %conv59 = fptosi double %sub58 to i32
  store i32 %conv59, i32* %bottom, align 4, !tbaa !5
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 22
  %arrayidx61 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution60, i32 0, i64 0
  %89 = load float, float* %arrayidx61, align 4, !tbaa !28
  %conv62 = fpext float %89 to double
  %mul63 = fmul double 2.500000e-01, %conv62
  %conv64 = fptosi double %mul63 to i32
  %shr65 = ashr i32 %conv64, 3
  store i32 %shr65, i32* %left, align 4, !tbaa !5
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width66 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %90, i32 0, i32 13
  %91 = load i32, i32* %width66, align 4, !tbaa !31
  %92 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %92, i32 0, i32 22
  %arrayidx68 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution67, i32 0, i64 0
  %93 = load float, float* %arrayidx68, align 4, !tbaa !28
  %conv69 = fpext float %93 to double
  %mul70 = fmul double 2.500000e-01, %conv69
  %conv71 = fptosi double %mul70 to i32
  %sub72 = sub nsw i32 %91, %conv71
  %shr73 = ashr i32 %sub72, 3
  %94 = load i32, i32* %left, align 4, !tbaa !5
  %sub74 = sub nsw i32 %shr73, %94
  store i32 %sub74, i32* %width, align 4, !tbaa !5
  %95 = load i32, i32* %top, align 4, !tbaa !5
  store i32 %95, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.27
  %96 = load i32, i32* %lnum, align 4, !tbaa !5
  %97 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %96, %97
  br i1 %cmp75, label %for.body, label %for.end.203

for.body:                                         ; preds = %for.cond
  %98 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #2
  %99 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %100 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %104 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %106 = load i32, i32* %lnum, align 4, !tbaa !5
  %107 = load i8*, i8** %in, align 8, !tbaa !1
  %call77 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %105, i32 %106, i8* %107, i8** %in_data) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %108 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx78, align 1, !tbaa !32
  %conv79 = zext i8 %109 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %110 = load i8*, i8** %in_data, align 8, !tbaa !1
  %111 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub82 = sub nsw i32 %112, 1
  %conv83 = sext i32 %sub82 to i64
  %call84 = call i32 @memcmp(i8* %110, i8* %add.ptr, i64 %conv83) #5
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %113 = load i32, i32* %lnum, align 4, !tbaa !5
  %114 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %113, %114
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %115 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp86, %land.rhs ]
  br i1 %115, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %116 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !5
  %117 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %118 = load i32, i32* %lnum, align 4, !tbaa !5
  %119 = load i8*, i8** %in, align 8, !tbaa !1
  %call88 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %117, i32 %118, i8* %119, i8** %in_data) #4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %120 = load i32, i32* %lnum, align 4, !tbaa !5
  %121 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %120, %121
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %while.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %while.end
  %122 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %123 = load i32, i32* %lnum, align 4, !tbaa !5
  %124 = load i8*, i8** %in, align 8, !tbaa !1
  %125 = load i32, i32* %in_size, align 4, !tbaa !5
  %call93 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %122, i32 %123, i8* %124, i32 %125) #4
  store i32 %call93, i32* %lcnt, align 4, !tbaa !5
  %126 = load i8*, i8** %in, align 8, !tbaa !1
  %127 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext = sext i32 %127 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %126, i64 %idx.ext
  store i8* %add.ptr94, i8** %inp, align 8, !tbaa !1
  %128 = load i8*, i8** %inp, align 8, !tbaa !1
  %129 = load i32, i32* %width, align 4, !tbaa !5
  %idx.ext95 = sext i32 %129 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %128, i64 %idx.ext95
  store i8* %add.ptr96, i8** %in_end, align 8, !tbaa !1
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.106, %if.end.92
  %130 = load i8*, i8** %in_end, align 8, !tbaa !1
  %131 = load i8*, i8** %inp, align 8, !tbaa !1
  %cmp98 = icmp ugt i8* %130, %131
  br i1 %cmp98, label %land.rhs.100, label %land.end.105

land.rhs.100:                                     ; preds = %while.cond.97
  %132 = load i8*, i8** %in_end, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %132, i64 -1
  %133 = load i8, i8* %arrayidx101, align 1, !tbaa !32
  %conv102 = zext i8 %133 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br label %land.end.105

land.end.105:                                     ; preds = %land.rhs.100, %while.cond.97
  %134 = phi i1 [ false, %while.cond.97 ], [ %cmp103, %land.rhs.100 ]
  br i1 %134, label %while.body.106, label %while.end.107

while.body.106:                                   ; preds = %land.end.105
  %135 = load i8*, i8** %in_end, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %incdec.ptr, i8** %in_end, align 8, !tbaa !1
  br label %while.cond.97

while.end.107:                                    ; preds = %land.end.105
  store i32 0, i32* %left2, align 4, !tbaa !5
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc, %while.end.107
  %136 = load i8*, i8** %inp, align 8, !tbaa !1
  %137 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp109 = icmp ult i8* %136, %137
  br i1 %cmp109, label %land.rhs.111, label %land.end.116

land.rhs.111:                                     ; preds = %for.cond.108
  %138 = load i8*, i8** %inp, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %138, i64 0
  %139 = load i8, i8* %arrayidx112, align 1, !tbaa !32
  %conv113 = zext i8 %139 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br label %land.end.116

land.end.116:                                     ; preds = %land.rhs.111, %for.cond.108
  %140 = phi i1 [ false, %for.cond.108 ], [ %cmp114, %land.rhs.111 ]
  br i1 %140, label %for.body.117, label %for.end

for.body.117:                                     ; preds = %land.end.116
  br label %for.inc

for.inc:                                          ; preds = %for.body.117
  %141 = load i8*, i8** %inp, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr118, i8** %inp, align 8, !tbaa !1
  %142 = load i32, i32* %left2, align 4, !tbaa !5
  %inc119 = add nsw i32 %142, 1
  store i32 %inc119, i32* %left2, align 4, !tbaa !5
  br label %for.cond.108

for.end:                                          ; preds = %land.end.116
  %143 = load i32, i32* %left1, align 4, !tbaa !5
  %144 = load i32, i32* %left2, align 4, !tbaa !5
  %shl120 = shl i32 %144, 3
  %add = add nsw i32 %143, %shl120
  store i32 %add, i32* %left2, align 4, !tbaa !5
  %145 = load i8*, i8** %out, align 8, !tbaa !1
  store i8* %145, i8** %outp, align 8, !tbaa !1
  %146 = load i8*, i8** %inp, align 8, !tbaa !1
  store i8* %146, i8** %p, align 8, !tbaa !1
  %147 = load i8*, i8** %inp, align 8, !tbaa !1
  %add.ptr121 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %add.ptr121, i8** %q, align 8, !tbaa !1
  br label %for.cond.122

for.cond.122:                                     ; preds = %if.end.166, %for.end
  %148 = load i8*, i8** %q, align 8, !tbaa !1
  %149 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp123 = icmp ult i8* %148, %149
  br i1 %cmp123, label %for.body.125, label %for.end.167

for.body.125:                                     ; preds = %for.cond.122
  %150 = load i8*, i8** %p, align 8, !tbaa !1
  %151 = load i8, i8* %150, align 1, !tbaa !32
  %conv126 = zext i8 %151 to i32
  %152 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr127, i8** %q, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !32
  %conv128 = zext i8 %153 to i32
  %cmp129 = icmp ne i32 %conv126, %conv128
  br i1 %cmp129, label %if.then.131, label %if.else

if.then.131:                                      ; preds = %for.body.125
  %154 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr132 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr132, i8** %p, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !32
  %156 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr133, i8** %outp, align 8, !tbaa !1
  store i8 %155, i8* %156, align 1, !tbaa !32
  br label %if.end.166

if.else:                                          ; preds = %for.body.125
  store i32 2, i32* %count, align 4, !tbaa !5
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.144, %if.else
  %157 = load i8*, i8** %p, align 8, !tbaa !1
  %158 = load i8, i8* %157, align 1, !tbaa !32
  %conv135 = zext i8 %158 to i32
  %159 = load i8*, i8** %q, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !32
  %conv136 = zext i8 %160 to i32
  %cmp137 = icmp eq i32 %conv135, %conv136
  br i1 %cmp137, label %land.rhs.139, label %land.end.142

land.rhs.139:                                     ; preds = %for.cond.134
  %161 = load i8*, i8** %q, align 8, !tbaa !1
  %162 = load i8*, i8** %in_end, align 8, !tbaa !1
  %cmp140 = icmp ult i8* %161, %162
  br label %land.end.142

land.end.142:                                     ; preds = %land.rhs.139, %for.cond.134
  %163 = phi i1 [ false, %for.cond.134 ], [ %cmp140, %land.rhs.139 ]
  br i1 %163, label %for.body.143, label %for.end.147

for.body.143:                                     ; preds = %land.end.142
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.143
  %164 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr145, i8** %q, align 8, !tbaa !1
  %165 = load i32, i32* %count, align 4, !tbaa !5
  %inc146 = add nsw i32 %165, 1
  store i32 %inc146, i32* %count, align 4, !tbaa !5
  br label %for.cond.134

for.end.147:                                      ; preds = %land.end.142
  br label %while.cond.148

while.cond.148:                                   ; preds = %while.body.151, %for.end.147
  %166 = load i32, i32* %count, align 4, !tbaa !5
  %cmp149 = icmp sgt i32 %166, 257
  br i1 %cmp149, label %while.body.151, label %while.end.157

while.body.151:                                   ; preds = %while.cond.148
  %167 = load i8*, i8** %p, align 8, !tbaa !1
  %168 = load i8, i8* %167, align 1, !tbaa !32
  %169 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr152, i8** %outp, align 8, !tbaa !1
  store i8 %168, i8* %169, align 1, !tbaa !32
  %170 = load i8*, i8** %p, align 8, !tbaa !1
  %171 = load i8, i8* %170, align 1, !tbaa !32
  %172 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr153, i8** %outp, align 8, !tbaa !1
  store i8 %171, i8* %172, align 1, !tbaa !32
  %173 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr154, i8** %outp, align 8, !tbaa !1
  store i8 -1, i8* %173, align 1, !tbaa !32
  %174 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr155 = getelementptr inbounds i8, i8* %174, i64 257
  store i8* %add.ptr155, i8** %p, align 8, !tbaa !1
  %175 = load i32, i32* %count, align 4, !tbaa !5
  %sub156 = sub nsw i32 %175, 257
  store i32 %sub156, i32* %count, align 4, !tbaa !5
  br label %while.cond.148

while.end.157:                                    ; preds = %while.cond.148
  %176 = load i8*, i8** %p, align 8, !tbaa !1
  %177 = load i8, i8* %176, align 1, !tbaa !32
  %178 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr158, i8** %outp, align 8, !tbaa !1
  store i8 %177, i8* %178, align 1, !tbaa !32
  %179 = load i8*, i8** %p, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !32
  %181 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr159 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr159, i8** %outp, align 8, !tbaa !1
  store i8 %180, i8* %181, align 1, !tbaa !32
  %182 = load i32, i32* %count, align 4, !tbaa !5
  %sub160 = sub nsw i32 %182, 2
  %conv161 = trunc i32 %sub160 to i8
  %183 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr162, i8** %outp, align 8, !tbaa !1
  store i8 %conv161, i8* %183, align 1, !tbaa !32
  %184 = load i32, i32* %count, align 4, !tbaa !5
  %185 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext163 = sext i32 %184 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %185, i64 %idx.ext163
  store i8* %add.ptr164, i8** %p, align 8, !tbaa !1
  %186 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr165 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %add.ptr165, i8** %q, align 8, !tbaa !1
  br label %if.end.166

if.end.166:                                       ; preds = %while.end.157, %if.then.131
  br label %for.cond.122

for.end.167:                                      ; preds = %for.cond.122
  %187 = load i8*, i8** %p, align 8, !tbaa !1
  %188 = load i8*, i8** %in_end, align 8, !tbaa !1
  %add.ptr168 = getelementptr inbounds i8, i8* %188, i64 -1
  %cmp169 = icmp eq i8* %187, %add.ptr168
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %for.end.167
  %189 = load i8*, i8** %p, align 8, !tbaa !1
  %190 = load i8, i8* %189, align 1, !tbaa !32
  %191 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr172, i8** %outp, align 8, !tbaa !1
  store i8 %190, i8* %191, align 1, !tbaa !32
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %for.end.167
  %192 = load i32, i32* %left2, align 4, !tbaa !5
  %193 = load i32, i32* %left0, align 4, !tbaa !5
  %cmp174 = icmp ne i32 %192, %193
  br i1 %cmp174, label %if.then.176, label %if.end.180

if.then.176:                                      ; preds = %if.end.173
  %194 = load i32, i32* %left2, align 4, !tbaa !5
  store i32 %194, i32* %left0, align 4, !tbaa !5
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call177 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %195) #4
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %197 = load i32, i32* %left2, align 4, !tbaa !5
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %197) #4
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call179 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %198) #4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.176, %if.end.173
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call181 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %199) #4
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %201 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub182 = sub nsw i32 %201, 60
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %sub182) #4
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call184 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i64 1, i64 2, %struct._IO_FILE* %202) #4
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %204 = load i8*, i8** %outp, align 8, !tbaa !1
  %205 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %204 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %205 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %sub.ptr.sub) #4
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %207 = load i8*, i8** %in_end, align 8, !tbaa !1
  %208 = load i8*, i8** %inp, align 8, !tbaa !1
  %sub.ptr.lhs.cast186 = ptrtoint i8* %207 to i64
  %sub.ptr.rhs.cast187 = ptrtoint i8* %208 to i64
  %sub.ptr.sub188 = sub i64 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187
  %shl189 = shl i64 %sub.ptr.sub188, 3
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %shl189) #4
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call191 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 1, i64 7, %struct._IO_FILE* %209) #4
  %210 = load i8*, i8** %out, align 8, !tbaa !1
  %211 = load i8*, i8** %outp, align 8, !tbaa !1
  %212 = load i8*, i8** %out, align 8, !tbaa !1
  %sub.ptr.lhs.cast192 = ptrtoint i8* %211 to i64
  %sub.ptr.rhs.cast193 = ptrtoint i8* %212 to i64
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call195 = call i64 @fwrite(i8* %210, i64 1, i64 %sub.ptr.sub194, %struct._IO_FILE* %213) #4
  %214 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc196 = add nsw i32 %214, 1
  store i32 %inc196, i32* %lnum, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.180, %if.then.91
  %215 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
  %216 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  %217 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %219 = bitcast i8** %in_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %220 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #2
  %221 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.203
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end.203:                                      ; preds = %cleanup, %for.cond
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call204 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %222) #4
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call205 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i64 1, i64 5, %struct._IO_FILE* %223) #4
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call206 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 1, i64 4, %struct._IO_FILE* %224) #4
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call207 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %225) #4
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call208 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 1, i64 20, %struct._IO_FILE* %226) #4
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call209 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 27, %struct._IO_FILE* %227) #4
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call210 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i64 1, i64 20, %struct._IO_FILE* %228) #4
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call211 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 23, %struct._IO_FILE* %229) #4
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call212 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i64 1, i64 23, %struct._IO_FILE* %230) #4
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call213 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i64 1, i64 26, %struct._IO_FILE* %231) #4
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call214 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i64 1, i64 15, %struct._IO_FILE* %232) #4
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call215 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i64 1, i64 17, %struct._IO_FILE* %233) #4
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call216 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 1, i64 11, %struct._IO_FILE* %234) #4
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call217 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i64 1, i64 16, %struct._IO_FILE* %235) #4
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call218 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i64 1, i64 16, %struct._IO_FILE* %236) #4
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call219 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 1, i64 4, %struct._IO_FILE* %237) #4
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call220 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %238) #4
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call221 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 8, %struct._IO_FILE* %239) #4
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call222 = call i32 @fflush(%struct._IO_FILE* %240) #4
  %241 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory223 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %241, i32 0, i32 3
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory223, align 8, !tbaa !7
  %non_gc_memory224 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %242, i32 0, i32 3
  %243 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory224, align 8, !tbaa !23
  %procs225 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %243, i32 0, i32 1
  %free_object226 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs225, i32 0, i32 2
  %244 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object226, align 8, !tbaa !27
  %245 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory227 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %245, i32 0, i32 3
  %246 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory227, align 8, !tbaa !7
  %non_gc_memory228 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %246, i32 0, i32 3
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory228, align 8, !tbaa !23
  %248 = load i8*, i8** %buf2, align 8, !tbaa !1
  call void %244(%struct.gs_memory_s* %247, i8* %248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #4
  %249 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory229 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory229, align 8, !tbaa !7
  %non_gc_memory230 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %250, i32 0, i32 3
  %251 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory230, align 8, !tbaa !23
  %procs231 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %251, i32 0, i32 1
  %free_object232 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs231, i32 0, i32 2
  %252 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object232, align 8, !tbaa !27
  %253 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory233 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %253, i32 0, i32 3
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory233, align 8, !tbaa !7
  %non_gc_memory234 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory234, align 8, !tbaa !23
  %256 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %252(%struct.gs_memory_s* %255, i8* %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %for.end.203, %if.end.26
  %257 = bitcast i32* %left0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %left2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %left1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #2
  %267 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #2
  %268 = bitcast i8** %buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %270 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = load i32, i32* %retval
  ret i32 %272

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

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fflush(%struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

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
!23 = !{!24, !2, i64 200}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 88}
!27 = !{!24, !2, i64 24}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!8, !6, i64 836}
!31 = !{!8, !6, i64 832}
!32 = !{!3, !3, i64 0}
