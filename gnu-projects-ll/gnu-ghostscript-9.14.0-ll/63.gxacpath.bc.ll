; ModuleID = './gxacpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_shared_procs_s = type opaque
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_cpath_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gs_int_rect_s, %struct.gs_int_rect_s, %struct.gx_clip_list_s }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [22 x i8] c"gx_device_cpath_accum\00", align 1
@st_device_cpath_accum = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1848, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_cpath_accum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_cpath_accum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@gs_cpath_accum_device = internal constant %struct.gx_device_cpath_accum_s { i32 1848, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @accum_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* @accum_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @accum_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gx_default_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_get_largest_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevGray_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @accum_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gs_int_rect_s zeroinitializer, %struct.gs_int_rect_s zeroinitializer, %struct.gx_clip_list_s zeroinitializer }, align 8
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@st_clip_list = external constant %struct.gs_memory_struct_type_s, align 8
@st_device = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"clip list accumulator\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"accum_rect\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"accum_free_rect(single)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"accum_free_rect(tail)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"accum_free_rect(head)\00", align 1
@st_clip_rect = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"accum_alloc_rect\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"accum_alloc_rect(tail)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"accum_alloc_rect(single)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"accum_alloc_rect(head)\00", align 1
@clip_head_rect = internal constant %struct.gx_clip_rect_s { %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s* null, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i8 0 }, align 8
@clip_tail_rect = internal constant %struct.gx_clip_rect_s { %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s* null, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i8 0 }, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_cpath_accum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_cpath_accum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cpath_accum_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_clip_list, i32 0, i32 4), align 8, !tbaa !7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pdev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %7, i32 0, i32 46
  %8 = bitcast %struct.gx_clip_list_s* %list to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 0
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %8, i32 80, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_clip_list, %struct.gc_state_s* %11) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %12 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device, i32 0, i32 4), align 8, !tbaa !7
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %16, 0
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %12(%struct.gs_memory_s* %13, i8* %14, i32 %15, i32 %sub1, %struct.enum_ptr_s* %17, %struct.gs_memory_struct_type_s* @st_device, %struct.gc_state_s* %18) #3
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gx_device_cpath_accum_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %20
}

; Function Attrs: nounwind uwtable
define internal void @device_cpath_accum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_cpath_accum_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cpath_accum_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %pdev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device, i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_device, %struct.gc_state_s* %6) #3
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_clip_list, i32 0, i32 5), align 8, !tbaa !9
  %8 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pdev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %8, i32 0, i32 46
  %9 = bitcast %struct.gx_clip_list_s* %list to i8*
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 %10, %struct.gs_memory_struct_type_s* @st_clip_list, %struct.gc_state_s* %11) #3
  %12 = bitcast %struct.gx_device_cpath_accum_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s* %padev, %struct.gs_memory_s* %mem) #0 {
entry:
  %padev.addr = alloca %struct.gx_device_cpath_accum_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_cpath_accum_s* %padev, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_cpath_accum_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init_on_stack(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_cpath_accum_s* @gs_cpath_accum_device to %struct.gx_device_s*), %struct.gs_memory_s* %2) #3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list_memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %4, i32 0, i32 43
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %list_memory, align 8, !tbaa !10
  %5 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %5, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_encode, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !27
  %6 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %6, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !28
  %7 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %7, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 0
  %8 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !29
  %9 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_cpath_accum_s* %9 to %struct.gx_device_s*
  %call = call i32 %8(%struct.gx_device_s* %10) #3
  ret void
}

declare void @gx_device_init_on_stack(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #1

declare i64 @gx_default_gray_encode(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_decode_color(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define void @gx_cpath_accum_set_cbox(%struct.gx_device_cpath_accum_s* %padev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %padev.addr = alloca %struct.gx_device_cpath_accum_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_device_cpath_accum_s* %padev, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !30
  %shr = ashr i32 %1, 8
  %2 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %clip_box = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %2, i32 0, i32 44
  %p1 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1, i32 0, i32 0
  store i32 %shr, i32* %x2, align 4, !tbaa !33
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !34
  %shr4 = ashr i32 %4, 8
  %5 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %clip_box5 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %5, i32 0, i32 44
  %p6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p6, i32 0, i32 1
  store i32 %shr4, i32* %y7, align 4, !tbaa !35
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x8, align 4, !tbaa !36
  %add = add nsw i32 %7, 255
  %shr9 = ashr i32 %add, 8
  %8 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %clip_box10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %8, i32 0, i32 44
  %q11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box10, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q11, i32 0, i32 0
  store i32 %shr9, i32* %x12, align 4, !tbaa !37
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %9, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 1
  %10 = load i32, i32* %y14, align 4, !tbaa !38
  %add15 = add nsw i32 %10, 255
  %shr16 = ashr i32 %add15, 8
  %11 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %clip_box17 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %11, i32 0, i32 44
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box17, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 1
  store i32 %shr16, i32* %y19, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s* %padev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_cpath_accum_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %apath = alloca %struct.gx_clip_path_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_cpath_accum_s* %padev, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %1, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %2 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !40
  %3 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_cpath_accum_s* %3 to %struct.gx_device_s*
  %call = call i32 %2(%struct.gx_device_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = bitcast %struct.gx_clip_path_s* %apath to i8*
  call void @llvm.lifetime.start(i64 304, i8* %5) #2
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list_memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %8, i32 0, i32 43
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory, align 8, !tbaa !10
  %call1 = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %apath, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %9) #3
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 5
  %10 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !41
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %10, i32 0, i32 1
  %11 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list2 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %11, i32 0, i32 46
  %12 = bitcast %struct.gx_clip_list_s* %list to i8*
  %13 = bitcast %struct.gx_clip_list_s* %list2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 80, i32 8, i1 false), !tbaa.struct !47
  %14 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %14, i32 0, i32 46
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list3, i32 0, i32 6
  %15 = load i32, i32* %count, align 4, !tbaa !49
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !50
  %path6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path6, i32 0, i32 5
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !51
  %path9 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path9, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox10, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y11, align 4, !tbaa !52
  %path12 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path12, i32 0, i32 5
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox13, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 0
  store i32 0, i32* %x15, align 4, !tbaa !53
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %16 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %bbox16 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %16, i32 0, i32 45
  %p17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p17, i32 0, i32 0
  %17 = load i32, i32* %x18, align 4, !tbaa !54
  %shl = shl i32 %17, 8
  %path19 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path19, i32 0, i32 5
  %p21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox20, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p21, i32 0, i32 0
  store i32 %shl, i32* %x22, align 4, !tbaa !53
  %18 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %bbox23 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %18, i32 0, i32 45
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox23, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 1
  %19 = load i32, i32* %y25, align 4, !tbaa !55
  %shl26 = shl i32 %19, 8
  %path27 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox28 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path27, i32 0, i32 5
  %p29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox28, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p29, i32 0, i32 1
  store i32 %shl26, i32* %y30, align 4, !tbaa !52
  %20 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %bbox31 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %20, i32 0, i32 45
  %q32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox31, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q32, i32 0, i32 0
  %21 = load i32, i32* %x33, align 4, !tbaa !56
  %shl34 = shl i32 %21, 8
  %path35 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path35, i32 0, i32 5
  %q37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox36, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q37, i32 0, i32 0
  store i32 %shl34, i32* %x38, align 4, !tbaa !51
  %22 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %bbox39 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %22, i32 0, i32 45
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox39, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  %23 = load i32, i32* %y41, align 4, !tbaa !57
  %shl42 = shl i32 %23, 8
  %path43 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path43, i32 0, i32 5
  %q45 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox44, i32 0, i32 1
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q45, i32 0, i32 1
  store i32 %shl42, i32* %y46, align 4, !tbaa !50
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.5
  %path48 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox_accurate = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path48, i32 0, i32 10
  store i8 1, i8* %bbox_accurate, align 1, !tbaa !58
  %24 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list49 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %24, i32 0, i32 46
  %count50 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list49, i32 0, i32 6
  %25 = load i32, i32* %count50, align 4, !tbaa !59
  %cmp51 = icmp sle i32 %25, 1
  br i1 %cmp51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.end.47
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 3
  %path53 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 0
  %bbox54 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path53, i32 0, i32 5
  %26 = bitcast %struct.gs_fixed_rect_s* %inner_box to i8*
  %27 = bitcast %struct.gs_fixed_rect_s* %bbox54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 4, i1 false), !tbaa.struct !60
  br label %if.end.68

if.else.55:                                       ; preds = %if.end.47
  %inner_box56 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 3
  %p57 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box56, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p57, i32 0, i32 1
  store i32 0, i32* %y58, align 4, !tbaa !61
  %inner_box59 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 3
  %p60 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box59, i32 0, i32 0
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p60, i32 0, i32 0
  store i32 0, i32* %x61, align 4, !tbaa !62
  %inner_box62 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 3
  %q63 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box62, i32 0, i32 1
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q63, i32 0, i32 1
  store i32 0, i32* %y64, align 4, !tbaa !63
  %inner_box65 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 3
  %q66 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box65, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q66, i32 0, i32 0
  store i32 0, i32* %x67, align 4, !tbaa !64
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.55, %if.then.52
  call void @gx_cpath_set_outer_box(%struct.gx_clip_path_s* %apath) #3
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 6
  store i32 0, i32* %path_valid, align 4, !tbaa !65
  %28 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list_memory69 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %28, i32 0, i32 43
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory69, align 8, !tbaa !10
  %call70 = call i64 @gs_next_ids(%struct.gs_memory_s* %29, i32 1) #3
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %apath, i32 0, i32 8
  store i64 %call70, i64* %id, align 8, !tbaa !66
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call71 = call i32 @gx_cpath_assign_free(%struct.gx_clip_path_s* %30, %struct.gx_clip_path_s* %apath) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then
  %31 = bitcast %struct.gx_clip_path_s* %apath to i8*
  call void @llvm.lifetime.end(i64 304, i8* %31) #2
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gx_cpath_set_outer_box(%struct.gx_clip_path_s*) #1

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

declare i32 @gx_cpath_assign_free(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gx_cpath_accum_discard(%struct.gx_device_cpath_accum_s* %padev) #0 {
entry:
  %padev.addr = alloca %struct.gx_device_cpath_accum_s*, align 8
  store %struct.gx_device_cpath_accum_s* %padev, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %0, i32 0, i32 46
  %1 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %padev.addr, align 8, !tbaa !1
  %list_memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory, align 8, !tbaa !10
  call void @gx_clip_list_free(%struct.gx_clip_list_s* %list, %struct.gs_memory_s* %2) #3
  ret void
}

declare void @gx_clip_list_free(%struct.gx_clip_list_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_intersect_path_slow(%struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath, i32 %rule, %struct.gs_imager_state_s* %pis, %struct.gx_fill_params_s* %params0) #0 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rule.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params0.addr = alloca %struct.gx_fill_params_s*, align 8
  %save_lop = alloca i32, align 4
  %adev = alloca %struct.gx_device_cpath_accum_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %params = alloca %struct.gx_fill_params_s, align 4
  %code = alloca i32, align 4
  %fadjust = alloca %struct.gs_point_s, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params0, %struct.gx_fill_params_s** %params0.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 10
  %2 = load i32, i32* %log_op, align 4, !tbaa !67
  store i32 %2, i32* %save_lop, align 4, !tbaa !5
  %3 = bitcast %struct.gx_device_cpath_accum_s* %adev to i8*
  call void @llvm.lifetime.start(i64 1848, i8* %3) #2
  %4 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %4) #2
  %5 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  call void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s* %adev, %struct.gs_memory_s* %8) #3
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 0, i64* %pure, align 8, !tbaa !81
  %9 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* %9, %struct.gx_device_color_type_s** %type, align 8, !tbaa !82
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !88
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 10
  store i32 252, i32* %log_op1, align 4, !tbaa !67
  %11 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params0.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_fill_params_s* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params0.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_fill_params_s* %params to i8*
  %14 = bitcast %struct.gx_fill_params_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 4, i1 false), !tbaa.struct !89
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = bitcast %struct.gs_point_s* %fadjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %rule2 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 0
  store i32 %16, i32* %rule2, align 4, !tbaa !91
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_imager_state_s* %17 to %struct.gs_state_s*
  %call = call i32 @gs_currentfilladjust(%struct.gs_state_s* %18, %struct.gs_point_s* %fadjust) #3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fadjust, i32 0, i32 0
  %19 = load double, double* %x, align 8, !tbaa !93
  %mul = fmul double %19, 2.560000e+02
  %conv = fptosi double %mul to i32
  %adjust = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  store i32 %conv, i32* %x3, align 4, !tbaa !94
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fadjust, i32 0, i32 1
  %20 = load double, double* %y, align 8, !tbaa !95
  %mul4 = fmul double %20, 2.560000e+02
  %conv5 = fptosi double %mul4 to i32
  %adjust6 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust6, i32 0, i32 1
  store i32 %conv5, i32* %y7, align 4, !tbaa !96
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 27
  %22 = load float, float* %flatness, align 4, !tbaa !97
  %flatness8 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 2
  store float %22, float* %flatness8, align 4, !tbaa !98
  %23 = bitcast %struct.gs_point_s* %fadjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = bitcast %struct.gx_device_cpath_accum_s* %adev to %struct.gx_device_s*
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %25 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !99
  %26 = bitcast %struct.gx_device_cpath_accum_s* %adev to %struct.gx_device_s*
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call9 = call i32 %25(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %27, %struct.gx_path_s* %28, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %devc, %struct.gx_clip_path_s* %29) #3
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %30, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call12 = call i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s* %adev, %struct.gx_clip_path_s* %31) #3
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  call void @gx_cpath_accum_discard(%struct.gx_device_cpath_accum_s* %adev) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %lor.lhs.false
  %32 = load i32, i32* %save_lop, align 4, !tbaa !5
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 10
  store i32 %32, i32* %log_op17, align 4, !tbaa !67
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #2
  %37 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %37) #2
  %38 = bitcast %struct.gx_device_cpath_accum_s* %adev to i8*
  call void @llvm.lifetime.end(i64 1848, i8* %38) #2
  %39 = bitcast i32* %save_lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  ret i32 %34
}

declare i32 @gs_currentfilladjust(%struct.gs_state_s*, %struct.gs_point_s*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @accum_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %adev = alloca %struct.gx_device_cpath_accum_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %3 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %3, i32 0, i32 46
  call void @gx_clip_list_init(%struct.gx_clip_list_s* %list) #3
  %4 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %4, i32 0, i32 45
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  store i32 2147483647, i32* %y, align 4, !tbaa !55
  %5 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %5, i32 0, i32 45
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 0
  store i32 2147483647, i32* %x, align 4, !tbaa !54
  %6 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %6, i32 0, i32 45
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox3, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  store i32 -2147483648, i32* %y4, align 4, !tbaa !57
  %7 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox5 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %7, i32 0, i32 45
  %q6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox5, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q6, i32 0, i32 0
  store i32 -2147483648, i32* %x7, align 4, !tbaa !56
  %8 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %8, i32 0, i32 44
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 1
  store i32 -2147483648, i32* %y9, align 4, !tbaa !35
  %9 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %9, i32 0, i32 44
  %p11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box10, i32 0, i32 0
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p11, i32 0, i32 0
  store i32 -2147483648, i32* %x12, align 4, !tbaa !33
  %10 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box13 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %10, i32 0, i32 44
  %q14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box13, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q14, i32 0, i32 1
  store i32 2147483647, i32* %y15, align 4, !tbaa !39
  %11 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box16 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %11, i32 0, i32 44
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box16, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 0
  store i32 2147483647, i32* %x18, align 4, !tbaa !37
  %12 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @accum_close(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %adev = alloca %struct.gx_device_cpath_accum_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %3 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %3, i32 0, i32 45
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !54
  %5 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %5, i32 0, i32 46
  %xmin = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 4
  store i32 %4, i32* %xmin, align 4, !tbaa !101
  %6 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %6, i32 0, i32 45
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox1, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !56
  %8 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %8, i32 0, i32 46
  %xmax = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list3, i32 0, i32 5
  store i32 %7, i32* %xmax, align 4, !tbaa !102
  %9 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @accum_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %adev = alloca %struct.gx_device_cpath_accum_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %nr = alloca %struct.gx_clip_rect_s*, align 8
  %ar = alloca %struct.gx_clip_rect_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rsplit = alloca %struct.gx_clip_rect_s*, align 8
  %rbot = alloca %struct.gx_clip_rect_s*, align 8
  %rsplit337 = alloca %struct.gx_clip_rect_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %single441 = alloca %struct.gx_clip_rect_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !81
  %0 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %3 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %xe, align 4, !tbaa !5
  %6 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %8 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %7, %8
  store i32 %add1, i32* %ye, align 4, !tbaa !5
  %9 = bitcast %struct.gx_clip_rect_s** %nr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct.gx_clip_rect_s** %ar to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %15, i32 0, i32 44
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %16 = load i32, i32* %y2, align 4, !tbaa !35
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %17, i32 0, i32 44
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box3, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 1
  %18 = load i32, i32* %y5, align 4, !tbaa !35
  store i32 %18, i32* %y.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %ye, align 4, !tbaa !5
  %20 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box6 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %20, i32 0, i32 44
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box6, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %21 = load i32, i32* %y7, align 4, !tbaa !39
  %cmp8 = icmp sgt i32 %19, %21
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %22 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %22, i32 0, i32 44
  %q11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box10, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q11, i32 0, i32 1
  %23 = load i32, i32* %y12, align 4, !tbaa !39
  store i32 %23, i32* %ye, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %25 = load i32, i32* %ye, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %24, %25
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.16:                                        ; preds = %if.end.13
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box17 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %27, i32 0, i32 44
  %p18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box17, i32 0, i32 0
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p18, i32 0, i32 0
  %28 = load i32, i32* %x19, align 4, !tbaa !33
  %cmp20 = icmp slt i32 %26, %28
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.16
  %29 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box22 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %29, i32 0, i32 44
  %p23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box22, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p23, i32 0, i32 0
  %30 = load i32, i32* %x24, align 4, !tbaa !33
  store i32 %30, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.16
  %31 = load i32, i32* %xe, align 4, !tbaa !5
  %32 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box26 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %32, i32 0, i32 44
  %q27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box26, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q27, i32 0, i32 0
  %33 = load i32, i32* %x28, align 4, !tbaa !37
  %cmp29 = icmp sgt i32 %31, %33
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.25
  %34 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %clip_box31 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %34, i32 0, i32 44
  %q32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %clip_box31, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q32, i32 0, i32 0
  %35 = load i32, i32* %x33, align 4, !tbaa !37
  store i32 %35, i32* %xe, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.25
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %37 = load i32, i32* %xe, align 4, !tbaa !5
  %cmp35 = icmp sge i32 %36, %37
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.37:                                        ; preds = %if.end.34
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %39 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %39, i32 0, i32 45
  %p38 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p38, i32 0, i32 0
  %40 = load i32, i32* %x39, align 4, !tbaa !54
  %cmp40 = icmp slt i32 %38, %40
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.37
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox42 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %42, i32 0, i32 45
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox42, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 0
  store i32 %41, i32* %x44, align 4, !tbaa !54
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.37
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %44 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox46 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %44, i32 0, i32 45
  %p47 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox46, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p47, i32 0, i32 1
  %45 = load i32, i32* %y48, align 4, !tbaa !55
  %cmp49 = icmp slt i32 %43, %45
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.45
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %47 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox51 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %47, i32 0, i32 45
  %p52 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox51, i32 0, i32 0
  %y53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p52, i32 0, i32 1
  store i32 %46, i32* %y53, align 4, !tbaa !55
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.45
  %48 = load i32, i32* %xe, align 4, !tbaa !5
  %49 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox55 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %49, i32 0, i32 45
  %q56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox55, i32 0, i32 1
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q56, i32 0, i32 0
  %50 = load i32, i32* %x57, align 4, !tbaa !56
  %cmp58 = icmp sgt i32 %48, %50
  br i1 %cmp58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.54
  %51 = load i32, i32* %xe, align 4, !tbaa !5
  %52 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox60 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %52, i32 0, i32 45
  %q61 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox60, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q61, i32 0, i32 0
  store i32 %51, i32* %x62, align 4, !tbaa !56
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.54
  %53 = load i32, i32* %ye, align 4, !tbaa !5
  %54 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox64 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %54, i32 0, i32 45
  %q65 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox64, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q65, i32 0, i32 1
  %55 = load i32, i32* %y66, align 4, !tbaa !57
  %cmp67 = icmp sgt i32 %53, %55
  br i1 %cmp67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.end.63
  %56 = load i32, i32* %ye, align 4, !tbaa !5
  %57 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %bbox69 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %57, i32 0, i32 45
  %q70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox69, i32 0, i32 1
  %y71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q70, i32 0, i32 1
  store i32 %56, i32* %y71, align 4, !tbaa !57
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.end.63
  br label %top

top:                                              ; preds = %do.end.478, %if.end.72
  %58 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %58, i32 0, i32 46
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 6
  %59 = load i32, i32* %count, align 4, !tbaa !49
  %cmp73 = icmp eq i32 %59, 0
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %top
  %60 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list75 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %60, i32 0, i32 46
  %count76 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list75, i32 0, i32 6
  store i32 1, i32* %count76, align 4, !tbaa !49
  %61 = load i32, i32* %x.addr, align 4, !tbaa !5
  %62 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list77 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %62, i32 0, i32 46
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list77, i32 0, i32 0
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single, i32 0, i32 4
  store i32 %61, i32* %xmin, align 4, !tbaa !103
  %63 = load i32, i32* %y.addr, align 4, !tbaa !5
  %64 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list78 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %64, i32 0, i32 46
  %single79 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list78, i32 0, i32 0
  %ymin80 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single79, i32 0, i32 2
  store i32 %63, i32* %ymin80, align 4, !tbaa !104
  %65 = load i32, i32* %xe, align 4, !tbaa !5
  %66 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list81 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %66, i32 0, i32 46
  %single82 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list81, i32 0, i32 0
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single82, i32 0, i32 5
  store i32 %65, i32* %xmax, align 4, !tbaa !105
  %67 = load i32, i32* %ye, align 4, !tbaa !5
  %68 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list83 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %68, i32 0, i32 46
  %single84 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list83, i32 0, i32 0
  %ymax85 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single84, i32 0, i32 3
  store i32 %67, i32* %ymax85, align 4, !tbaa !106
  br label %do.body

do.body:                                          ; preds = %if.then.74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.86:                                        ; preds = %top
  %69 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list87 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %69, i32 0, i32 46
  %count88 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list87, i32 0, i32 6
  %70 = load i32, i32* %count88, align 4, !tbaa !49
  %cmp89 = icmp eq i32 %70, 1
  br i1 %cmp89, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.end.86
  %71 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list91 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %71, i32 0, i32 46
  %single92 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list91, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single92, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %72 = load i32, i32* %x.addr, align 4, !tbaa !5
  %73 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin93 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %73, i32 0, i32 4
  %74 = load i32, i32* %xmin93, align 4, !tbaa !103
  %cmp94 = icmp eq i32 %72, %74
  br i1 %cmp94, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %if.then.90
  %75 = load i32, i32* %xe, align 4, !tbaa !5
  %76 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax95 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %76, i32 0, i32 5
  %77 = load i32, i32* %xmax95, align 4, !tbaa !105
  %cmp96 = icmp eq i32 %75, %77
  br i1 %cmp96, label %land.lhs.true.97, label %if.end.114

land.lhs.true.97:                                 ; preds = %land.lhs.true
  %78 = load i32, i32* %y.addr, align 4, !tbaa !5
  %79 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax98 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %79, i32 0, i32 3
  %80 = load i32, i32* %ymax98, align 4, !tbaa !106
  %cmp99 = icmp sle i32 %78, %80
  br i1 %cmp99, label %land.lhs.true.100, label %if.end.114

land.lhs.true.100:                                ; preds = %land.lhs.true.97
  %81 = load i32, i32* %ye, align 4, !tbaa !5
  %82 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin101 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %82, i32 0, i32 2
  %83 = load i32, i32* %ymin101, align 4, !tbaa !104
  %cmp102 = icmp sge i32 %81, %83
  br i1 %cmp102, label %if.then.103, label %if.end.114

if.then.103:                                      ; preds = %land.lhs.true.100
  %84 = load i32, i32* %y.addr, align 4, !tbaa !5
  %85 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin104 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %85, i32 0, i32 2
  %86 = load i32, i32* %ymin104, align 4, !tbaa !104
  %cmp105 = icmp slt i32 %84, %86
  br i1 %cmp105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.then.103
  %87 = load i32, i32* %y.addr, align 4, !tbaa !5
  %88 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin107 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %88, i32 0, i32 2
  store i32 %87, i32* %ymin107, align 4, !tbaa !104
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.103
  %89 = load i32, i32* %ye, align 4, !tbaa !5
  %90 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax109 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %90, i32 0, i32 3
  %91 = load i32, i32* %ymax109, align 4, !tbaa !106
  %cmp110 = icmp sgt i32 %89, %91
  br i1 %cmp110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.108
  %92 = load i32, i32* %ye, align 4, !tbaa !5
  %93 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax112 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %93, i32 0, i32 3
  store i32 %92, i32* %ymax112, align 4, !tbaa !106
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.108
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.114:                                       ; preds = %land.lhs.true.100, %land.lhs.true.97, %land.lhs.true, %if.then.90
  br label %if.end.116

if.else:                                          ; preds = %if.end.86
  %94 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list115 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %94, i32 0, i32 46
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list115, i32 0, i32 2
  %95 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !107
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %95, i32 0, i32 1
  %96 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %96, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %if.end.116

if.end.116:                                       ; preds = %if.else, %if.end.114
  %97 = load i32, i32* %y.addr, align 4, !tbaa !5
  %98 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax117 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %98, i32 0, i32 3
  %99 = load i32, i32* %ymax117, align 4, !tbaa !106
  %cmp118 = icmp sge i32 %97, %99
  br i1 %cmp118, label %if.then.119, label %if.else.165

if.then.119:                                      ; preds = %if.end.116
  %100 = load i32, i32* %y.addr, align 4, !tbaa !5
  %101 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax120 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %101, i32 0, i32 3
  %102 = load i32, i32* %ymax120, align 4, !tbaa !106
  %cmp121 = icmp eq i32 %100, %102
  br i1 %cmp121, label %land.lhs.true.122, label %if.end.136

land.lhs.true.122:                                ; preds = %if.then.119
  %103 = load i32, i32* %x.addr, align 4, !tbaa !5
  %104 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin123 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %104, i32 0, i32 4
  %105 = load i32, i32* %xmin123, align 4, !tbaa !103
  %cmp124 = icmp eq i32 %103, %105
  br i1 %cmp124, label %land.lhs.true.125, label %if.end.136

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %106 = load i32, i32* %xe, align 4, !tbaa !5
  %107 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax126 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %107, i32 0, i32 5
  %108 = load i32, i32* %xmax126, align 4, !tbaa !105
  %cmp127 = icmp eq i32 %106, %108
  br i1 %cmp127, label %land.lhs.true.128, label %if.end.136

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %109 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev129 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %109, i32 0, i32 1
  %110 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev129, align 8, !tbaa !108
  %cmp130 = icmp eq %struct.gx_clip_rect_s* %110, null
  br i1 %cmp130, label %if.then.134, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.128
  %111 = load i32, i32* %y.addr, align 4, !tbaa !5
  %112 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev131 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %112, i32 0, i32 1
  %113 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev131, align 8, !tbaa !108
  %ymax132 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %113, i32 0, i32 3
  %114 = load i32, i32* %ymax132, align 4, !tbaa !106
  %cmp133 = icmp ne i32 %111, %114
  br i1 %cmp133, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %lor.lhs.false, %land.lhs.true.128
  %115 = load i32, i32* %ye, align 4, !tbaa !5
  %116 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax135 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %116, i32 0, i32 3
  store i32 %115, i32* %ymax135, align 4, !tbaa !106
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.136:                                       ; preds = %lor.lhs.false, %land.lhs.true.125, %land.lhs.true.122, %if.then.119
  %117 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list137 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %117, i32 0, i32 46
  %count138 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list137, i32 0, i32 6
  %118 = load i32, i32* %count138, align 4, !tbaa !49
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %count138, align 4, !tbaa !49
  %cmp139 = icmp eq i32 %inc, 1
  br i1 %cmp139, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %if.end.136
  %119 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list141 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %119, i32 0, i32 46
  %single142 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list141, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single142, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  br label %if.end.147

if.else.143:                                      ; preds = %if.end.136
  %120 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %120) #3
  store %struct.gx_clip_rect_s* %call, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %cmp144 = icmp eq %struct.gx_clip_rect_s* %call, null
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.else.143
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.146:                                       ; preds = %if.else.143
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.140
  %121 = load i32, i32* %x.addr, align 4, !tbaa !5
  %122 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmin148 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %122, i32 0, i32 4
  store i32 %121, i32* %xmin148, align 4, !tbaa !103
  %123 = load i32, i32* %y.addr, align 4, !tbaa !5
  %124 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymin149 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %124, i32 0, i32 2
  store i32 %123, i32* %ymin149, align 4, !tbaa !104
  %125 = load i32, i32* %xe, align 4, !tbaa !5
  %126 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmax150 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %126, i32 0, i32 5
  store i32 %125, i32* %xmax150, align 4, !tbaa !105
  %127 = load i32, i32* %ye, align 4, !tbaa !5
  %128 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymax151 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %128, i32 0, i32 3
  store i32 %127, i32* %ymax151, align 4, !tbaa !106
  br label %do.body.152

do.body.152:                                      ; preds = %if.end.147
  br label %do.cond.153

do.cond.153:                                      ; preds = %do.body.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  %129 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %130 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list155 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %130, i32 0, i32 46
  %tail156 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list155, i32 0, i32 2
  %131 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail156, align 8, !tbaa !107
  %prev157 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %131, i32 0, i32 1
  %132 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev157, align 8, !tbaa !108
  %133 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %prev158 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %133, i32 0, i32 1
  store %struct.gx_clip_rect_s* %132, %struct.gx_clip_rect_s** %prev158, align 8, !tbaa !108
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %132, i32 0, i32 0
  store %struct.gx_clip_rect_s* %129, %struct.gx_clip_rect_s** %next, align 8, !tbaa !109
  %134 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list159 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %134, i32 0, i32 46
  %tail160 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list159, i32 0, i32 2
  %135 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail160, align 8, !tbaa !107
  %136 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %next161 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %136, i32 0, i32 0
  store %struct.gx_clip_rect_s* %135, %struct.gx_clip_rect_s** %next161, align 8, !tbaa !109
  %137 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %138 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list162 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %138, i32 0, i32 46
  %tail163 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list162, i32 0, i32 2
  %139 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail163, align 8, !tbaa !107
  %prev164 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %139, i32 0, i32 1
  store %struct.gx_clip_rect_s* %137, %struct.gx_clip_rect_s** %prev164, align 8, !tbaa !108
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.else.165:                                      ; preds = %if.end.116
  %140 = load i32, i32* %y.addr, align 4, !tbaa !5
  %141 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin166 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %141, i32 0, i32 2
  %142 = load i32, i32* %ymin166, align 4, !tbaa !104
  %cmp167 = icmp eq i32 %140, %142
  br i1 %cmp167, label %land.lhs.true.168, label %if.end.215

land.lhs.true.168:                                ; preds = %if.else.165
  %143 = load i32, i32* %ye, align 4, !tbaa !5
  %144 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax169 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %144, i32 0, i32 3
  %145 = load i32, i32* %ymax169, align 4, !tbaa !106
  %cmp170 = icmp eq i32 %143, %145
  br i1 %cmp170, label %land.lhs.true.171, label %if.end.215

land.lhs.true.171:                                ; preds = %land.lhs.true.168
  %146 = load i32, i32* %x.addr, align 4, !tbaa !5
  %147 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin172 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %147, i32 0, i32 4
  %148 = load i32, i32* %xmin172, align 4, !tbaa !103
  %cmp173 = icmp sge i32 %146, %148
  br i1 %cmp173, label %if.then.174, label %if.end.215

if.then.174:                                      ; preds = %land.lhs.true.171
  %149 = load i32, i32* %x.addr, align 4, !tbaa !5
  %150 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax175 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %150, i32 0, i32 5
  %151 = load i32, i32* %xmax175, align 4, !tbaa !105
  %cmp176 = icmp sle i32 %149, %151
  br i1 %cmp176, label %if.then.177, label %if.end.183

if.then.177:                                      ; preds = %if.then.174
  %152 = load i32, i32* %xe, align 4, !tbaa !5
  %153 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax178 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %153, i32 0, i32 5
  %154 = load i32, i32* %xmax178, align 4, !tbaa !105
  %cmp179 = icmp sgt i32 %152, %154
  br i1 %cmp179, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %if.then.177
  %155 = load i32, i32* %xe, align 4, !tbaa !5
  %156 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax181 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %156, i32 0, i32 5
  store i32 %155, i32* %xmax181, align 4, !tbaa !105
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %if.then.177
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.183:                                       ; preds = %if.then.174
  %157 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list184 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %157, i32 0, i32 46
  %count185 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list184, i32 0, i32 6
  %158 = load i32, i32* %count185, align 4, !tbaa !49
  %inc186 = add nsw i32 %158, 1
  store i32 %inc186, i32* %count185, align 4, !tbaa !49
  %cmp187 = icmp eq i32 %inc186, 1
  br i1 %cmp187, label %if.then.188, label %if.else.191

if.then.188:                                      ; preds = %if.end.183
  %159 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list189 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %159, i32 0, i32 46
  %single190 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list189, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single190, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  br label %if.end.196

if.else.191:                                      ; preds = %if.end.183
  %160 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call192 = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %160) #3
  store %struct.gx_clip_rect_s* %call192, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %cmp193 = icmp eq %struct.gx_clip_rect_s* %call192, null
  br i1 %cmp193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.else.191
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.195:                                       ; preds = %if.else.191
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.188
  %161 = load i32, i32* %x.addr, align 4, !tbaa !5
  %162 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmin197 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %162, i32 0, i32 4
  store i32 %161, i32* %xmin197, align 4, !tbaa !103
  %163 = load i32, i32* %y.addr, align 4, !tbaa !5
  %164 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymin198 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %164, i32 0, i32 2
  store i32 %163, i32* %ymin198, align 4, !tbaa !104
  %165 = load i32, i32* %xe, align 4, !tbaa !5
  %166 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmax199 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %166, i32 0, i32 5
  store i32 %165, i32* %xmax199, align 4, !tbaa !105
  %167 = load i32, i32* %ye, align 4, !tbaa !5
  %168 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymax200 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %168, i32 0, i32 3
  store i32 %167, i32* %ymax200, align 4, !tbaa !106
  br label %do.body.201

do.body.201:                                      ; preds = %if.end.196
  br label %do.cond.202

do.cond.202:                                      ; preds = %do.body.201
  br label %do.end.203

do.end.203:                                       ; preds = %do.cond.202
  %169 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %170 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list204 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %170, i32 0, i32 46
  %tail205 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list204, i32 0, i32 2
  %171 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail205, align 8, !tbaa !107
  %prev206 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %171, i32 0, i32 1
  %172 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev206, align 8, !tbaa !108
  %173 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %prev207 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %173, i32 0, i32 1
  store %struct.gx_clip_rect_s* %172, %struct.gx_clip_rect_s** %prev207, align 8, !tbaa !108
  %next208 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %172, i32 0, i32 0
  store %struct.gx_clip_rect_s* %169, %struct.gx_clip_rect_s** %next208, align 8, !tbaa !109
  %174 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list209 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %174, i32 0, i32 46
  %tail210 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list209, i32 0, i32 2
  %175 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail210, align 8, !tbaa !107
  %176 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %next211 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %176, i32 0, i32 0
  store %struct.gx_clip_rect_s* %175, %struct.gx_clip_rect_s** %next211, align 8, !tbaa !109
  %177 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %178 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list212 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %178, i32 0, i32 46
  %tail213 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list212, i32 0, i32 2
  %179 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail213, align 8, !tbaa !107
  %prev214 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %179, i32 0, i32 1
  store %struct.gx_clip_rect_s* %177, %struct.gx_clip_rect_s** %prev214, align 8, !tbaa !108
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.215:                                       ; preds = %land.lhs.true.171, %land.lhs.true.168, %if.else.165
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  %180 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list217 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %180, i32 0, i32 46
  %count218 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list217, i32 0, i32 6
  %181 = load i32, i32* %count218, align 4, !tbaa !49
  %inc219 = add nsw i32 %181, 1
  store i32 %inc219, i32* %count218, align 4, !tbaa !49
  %cmp220 = icmp eq i32 %inc219, 1
  br i1 %cmp220, label %if.then.221, label %if.else.224

if.then.221:                                      ; preds = %if.end.216
  %182 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list222 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %182, i32 0, i32 46
  %single223 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list222, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single223, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  br label %if.end.229

if.else.224:                                      ; preds = %if.end.216
  %183 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call225 = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %183) #3
  store %struct.gx_clip_rect_s* %call225, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %cmp226 = icmp eq %struct.gx_clip_rect_s* %call225, null
  br i1 %cmp226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.else.224
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.228:                                       ; preds = %if.else.224
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.221
  %184 = load i32, i32* %x.addr, align 4, !tbaa !5
  %185 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmin230 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %185, i32 0, i32 4
  store i32 %184, i32* %xmin230, align 4, !tbaa !103
  %186 = load i32, i32* %y.addr, align 4, !tbaa !5
  %187 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymin231 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %187, i32 0, i32 2
  store i32 %186, i32* %ymin231, align 4, !tbaa !104
  %188 = load i32, i32* %xe, align 4, !tbaa !5
  %189 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmax232 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %189, i32 0, i32 5
  store i32 %188, i32* %xmax232, align 4, !tbaa !105
  %190 = load i32, i32* %ye, align 4, !tbaa !5
  %191 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymax233 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %191, i32 0, i32 3
  store i32 %190, i32* %ymax233, align 4, !tbaa !106
  br label %do.body.234

do.body.234:                                      ; preds = %if.end.229
  br label %do.cond.235

do.cond.235:                                      ; preds = %do.body.234
  br label %do.end.236

do.end.236:                                       ; preds = %do.cond.235
  %192 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list237 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %192, i32 0, i32 46
  %insert = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list237, i32 0, i32 3
  %193 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %insert, align 8, !tbaa !110
  %prev238 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %193, i32 0, i32 1
  %194 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev238, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %194, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %195 = load i32, i32* %ye, align 4, !tbaa !5
  %196 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin239 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %196, i32 0, i32 2
  %197 = load i32, i32* %ymin239, align 4, !tbaa !104
  %cmp240 = icmp sle i32 %195, %197
  br i1 %cmp240, label %if.then.241, label %if.else.248

if.then.241:                                      ; preds = %do.end.236
  br label %do.body.242

do.body.242:                                      ; preds = %do.cond.244, %if.then.241
  %198 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev243 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %198, i32 0, i32 1
  %199 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev243, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %199, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.body.242
  %200 = load i32, i32* %ye, align 4, !tbaa !5
  %201 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin245 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %201, i32 0, i32 2
  %202 = load i32, i32* %ymin245, align 4, !tbaa !104
  %cmp246 = icmp sle i32 %200, %202
  br i1 %cmp246, label %do.body.242, label %do.end.247

do.end.247:                                       ; preds = %do.cond.244
  br label %if.end.256

if.else.248:                                      ; preds = %do.end.236
  br label %do.body.249

do.body.249:                                      ; preds = %do.cond.251, %if.else.248
  %203 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next250 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %203, i32 0, i32 0
  %204 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next250, align 8, !tbaa !109
  store %struct.gx_clip_rect_s* %204, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.body.249
  %205 = load i32, i32* %ye, align 4, !tbaa !5
  %206 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin252 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %206, i32 0, i32 2
  %207 = load i32, i32* %ymin252, align 4, !tbaa !104
  %cmp253 = icmp sgt i32 %205, %207
  br i1 %cmp253, label %do.body.249, label %do.end.254

do.end.254:                                       ; preds = %do.cond.251
  %208 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev255 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %208, i32 0, i32 1
  %209 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev255, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %209, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %if.end.256

if.end.256:                                       ; preds = %do.end.254, %do.end.247
  %210 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin257 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %210, i32 0, i32 2
  %211 = load i32, i32* %ymin257, align 4, !tbaa !104
  store i32 %211, i32* %ymin, align 4, !tbaa !5
  %212 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax258 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %212, i32 0, i32 3
  %213 = load i32, i32* %ymax258, align 4, !tbaa !106
  store i32 %213, i32* %ymax, align 4, !tbaa !5
  %214 = load i32, i32* %ye, align 4, !tbaa !5
  %215 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp259 = icmp sgt i32 %214, %215
  br i1 %cmp259, label %if.then.260, label %if.end.300

if.then.260:                                      ; preds = %if.end.256
  %216 = load i32, i32* %y.addr, align 4, !tbaa !5
  %217 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp261 = icmp sge i32 %216, %217
  br i1 %cmp261, label %if.then.262, label %if.end.270

if.then.262:                                      ; preds = %if.then.260
  %218 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %219 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %prev263 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %219, i32 0, i32 1
  store %struct.gx_clip_rect_s* %218, %struct.gx_clip_rect_s** %prev263, align 8, !tbaa !108
  %220 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %221 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next264 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %221, i32 0, i32 0
  %222 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next264, align 8, !tbaa !109
  %223 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %next265 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %223, i32 0, i32 0
  store %struct.gx_clip_rect_s* %222, %struct.gx_clip_rect_s** %next265, align 8, !tbaa !109
  %prev266 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %222, i32 0, i32 1
  store %struct.gx_clip_rect_s* %220, %struct.gx_clip_rect_s** %prev266, align 8, !tbaa !108
  %224 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %225 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next267 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %225, i32 0, i32 0
  store %struct.gx_clip_rect_s* %224, %struct.gx_clip_rect_s** %next267, align 8, !tbaa !109
  %226 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %227 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list268 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %227, i32 0, i32 46
  %insert269 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list268, i32 0, i32 3
  store %struct.gx_clip_rect_s* %226, %struct.gx_clip_rect_s** %insert269, align 8, !tbaa !110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.270:                                       ; preds = %if.then.260
  %228 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list271 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %228, i32 0, i32 46
  %count272 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list271, i32 0, i32 6
  %229 = load i32, i32* %count272, align 4, !tbaa !49
  %inc273 = add nsw i32 %229, 1
  store i32 %inc273, i32* %count272, align 4, !tbaa !49
  %cmp274 = icmp eq i32 %inc273, 1
  br i1 %cmp274, label %if.then.275, label %if.else.278

if.then.275:                                      ; preds = %if.end.270
  %230 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list276 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %230, i32 0, i32 46
  %single277 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list276, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single277, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  br label %if.end.283

if.else.278:                                      ; preds = %if.end.270
  %231 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call279 = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %231) #3
  store %struct.gx_clip_rect_s* %call279, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %cmp280 = icmp eq %struct.gx_clip_rect_s* %call279, null
  br i1 %cmp280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.else.278
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.282:                                       ; preds = %if.else.278
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.275
  %232 = load i32, i32* %x.addr, align 4, !tbaa !5
  %233 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmin284 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %233, i32 0, i32 4
  store i32 %232, i32* %xmin284, align 4, !tbaa !103
  %234 = load i32, i32* %ymax, align 4, !tbaa !5
  %235 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymin285 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %235, i32 0, i32 2
  store i32 %234, i32* %ymin285, align 4, !tbaa !104
  %236 = load i32, i32* %xe, align 4, !tbaa !5
  %237 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmax286 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %237, i32 0, i32 5
  store i32 %236, i32* %xmax286, align 4, !tbaa !105
  %238 = load i32, i32* %ye, align 4, !tbaa !5
  %239 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymax287 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %239, i32 0, i32 3
  store i32 %238, i32* %ymax287, align 4, !tbaa !106
  br label %do.body.288

do.body.288:                                      ; preds = %if.end.283
  br label %do.cond.289

do.cond.289:                                      ; preds = %do.body.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.cond.289
  %240 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %241 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %prev291 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %241, i32 0, i32 1
  store %struct.gx_clip_rect_s* %240, %struct.gx_clip_rect_s** %prev291, align 8, !tbaa !108
  %242 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %243 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next292 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %243, i32 0, i32 0
  %244 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next292, align 8, !tbaa !109
  %245 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %next293 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %245, i32 0, i32 0
  store %struct.gx_clip_rect_s* %244, %struct.gx_clip_rect_s** %next293, align 8, !tbaa !109
  %prev294 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %244, i32 0, i32 1
  store %struct.gx_clip_rect_s* %242, %struct.gx_clip_rect_s** %prev294, align 8, !tbaa !108
  %246 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %247 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next295 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %247, i32 0, i32 0
  store %struct.gx_clip_rect_s* %246, %struct.gx_clip_rect_s** %next295, align 8, !tbaa !109
  %248 = load i32, i32* %ymax, align 4, !tbaa !5
  %249 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymax296 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %249, i32 0, i32 3
  store i32 %248, i32* %ymax296, align 4, !tbaa !106
  store i32 %248, i32* %ye, align 4, !tbaa !5
  br label %do.body.297

do.body.297:                                      ; preds = %do.end.290
  br label %do.cond.298

do.cond.298:                                      ; preds = %do.body.297
  br label %do.end.299

do.end.299:                                       ; preds = %do.cond.298
  br label %if.end.300

if.end.300:                                       ; preds = %do.end.299, %if.end.256
  %250 = load i32, i32* %ye, align 4, !tbaa !5
  %251 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp301 = icmp slt i32 %250, %251
  br i1 %cmp301, label %if.then.302, label %if.end.334

if.then.302:                                      ; preds = %if.end.300
  %252 = bitcast %struct.gx_clip_rect_s** %rsplit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #2
  %253 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %253, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %do.end.326, %if.then.302
  %254 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  %ymax303 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %254, i32 0, i32 3
  %255 = load i32, i32* %ymax303, align 4, !tbaa !106
  %256 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp304 = icmp eq i32 %255, %256
  br i1 %cmp304, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %257 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list305 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %257, i32 0, i32 46
  %count306 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list305, i32 0, i32 6
  %258 = load i32, i32* %count306, align 4, !tbaa !49
  %inc307 = add nsw i32 %258, 1
  store i32 %inc307, i32* %count306, align 4, !tbaa !49
  %cmp308 = icmp eq i32 %inc307, 1
  br i1 %cmp308, label %if.then.309, label %if.else.312

if.then.309:                                      ; preds = %while.body
  %259 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list310 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %259, i32 0, i32 46
  %single311 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list310, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single311, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  br label %if.end.317

if.else.312:                                      ; preds = %while.body
  %260 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call313 = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %260) #3
  store %struct.gx_clip_rect_s* %call313, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %cmp314 = icmp eq %struct.gx_clip_rect_s* %call313, null
  br i1 %cmp314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.else.312
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.316:                                       ; preds = %if.else.312
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.309
  %261 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  %xmin318 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %261, i32 0, i32 4
  %262 = load i32, i32* %xmin318, align 4, !tbaa !103
  %263 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmin319 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %263, i32 0, i32 4
  store i32 %262, i32* %xmin319, align 4, !tbaa !103
  %264 = load i32, i32* %ye, align 4, !tbaa !5
  %265 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymin320 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %265, i32 0, i32 2
  store i32 %264, i32* %ymin320, align 4, !tbaa !104
  %266 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  %xmax321 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %266, i32 0, i32 5
  %267 = load i32, i32* %xmax321, align 4, !tbaa !105
  %268 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmax322 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %268, i32 0, i32 5
  store i32 %267, i32* %xmax322, align 4, !tbaa !105
  %269 = load i32, i32* %ymax, align 4, !tbaa !5
  %270 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymax323 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %270, i32 0, i32 3
  store i32 %269, i32* %ymax323, align 4, !tbaa !106
  br label %do.body.324

do.body.324:                                      ; preds = %if.end.317
  br label %do.cond.325

do.cond.325:                                      ; preds = %do.body.324
  br label %do.end.326

do.end.326:                                       ; preds = %do.cond.325
  %271 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %272 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %prev327 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %272, i32 0, i32 1
  store %struct.gx_clip_rect_s* %271, %struct.gx_clip_rect_s** %prev327, align 8, !tbaa !108
  %273 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %274 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next328 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %274, i32 0, i32 0
  %275 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next328, align 8, !tbaa !109
  %276 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %next329 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %276, i32 0, i32 0
  store %struct.gx_clip_rect_s* %275, %struct.gx_clip_rect_s** %next329, align 8, !tbaa !109
  %prev330 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %275, i32 0, i32 1
  store %struct.gx_clip_rect_s* %273, %struct.gx_clip_rect_s** %prev330, align 8, !tbaa !108
  %277 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %278 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next331 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %278, i32 0, i32 0
  store %struct.gx_clip_rect_s* %277, %struct.gx_clip_rect_s** %next331, align 8, !tbaa !109
  %279 = load i32, i32* %ye, align 4, !tbaa !5
  %280 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  %ymax332 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %280, i32 0, i32 3
  store i32 %279, i32* %ymax332, align 4, !tbaa !106
  %281 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  %prev333 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %281, i32 0, i32 1
  %282 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev333, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %282, %struct.gx_clip_rect_s** %rsplit, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %283 = load i32, i32* %ye, align 4, !tbaa !5
  store i32 %283, i32* %ymax, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.315
  %284 = bitcast %struct.gx_clip_rect_s** %rsplit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.480 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.334

if.end.334:                                       ; preds = %cleanup.cont, %if.end.300
  %285 = load i32, i32* %y.addr, align 4, !tbaa !5
  %286 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp335 = icmp sgt i32 %285, %286
  br i1 %cmp335, label %if.then.336, label %if.end.381

if.then.336:                                      ; preds = %if.end.334
  %287 = bitcast %struct.gx_clip_rect_s** %rbot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #2
  %288 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %288, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %289 = bitcast %struct.gx_clip_rect_s** %rsplit337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #2
  br label %while.cond.338

while.cond.338:                                   ; preds = %while.body.342, %if.then.336
  %290 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %prev339 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %290, i32 0, i32 1
  %291 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev339, align 8, !tbaa !108
  %ymin340 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %291, i32 0, i32 2
  %292 = load i32, i32* %ymin340, align 4, !tbaa !104
  %293 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp341 = icmp eq i32 %292, %293
  br i1 %cmp341, label %while.body.342, label %while.end.344

while.body.342:                                   ; preds = %while.cond.338
  %294 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %prev343 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %294, i32 0, i32 1
  %295 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev343, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %295, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  br label %while.cond.338

while.end.344:                                    ; preds = %while.cond.338
  %296 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %296, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.375, %while.end.344
  %297 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list345 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %297, i32 0, i32 46
  %count346 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list345, i32 0, i32 6
  %298 = load i32, i32* %count346, align 4, !tbaa !49
  %inc347 = add nsw i32 %298, 1
  store i32 %inc347, i32* %count346, align 4, !tbaa !49
  %cmp348 = icmp eq i32 %inc347, 1
  br i1 %cmp348, label %if.then.349, label %if.else.352

if.then.349:                                      ; preds = %for.cond
  %299 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list350 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %299, i32 0, i32 46
  %single351 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list350, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single351, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  br label %if.end.357

if.else.352:                                      ; preds = %for.cond
  %300 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %call353 = call %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %300) #3
  store %struct.gx_clip_rect_s* %call353, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %cmp354 = icmp eq %struct.gx_clip_rect_s* %call353, null
  br i1 %cmp354, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.else.352
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.356:                                       ; preds = %if.else.352
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.349
  %301 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  %xmin358 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %301, i32 0, i32 4
  %302 = load i32, i32* %xmin358, align 4, !tbaa !103
  %303 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmin359 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %303, i32 0, i32 4
  store i32 %302, i32* %xmin359, align 4, !tbaa !103
  %304 = load i32, i32* %ymin, align 4, !tbaa !5
  %305 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymin360 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %305, i32 0, i32 2
  store i32 %304, i32* %ymin360, align 4, !tbaa !104
  %306 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  %xmax361 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %306, i32 0, i32 5
  %307 = load i32, i32* %xmax361, align 4, !tbaa !105
  %308 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %xmax362 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %308, i32 0, i32 5
  store i32 %307, i32* %xmax362, align 4, !tbaa !105
  %309 = load i32, i32* %y.addr, align 4, !tbaa !5
  %310 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %ymax363 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %310, i32 0, i32 3
  store i32 %309, i32* %ymax363, align 4, !tbaa !106
  br label %do.body.364

do.body.364:                                      ; preds = %if.end.357
  br label %do.cond.365

do.cond.365:                                      ; preds = %do.body.364
  br label %do.end.366

do.end.366:                                       ; preds = %do.cond.365
  %311 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %312 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %prev367 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %312, i32 0, i32 1
  %313 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev367, align 8, !tbaa !108
  %314 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %prev368 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %314, i32 0, i32 1
  store %struct.gx_clip_rect_s* %313, %struct.gx_clip_rect_s** %prev368, align 8, !tbaa !108
  %next369 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %313, i32 0, i32 0
  store %struct.gx_clip_rect_s* %311, %struct.gx_clip_rect_s** %next369, align 8, !tbaa !109
  %315 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %316 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %next370 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %316, i32 0, i32 0
  store %struct.gx_clip_rect_s* %315, %struct.gx_clip_rect_s** %next370, align 8, !tbaa !109
  %317 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %318 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rbot, align 8, !tbaa !1
  %prev371 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %318, i32 0, i32 1
  store %struct.gx_clip_rect_s* %317, %struct.gx_clip_rect_s** %prev371, align 8, !tbaa !108
  %319 = load i32, i32* %y.addr, align 4, !tbaa !5
  %320 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  %ymin372 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %320, i32 0, i32 2
  store i32 %319, i32* %ymin372, align 4, !tbaa !104
  %321 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  %322 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp373 = icmp eq %struct.gx_clip_rect_s* %321, %322
  br i1 %cmp373, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %do.end.366
  br label %for.end

if.end.375:                                       ; preds = %do.end.366
  %323 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  %next376 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %323, i32 0, i32 0
  %324 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next376, align 8, !tbaa !109
  store %struct.gx_clip_rect_s* %324, %struct.gx_clip_rect_s** %rsplit337, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.374
  %325 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %325, i32* %ymin, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.377

cleanup.377:                                      ; preds = %for.end, %if.then.355
  %326 = bitcast %struct.gx_clip_rect_s** %rsplit337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #2
  %327 = bitcast %struct.gx_clip_rect_s** %rbot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #2
  %cleanup.dest.379 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.379, label %cleanup.480 [
    i32 0, label %cleanup.cont.380
  ]

cleanup.cont.380:                                 ; preds = %cleanup.377
  br label %if.end.381

if.end.381:                                       ; preds = %cleanup.cont.380, %if.end.334
  %328 = load i32, i32* %ymin, align 4, !tbaa !5
  %329 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %ymin382 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %329, i32 0, i32 2
  store i32 %328, i32* %ymin382, align 4, !tbaa !104
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc, %if.end.381
  %330 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin384 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %330, i32 0, i32 2
  %331 = load i32, i32* %ymin384, align 4, !tbaa !104
  %332 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp385 = icmp eq i32 %331, %332
  br i1 %cmp385, label %for.body, label %for.end.428

for.body:                                         ; preds = %for.cond.383
  %333 = load i32, i32* %xe, align 4, !tbaa !5
  %334 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin386 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %334, i32 0, i32 4
  %335 = load i32, i32* %xmin386, align 4, !tbaa !103
  %cmp387 = icmp slt i32 %333, %335
  br i1 %cmp387, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %for.body
  br label %for.inc

if.end.389:                                       ; preds = %for.body
  %336 = load i32, i32* %x.addr, align 4, !tbaa !5
  %337 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax390 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %337, i32 0, i32 5
  %338 = load i32, i32* %xmax390, align 4, !tbaa !105
  %cmp391 = icmp sgt i32 %336, %338
  br i1 %cmp391, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.389
  br label %for.end.428

if.end.393:                                       ; preds = %if.end.389
  %339 = load i32, i32* %xe, align 4, !tbaa !5
  %340 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax394 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %340, i32 0, i32 5
  %341 = load i32, i32* %xmax394, align 4, !tbaa !105
  %cmp395 = icmp sgt i32 %339, %341
  br i1 %cmp395, label %if.then.396, label %if.end.402

if.then.396:                                      ; preds = %if.end.393
  %342 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %xmax397 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %342, i32 0, i32 5
  %343 = load i32, i32* %xmax397, align 4, !tbaa !105
  %344 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax398 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %344, i32 0, i32 5
  store i32 %343, i32* %xmax398, align 4, !tbaa !105
  br label %do.body.399

do.body.399:                                      ; preds = %if.then.396
  br label %do.cond.400

do.cond.400:                                      ; preds = %do.body.399
  br label %do.end.401

do.end.401:                                       ; preds = %do.cond.400
  br label %if.end.402

if.end.402:                                       ; preds = %do.end.401, %if.end.393
  %345 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list403 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %345, i32 0, i32 46
  %count404 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list403, i32 0, i32 6
  %346 = load i32, i32* %count404, align 4, !tbaa !49
  %dec = add nsw i32 %346, -1
  store i32 %dec, i32* %count404, align 4, !tbaa !49
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.then.405, label %if.end.410

if.then.405:                                      ; preds = %if.end.402
  br label %do.body.406

do.body.406:                                      ; preds = %if.then.405
  br label %do.cond.407

do.cond.407:                                      ; preds = %do.body.406
  br label %do.end.408

do.end.408:                                       ; preds = %do.cond.407
  %347 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list_memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %347, i32 0, i32 43
  %348 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory, align 8, !tbaa !10
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %348, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %349 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !111
  %350 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list_memory409 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %350, i32 0, i32 43
  %351 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory409, align 8, !tbaa !10
  %352 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %353 = bitcast %struct.gx_clip_rect_s* %352 to i8*
  call void %349(%struct.gs_memory_s* %351, i8* %353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %if.end.410

if.end.410:                                       ; preds = %do.end.408, %if.end.402
  %354 = load i32, i32* %x.addr, align 4, !tbaa !5
  %355 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin411 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %355, i32 0, i32 4
  %356 = load i32, i32* %xmin411, align 4, !tbaa !103
  %cmp412 = icmp sge i32 %354, %356
  br i1 %cmp412, label %if.then.413, label %if.end.416

if.then.413:                                      ; preds = %if.end.410
  %357 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %358 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list414 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %358, i32 0, i32 46
  %insert415 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list414, i32 0, i32 3
  store %struct.gx_clip_rect_s* %357, %struct.gx_clip_rect_s** %insert415, align 8, !tbaa !110
  br label %out

if.end.416:                                       ; preds = %if.end.410
  %359 = load i32, i32* %x.addr, align 4, !tbaa !5
  %360 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin417 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %360, i32 0, i32 4
  store i32 %359, i32* %xmin417, align 4, !tbaa !103
  %361 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %361, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %362 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev418 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %362, i32 0, i32 1
  %363 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev418, align 8, !tbaa !108
  %364 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next419 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %364, i32 0, i32 0
  %365 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next419, align 8, !tbaa !109
  %prev420 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %365, i32 0, i32 1
  store %struct.gx_clip_rect_s* %363, %struct.gx_clip_rect_s** %prev420, align 8, !tbaa !108
  %366 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next421 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %366, i32 0, i32 0
  %367 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next421, align 8, !tbaa !109
  %368 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev422 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %368, i32 0, i32 1
  %369 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev422, align 8, !tbaa !108
  %next423 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %369, i32 0, i32 0
  store %struct.gx_clip_rect_s* %367, %struct.gx_clip_rect_s** %next423, align 8, !tbaa !109
  br label %do.body.424

do.body.424:                                      ; preds = %if.end.416
  br label %do.cond.425

do.cond.425:                                      ; preds = %do.body.424
  br label %do.end.426

do.end.426:                                       ; preds = %do.cond.425
  br label %for.inc

for.inc:                                          ; preds = %do.end.426, %if.then.388
  %370 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev427 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %370, i32 0, i32 1
  %371 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev427, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %371, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %for.cond.383

for.end.428:                                      ; preds = %if.then.392, %for.cond.383
  %372 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %373 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %prev429 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %373, i32 0, i32 1
  store %struct.gx_clip_rect_s* %372, %struct.gx_clip_rect_s** %prev429, align 8, !tbaa !108
  %374 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %375 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next430 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %375, i32 0, i32 0
  %376 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next430, align 8, !tbaa !109
  %377 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %next431 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %377, i32 0, i32 0
  store %struct.gx_clip_rect_s* %376, %struct.gx_clip_rect_s** %next431, align 8, !tbaa !109
  %prev432 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %376, i32 0, i32 1
  store %struct.gx_clip_rect_s* %374, %struct.gx_clip_rect_s** %prev432, align 8, !tbaa !108
  %378 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %379 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next433 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %379, i32 0, i32 0
  store %struct.gx_clip_rect_s* %378, %struct.gx_clip_rect_s** %next433, align 8, !tbaa !109
  %380 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %nr, align 8, !tbaa !1
  %381 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list434 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %381, i32 0, i32 46
  %insert435 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list434, i32 0, i32 3
  store %struct.gx_clip_rect_s* %380, %struct.gx_clip_rect_s** %insert435, align 8, !tbaa !110
  br label %out

out:                                              ; preds = %for.end.428, %if.then.413
  %382 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list436 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %382, i32 0, i32 46
  %count437 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list436, i32 0, i32 6
  %383 = load i32, i32* %count437, align 4, !tbaa !49
  %cmp438 = icmp sle i32 %383, 1
  br i1 %cmp438, label %if.then.439, label %if.end.473

if.then.439:                                      ; preds = %out
  %384 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %384) #2
  %385 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list_memory440 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %385, i32 0, i32 43
  %386 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory440, align 8, !tbaa !10
  store %struct.gs_memory_s* %386, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %387 = bitcast %struct.gx_clip_rect_s** %single441 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %387) #2
  %388 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list442 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %388, i32 0, i32 46
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list442, i32 0, i32 1
  %389 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !114
  %next443 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %389, i32 0, i32 0
  %390 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next443, align 8, !tbaa !109
  store %struct.gx_clip_rect_s* %390, %struct.gx_clip_rect_s** %single441, align 8, !tbaa !1
  %391 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single441, align 8, !tbaa !1
  %392 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list444 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %392, i32 0, i32 46
  %tail445 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list444, i32 0, i32 2
  %393 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail445, align 8, !tbaa !107
  %cmp446 = icmp ne %struct.gx_clip_rect_s* %391, %393
  br i1 %cmp446, label %if.then.447, label %if.end.458

if.then.447:                                      ; preds = %if.then.439
  %394 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list448 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %394, i32 0, i32 46
  %single449 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list448, i32 0, i32 0
  %395 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single441, align 8, !tbaa !1
  %396 = bitcast %struct.gx_clip_rect_s* %single449 to i8*
  %397 = bitcast %struct.gx_clip_rect_s* %395 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %396, i8* %397, i64 40, i32 8, i1 false), !tbaa.struct !115
  %398 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs450 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %398, i32 0, i32 1
  %free_object451 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs450, i32 0, i32 2
  %399 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object451, align 8, !tbaa !111
  %400 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %401 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single441, align 8, !tbaa !1
  %402 = bitcast %struct.gx_clip_rect_s* %401 to i8*
  call void %399(%struct.gs_memory_s* %400, i8* %402, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #3
  %403 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list452 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %403, i32 0, i32 46
  %single453 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list452, i32 0, i32 0
  %prev454 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single453, i32 0, i32 1
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %prev454, align 8, !tbaa !116
  %404 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list455 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %404, i32 0, i32 46
  %single456 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list455, i32 0, i32 0
  %next457 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single456, i32 0, i32 0
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %next457, align 8, !tbaa !117
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.447, %if.then.439
  %405 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs459 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %405, i32 0, i32 1
  %free_object460 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs459, i32 0, i32 2
  %406 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object460, align 8, !tbaa !111
  %407 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %408 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list461 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %408, i32 0, i32 46
  %tail462 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list461, i32 0, i32 2
  %409 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail462, align 8, !tbaa !107
  %410 = bitcast %struct.gx_clip_rect_s* %409 to i8*
  call void %406(%struct.gs_memory_s* %407, i8* %410, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #3
  %411 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs463 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %411, i32 0, i32 1
  %free_object464 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs463, i32 0, i32 2
  %412 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object464, align 8, !tbaa !111
  %413 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %414 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list465 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %414, i32 0, i32 46
  %head466 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list465, i32 0, i32 1
  %415 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head466, align 8, !tbaa !114
  %416 = bitcast %struct.gx_clip_rect_s* %415 to i8*
  call void %412(%struct.gs_memory_s* %413, i8* %416, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #3
  %417 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list467 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %417, i32 0, i32 46
  %head468 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list467, i32 0, i32 1
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %head468, align 8, !tbaa !114
  %418 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list469 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %418, i32 0, i32 46
  %tail470 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list469, i32 0, i32 2
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %tail470, align 8, !tbaa !107
  %419 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev, align 8, !tbaa !1
  %list471 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %419, i32 0, i32 46
  %insert472 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list471, i32 0, i32 3
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %insert472, align 8, !tbaa !110
  %420 = bitcast %struct.gx_clip_rect_s** %single441 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #2
  %421 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #2
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.458, %out
  %422 = load i32, i32* %y.addr, align 4, !tbaa !5
  %423 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp474 = icmp slt i32 %422, %423
  br i1 %cmp474, label %if.then.475, label %if.end.479

if.then.475:                                      ; preds = %if.end.473
  br label %do.body.476

do.body.476:                                      ; preds = %if.then.475
  br label %do.cond.477

do.cond.477:                                      ; preds = %do.body.476
  br label %do.end.478

do.end.478:                                       ; preds = %do.cond.477
  %424 = load i32, i32* %ymin, align 4, !tbaa !5
  store i32 %424, i32* %ye, align 4, !tbaa !5
  br label %top

if.end.479:                                       ; preds = %if.end.473
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.480

cleanup.480:                                      ; preds = %if.end.479, %cleanup.377, %cleanup, %if.then.281, %if.then.262, %if.then.227, %do.end.203, %if.then.194, %if.end.182, %do.end.154, %if.then.145, %if.then.134, %if.end.113, %do.end, %if.then.36, %if.then.15
  %425 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #2
  %426 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #2
  %427 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #2
  %428 = bitcast %struct.gx_clip_rect_s** %ar to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #2
  %429 = bitcast %struct.gx_clip_rect_s** %nr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %429) #2
  %430 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #2
  %431 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #2
  %432 = bitcast %struct.gx_device_cpath_accum_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #2
  %433 = load i32, i32* %retval
  ret i32 %433
}

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

declare void @gx_get_largest_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @accum_dev_spec_op(%struct.gx_device_s* %pdev1, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev1.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev1, %struct.gx_device_s** %pdev1.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.epilog [
    i32 5, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
    i32 6, label %sw.bb.1
    i32 7, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev1.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %1, i32 %2, i8* %3, i32 %4) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

declare void @gx_clip_list_init(%struct.gx_clip_list_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gx_clip_rect_s* @accum_alloc_rect(%struct.gx_device_cpath_accum_s* %adev) #0 {
entry:
  %retval = alloca %struct.gx_clip_rect_s*, align 8
  %adev.addr = alloca %struct.gx_device_cpath_accum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %ar = alloca %struct.gx_clip_rect_s*, align 8
  %cleanup.dest.slot = alloca i32
  %head = alloca %struct.gx_clip_rect_s*, align 8
  %tail = alloca %struct.gx_clip_rect_s*, align 8
  %single = alloca %struct.gx_clip_rect_s*, align 8
  store %struct.gx_device_cpath_accum_s* %adev, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list_memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %list_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gx_clip_rect_s** %ar to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !118
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_clip_rect, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #3
  %7 = bitcast i8* %call to %struct.gx_clip_rect_s*
  store %struct.gx_clip_rect_s* %7, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %8 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_rect_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %9, i32 0, i32 46
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 6
  %10 = load i32, i32* %count, align 4, !tbaa !49
  %cmp1 = icmp eq i32 %10, 2
  br i1 %cmp1, label %if.then.2, label %if.end.36

if.then.2:                                        ; preds = %if.end
  %11 = bitcast %struct.gx_clip_rect_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %12, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %13 = bitcast %struct.gx_clip_rect_s** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_struct4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 8
  %15 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct4, align 8, !tbaa !118
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call5 = call i8* %15(%struct.gs_memory_s* %16, %struct.gs_memory_struct_type_s* @st_clip_rect, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #3
  %17 = bitcast i8* %call5 to %struct.gx_clip_rect_s*
  store %struct.gx_clip_rect_s* %17, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %18 = bitcast %struct.gx_clip_rect_s** %single to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_struct7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 8
  %20 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct7, align 8, !tbaa !118
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call8 = call i8* %20(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* @st_clip_rect, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #3
  %22 = bitcast i8* %call8 to %struct.gx_clip_rect_s*
  store %struct.gx_clip_rect_s* %22, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_struct10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 8
  %24 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct10, align 8, !tbaa !118
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call11 = call i8* %24(%struct.gs_memory_s* %25, %struct.gs_memory_struct_type_s* @st_clip_rect, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)) #3
  %26 = bitcast i8* %call11 to %struct.gx_clip_rect_s*
  store %struct.gx_clip_rect_s* %26, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %27 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gx_clip_rect_s* %27, null
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gx_clip_rect_s* %28, null
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.gx_clip_rect_s* %29, null
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %if.then.2
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %31 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !111
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %33 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  %34 = bitcast %struct.gx_clip_rect_s* %33 to i8*
  call void %31(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !111
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %38 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %39 = bitcast %struct.gx_clip_rect_s* %38 to i8*
  call void %36(%struct.gs_memory_s* %37, i8* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object21 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object21, align 8, !tbaa !111
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %43 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %44 = bitcast %struct.gx_clip_rect_s* %43 to i8*
  call void %41(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !111
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %48 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %49 = bitcast %struct.gx_clip_rect_s* %48 to i8*
  call void %46(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)) #3
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.14
  %50 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %51 = bitcast %struct.gx_clip_rect_s* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.gx_clip_rect_s* @clip_head_rect to i8*), i64 40, i32 8, i1 false), !tbaa.struct !115
  %52 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %53 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %53, i32 0, i32 0
  store %struct.gx_clip_rect_s* %52, %struct.gx_clip_rect_s** %next, align 8, !tbaa !109
  %54 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %55 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list25 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %55, i32 0, i32 46
  %single26 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list25, i32 0, i32 0
  %56 = bitcast %struct.gx_clip_rect_s* %54 to i8*
  %57 = bitcast %struct.gx_clip_rect_s* %single26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 40, i32 8, i1 false), !tbaa.struct !115
  %58 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %59 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %59, i32 0, i32 1
  store %struct.gx_clip_rect_s* %58, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  %60 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %61 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %next27 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %61, i32 0, i32 0
  store %struct.gx_clip_rect_s* %60, %struct.gx_clip_rect_s** %next27, align 8, !tbaa !109
  %62 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %63 = bitcast %struct.gx_clip_rect_s* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.gx_clip_rect_s* @clip_tail_rect to i8*), i64 40, i32 8, i1 false), !tbaa.struct !115
  %64 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %single, align 8, !tbaa !1
  %65 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %prev28 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %65, i32 0, i32 1
  store %struct.gx_clip_rect_s* %64, %struct.gx_clip_rect_s** %prev28, align 8, !tbaa !108
  %66 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %67 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list29 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %67, i32 0, i32 46
  %head30 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list29, i32 0, i32 1
  store %struct.gx_clip_rect_s* %66, %struct.gx_clip_rect_s** %head30, align 8, !tbaa !114
  %68 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %69 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list31 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %69, i32 0, i32 46
  %tail32 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list31, i32 0, i32 2
  store %struct.gx_clip_rect_s* %68, %struct.gx_clip_rect_s** %tail32, align 8, !tbaa !107
  %70 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !1
  %71 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %adev.addr, align 8, !tbaa !1
  %list33 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %71, i32 0, i32 46
  %insert = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list33, i32 0, i32 3
  store %struct.gx_clip_rect_s* %70, %struct.gx_clip_rect_s** %insert, align 8, !tbaa !110
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.16
  %72 = bitcast %struct.gx_clip_rect_s** %single to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.gx_clip_rect_s** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct.gx_clip_rect_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont, %if.end
  %75 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %ar, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %75, %struct.gx_clip_rect_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %cleanup, %if.then
  %76 = bitcast %struct.gx_clip_rect_s** %ar to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %retval
  ret %struct.gx_clip_rect_s* %78
}

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!8, !2, i64 40}
!10 = !{!11, !2, i64 1728}
!11 = !{!"gx_device_cpath_accum_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !23, i64 1736, !23, i64 1752, !25, i64 1768}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!"gs_int_rect_s", !24, i64 0, !24, i64 8}
!24 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_clip_list_s", !26, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!26 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!27 = !{!11, !2, i64 1552}
!28 = !{!11, !2, i64 1560}
!29 = !{!11, !2, i64 1144}
!30 = !{!31, !6, i64 0}
!31 = !{!"gs_fixed_rect_s", !32, i64 0, !32, i64 8}
!32 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!33 = !{!11, !6, i64 1736}
!34 = !{!31, !6, i64 4}
!35 = !{!11, !6, i64 1740}
!36 = !{!31, !6, i64 8}
!37 = !{!11, !6, i64 1744}
!38 = !{!31, !6, i64 12}
!39 = !{!11, !6, i64 1748}
!40 = !{!11, !2, i64 1176}
!41 = !{!42, !2, i64 272}
!42 = !{!"gx_clip_path_s", !43, i64 0, !46, i64 128, !6, i64 232, !31, i64 236, !31, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !13, i64 296}
!43 = !{!"gx_path_s", !44, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !31, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !32, i64 112, !2, i64 120}
!44 = !{!"gx_path_segments_s", !12, i64 0, !45, i64 24}
!45 = !{!"psc_", !2, i64 0, !2, i64 8}
!46 = !{!"gx_clip_rect_list_s", !12, i64 0, !25, i64 24}
!47 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 1, !48, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !5, i64 68, i64 4, !5, i64 72, i64 4, !5}
!48 = !{!3, !3, i64 0}
!49 = !{!11, !6, i64 1840}
!50 = !{!42, !6, i64 84}
!51 = !{!42, !6, i64 80}
!52 = !{!42, !6, i64 76}
!53 = !{!42, !6, i64 72}
!54 = !{!11, !6, i64 1752}
!55 = !{!11, !6, i64 1756}
!56 = !{!11, !6, i64 1760}
!57 = !{!11, !6, i64 1764}
!58 = !{!42, !3, i64 99}
!59 = !{!25, !6, i64 72}
!60 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!61 = !{!42, !6, i64 240}
!62 = !{!42, !6, i64 236}
!63 = !{!42, !6, i64 248}
!64 = !{!42, !6, i64 244}
!65 = !{!42, !6, i64 280}
!66 = !{!42, !13, i64 296}
!67 = !{!68, !6, i64 212}
!68 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !69, i64 24, !6, i64 128, !73, i64 132, !6, i64 168, !74, i64 176, !74, i64 192, !6, i64 208, !6, i64 212, !15, i64 216, !3, i64 220, !76, i64 224, !76, i64 228, !77, i64 232, !13, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !70, i64 296, !32, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !70, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !78, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !79, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !79, i64 1336}
!69 = !{!"gx_line_params_s", !70, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !70, i64 24, !70, i64 28, !70, i64 32, !6, i64 36, !71, i64 40, !72, i64 64}
!70 = !{!"float", !3, i64 0}
!71 = !{!"gs_matrix_s", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20}
!72 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !70, i64 12, !6, i64 16, !70, i64 20, !6, i64 24, !6, i64 28, !70, i64 32}
!73 = !{!"gs_matrix_fixed_s", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!74 = !{!"gs_point_s", !75, i64 0, !75, i64 8}
!75 = !{!"double", !3, i64 0}
!76 = !{!"gs_transparency_source_s", !70, i64 0}
!77 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!78 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!79 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !3, i64 24}
!80 = !{!42, !2, i64 40}
!81 = !{!13, !13, i64 0}
!82 = !{!83, !2, i64 0}
!83 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !24, i64 352, !6, i64 360, !84, i64 368, !86, i64 632}
!84 = !{!"gs_client_color_s", !2, i64 0, !85, i64 8}
!85 = !{!"gs_paint_color_s", !3, i64 0}
!86 = !{!"_mask", !87, i64 0, !13, i64 8, !2, i64 16}
!87 = !{!"mp_", !6, i64 0, !6, i64 4}
!88 = !{!83, !6, i64 360}
!89 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !90}
!90 = !{!70, !70, i64 0}
!91 = !{!92, !6, i64 0}
!92 = !{!"gx_fill_params_s", !6, i64 0, !32, i64 4, !70, i64 12}
!93 = !{!74, !75, i64 0}
!94 = !{!92, !6, i64 4}
!95 = !{!74, !75, i64 8}
!96 = !{!92, !6, i64 8}
!97 = !{!68, !70, i64 296}
!98 = !{!92, !70, i64 12}
!99 = !{!100, !2, i64 1336}
!100 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!101 = !{!11, !6, i64 1832}
!102 = !{!11, !6, i64 1836}
!103 = !{!26, !6, i64 24}
!104 = !{!26, !6, i64 16}
!105 = !{!26, !6, i64 28}
!106 = !{!26, !6, i64 20}
!107 = !{!11, !2, i64 1816}
!108 = !{!26, !2, i64 8}
!109 = !{!26, !2, i64 0}
!110 = !{!11, !2, i64 1824}
!111 = !{!112, !2, i64 24}
!112 = !{!"gs_memory_s", !2, i64 0, !113, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!113 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!114 = !{!11, !2, i64 1808}
!115 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 1, !48}
!116 = !{!11, !2, i64 1776}
!117 = !{!11, !2, i64 1768}
!118 = !{!112, !2, i64 72}
