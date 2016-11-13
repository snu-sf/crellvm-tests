; ModuleID = './gxcpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_cpath_enum_s = type { %struct.gs_path_enum_s, i32, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, %struct.gs_int_point_s, i32 }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"clip_rect\00", align 1
@clip_rect_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @clip_rect_enum_ptrs, i32 0, i32 0) }, align 8
@st_clip_rect = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clip_rect_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"clip_list\00", align 1
@clip_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @clip_list_enum_ptrs, i32 0, i32 0) }, align 8
@st_clip_list = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clip_list_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"clip_path\00", align 1
@st_clip_path = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 304, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @clip_path_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @clip_path_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"gx_device_clip\00", align 1
@st_device_clip = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_clip_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_clip_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"./base/gxcpath.c\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Attempt to share (local) segments of clip path 0x%lx!\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gx_cpath_unshare\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gx_cpath_assign\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"gx_cpath_assign_free\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gx_cpath_to_path error\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gx_cpath_intersect\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"gx_cpath_clip\00", align 1
@clip_list_empty = internal constant %struct.gx_clip_list_s { %struct.gx_clip_rect_s { %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s* null, i32 -2147483648, i32 2147483647, i32 0, i32 0, i8 0 }, %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s* null, i32 0, i32 0, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"gx_clip_list_free\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"gx_cpath_copy\00", align 1
@clip_rect_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@clip_list_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 40 }, %struct.gc_ptr_element_s { i16 0, i16 48 }], align 2
@st_path = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"gx_clip_rect_list\00", align 1
@clip_rect_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 24, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_list to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* null }, align 8
@st_clip_rect_list = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clip_rect_list_reloc_ptrs to i8*) }, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"gx_cpath_from_rectangle\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gx_cpath_path_list_new\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"gs_cpath_list\00", align 1
@cpath_path_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_path, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cpath_path_list_enum_ptrs, i32 0, i32 0) }, align 8
@st_cpath_path_list = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cpath_path_list_reloc_ptrs to i8*) }, align 8
@cpath_path_list_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 160 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @clip_path_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_clip_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_path_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_clip_path_s*
  store %struct.gx_clip_path_s* %2, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_path, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 0
  %7 = bitcast %struct.gx_path_s* %path to i8*
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 2
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %7, i32 128, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_path, %struct.gc_state_s* %10) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 5
  %12 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %local_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 1
  %cmp = icmp eq %struct.gx_clip_rect_list_s* %12, %local_list
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %rect_list1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 5
  %15 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list1, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_clip_rect_list_s* [ null, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast %struct.gx_clip_rect_list_s* %cond to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr, align 8, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 7
  %19 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %20 = bitcast %struct.gx_cpath_path_list_s* %19 to i8*
  %21 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %21, i32 0, i32 0
  store i8* %20, i8** %ptr3, align 8, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.2, %cond.end, %sw.default
  %22 = bitcast %struct.gx_clip_path_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %23
}

; Function Attrs: nounwind uwtable
define internal void @clip_path_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_clip_path_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_path_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_clip_path_s*
  store %struct.gx_clip_path_s* %2, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 5
  %4 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %local_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %5, i32 0, i32 1
  %cmp = icmp ne %struct.gx_clip_rect_list_s* %4, %local_list
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gc_state_s* %6 to %struct.gc_procs_common_s**
  %8 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %7, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %8, i32 0, i32 0
  %9 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !24
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %rect_list1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 5
  %11 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list1, align 8, !tbaa !9
  %12 = bitcast %struct.gx_clip_rect_list_s* %11 to i8*
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %9(i8* %12, %struct.gc_state_s* %13) #4
  %14 = bitcast i8* %call to %struct.gx_clip_rect_list_s*
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %rect_list2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* %14, %struct.gx_clip_rect_list_s** %rect_list2, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gc_state_s* %16 to %struct.gc_procs_common_s**
  %18 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %17, align 8, !tbaa !1
  %reloc_struct_ptr3 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %18, i32 0, i32 0
  %19 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr3, align 8, !tbaa !24
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 7
  %21 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %22 = bitcast %struct.gx_cpath_path_list_s* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call i8* %19(i8* %22, %struct.gc_state_s* %23) #4
  %24 = bitcast i8* %call4 to %struct.gx_cpath_path_list_s*
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %path_list5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* %24, %struct.gx_cpath_path_list_s** %path_list5, align 8, !tbaa !23
  %26 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_path, i32 0, i32 5), align 8, !tbaa !26
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %cptr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %27, i32 0, i32 0
  %28 = bitcast %struct.gx_path_s* %path to i8*
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %26(i8* %28, i32 128, %struct.gs_memory_struct_type_s* @st_path, %struct.gc_state_s* %29) #4
  %30 = bitcast %struct.gx_clip_path_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_clip_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_list to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %7, i32 0, i32 44
  %8 = bitcast %struct.gx_clip_list_s* %list to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 1
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %8, i32 80, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_list to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %12 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !7
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %15, 3
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %12(%struct.gs_memory_s* %13, i8* %14, i32 1736, i32 %sub1, %struct.enum_ptr_s* %16, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %17) #4
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %18 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %18, i32 0, i32 45
  %19 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !27
  %20 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %list3 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %20, i32 0, i32 44
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list3, i32 0, i32 0
  %cmp4 = icmp eq %struct.gx_clip_rect_s* %19, %single
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %21 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %current5 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %21, i32 0, i32 45
  %22 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current5, align 8, !tbaa !27
  %23 = bitcast %struct.gx_clip_rect_s* %22 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %23, %cond.false ]
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %cond, i8** %ptr, align 8, !tbaa !21
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %if.then
  %25 = bitcast %struct.gx_device_clip_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %26
}

; Function Attrs: nounwind uwtable
define internal void @device_clip_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cptr = alloca %struct.gx_device_clip_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %3 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %3, i32 0, i32 45
  %4 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !27
  %5 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %5, i32 0, i32 44
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 0
  %cmp = icmp eq %struct.gx_clip_rect_s* %4, %single
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gc_state_s* %6 to %struct.gc_procs_common_s**
  %8 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %7, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %8, i32 0, i32 0
  %9 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !24
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %9(i8* %10, %struct.gc_state_s* %11) #4
  %12 = bitcast i8* %call to %struct.gx_device_clip_s*
  %list1 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %12, i32 0, i32 44
  %single2 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list1, i32 0, i32 0
  %13 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %13, i32 0, i32 45
  store %struct.gx_clip_rect_s* %single2, %struct.gx_clip_rect_s** %current3, align 8, !tbaa !27
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gc_state_s* %14 to %struct.gc_procs_common_s**
  %16 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %15, align 8, !tbaa !1
  %reloc_struct_ptr4 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %16, i32 0, i32 0
  %17 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr4, align 8, !tbaa !24
  %18 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.gx_device_clip_s*
  %current5 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %19, i32 0, i32 45
  %20 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current5, align 8, !tbaa !27
  %21 = bitcast %struct.gx_clip_rect_s* %20 to i8*
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %17(i8* %21, %struct.gc_state_s* %22) #4
  %23 = bitcast i8* %call6 to %struct.gx_clip_rect_s*
  %24 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gx_device_clip_s*
  %current7 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %25, i32 0, i32 45
  store %struct.gx_clip_rect_s* %23, %struct.gx_clip_rect_s** %current7, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_list to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !26
  %27 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cptr, align 8, !tbaa !1
  %list8 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %27, i32 0, i32 44
  %28 = bitcast %struct.gx_clip_list_s* %list8 to i8*
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %26(i8* %28, i32 80, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_list to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %29) #4
  %30 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !26
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %30(i8* %31, i32 1736, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %32) #4
  %33 = bitcast %struct.gx_device_clip_s** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_init_contained_shared(%struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s* %shared, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %shared.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %shared, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 0
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !39
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 0
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path1, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %2, %local_segments
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i8* @gs_program_name() #4
  %call3 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call3) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 165) #4
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %5 = ptrtoint %struct.gx_clip_path_s* %4 to i64
  %call4 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i64 %5) #4
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_clip_path_s* %6 to i8*
  %9 = bitcast %struct.gx_clip_path_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 304, i32 8, i1 false), !tbaa.struct !40
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path5, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 0
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path6, i32 0, i32 2
  store i32 1, i32* %allocation, align 4, !tbaa !44
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path7 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 0
  %segments8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path7, i32 0, i32 3
  %14 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments8, align 8, !tbaa !39
  %tobool9 = icmp ne %struct.gx_path_segments_s* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path12 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 0
  %segments13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path12, i32 0, i32 3
  %16 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments13, align 8, !tbaa !39
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %16, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %17 = load i64, i64* %ref_count, align 8, !tbaa !45
  %inc = add nsw i64 %17, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !45
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.body.14
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %do.body
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 5
  %19 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %tobool19 = icmp ne %struct.gx_clip_rect_list_s* %19, null
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %do.body.18
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list22 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 5
  %21 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list22, align 8, !tbaa !9
  %rc23 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %21, i32 0, i32 0
  %ref_count24 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 0
  %22 = load i64, i64* %ref_count24, align 8, !tbaa !46
  %inc25 = add nsw i64 %22, 1
  store i64 %inc25, i64* %ref_count24, align 8, !tbaa !46
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.21
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.18
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %23, i32 0, i32 7
  %24 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %tobool32 = icmp ne %struct.gx_cpath_path_list_s* %24, null
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %do.body.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list35 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 7
  %26 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list35, align 8, !tbaa !23
  %rc36 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %26, i32 0, i32 1
  %ref_count37 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc36, i32 0, i32 0
  %27 = load i64, i64* %ref_count37, align 8, !tbaa !47
  %inc38 = add nsw i64 %27, 1
  store i64 %inc38, i64* %ref_count37, align 8, !tbaa !47
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.34
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.31
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.56

if.else:                                          ; preds = %entry
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list44 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %29, i32 0, i32 5
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call45 = call i32 @cpath_alloc_list(%struct.gx_clip_rect_list_s** %rect_list44, %struct.gs_memory_s* %30, i8* %31) #4
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %32, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.else
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path49 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %34, i32 0, i32 0
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call50 = call i32 @gx_path_init_contained_shared(%struct.gx_path_s* %path49, %struct.gx_path_s* null, %struct.gs_memory_s* %35, i8* %36) #4
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %37, 0
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.48
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %41 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list53 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %41, i32 0, i32 5
  %42 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list53, align 8, !tbaa !9
  %43 = bitcast %struct.gx_clip_rect_list_s* %42 to i8*
  %44 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %39(%struct.gs_memory_s* %40, i8* %43, i8* %44) #4
  %45 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list54 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %45, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rect_list54, align 8, !tbaa !9
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.48
  %47 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @cpath_init_own_contents(%struct.gx_clip_path_s* %47) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.52, %if.then.47
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %do.end.43
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %cleanup, %if.then.2
  %49 = load i32, i32* %retval
  ret i32 %49

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @cpath_alloc_list(%struct.gx_clip_rect_list_s** %prlist, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %prlist.addr = alloca %struct.gx_clip_rect_list_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gx_clip_rect_list_s** %prlist, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !52
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_rect_list to %struct.gs_memory_struct_type_s*), i8* %3) #4
  %4 = bitcast i8* %call to %struct.gx_clip_rect_list_s*
  %5 = load %struct.gx_clip_rect_list_s**, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  store %struct.gx_clip_rect_list_s* %4, %struct.gx_clip_rect_list_s** %5, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_rect_list_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %6 = load %struct.gx_clip_rect_list_s**, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  %7 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %6, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %7, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !46
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gx_clip_rect_list_s**, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %9, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %10, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %11 = load %struct.gx_clip_rect_list_s**, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  %12 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %11, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %12, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.4
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.5
  br label %do.end.6

do.end.6:                                         ; preds = %if.end
  %13 = load %struct.gx_clip_rect_list_s**, %struct.gx_clip_rect_list_s*** %prlist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %13, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %14, i32 0, i32 0
  %free8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_cpath_list, void (%struct.gs_memory_s*, i8*, i8*)** %free8, align 8, !tbaa !54
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gx_path_init_contained_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal void @cpath_init_own_contents(%struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %null_rect = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %null_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !55
  %q1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !56
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y2, align 4, !tbaa !57
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !58
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @cpath_init_rectangle(%struct.gx_clip_path_s* %1, %struct.gs_fixed_rect_s* %null_rect) #4
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %3 = bitcast %struct.gs_fixed_rect_s* %null_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %3) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* %shared, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca %struct.gx_clip_path_s*, align 8
  %shared.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %shared, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !52
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_path to %struct.gs_memory_struct_type_s*), i8* %4) #4
  %5 = bitcast i8* %call to %struct.gx_clip_path_s*
  store %struct.gx_clip_path_s* %5, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_cpath_init_contained_shared(%struct.gx_clip_path_s* %8, %struct.gx_clip_path_s* %9, %struct.gs_memory_s* %10, i8* %11) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %17 = bitcast %struct.gx_clip_path_s* %16 to i8*
  %18 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* %18) #4
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %19, i32 0, i32 0
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 2
  store i32 2, i32* %allocation, align 4, !tbaa !44
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %20, %struct.gx_clip_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %retval
  ret %struct.gx_clip_path_s* %23
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_init_local_shared_nested(%struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s* %shared, %struct.gs_memory_s* %mem, i32 %safely_nested) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %shared.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %safely_nested.addr = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %shared, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %safely_nested, i32* %safely_nested.addr, align 4, !tbaa !5
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 0
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !39
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 0
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path1, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %2, %local_segments
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %safely_nested.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %call = call i8* @gs_program_name() #4
  %call4 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call4) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 223) #4
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %6 = ptrtoint %struct.gx_clip_path_s* %5 to i64
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i64 %6) #4
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 0
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path7 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_path_s* %path6 to i8*
  %10 = bitcast %struct.gx_path_s* %path7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 128, i32 8, i1 false), !tbaa.struct !59
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path8 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 0
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path8, i32 0, i32 2
  store i32 0, i32* %allocation, align 4, !tbaa !44
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path9 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 0
  %segments10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path9, i32 0, i32 3
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments10, align 8, !tbaa !39
  %tobool11 = icmp ne %struct.gx_path_segments_s* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path14 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 0
  %segments15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path14, i32 0, i32 3
  %15 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments15, align 8, !tbaa !39
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %15, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %16 = load i64, i64* %ref_count, align 8, !tbaa !45
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !45
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.13
  br label %do.end

do.end:                                           ; preds = %do.body.16
  br label %do.end.17

do.end.17:                                        ; preds = %do.end
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %17, i32 0, i32 5
  %18 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list20 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %19, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* %18, %struct.gx_clip_rect_list_s** %rect_list20, align 8, !tbaa !9
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list22 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 5
  %21 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list22, align 8, !tbaa !9
  %tobool23 = icmp ne %struct.gx_clip_rect_list_s* %21, null
  br i1 %tobool23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %do.body.21
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list26 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %22, i32 0, i32 5
  %23 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list26, align 8, !tbaa !9
  %rc27 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %23, i32 0, i32 0
  %ref_count28 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 0
  %24 = load i64, i64* %ref_count28, align 8, !tbaa !46
  %inc29 = add nsw i64 %24, 1
  store i64 %inc29, i64* %ref_count28, align 8, !tbaa !46
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.25
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.21
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 7
  %26 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list35 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %27, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* %26, %struct.gx_cpath_path_list_s** %path_list35, align 8, !tbaa !23
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.34
  %28 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list37 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %28, i32 0, i32 7
  %29 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list37, align 8, !tbaa !23
  %tobool38 = icmp ne %struct.gx_cpath_path_list_s* %29, null
  br i1 %tobool38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list41 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %30, i32 0, i32 7
  %31 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list41, align 8, !tbaa !23
  %rc42 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %31, i32 0, i32 1
  %ref_count43 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc42, i32 0, i32 0
  %32 = load i64, i64* %ref_count43, align 8, !tbaa !47
  %inc44 = add nsw i64 %32, 1
  store i64 %inc44, i64* %ref_count43, align 8, !tbaa !47
  br label %do.body.45

do.body.45:                                       ; preds = %do.body.40
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.36
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  call void @cpath_share_own_contents(%struct.gx_clip_path_s* %33, %struct.gx_clip_path_s* %34) #4
  %35 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %35, i32 0, i32 2
  %36 = load i32, i32* %rule, align 4, !tbaa !60
  %37 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule50 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %37, i32 0, i32 2
  store i32 %36, i32* %rule50, align 4, !tbaa !60
  br label %if.end.65

if.else:                                          ; preds = %entry
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path51 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call52 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path51, %struct.gx_path_s* null, %struct.gs_memory_s* %39) #4
  br label %do.body.53

do.body.53:                                       ; preds = %if.else
  %40 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %local_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %40, i32 0, i32 1
  %rc54 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %local_list, i32 0, i32 0
  %ref_count55 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc54, i32 0, i32 0
  store i64 1, i64* %ref_count55, align 8, !tbaa !46
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %local_list56 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %42, i32 0, i32 1
  %rc57 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %local_list56, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc57, i32 0, i32 1
  store %struct.gs_memory_s* %41, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %43 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %local_list58 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %43, i32 0, i32 1
  %rc59 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %local_list58, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc59, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_cpath_list_local, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.53
  br label %do.end.61

do.end.61:                                        ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.end.61
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %local_list63 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %44, i32 0, i32 1
  %45 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list64 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %45, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* %local_list63, %struct.gx_clip_rect_list_s** %rect_list64, align 8, !tbaa !9
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @cpath_init_own_contents(%struct.gx_clip_path_s* %46) #4
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.62, %do.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.3
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal void @cpath_share_own_contents(%struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s* %shared) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %shared.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %shared, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %inner_box1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 3
  %2 = bitcast %struct.gs_fixed_rect_s* %inner_box to i8*
  %3 = bitcast %struct.gs_fixed_rect_s* %inner_box1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 4, i1 false), !tbaa.struct !61
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 6
  %5 = load i32, i32* %path_valid, align 4, !tbaa !62
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 6
  store i32 %5, i32* %path_valid2, align 4, !tbaa !62
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 4
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %outer_box3 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 4
  %9 = bitcast %struct.gs_fixed_rect_s* %outer_box to i8*
  %10 = bitcast %struct.gs_fixed_rect_s* %outer_box3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 4, i1 false), !tbaa.struct !61
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 8
  %12 = load i64, i64* %id, align 8, !tbaa !63
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 8
  store i64 %12, i64* %id4, align 8, !tbaa !63
  ret void
}

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal void @rc_free_cpath_list_local(%struct.gs_memory_s* %mem, i8* %vrlist, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vrlist.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %rlist = alloca %struct.gx_clip_rect_list_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vrlist, i8** %vrlist.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vrlist.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_clip_rect_list_s*
  store %struct.gx_clip_rect_list_s* %2, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %3 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_clip_list_free(%struct.gx_clip_list_s* %list, %struct.gs_memory_s* %4) #4
  %5 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s* %shared, %struct.gs_memory_s* %mem) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %shared.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %shared, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %shared.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_init_local_shared_nested(%struct.gx_clip_path_s* %0, %struct.gx_clip_path_s* %1, %struct.gs_memory_s* %2, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_unshare(%struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %rlist = alloca %struct.gx_clip_rect_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code3 = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 0
  %call = call i32 @gx_path_unshare(%struct.gx_path_s* %path) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 5
  %4 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  store %struct.gx_clip_rect_list_s* %4, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %7, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !46
  %cmp1 = icmp sgt i64 %8, 1
  br i1 %cmp1, label %if.then.2, label %if.end.37

if.then.2:                                        ; preds = %if.end
  %9 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 5
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path5, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %call6 = call i32 @cpath_alloc_list(%struct.gx_clip_rect_list_s** %rect_list4, %struct.gs_memory_s* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 %call6, i32* %code3, align 4, !tbaa !5
  %13 = load i32, i32* %code3, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.2
  %14 = load i32, i32* %code3, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %15 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_rect_list_s* %15, null
  br i1 %tobool, label %if.then.10, label %if.end.34

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond

do.cond:                                          ; preds = %do.body.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %16, i32 0, i32 0
  %ref_count14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 0
  %17 = load i64, i64* %ref_count14, align 8, !tbaa !46
  %add = add nsw i64 %17, -1
  store i64 %add, i64* %ref_count14, align 8, !tbaa !46
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %18 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc17 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %18, i32 0, i32 0
  %ref_count18 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 0
  %19 = load i64, i64* %ref_count18, align 8, !tbaa !46
  %tobool19 = icmp ne i64 %19, 0
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.body.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %20 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc25 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %20, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc25, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  %22 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc26 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %22, i32 0, i32 0
  %memory27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !53
  %24 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %25 = bitcast %struct.gx_clip_rect_list_s* %24 to i8*
  call void %21(%struct.gs_memory_s* %23, i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.end.24
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  br label %if.end.33

if.else:                                          ; preds = %do.end.16
  br label %do.body.30

do.body.30:                                       ; preds = %if.else
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.body
  br label %do.cond.35

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.36, %if.then.8
  %26 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont, %if.end
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup, %if.then
  %28 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gx_path_unshare(%struct.gx_path_s*) #0

; Function Attrs: nounwind uwtable
define void @gx_cpath_free(%struct.gx_clip_path_s* %pcpath, i8* %cname) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cname.addr = alloca i8*, align 8
  %alloc = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 5
  %2 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %tobool = icmp ne %struct.gx_clip_rect_list_s* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.24

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.body.3
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 5
  %4 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list4, align 8, !tbaa !9
  %rc = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %4, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %5 = load i64, i64* %ref_count, align 8, !tbaa !46
  %add = add nsw i64 %5, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !46
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 5
  %7 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list6, align 8, !tbaa !9
  %rc7 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %7, i32 0, i32 0
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %8 = load i64, i64* %ref_count8, align 8, !tbaa !46
  %tobool9 = icmp ne i64 %8, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list14 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 5
  %10 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list14, align 8, !tbaa !9
  %rc15 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %10, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list16 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 5
  %13 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list16, align 8, !tbaa !9
  %rc17 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %13, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list18 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 5
  %16 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list18, align 8, !tbaa !9
  %17 = bitcast %struct.gx_clip_rect_list_s* %16 to i8*
  %18 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %11(%struct.gs_memory_s* %14, i8* %17, i8* %18) #4
  br label %do.end.19

do.end.19:                                        ; preds = %do.end.13
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list20 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %19, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rect_list20, align 8, !tbaa !9
  br label %if.end.23

if.else:                                          ; preds = %do.end.5
  br label %do.body.21

do.body.21:                                       ; preds = %if.else
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.end.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.body
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 7
  %21 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %tobool27 = icmp ne %struct.gx_cpath_path_list_s* %21, null
  br i1 %tobool27, label %if.then.28, label %if.end.58

if.then.28:                                       ; preds = %do.body.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list32 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %22, i32 0, i32 7
  %23 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list32, align 8, !tbaa !23
  %rc33 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %23, i32 0, i32 1
  %ref_count34 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc33, i32 0, i32 0
  %24 = load i64, i64* %ref_count34, align 8, !tbaa !47
  %add35 = add nsw i64 %24, -1
  store i64 %add35, i64* %ref_count34, align 8, !tbaa !47
  br label %do.end.36

do.end.36:                                        ; preds = %do.end.31
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list37 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 7
  %26 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list37, align 8, !tbaa !23
  %rc38 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %26, i32 0, i32 1
  %ref_count39 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc38, i32 0, i32 0
  %27 = load i64, i64* %ref_count39, align 8, !tbaa !47
  %tobool40 = icmp ne i64 %27, 0
  br i1 %tobool40, label %if.else.54, label %if.then.41

if.then.41:                                       ; preds = %do.end.36
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.43
  %28 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list45 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %28, i32 0, i32 7
  %29 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list45, align 8, !tbaa !23
  %rc46 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %29, i32 0, i32 1
  %free47 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc46, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free47, align 8, !tbaa !64
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list48 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %31, i32 0, i32 7
  %32 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list48, align 8, !tbaa !23
  %rc49 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %32, i32 0, i32 1
  %memory50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !65
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list51 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %34, i32 0, i32 7
  %35 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list51, align 8, !tbaa !23
  %36 = bitcast %struct.gx_cpath_path_list_s* %35 to i8*
  %37 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %30(%struct.gs_memory_s* %33, i8* %36, i8* %37) #4
  br label %do.end.52

do.end.52:                                        ; preds = %do.end.44
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list53 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %38, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list53, align 8, !tbaa !23
  br label %if.end.57

if.else.54:                                       ; preds = %do.end.36
  br label %do.body.55

do.body.55:                                       ; preds = %if.else.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.body.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.end.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.26
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %39 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list60 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %39, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rect_list60, align 8, !tbaa !9
  %40 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list61 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %40, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list61, align 8, !tbaa !23
  %41 = bitcast i32* %alloc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %42, i32 0, i32 0
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 2
  %43 = load i32, i32* %allocation, align 4, !tbaa !44
  store i32 %43, i32* %alloc, align 4, !tbaa !42
  %44 = load i32, i32* %alloc, align 4, !tbaa !42
  %cmp62 = icmp eq i32 %44, 2
  br i1 %cmp62, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %do.end.59
  %45 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path64 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %45, i32 0, i32 0
  %allocation65 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path64, i32 0, i32 2
  store i32 1, i32* %allocation65, align 4, !tbaa !44
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path66 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %46, i32 0, i32 0
  %47 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %path66, i8* %47) #4
  %48 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path67 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %48, i32 0, i32 0
  %memory68 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path67, i32 0, i32 1
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !43
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path69 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %51, i32 0, i32 0
  %memory70 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path69, i32 0, i32 1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory70, align 8, !tbaa !43
  %53 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_clip_path_s* %53 to i8*
  %55 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %50(%struct.gs_memory_s* %52, i8* %54, i8* %55) #4
  br label %if.end.73

if.else.71:                                       ; preds = %do.end.59
  %56 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path72 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %56, i32 0, i32 0
  %57 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %path72, i8* %57) #4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.63
  %58 = bitcast i32* %alloc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  br label %return

return:                                           ; preds = %if.end.73, %if.then
  ret void
}

declare void @gx_path_free(%struct.gx_path_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s* %pcpto, %struct.gx_clip_path_s* %pcpfrom) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpto.addr = alloca %struct.gx_clip_path_s*, align 8
  %pcpfrom.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %fromlist = alloca %struct.gx_clip_rect_list_s*, align 8
  %tolist = alloca %struct.gx_clip_rect_list_s*, align 8
  %path3 = alloca %struct.gx_path_s, align 8
  %cleanup.dest.slot = alloca i32
  %code10 = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpto, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpfrom, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 0
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 0
  %call = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %path, %struct.gx_path_s* %path1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = bitcast %struct.gx_clip_rect_list_s** %fromlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 5
  %5 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  store %struct.gx_clip_rect_list_s* %5, %struct.gx_clip_rect_list_s** %fromlist, align 8, !tbaa !1
  %6 = bitcast %struct.gx_clip_rect_list_s** %tolist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 5
  %8 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list2, align 8, !tbaa !9
  store %struct.gx_clip_rect_list_s* %8, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %9 = bitcast %struct.gx_path_s* %path3 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #2
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %fromlist, align 8, !tbaa !1
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %local_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 1
  %cmp4 = icmp eq %struct.gx_clip_rect_list_s* %11, %local_list
  br i1 %cmp4, label %if.then.5, label %if.else.70

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %local_list6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 1
  %cmp7 = icmp eq %struct.gx_clip_rect_list_s* %13, %local_list6
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %15 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %15, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %16 = load i64, i64* %ref_count, align 8, !tbaa !46
  %cmp8 = icmp sgt i64 %16, 1
  br i1 %cmp8, label %if.then.9, label %if.else.50

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.5
  %17 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %18, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %call12 = call i32 @cpath_alloc_list(%struct.gx_clip_rect_list_s** %tolist, %struct.gs_memory_s* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 %call12, i32* %code10, align 4, !tbaa !5
  %20 = load i32, i32* %code10, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %20, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.9
  %21 = load i32, i32* %code10, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.9
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list16 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %22, i32 0, i32 5
  %23 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list16, align 8, !tbaa !9
  %tobool = icmp ne %struct.gx_clip_rect_list_s* %23, null
  br i1 %tobool, label %if.then.17, label %if.end.47

if.then.17:                                       ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.body.18
  br label %do.cond

do.cond:                                          ; preds = %do.body.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list20 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %24, i32 0, i32 5
  %25 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list20, align 8, !tbaa !9
  %rc21 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %25, i32 0, i32 0
  %ref_count22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 0
  %26 = load i64, i64* %ref_count22, align 8, !tbaa !46
  %add = add nsw i64 %26, -1
  store i64 %add, i64* %ref_count22, align 8, !tbaa !46
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list25 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %27, i32 0, i32 5
  %28 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list25, align 8, !tbaa !9
  %rc26 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %28, i32 0, i32 0
  %ref_count27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 0
  %29 = load i64, i64* %ref_count27, align 8, !tbaa !46
  %tobool28 = icmp ne i64 %29, 0
  br i1 %tobool28, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %do.end.24
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.body.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list34 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %30, i32 0, i32 5
  %31 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list34, align 8, !tbaa !9
  %rc35 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %31, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list36 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %33, i32 0, i32 5
  %34 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list36, align 8, !tbaa !9
  %rc37 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %34, i32 0, i32 0
  %memory38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !53
  %36 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list39 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %36, i32 0, i32 5
  %37 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list39, align 8, !tbaa !9
  %38 = bitcast %struct.gx_clip_rect_list_s* %37 to i8*
  call void %32(%struct.gs_memory_s* %35, i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.end.33
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %39 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list42 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %39, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rect_list42, align 8, !tbaa !9
  br label %if.end.46

if.else:                                          ; preds = %do.end.24
  br label %do.body.43

do.body.43:                                       ; preds = %if.else
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.body.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.end.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body
  br label %do.cond.48

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.49, %if.then.14
  %40 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.146 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else.50:                                       ; preds = %lor.lhs.false
  %41 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %rc51 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %41, i32 0, i32 0
  %memory52 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc51, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !53
  %43 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %44 = bitcast %struct.gx_clip_rect_list_s* %43 to i8*
  call void @rc_free_cpath_list_local(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %cleanup.cont
  %45 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %45, i32 0, i32 1
  %46 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %fromlist, align 8, !tbaa !1
  %list54 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %46, i32 0, i32 1
  %47 = bitcast %struct.gx_clip_list_s* %list to i8*
  %48 = bitcast %struct.gx_clip_list_s* %list54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 80, i32 8, i1 false), !tbaa.struct !66
  %49 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %50 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %rect_list55 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %50, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* %49, %struct.gx_clip_rect_list_s** %rect_list55, align 8, !tbaa !9
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.53
  %51 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %tobool57 = icmp ne %struct.gx_clip_rect_list_s* %51, null
  br i1 %tobool57, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %do.body.56
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %52 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %tolist, align 8, !tbaa !1
  %rc60 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %52, i32 0, i32 0
  %ref_count61 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc60, i32 0, i32 0
  %53 = load i64, i64* %ref_count61, align 8, !tbaa !46
  %inc = add nsw i64 %53, 1
  store i64 %inc, i64* %ref_count61, align 8, !tbaa !46
  br label %do.body.62

do.body.62:                                       ; preds = %do.body.59
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.56
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.127

if.else.70:                                       ; preds = %if.end
  br label %do.body.71

do.body.71:                                       ; preds = %if.else.70
  %54 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %fromlist, align 8, !tbaa !1
  %tobool72 = icmp ne %struct.gx_clip_rect_list_s* %54, null
  br i1 %tobool72, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %do.body.71
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %55 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %fromlist, align 8, !tbaa !1
  %rc75 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %55, i32 0, i32 0
  %ref_count76 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc75, i32 0, i32 0
  %56 = load i64, i64* %ref_count76, align 8, !tbaa !46
  %inc77 = add nsw i64 %56, 1
  store i64 %inc77, i64* %ref_count76, align 8, !tbaa !46
  br label %do.body.78

do.body.78:                                       ; preds = %do.body.74
  br label %do.cond.79

do.cond.79:                                       ; preds = %do.body.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %do.body.71
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %57 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list87 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %57, i32 0, i32 5
  %58 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list87, align 8, !tbaa !9
  %tobool88 = icmp ne %struct.gx_clip_rect_list_s* %58, null
  br i1 %tobool88, label %if.then.89, label %if.end.124

if.then.89:                                       ; preds = %do.body.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.body.90
  br label %do.cond.92

do.cond.92:                                       ; preds = %do.body.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  %59 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list94 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %59, i32 0, i32 5
  %60 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list94, align 8, !tbaa !9
  %rc95 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %60, i32 0, i32 0
  %ref_count96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 0
  %61 = load i64, i64* %ref_count96, align 8, !tbaa !46
  %add97 = add nsw i64 %61, -1
  store i64 %add97, i64* %ref_count96, align 8, !tbaa !46
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.end.93
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %62 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list100 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %62, i32 0, i32 5
  %63 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list100, align 8, !tbaa !9
  %rc101 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %63, i32 0, i32 0
  %ref_count102 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc101, i32 0, i32 0
  %64 = load i64, i64* %ref_count102, align 8, !tbaa !46
  %tobool103 = icmp ne i64 %64, 0
  br i1 %tobool103, label %if.else.119, label %if.then.104

if.then.104:                                      ; preds = %do.end.99
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.body.105
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %65 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list109 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %65, i32 0, i32 5
  %66 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list109, align 8, !tbaa !9
  %rc110 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %66, i32 0, i32 0
  %free111 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc110, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free111, align 8, !tbaa !54
  %68 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list112 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %68, i32 0, i32 5
  %69 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list112, align 8, !tbaa !9
  %rc113 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %69, i32 0, i32 0
  %memory114 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc113, i32 0, i32 1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !53
  %71 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list115 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %71, i32 0, i32 5
  %72 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list115, align 8, !tbaa !9
  %73 = bitcast %struct.gx_clip_rect_list_s* %72 to i8*
  call void %67(%struct.gs_memory_s* %70, i8* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.end.108
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  %74 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %rect_list118 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %74, i32 0, i32 5
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rect_list118, align 8, !tbaa !9
  br label %if.end.123

if.else.119:                                      ; preds = %do.end.99
  br label %do.body.120

do.body.120:                                      ; preds = %if.else.119
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.120
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  br label %if.end.123

if.end.123:                                       ; preds = %do.end.122, %do.end.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %do.body.86
  br label %do.cond.125

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  br label %if.end.127

if.end.127:                                       ; preds = %do.end.126, %do.end.69
  br label %do.body.128

do.body.128:                                      ; preds = %if.end.127
  %75 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %75, i32 0, i32 7
  %76 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %tobool129 = icmp ne %struct.gx_cpath_path_list_s* %76, null
  br i1 %tobool129, label %if.then.130, label %if.end.141

if.then.130:                                      ; preds = %do.body.128
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  %77 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %path_list132 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %77, i32 0, i32 7
  %78 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list132, align 8, !tbaa !23
  %rc133 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %78, i32 0, i32 1
  %ref_count134 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc133, i32 0, i32 0
  %79 = load i64, i64* %ref_count134, align 8, !tbaa !47
  %inc135 = add nsw i64 %79, 1
  store i64 %inc135, i64* %ref_count134, align 8, !tbaa !47
  br label %do.body.136

do.body.136:                                      ; preds = %do.body.131
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %do.body.128
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  %80 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %path144 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %80, i32 0, i32 0
  %81 = bitcast %struct.gx_path_s* %path3 to i8*
  %82 = bitcast %struct.gx_path_s* %path144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 128, i32 8, i1 false), !tbaa.struct !59
  %83 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %84 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gx_clip_path_s* %83 to i8*
  %86 = bitcast %struct.gx_clip_path_s* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 304, i32 8, i1 false), !tbaa.struct !40
  %87 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %path145 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %87, i32 0, i32 0
  %88 = bitcast %struct.gx_path_s* %path145 to i8*
  %89 = bitcast %struct.gx_path_s* %path3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 128, i32 8, i1 false), !tbaa.struct !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %do.end.143, %cleanup, %if.then
  %90 = bitcast %struct.gx_path_s* %path3 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %90) #2
  %91 = bitcast %struct.gx_clip_rect_list_s** %tolist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast %struct.gx_clip_rect_list_s** %fromlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

declare i32 @gx_path_assign_preserve(%struct.gx_path_s*, %struct.gx_path_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_assign_free(%struct.gx_clip_path_s* %pcpto, %struct.gx_clip_path_s* %pcpfrom) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpto.addr = alloca %struct.gx_clip_path_s*, align 8
  %pcpfrom.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpto, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpfrom, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpto.addr, align 8, !tbaa !1
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s* %1, %struct.gx_clip_path_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpfrom.addr, align 8, !tbaa !1
  call void @gx_cpath_free(%struct.gx_clip_path_s* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_to_path_synthesize(%struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %cenum = alloca %struct.gs_cpath_enum_s, align 8
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.start(i64 112, i8* %0) #2
  %1 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_enum_init(%struct.gs_cpath_enum_s* %cenum, %struct.gx_clip_path_s* %3) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %entry
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %call1 = call i32 @gx_cpath_enum_next(%struct.gs_cpath_enum_s* %cenum, %struct.gs_fixed_point_s* %arraydecay) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 5, label %sw.bb.11
    i32 3, label %sw.bb.18
    i32 4, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !67
  %arrayidx2 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !68
  %call3 = call i32 @gx_path_add_point(%struct.gx_path_s* %5, i32 %6, i32 %7) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx5, i32 0, i32 0
  %9 = load i32, i32* %x6, align 4, !tbaa !67
  %arrayidx7 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx7, i32 0, i32 1
  %10 = load i32, i32* %y8, align 4, !tbaa !68
  %call9 = call i32 @gx_cpath_enum_notes(%struct.gs_cpath_enum_s* %cenum) #4
  %call10 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %8, i32 %9, i32 %10, i32 %call9) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx12, i32 0, i32 0
  %12 = load i32, i32* %x13, align 4, !tbaa !67
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx14, i32 0, i32 1
  %13 = load i32, i32* %y15, align 4, !tbaa !68
  %call16 = call i32 @gx_cpath_enum_notes(%struct.gs_cpath_enum_s* %cenum) #4
  %call17 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %11, i32 %12, i32 %13, i32 %call16) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx19, i32 0, i32 0
  %15 = load i32, i32* %x20, align 4, !tbaa !67
  %arrayidx21 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx21, i32 0, i32 1
  %16 = load i32, i32* %y22, align 4, !tbaa !68
  %arrayidx23 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx23, i32 0, i32 0
  %17 = load i32, i32* %x24, align 4, !tbaa !67
  %arrayidx25 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx25, i32 0, i32 1
  %18 = load i32, i32* %y26, align 4, !tbaa !68
  %arrayidx27 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx27, i32 0, i32 0
  %19 = load i32, i32* %x28, align 4, !tbaa !67
  %arrayidx29 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx29, i32 0, i32 1
  %20 = load i32, i32* %y30, align 4, !tbaa !68
  %call31 = call i32 @gx_cpath_enum_notes(%struct.gs_cpath_enum_s* %cenum) #4
  %call32 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %call31) #4
  store i32 %call32, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.33:                                         ; preds = %while.body
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call34 = call i32 @gx_cpath_enum_notes(%struct.gs_cpath_enum_s* %cenum) #4
  %call35 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %21, i32 %call34) #4
  store i32 %call35, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %22, 0
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 -28, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.33, %sw.bb.18, %sw.bb.11, %sw.bb.4, %sw.bb
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %23, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.epilog
  br label %while.end

if.end.39:                                        ; preds = %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %if.then.38, %while.cond
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #2
  %26 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.end(i64 112, i8* %26) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_enum_init(%struct.gs_cpath_enum_s* %penum, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %penum.addr = alloca %struct.gs_cpath_enum_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %empty_path = alloca %struct.gx_path_s, align 8
  %clp = alloca %struct.gx_clip_list_s*, align 8
  %head = alloca %struct.gx_clip_rect_s*, align 8
  %rp3 = alloca %struct.gx_clip_rect_s*, align 8
  store %struct.gs_cpath_enum_s* %penum, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 6
  %1 = load i32, i32* %path_valid, align 4, !tbaa !62
  %2 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %using_path = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %2, i32 0, i32 1
  store i32 %1, i32* %using_path, align 4, !tbaa !69
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %path_enum = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %3, i32 0, i32 0
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 0
  %call = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %path_enum, %struct.gx_path_s* %path) #4
  %5 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %visit = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %5, i32 0, i32 2
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !74
  %6 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %rp = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %6, i32 0, i32 3
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !75
  %7 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %first_visit = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %7, i32 0, i32 4
  store i32 1, i32* %first_visit, align 4, !tbaa !76
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = bitcast %struct.gx_path_s* %empty_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %8) #2
  %9 = bitcast %struct.gx_clip_list_s** %clp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_clip_list_s* @gx_cpath_list_private(%struct.gx_clip_path_s* %10) #4
  store %struct.gx_clip_list_s* %call1, %struct.gx_clip_list_s** %clp, align 8, !tbaa !1
  %11 = bitcast %struct.gx_clip_rect_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %12, i32 0, i32 6
  %13 = load i32, i32* %count, align 4, !tbaa !77
  %cmp = icmp sle i32 %13, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %14 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %14, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %15 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp, align 8, !tbaa !1
  %head2 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %15, i32 0, i32 1
  %16 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head2, align 8, !tbaa !78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_clip_rect_s* [ %single, %cond.true ], [ %16, %cond.false ]
  store %struct.gx_clip_rect_s* %cond, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %17 = bitcast %struct.gx_clip_rect_s** %rp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path4, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %call5 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %empty_path, %struct.gx_path_s* null, %struct.gs_memory_s* %19) #4
  %20 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %path_enum6 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %20, i32 0, i32 0
  %call7 = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %path_enum6, %struct.gx_path_s* %empty_path) #4
  %21 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %first_visit8 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %21, i32 0, i32 4
  store i32 1, i32* %first_visit8, align 4, !tbaa !76
  %22 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  %23 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %visit9 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %23, i32 0, i32 2
  store %struct.gx_clip_rect_s* %22, %struct.gx_clip_rect_s** %visit9, align 8, !tbaa !74
  %24 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %24, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %25 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %cmp10 = icmp ne %struct.gx_clip_rect_s* %25, null
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %26, i32 0, i32 4
  %27 = load i32, i32* %xmin, align 4, !tbaa !79
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 5
  %29 = load i32, i32* %xmax, align 4, !tbaa !80
  %cmp11 = icmp slt i32 %27, %29
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %30 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %30, i32 0, i32 2
  %31 = load i32, i32* %ymin, align 4, !tbaa !81
  %32 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %32, i32 0, i32 3
  %33 = load i32, i32* %ymax, align 4, !tbaa !82
  %cmp12 = icmp slt i32 %31, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %34 = phi i1 [ false, %for.body ], [ %cmp12, %land.rhs ]
  %cond13 = select i1 %34, i32 3, i32 0
  %conv = trunc i32 %cond13 to i8
  %35 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %to_visit = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %35, i32 0, i32 6
  store i8 %conv, i8* %to_visit, align 1, !tbaa !83
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %36 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %36, i32 0, i32 0
  %37 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %37, %struct.gx_clip_rect_s** %rp3, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %rp14 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %38, i32 0, i32 3
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %rp14, align 8, !tbaa !75
  %39 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %any_rectangles = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %39, i32 0, i32 8
  store i32 0, i32* %any_rectangles, align 4, !tbaa !85
  %40 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %40, i32 0, i32 5
  store i32 0, i32* %state, align 4, !tbaa !86
  %41 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %41, i32 0, i32 6
  store i32 0, i32* %have_line, align 4, !tbaa !87
  %42 = bitcast %struct.gx_clip_rect_s** %rp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.gx_clip_rect_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast %struct.gx_clip_list_s** %clp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.gx_path_s* %empty_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %45) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_enum_next(%struct.gs_cpath_enum_s* %penum, %struct.gs_fixed_point_s* %pts) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_cpath_enum_s*, align 8
  %pts.addr = alloca %struct.gs_fixed_point_s*, align 8
  %visit = alloca %struct.gx_clip_rect_s*, align 8
  %rp = alloca %struct.gx_clip_rect_s*, align 8
  %first_visit = alloca i32, align 4
  %state = alloca i32, align 4
  %look = alloca %struct.gx_clip_rect_s*, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.gx_clip_rect_s*, align 8
  %cur = alloca %struct.gx_clip_rect_s*, align 8
  %cleanup.dest.slot = alloca i32
  %next239 = alloca %struct.gx_clip_rect_s*, align 8
  %cur241 = alloca %struct.gx_clip_rect_s*, align 8
  store %struct.gs_cpath_enum_s* %penum, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pts, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %using_path = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %0, i32 0, i32 1
  %1 = load i32, i32* %using_path, align 4, !tbaa !69
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %path_enum = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %2, i32 0, i32 0
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %path_enum, %struct.gs_fixed_point_s* %3) #4
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %4, i32 0, i32 6
  %5 = load i32, i32* %have_line, align 4, !tbaa !87
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %6, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !88
  %shl = shl i32 %7, 8
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %shl, i32* %x3, align 4, !tbaa !67
  %9 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end4 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %9, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end4, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !89
  %shl5 = shl i32 %10, 8
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i64 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx6, i32 0, i32 1
  store i32 %shl5, i32* %y7, align 4, !tbaa !68
  %12 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line8 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %12, i32 0, i32 6
  store i32 0, i32* %have_line8, align 4, !tbaa !87
  store i32 2, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %13 = bitcast %struct.gx_clip_rect_s** %visit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %visit10 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %14, i32 0, i32 2
  %15 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit10, align 8, !tbaa !74
  store %struct.gx_clip_rect_s* %15, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %16 = bitcast %struct.gx_clip_rect_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %rp11 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %17, i32 0, i32 3
  %18 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp11, align 8, !tbaa !75
  store %struct.gx_clip_rect_s* %18, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %19 = bitcast i32* %first_visit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %first_visit12 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %20, i32 0, i32 4
  %21 = load i32, i32* %first_visit12, align 4, !tbaa !76
  store i32 %21, i32* %first_visit, align 4, !tbaa !42
  %22 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %state13 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %23, i32 0, i32 5
  %24 = load i32, i32* %state13, align 4, !tbaa !86
  store i32 %24, i32* %state, align 4, !tbaa !42
  %25 = bitcast %struct.gx_clip_rect_s** %look to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load i32, i32* %state, align 4, !tbaa !42
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.44
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.172
    i32 3, label %sw.bb.313
  ]

sw.bb:                                            ; preds = %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_rect_s* %28, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %to_visit = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %29, i32 0, i32 6
  %30 = load i8, i8* %to_visit, align 1, !tbaa !83
  %conv = zext i8 %30 to i32
  %and = and i32 %conv, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %31 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %31, i32 0, i32 4
  %32 = load i32, i32* %xmin, align 4, !tbaa !79
  %shl16 = shl i32 %32, 8
  %33 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i64 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx17, i32 0, i32 0
  store i32 %shl16, i32* %x18, align 4, !tbaa !67
  %34 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %34, i32 0, i32 2
  %35 = load i32, i32* %ymin, align 4, !tbaa !81
  %shl19 = shl i32 %35, 8
  %36 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %36, i64 0
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx20, i32 0, i32 1
  store i32 %shl19, i32* %y21, align 4, !tbaa !68
  store i32 1, i32* %first_visit, align 4, !tbaa !42
  store i32 1, i32* %state, align 4, !tbaa !42
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %37 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %to_visit22 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %37, i32 0, i32 6
  %38 = load i8, i8* %to_visit22, align 1, !tbaa !83
  %conv23 = zext i8 %38 to i32
  %and24 = and i32 %conv23, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %if.else
  %39 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %39, i32 0, i32 5
  %40 = load i32, i32* %xmax, align 4, !tbaa !80
  %shl27 = shl i32 %40, 8
  %41 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %41, i64 0
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx28, i32 0, i32 0
  store i32 %shl27, i32* %x29, align 4, !tbaa !67
  %42 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %42, i32 0, i32 3
  %43 = load i32, i32* %ymax, align 4, !tbaa !82
  %shl30 = shl i32 %43, 8
  %44 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %44, i64 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx31, i32 0, i32 1
  store i32 %shl30, i32* %y32, align 4, !tbaa !68
  store i32 2, i32* %first_visit, align 4, !tbaa !42
  store i32 2, i32* %state, align 4, !tbaa !42
  br label %if.end.34

if.else.33:                                       ; preds = %if.else
  br label %for.inc

if.end.34:                                        ; preds = %if.then.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.15
  %45 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %45, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  store i32 1, i32* %code, align 4, !tbaa !5
  %46 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %any_rectangles = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %46, i32 0, i32 8
  store i32 1, i32* %any_rectangles, align 4, !tbaa !85
  br label %out

for.inc:                                          ; preds = %if.else.33
  %47 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %47, i32 0, i32 0
  %48 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %48, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 4, i32* %state, align 4, !tbaa !42
  %49 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %any_rectangles36 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %49, i32 0, i32 8
  %50 = load i32, i32* %any_rectangles36, align 4, !tbaa !85
  %tobool37 = icmp ne i32 %50, 0
  br i1 %tobool37, label %if.end.43, label %if.then.38

if.then.38:                                       ; preds = %for.end
  %51 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %51, i64 0
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx39, i32 0, i32 0
  store i32 0, i32* %x40, align 4, !tbaa !67
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 0
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx41, i32 0, i32 1
  store i32 0, i32* %y42, align 4, !tbaa !68
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end.43:                                        ; preds = %for.end
  br label %sw.bb.44

sw.bb.44:                                         ; preds = %if.end.9, %if.end.43
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.9
  br label %left

left:                                             ; preds = %cleanup, %sw.bb.45
  %53 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %to_visit46 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %53, i32 0, i32 6
  %54 = load i8, i8* %to_visit46, align 1, !tbaa !83
  %conv47 = zext i8 %54 to i32
  %and48 = and i32 %conv47, -2
  %conv49 = trunc i32 %and48 to i8
  store i8 %conv49, i8* %to_visit46, align 1, !tbaa !83
  %55 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %55, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.body.68, %left
  %56 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %next51 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %56, i32 0, i32 0
  %57 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next51, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %57, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %cmp52 = icmp ne %struct.gx_clip_rect_s* %57, null
  br i1 %cmp52, label %land.rhs, label %land.end.67

land.rhs:                                         ; preds = %for.cond.50
  %58 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymin54 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %58, i32 0, i32 2
  %59 = load i32, i32* %ymin54, align 4, !tbaa !81
  %60 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin55 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %60, i32 0, i32 2
  %61 = load i32, i32* %ymin55, align 4, !tbaa !81
  %cmp56 = icmp eq i32 %59, %61
  br i1 %cmp56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %62 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymin58 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %62, i32 0, i32 2
  %63 = load i32, i32* %ymin58, align 4, !tbaa !81
  %64 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax59 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %64, i32 0, i32 3
  %65 = load i32, i32* %ymax59, align 4, !tbaa !82
  %cmp60 = icmp eq i32 %63, %65
  br i1 %cmp60, label %land.rhs.62, label %land.end

land.rhs.62:                                      ; preds = %lor.rhs
  %66 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmax63 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %66, i32 0, i32 5
  %67 = load i32, i32* %xmax63, align 4, !tbaa !80
  %68 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin64 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %68, i32 0, i32 4
  %69 = load i32, i32* %xmin64, align 4, !tbaa !79
  %cmp65 = icmp sle i32 %67, %69
  br label %land.end

land.end:                                         ; preds = %land.rhs.62, %lor.rhs
  %70 = phi i1 [ false, %lor.rhs ], [ %cmp65, %land.rhs.62 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %71 = phi i1 [ true, %land.rhs ], [ %70, %land.end ]
  br label %land.end.67

land.end.67:                                      ; preds = %lor.end, %for.cond.50
  %72 = phi i1 [ false, %for.cond.50 ], [ %71, %lor.end ]
  br i1 %72, label %for.body.68, label %for.end.69

for.body.68:                                      ; preds = %land.end.67
  br label %for.cond.50

for.end.69:                                       ; preds = %land.end.67
  %73 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %cmp70 = icmp eq %struct.gx_clip_rect_s* %73, null
  br i1 %cmp70, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.69
  %74 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymin72 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %74, i32 0, i32 2
  %75 = load i32, i32* %ymin72, align 4, !tbaa !81
  %76 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax73 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %76, i32 0, i32 3
  %77 = load i32, i32* %ymax73, align 4, !tbaa !82
  %cmp74 = icmp sgt i32 %75, %77
  br i1 %cmp74, label %if.then.81, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false
  %78 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmin77 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %78, i32 0, i32 4
  %79 = load i32, i32* %xmin77, align 4, !tbaa !79
  %80 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax78 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %80, i32 0, i32 5
  %81 = load i32, i32* %xmax78, align 4, !tbaa !80
  %cmp79 = icmp sge i32 %79, %81
  br i1 %cmp79, label %if.then.81, label %if.end.101

if.then.81:                                       ; preds = %lor.lhs.false.76, %lor.lhs.false, %for.end.69
  %82 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %83 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp82 = icmp eq %struct.gx_clip_rect_s* %82, %83
  br i1 %cmp82, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.81
  %84 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp84 = icmp eq i32 %84, 2
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.81
  %85 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax86 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %85, i32 0, i32 5
  %86 = load i32, i32* %xmax86, align 4, !tbaa !80
  %87 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end87 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %87, i32 0, i32 7
  %x88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end87, i32 0, i32 0
  store i32 %86, i32* %x88, align 4, !tbaa !88
  %88 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax89 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %88, i32 0, i32 3
  %89 = load i32, i32* %ymax89, align 4, !tbaa !82
  %90 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end90 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %90, i32 0, i32 7
  %y91 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end90, i32 0, i32 1
  store i32 %89, i32* %y91, align 4, !tbaa !89
  %91 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line92 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %91, i32 0, i32 6
  store i32 1, i32* %have_line92, align 4, !tbaa !87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %state, align 4, !tbaa !42
  %92 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin93 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %92, i32 0, i32 4
  %93 = load i32, i32* %xmin93, align 4, !tbaa !79
  %shl94 = shl i32 %93, 8
  %94 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %94, i64 0
  %x96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx95, i32 0, i32 0
  store i32 %shl94, i32* %x96, align 4, !tbaa !67
  %95 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax97 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %95, i32 0, i32 3
  %96 = load i32, i32* %ymax97, align 4, !tbaa !82
  %shl98 = shl i32 %96, 8
  %97 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %97, i64 0
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx99, i32 0, i32 1
  store i32 %shl98, i32* %y100, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end.101:                                       ; preds = %lor.lhs.false.76
  %98 = bitcast %struct.gx_clip_rect_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #2
  %99 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %prev102 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %99, i32 0, i32 1
  %100 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev102, align 8, !tbaa !90
  store %struct.gx_clip_rect_s* %100, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %101 = bitcast %struct.gx_clip_rect_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %102, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %103 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %cmp103 = icmp ne %struct.gx_clip_rect_s* %103, null
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.140

land.lhs.true.105:                                ; preds = %if.end.101
  %104 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %ymax106 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %104, i32 0, i32 3
  %105 = load i32, i32* %ymax106, align 4, !tbaa !82
  %106 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax107 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %106, i32 0, i32 3
  %107 = load i32, i32* %ymax107, align 4, !tbaa !82
  %cmp108 = icmp eq i32 %105, %107
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.140

land.lhs.true.110:                                ; preds = %land.lhs.true.105
  %108 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmin111 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %108, i32 0, i32 4
  %109 = load i32, i32* %xmin111, align 4, !tbaa !79
  %110 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %xmax112 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %110, i32 0, i32 5
  %111 = load i32, i32* %xmax112, align 4, !tbaa !80
  %cmp113 = icmp slt i32 %109, %111
  br i1 %cmp113, label %if.then.115, label %if.end.140

if.then.115:                                      ; preds = %land.lhs.true.110
  %112 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %112, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %113 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %114 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp116 = icmp eq %struct.gx_clip_rect_s* %113, %114
  br i1 %cmp116, label %land.lhs.true.118, label %cond.false.122

land.lhs.true.118:                                ; preds = %if.then.115
  %115 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp119 = icmp eq i32 %115, 2
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %land.lhs.true.118
  br label %cond.end.130

cond.false.122:                                   ; preds = %land.lhs.true.118, %if.then.115
  %116 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %xmax123 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %116, i32 0, i32 5
  %117 = load i32, i32* %xmax123, align 4, !tbaa !80
  %118 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end124 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %118, i32 0, i32 7
  %x125 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end124, i32 0, i32 0
  store i32 %117, i32* %x125, align 4, !tbaa !88
  %119 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %ymax126 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %119, i32 0, i32 3
  %120 = load i32, i32* %ymax126, align 4, !tbaa !82
  %121 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end127 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %121, i32 0, i32 7
  %y128 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end127, i32 0, i32 1
  store i32 %120, i32* %y128, align 4, !tbaa !89
  %122 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line129 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %122, i32 0, i32 6
  store i32 1, i32* %have_line129, align 4, !tbaa !87
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.122, %cond.true.121
  %cond131 = phi i32 [ 3, %cond.true.121 ], [ 2, %cond.false.122 ]
  store i32 %cond131, i32* %state, align 4, !tbaa !42
  %123 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %xmin132 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %123, i32 0, i32 4
  %124 = load i32, i32* %xmin132, align 4, !tbaa !79
  %shl133 = shl i32 %124, 8
  %125 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %125, i64 0
  %x135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx134, i32 0, i32 0
  store i32 %shl133, i32* %x135, align 4, !tbaa !67
  %126 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %ymax136 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %126, i32 0, i32 3
  %127 = load i32, i32* %ymax136, align 4, !tbaa !82
  %shl137 = shl i32 %127, 8
  %128 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %128, i64 0
  %y139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx138, i32 0, i32 1
  store i32 %shl137, i32* %y139, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %land.lhs.true.110, %land.lhs.true.105, %if.end.101
  %129 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %129, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %130 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %131 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp141 = icmp eq %struct.gx_clip_rect_s* %130, %131
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.147

land.lhs.true.143:                                ; preds = %if.end.140
  %132 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp144 = icmp eq i32 %132, 1
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %land.lhs.true.143
  store i32 3, i32* %state, align 4, !tbaa !42
  br label %if.end.162

if.else.147:                                      ; preds = %land.lhs.true.143, %if.end.140
  %133 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin148 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %133, i32 0, i32 4
  %134 = load i32, i32* %xmin148, align 4, !tbaa !79
  %135 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %xmin149 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %135, i32 0, i32 4
  %136 = load i32, i32* %xmin149, align 4, !tbaa !79
  %cmp150 = icmp eq i32 %134, %136
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.else.147
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.else.153:                                      ; preds = %if.else.147
  %137 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin154 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %137, i32 0, i32 4
  %138 = load i32, i32* %xmin154, align 4, !tbaa !79
  %139 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end155 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %139, i32 0, i32 7
  %x156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end155, i32 0, i32 0
  store i32 %138, i32* %x156, align 4, !tbaa !88
  %140 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin157 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %140, i32 0, i32 2
  %141 = load i32, i32* %ymin157, align 4, !tbaa !81
  %142 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end158 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %142, i32 0, i32 7
  %y159 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end158, i32 0, i32 1
  store i32 %141, i32* %y159, align 4, !tbaa !89
  %143 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line160 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %143, i32 0, i32 6
  store i32 1, i32* %have_line160, align 4, !tbaa !87
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.153
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.146
  %144 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %xmin163 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %144, i32 0, i32 4
  %145 = load i32, i32* %xmin163, align 4, !tbaa !79
  %shl164 = shl i32 %145, 8
  %146 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %146, i64 0
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx165, i32 0, i32 0
  store i32 %shl164, i32* %x166, align 4, !tbaa !67
  %147 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur, align 8, !tbaa !1
  %ymax167 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %147, i32 0, i32 3
  %148 = load i32, i32* %ymax167, align 4, !tbaa !82
  %shl168 = shl i32 %148, 8
  %149 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %149, i64 0
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx169, i32 0, i32 1
  store i32 %shl168, i32* %y170, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.162, %if.then.152, %cond.end.130
  %150 = bitcast %struct.gx_clip_rect_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.gx_clip_rect_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %sw.epilog
    i32 7, label %left
  ]

sw.bb.172:                                        ; preds = %if.end.9
  br label %right

right:                                            ; preds = %cleanup.310, %sw.bb.172
  %152 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %to_visit173 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %152, i32 0, i32 6
  %153 = load i8, i8* %to_visit173, align 1, !tbaa !83
  %conv174 = zext i8 %153 to i32
  %and175 = and i32 %conv174, -3
  %conv176 = trunc i32 %and175 to i8
  store i8 %conv176, i8* %to_visit173, align 1, !tbaa !83
  %154 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %154, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.body.199, %right
  %155 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %prev178 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %155, i32 0, i32 1
  %156 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev178, align 8, !tbaa !90
  store %struct.gx_clip_rect_s* %156, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %cmp179 = icmp ne %struct.gx_clip_rect_s* %156, null
  br i1 %cmp179, label %land.rhs.181, label %land.end.198

land.rhs.181:                                     ; preds = %for.cond.177
  %157 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymax182 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %157, i32 0, i32 3
  %158 = load i32, i32* %ymax182, align 4, !tbaa !82
  %159 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax183 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %159, i32 0, i32 3
  %160 = load i32, i32* %ymax183, align 4, !tbaa !82
  %cmp184 = icmp eq i32 %158, %160
  br i1 %cmp184, label %lor.end.197, label %lor.rhs.186

lor.rhs.186:                                      ; preds = %land.rhs.181
  %161 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymax187 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %161, i32 0, i32 3
  %162 = load i32, i32* %ymax187, align 4, !tbaa !82
  %163 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin188 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %163, i32 0, i32 2
  %164 = load i32, i32* %ymin188, align 4, !tbaa !81
  %cmp189 = icmp eq i32 %162, %164
  br i1 %cmp189, label %land.rhs.191, label %land.end.196

land.rhs.191:                                     ; preds = %lor.rhs.186
  %165 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmin192 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %165, i32 0, i32 4
  %166 = load i32, i32* %xmin192, align 4, !tbaa !79
  %167 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax193 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %167, i32 0, i32 5
  %168 = load i32, i32* %xmax193, align 4, !tbaa !80
  %cmp194 = icmp sge i32 %166, %168
  br label %land.end.196

land.end.196:                                     ; preds = %land.rhs.191, %lor.rhs.186
  %169 = phi i1 [ false, %lor.rhs.186 ], [ %cmp194, %land.rhs.191 ]
  br label %lor.end.197

lor.end.197:                                      ; preds = %land.end.196, %land.rhs.181
  %170 = phi i1 [ true, %land.rhs.181 ], [ %169, %land.end.196 ]
  br label %land.end.198

land.end.198:                                     ; preds = %lor.end.197, %for.cond.177
  %171 = phi i1 [ false, %for.cond.177 ], [ %170, %lor.end.197 ]
  br i1 %171, label %for.body.199, label %for.end.200

for.body.199:                                     ; preds = %land.end.198
  br label %for.cond.177

for.end.200:                                      ; preds = %land.end.198
  %172 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %cmp201 = icmp eq %struct.gx_clip_rect_s* %172, null
  br i1 %cmp201, label %if.then.213, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %for.end.200
  %173 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %ymax204 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %173, i32 0, i32 3
  %174 = load i32, i32* %ymax204, align 4, !tbaa !82
  %175 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin205 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %175, i32 0, i32 2
  %176 = load i32, i32* %ymin205, align 4, !tbaa !81
  %cmp206 = icmp slt i32 %174, %176
  br i1 %cmp206, label %if.then.213, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %lor.lhs.false.203
  %177 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmax209 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %177, i32 0, i32 5
  %178 = load i32, i32* %xmax209, align 4, !tbaa !80
  %179 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin210 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %179, i32 0, i32 4
  %180 = load i32, i32* %xmin210, align 4, !tbaa !79
  %cmp211 = icmp sle i32 %178, %180
  br i1 %cmp211, label %if.then.213, label %if.end.238

if.then.213:                                      ; preds = %lor.lhs.false.208, %lor.lhs.false.203, %for.end.200
  %181 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %182 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp214 = icmp eq %struct.gx_clip_rect_s* %181, %182
  br i1 %cmp214, label %land.lhs.true.216, label %cond.false.220

land.lhs.true.216:                                ; preds = %if.then.213
  %183 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp217 = icmp eq i32 %183, 1
  br i1 %cmp217, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %land.lhs.true.216
  br label %cond.end.228

cond.false.220:                                   ; preds = %land.lhs.true.216, %if.then.213
  %184 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmin221 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %184, i32 0, i32 4
  %185 = load i32, i32* %xmin221, align 4, !tbaa !79
  %186 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end222 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %186, i32 0, i32 7
  %x223 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end222, i32 0, i32 0
  store i32 %185, i32* %x223, align 4, !tbaa !88
  %187 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin224 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %187, i32 0, i32 2
  %188 = load i32, i32* %ymin224, align 4, !tbaa !81
  %189 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end225 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %189, i32 0, i32 7
  %y226 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end225, i32 0, i32 1
  store i32 %188, i32* %y226, align 4, !tbaa !89
  %190 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line227 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %190, i32 0, i32 6
  store i32 1, i32* %have_line227, align 4, !tbaa !87
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.220, %cond.true.219
  %cond229 = phi i32 [ 3, %cond.true.219 ], [ 1, %cond.false.220 ]
  store i32 %cond229, i32* %state, align 4, !tbaa !42
  %191 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax230 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %191, i32 0, i32 5
  %192 = load i32, i32* %xmax230, align 4, !tbaa !80
  %shl231 = shl i32 %192, 8
  %193 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %193, i64 0
  %x233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx232, i32 0, i32 0
  store i32 %shl231, i32* %x233, align 4, !tbaa !67
  %194 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin234 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %194, i32 0, i32 2
  %195 = load i32, i32* %ymin234, align 4, !tbaa !81
  %shl235 = shl i32 %195, 8
  %196 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %196, i64 0
  %y237 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx236, i32 0, i32 1
  store i32 %shl235, i32* %y237, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

if.end.238:                                       ; preds = %lor.lhs.false.208
  %197 = bitcast %struct.gx_clip_rect_s** %next239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #2
  %198 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %next240 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %198, i32 0, i32 0
  %199 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next240, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %199, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %200 = bitcast %struct.gx_clip_rect_s** %cur241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #2
  %201 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %201, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %202 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %cmp242 = icmp ne %struct.gx_clip_rect_s* %202, null
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.279

land.lhs.true.244:                                ; preds = %if.end.238
  %203 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %ymin245 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %203, i32 0, i32 2
  %204 = load i32, i32* %ymin245, align 4, !tbaa !81
  %205 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymin246 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %205, i32 0, i32 2
  %206 = load i32, i32* %ymin246, align 4, !tbaa !81
  %cmp247 = icmp eq i32 %204, %206
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.279

land.lhs.true.249:                                ; preds = %land.lhs.true.244
  %207 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  %xmax250 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %207, i32 0, i32 5
  %208 = load i32, i32* %xmax250, align 4, !tbaa !80
  %209 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %xmin251 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %209, i32 0, i32 4
  %210 = load i32, i32* %xmin251, align 4, !tbaa !79
  %cmp252 = icmp sgt i32 %208, %210
  br i1 %cmp252, label %if.then.254, label %if.end.279

if.then.254:                                      ; preds = %land.lhs.true.249
  %211 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %211, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %212 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %213 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp255 = icmp eq %struct.gx_clip_rect_s* %212, %213
  br i1 %cmp255, label %land.lhs.true.257, label %cond.false.261

land.lhs.true.257:                                ; preds = %if.then.254
  %214 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp258 = icmp eq i32 %214, 1
  br i1 %cmp258, label %cond.true.260, label %cond.false.261

cond.true.260:                                    ; preds = %land.lhs.true.257
  br label %cond.end.269

cond.false.261:                                   ; preds = %land.lhs.true.257, %if.then.254
  %215 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %xmin262 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %215, i32 0, i32 4
  %216 = load i32, i32* %xmin262, align 4, !tbaa !79
  %217 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end263 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %217, i32 0, i32 7
  %x264 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end263, i32 0, i32 0
  store i32 %216, i32* %x264, align 4, !tbaa !88
  %218 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next239, align 8, !tbaa !1
  %ymin265 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %218, i32 0, i32 2
  %219 = load i32, i32* %ymin265, align 4, !tbaa !81
  %220 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end266 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %220, i32 0, i32 7
  %y267 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end266, i32 0, i32 1
  store i32 %219, i32* %y267, align 4, !tbaa !89
  %221 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line268 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %221, i32 0, i32 6
  store i32 1, i32* %have_line268, align 4, !tbaa !87
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.261, %cond.true.260
  %cond270 = phi i32 [ 3, %cond.true.260 ], [ 1, %cond.false.261 ]
  store i32 %cond270, i32* %state, align 4, !tbaa !42
  %222 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %xmax271 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %222, i32 0, i32 5
  %223 = load i32, i32* %xmax271, align 4, !tbaa !80
  %shl272 = shl i32 %223, 8
  %224 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %224, i64 0
  %x274 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx273, i32 0, i32 0
  store i32 %shl272, i32* %x274, align 4, !tbaa !67
  %225 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %ymin275 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %225, i32 0, i32 2
  %226 = load i32, i32* %ymin275, align 4, !tbaa !81
  %shl276 = shl i32 %226, 8
  %227 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %227, i64 0
  %y278 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx277, i32 0, i32 1
  store i32 %shl276, i32* %y278, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.310

if.end.279:                                       ; preds = %land.lhs.true.249, %land.lhs.true.244, %if.end.238
  %228 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %look, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %228, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %229 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %230 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %cmp280 = icmp eq %struct.gx_clip_rect_s* %229, %230
  br i1 %cmp280, label %land.lhs.true.282, label %if.else.286

land.lhs.true.282:                                ; preds = %if.end.279
  %231 = load i32, i32* %first_visit, align 4, !tbaa !42
  %cmp283 = icmp eq i32 %231, 2
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %land.lhs.true.282
  store i32 3, i32* %state, align 4, !tbaa !42
  br label %if.end.301

if.else.286:                                      ; preds = %land.lhs.true.282, %if.end.279
  %232 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax287 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %232, i32 0, i32 5
  %233 = load i32, i32* %xmax287, align 4, !tbaa !80
  %234 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %xmax288 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %234, i32 0, i32 5
  %235 = load i32, i32* %xmax288, align 4, !tbaa !80
  %cmp289 = icmp eq i32 %233, %235
  br i1 %cmp289, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.else.286
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.310

if.else.292:                                      ; preds = %if.else.286
  %236 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %xmax293 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %236, i32 0, i32 5
  %237 = load i32, i32* %xmax293, align 4, !tbaa !80
  %238 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end294 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %238, i32 0, i32 7
  %x295 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end294, i32 0, i32 0
  store i32 %237, i32* %x295, align 4, !tbaa !88
  %239 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %ymax296 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %239, i32 0, i32 3
  %240 = load i32, i32* %ymax296, align 4, !tbaa !82
  %241 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %line_end297 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %241, i32 0, i32 7
  %y298 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %line_end297, i32 0, i32 1
  store i32 %240, i32* %y298, align 4, !tbaa !89
  %242 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %have_line299 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %242, i32 0, i32 6
  store i32 1, i32* %have_line299, align 4, !tbaa !87
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.292
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.285
  %243 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %xmax302 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %243, i32 0, i32 5
  %244 = load i32, i32* %xmax302, align 4, !tbaa !80
  %shl303 = shl i32 %244, 8
  %245 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %245, i64 0
  %x305 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx304, i32 0, i32 0
  store i32 %shl303, i32* %x305, align 4, !tbaa !67
  %246 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %cur241, align 8, !tbaa !1
  %ymin306 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %246, i32 0, i32 2
  %247 = load i32, i32* %ymin306, align 4, !tbaa !81
  %shl307 = shl i32 %247, 8
  %248 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %248, i64 0
  %y309 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx308, i32 0, i32 1
  store i32 %shl307, i32* %y309, align 4, !tbaa !68
  store i32 2, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.310

cleanup.310:                                      ; preds = %if.end.301, %if.then.291, %cond.end.269
  %249 = bitcast %struct.gx_clip_rect_s** %cur241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #2
  %250 = bitcast %struct.gx_clip_rect_s** %next239 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  %cleanup.dest.312 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.312, label %unreachable [
    i32 2, label %sw.epilog
    i32 10, label %right
  ]

sw.bb.313:                                        ; preds = %if.end.9
  store i32 4, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %state, align 4, !tbaa !42
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

sw.epilog:                                        ; preds = %sw.bb.313, %cleanup.310, %cond.end.228, %cleanup, %cond.end, %sw.bb.44, %if.then.38
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.35
  %251 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %visit, align 8, !tbaa !1
  %252 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %visit314 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %252, i32 0, i32 2
  store %struct.gx_clip_rect_s* %251, %struct.gx_clip_rect_s** %visit314, align 8, !tbaa !74
  %253 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %254 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %rp315 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %254, i32 0, i32 3
  store %struct.gx_clip_rect_s* %253, %struct.gx_clip_rect_s** %rp315, align 8, !tbaa !75
  %255 = load i32, i32* %first_visit, align 4, !tbaa !42
  %256 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %first_visit316 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %256, i32 0, i32 4
  store i32 %255, i32* %first_visit316, align 4, !tbaa !76
  %257 = load i32, i32* %state, align 4, !tbaa !42
  %258 = load %struct.gs_cpath_enum_s*, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  %state317 = getelementptr inbounds %struct.gs_cpath_enum_s, %struct.gs_cpath_enum_s* %258, i32 0, i32 5
  store i32 %257, i32* %state317, align 4, !tbaa !86
  %259 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.318

cleanup.318:                                      ; preds = %out, %sw.default
  %260 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast %struct.gx_clip_rect_s** %look to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #2
  %262 = bitcast i32* %state to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i32* %first_visit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast %struct.gx_clip_rect_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #2
  %265 = bitcast %struct.gx_clip_rect_s** %visit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #2
  br label %return

return:                                           ; preds = %cleanup.318, %if.then.2, %if.then
  %266 = load i32, i32* %retval
  ret i32 %266

unreachable:                                      ; preds = %cleanup.310, %cleanup
  unreachable
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #0

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_enum_notes(%struct.gs_cpath_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_cpath_enum_s*, align 8
  store %struct.gs_cpath_enum_s* %penum, %struct.gs_cpath_enum_s** %penum.addr, align 8, !tbaa !1
  ret i32 0
}

declare i32 @gx_path_add_gap_notes(%struct.gx_path_s*, i32, i32, i32) #0

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_to_path(%struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 6
  %1 = load i32, i32* %path_valid, align 4, !tbaa !62
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gx_path_s* %rpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %rpath, %struct.gx_path_s* null, %struct.gs_memory_s* %5) #4
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_cpath_to_path_synthesize(%struct.gx_clip_path_s* %6, %struct.gx_path_s* %rpath) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gx_path_free(%struct.gx_path_s* %rpath, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #4
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path3 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 0
  %call4 = call i32 @gx_path_assign_free(%struct.gx_path_s* %path3, %struct.gx_path_s* %rpath) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid8 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 6
  store i32 1, i32* %path_valid8, align 4, !tbaa !62
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_path_s* %rpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path11 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 0
  %call12 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %15, %struct.gx_path_s* %path11) #4
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %cleanup
  %17 = load i32, i32* %retval
  ret i32 %17

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 3
  %2 = bitcast %struct.gs_fixed_rect_s* %0 to i8*
  %3 = bitcast %struct.gs_fixed_rect_s* %inner_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 4, i1 false), !tbaa.struct !61
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %4) #4
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %call, i32 0, i32 6
  %5 = load i32, i32* %count, align 4, !tbaa !77
  %cmp = icmp sle i32 %5, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 5
  %1 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %1, i32 0, i32 1
  ret %struct.gx_clip_list_s* %list
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 4
  %2 = bitcast %struct.gs_fixed_rect_s* %0 to i8*
  %3 = bitcast %struct.gs_fixed_rect_s* %outer_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 4, i1 false), !tbaa.struct !61
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %4) #4
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %call, i32 0, i32 6
  %5 = load i32, i32* %count, align 4, !tbaa !77
  %cmp = icmp sle i32 %5, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %pcpath, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %1 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !91
  %4 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %land.end.36

land.lhs.true:                                    ; preds = %cond.true
  %5 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !92
  %cmp4 = icmp sle i32 %5, %7
  br i1 %cmp4, label %land.rhs, label %land.end.36

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box5 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 3
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box5, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 0
  %9 = load i32, i32* %x7, align 4, !tbaa !91
  %10 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %9, %10
  br i1 %cmp8, label %land.lhs.true.9, label %land.end.36

land.lhs.true.9:                                  ; preds = %cond.false
  %11 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box10 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 3
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box10, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 0
  %13 = load i32, i32* %x12, align 4, !tbaa !92
  %cmp13 = icmp sle i32 %11, %13
  br i1 %cmp13, label %land.rhs, label %land.end.36

land.rhs:                                         ; preds = %land.lhs.true.9, %land.lhs.true
  %14 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %14, %15
  br i1 %cmp14, label %cond.true.15, label %cond.false.24

cond.true.15:                                     ; preds = %land.rhs
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box16 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 3
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box16, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 1
  %17 = load i32, i32* %y, align 4, !tbaa !93
  %18 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %17, %18
  br i1 %cmp18, label %land.rhs.19, label %land.end

land.rhs.19:                                      ; preds = %cond.true.15
  %19 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box20 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 3
  %q21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box20, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q21, i32 0, i32 1
  %21 = load i32, i32* %y22, align 4, !tbaa !94
  %cmp23 = icmp sle i32 %19, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs.19, %cond.true.15
  %22 = phi i1 [ false, %cond.true.15 ], [ %cmp23, %land.rhs.19 ]
  %land.ext = zext i1 %22 to i32
  br label %cond.end

cond.false.24:                                    ; preds = %land.rhs
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box25 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %23, i32 0, i32 3
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box25, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 1
  %24 = load i32, i32* %y27, align 4, !tbaa !93
  %25 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp28 = icmp sle i32 %24, %25
  br i1 %cmp28, label %land.rhs.29, label %land.end.34

land.rhs.29:                                      ; preds = %cond.false.24
  %26 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box30 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %27, i32 0, i32 3
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box30, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 1
  %28 = load i32, i32* %y32, align 4, !tbaa !94
  %cmp33 = icmp sle i32 %26, %28
  br label %land.end.34

land.end.34:                                      ; preds = %land.rhs.29, %cond.false.24
  %29 = phi i1 [ false, %cond.false.24 ], [ %cmp33, %land.rhs.29 ]
  %land.ext35 = zext i1 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end.34, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %land.ext35, %land.end.34 ]
  %tobool = icmp ne i32 %cond, 0
  br label %land.end.36

land.end.36:                                      ; preds = %cond.end, %land.lhs.true.9, %cond.false, %land.lhs.true, %cond.true
  %30 = phi i1 [ false, %land.lhs.true.9 ], [ false, %cond.false ], [ false, %land.lhs.true ], [ false, %cond.true ], [ %tobool, %cond.end ]
  %land.ext37 = zext i1 %30 to i32
  ret i32 %land.ext37
}

; Function Attrs: nounwind uwtable
define void @gx_cpath_set_outer_box(%struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 0
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !95
  %conv = sext i32 %1 to i64
  %and = and i64 %conv, -256
  %conv1 = trunc i64 %and to i32
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 4
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %conv1, i32* %x3, align 4, !tbaa !96
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 0
  %bbox5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path4, i32 0, i32 5
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !97
  %conv7 = sext i32 %4 to i64
  %and8 = and i64 %conv7, -256
  %conv9 = trunc i64 %and8 to i32
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box10 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %5, i32 0, i32 4
  %p11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box10, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 1
  store i32 %conv9, i32* %y12, align 4, !tbaa !98
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path13 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 0
  %bbox14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path13, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox14, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x15, align 4, !tbaa !99
  %add = add nsw i32 %7, 255
  %conv16 = sext i32 %add to i64
  %and17 = and i64 %conv16, -256
  %conv18 = trunc i64 %and17 to i32
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box19 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 4
  %q20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box19, i32 0, i32 1
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q20, i32 0, i32 0
  store i32 %conv18, i32* %x21, align 4, !tbaa !100
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path22 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 0
  %bbox23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path22, i32 0, i32 5
  %q24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox23, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q24, i32 0, i32 1
  %10 = load i32, i32* %y25, align 4, !tbaa !101
  %add26 = add nsw i32 %10, 255
  %conv27 = sext i32 %add26 to i64
  %and28 = and i64 %conv27, -256
  %conv29 = trunc i64 %and28 to i32
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box30 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 4
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box30, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 1
  store i32 %conv29, i32* %y32, align 4, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 0
  %call = call i32 @gx_path_new(%struct.gx_path_s* %path) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %call1 = call i32 @cpath_set_rectangle(%struct.gx_clip_path_s* %4, %struct.gs_fixed_rect_s* %5) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gx_path_new(%struct.gx_path_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cpath_set_rectangle(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %rlist = alloca %struct.gx_clip_rect_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 5
  %2 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  store %struct.gx_clip_rect_list_s* %2, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %3 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !46
  %cmp = icmp sle i64 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %5, i32 0, i32 1
  %6 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc1 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %6, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  call void @gx_clip_list_free(%struct.gx_clip_list_s* %list, %struct.gs_memory_s* %7) #4
  br label %if.end.35

if.else:                                          ; preds = %entry
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list2 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 5
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 0
  %memory3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !43
  %call = call i32 @cpath_alloc_list(%struct.gx_clip_rect_list_s** %rect_list2, %struct.gs_memory_s* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_rect_list_s* %14, null
  br i1 %tobool, label %if.then.6, label %if.end.31

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %do.body.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %15, i32 0, i32 0
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %16 = load i64, i64* %ref_count10, align 8, !tbaa !46
  %add = add nsw i64 %16, -1
  store i64 %add, i64* %ref_count10, align 8, !tbaa !46
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.end
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %17 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %17, i32 0, i32 0
  %ref_count14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 0
  %18 = load i64, i64* %ref_count14, align 8, !tbaa !46
  %tobool15 = icmp ne i64 %18, 0
  br i1 %tobool15, label %if.else.26, label %if.then.16

if.then.16:                                       ; preds = %do.end.12
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.body.17
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %19 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc21 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %19, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  %21 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %rc22 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %21, i32 0, i32 0
  %memory23 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !53
  %23 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  %24 = bitcast %struct.gx_clip_rect_list_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #4
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.end.20
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  store %struct.gx_clip_rect_list_s* null, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  br label %if.end.30

if.else.26:                                       ; preds = %do.end.12
  br label %do.body.27

do.body.27:                                       ; preds = %if.else.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %do.body
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list34 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 5
  %26 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list34, align 8, !tbaa !9
  store %struct.gx_clip_rect_list_s* %26, %struct.gx_clip_rect_list_s** %rlist, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.33, %if.then.5
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.end.35:                                        ; preds = %cleanup.cont, %if.then
  %28 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %29 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void @cpath_init_rectangle(%struct.gx_clip_path_s* %28, %struct.gs_fixed_rect_s* %29) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %cleanup
  %30 = bitcast %struct.gx_clip_rect_list_s** %rlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_reset(%struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %null_rect = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %null_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !55
  %q1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !56
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y2, align 4, !tbaa !57
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %null_rect, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !58
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s* %1, %struct.gs_fixed_rect_s* %null_rect) #4
  %2 = bitcast %struct.gs_fixed_rect_s* %null_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %2) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cpath_is_rectangle(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %rect) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 6
  %1 = load i32, i32* %path_valid, align 4, !tbaa !62
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 0
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_is_rectangular(%struct.gx_path_s* %path, %struct.gs_fixed_rect_s* %3) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !91
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 0
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path1, i32 0, i32 5
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !95
  %cmp4 = icmp ne i32 %5, %7
  br i1 %cmp4, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 3
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !93
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path8 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 0
  %bbox9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path8, i32 0, i32 5
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox9, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 1
  %11 = load i32, i32* %y11, align 4, !tbaa !97
  %cmp12 = icmp ne i32 %9, %11
  br i1 %cmp12, label %if.then.33, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box15 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box15, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %13 = load i32, i32* %x16, align 4, !tbaa !92
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path17 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 0
  %bbox18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path17, i32 0, i32 5
  %q19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox18, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q19, i32 0, i32 0
  %15 = load i32, i32* %x20, align 4, !tbaa !99
  %cmp21 = icmp ne i32 %13, %15
  br i1 %cmp21, label %if.then.33, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.14
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box24 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 3
  %q25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box24, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q25, i32 0, i32 1
  %17 = load i32, i32* %y26, align 4, !tbaa !94
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path27 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 0
  %bbox28 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path27, i32 0, i32 5
  %q29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox28, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q29, i32 0, i32 1
  %19 = load i32, i32* %y30, align 4, !tbaa !101
  %cmp31 = icmp ne i32 %17, %19
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.14, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.23
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box35 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 3
  %p36 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box35, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p36, i32 0, i32 0
  %21 = load i32, i32* %x37, align 4, !tbaa !91
  %22 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %22, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 0
  store i32 %21, i32* %x39, align 4, !tbaa !58
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box40 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %23, i32 0, i32 3
  %p41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box40, i32 0, i32 0
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p41, i32 0, i32 1
  %24 = load i32, i32* %y42, align 4, !tbaa !93
  %25 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p43 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 0
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p43, i32 0, i32 1
  store i32 %24, i32* %y44, align 4, !tbaa !57
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box45 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %26, i32 0, i32 3
  %q46 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box45, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q46, i32 0, i32 0
  %27 = load i32, i32* %x47, align 4, !tbaa !92
  %28 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %28, i32 0, i32 1
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q48, i32 0, i32 0
  store i32 %27, i32* %x49, align 4, !tbaa !56
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box50 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %29, i32 0, i32 3
  %q51 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box50, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q51, i32 0, i32 1
  %30 = load i32, i32* %y52, align 4, !tbaa !94
  %31 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %31, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q53, i32 0, i32 1
  store i32 %30, i32* %y54, align 4, !tbaa !55
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.33, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gx_path_is_rectangular(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_clip(%struct.gs_state_s* %pgs, %struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath_orig, i32 %rule) #1 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath_orig.addr = alloca %struct.gx_path_s*, align 8
  %rule.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath_orig, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  %2 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_state_s* %3 to %struct.gs_imager_state_s*
  %call = call i32 @gx_cpath_intersect(%struct.gx_clip_path_s* %0, %struct.gx_path_s* %1, i32 %2, %struct.gs_imager_state_s* %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_intersect(%struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath_orig, i32 %rule, %struct.gs_imager_state_s* %pis) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath_orig.addr = alloca %struct.gx_path_s*, align 8
  %rule.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath_orig, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  %2 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_intersect_with_params(%struct.gx_clip_path_s* %0, %struct.gx_path_s* %1, i32 %2, %struct.gs_imager_state_s* %3, %struct.gx_fill_params_s* null) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_intersect_with_params(%struct.gx_clip_path_s* %pcpath, %struct.gx_path_s* %ppath_orig, i32 %rule, %struct.gs_imager_state_s* %pis, %struct.gx_fill_params_s* %params) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %ppath_orig.addr = alloca %struct.gx_path_s*, align 8
  %rule.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %fpath = alloca %struct.gx_path_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %old_box = alloca %struct.gs_fixed_rect_s, align 4
  %new_box = alloca %struct.gs_fixed_rect_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %changed = alloca i32, align 4
  %adjust = alloca %struct.gs_fixed_point_s, align 4
  %adjust_xl = alloca i32, align 4
  %adjust_xu = alloca i32, align 4
  %adjust_yl = alloca i32, align 4
  %adjust_yu = alloca i32, align 4
  %next = alloca %struct.gx_cpath_path_list_s*, align 8
  %path_valid220 = alloca i32, align 4
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath_orig, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %2, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_rect_s* %old_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast %struct.gs_fixed_rect_s* %new_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 13
  %7 = load i32, i32* %curve_count, align 4, !tbaa !103
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %fpath, %struct.gx_path_s* null, %struct.gs_memory_s* %9) #4
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 27
  %12 = load float, float* %flatness, align 4, !tbaa !115
  %mul = fmul float %12, 2.560000e+02
  %conv = fptosi float %mul to i32
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 30
  %14 = load i32, i32* %accurate_curves, align 4, !tbaa !116
  %tobool = icmp ne i32 %14, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %call1 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %10, %struct.gx_path_s* %fpath, i32 %conv, %struct.gs_imager_state_s* null, i32 %cond) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.284

if.end:                                           ; preds = %if.then
  store %struct.gx_path_s* %fpath, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %17, %struct.gs_fixed_rect_s* %old_box) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.218

land.lhs.true:                                    ; preds = %if.end.5
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call8 = call i32 @gx_path_is_rectangular(%struct.gx_path_s* %18, %struct.gs_fixed_rect_s* %new_box) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %code, align 4, !tbaa !5
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 3
  %20 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !117
  %cmp11 = icmp ne %struct.gx_path_segments_s* %20, null
  br i1 %cmp11, label %land.lhs.true.13, label %if.else.218

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %22 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments14, align 8, !tbaa !117
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %22, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %23 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !118
  %cmp15 = icmp eq %struct.subpath_s* %23, null
  br i1 %cmp15, label %if.then.17, label %if.else.218

if.then.17:                                       ; preds = %land.lhs.true.13, %land.lhs.true
  %24 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  store i32 0, i32* %changed, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %call20 = call i32 @gx_path_current_point(%struct.gx_path_s* %26, %struct.gs_fixed_point_s* %p) #4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.then.19
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %28 = load float, float* %tx, align 4, !tbaa !119
  %mul24 = fmul float %28, 2.560000e+02
  %conv25 = fptosi float %mul24 to i32
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 0
  store i32 %conv25, i32* %x, align 4, !tbaa !58
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm27, i32 0, i32 5
  %30 = load float, float* %ty, align 4, !tbaa !120
  %mul28 = fmul float %30, 2.560000e+02
  %conv29 = fptosi float %mul28 to i32
  %p30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p30, i32 0, i32 1
  store i32 %conv29, i32* %y, align 4, !tbaa !57
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.23, %if.then.19
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %p32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %31 = bitcast %struct.gs_fixed_point_s* %q to i8*
  %32 = bitcast %struct.gs_fixed_point_s* %p32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 4, i1 false), !tbaa.struct !121
  store i32 1, i32* %changed, align 4, !tbaa !5
  br label %if.end.170

if.else:                                          ; preds = %if.then.17
  %33 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %cmp33 = icmp ne %struct.gx_fill_params_s* %34, null
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %35 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %adjust35 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %35, i32 0, i32 1
  %36 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %37 = bitcast %struct.gs_fixed_point_s* %adjust35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 4, i1 false), !tbaa.struct !121
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 28
  %39 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %40 = bitcast %struct.gs_fixed_point_s* %fill_adjust to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 4, i1 false), !tbaa.struct !121
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %41 = bitcast i32* %adjust_xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %adjust_xu to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %adjust_yl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = bitcast i32* %adjust_yu to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %45 = load i32, i32* %x36, align 4, !tbaa !67
  %cmp37 = icmp eq i32 %45, -1
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %cond.end
  store i32 0, i32* %adjust_yu, align 4, !tbaa !5
  store i32 0, i32* %adjust_yl, align 4, !tbaa !5
  store i32 0, i32* %adjust_xu, align 4, !tbaa !5
  store i32 0, i32* %adjust_xl, align 4, !tbaa !5
  br label %if.end.65

if.else.40:                                       ; preds = %cond.end
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %46 = load i32, i32* %x41, align 4, !tbaa !67
  %conv42 = sext i32 %46 to i64
  %cmp43 = icmp eq i64 %conv42, 128
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.else.40
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.else.40
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %47 = load i32, i32* %x47, align 4, !tbaa !67
  %conv48 = sext i32 %47 to i64
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.45
  %cond50 = phi i64 [ 127, %cond.true.45 ], [ %conv48, %cond.false.46 ]
  %conv51 = trunc i64 %cond50 to i32
  store i32 %conv51, i32* %adjust_xl, align 4, !tbaa !5
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  %48 = load i32, i32* %y52, align 4, !tbaa !68
  %conv53 = sext i32 %48 to i64
  %cmp54 = icmp eq i64 %conv53, 128
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.49
  br label %cond.end.60

cond.false.57:                                    ; preds = %cond.end.49
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  %49 = load i32, i32* %y58, align 4, !tbaa !68
  %conv59 = sext i32 %49 to i64
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.56
  %cond61 = phi i64 [ 127, %cond.true.56 ], [ %conv59, %cond.false.57 ]
  %conv62 = trunc i64 %cond61 to i32
  store i32 %conv62, i32* %adjust_yl, align 4, !tbaa !5
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 0
  %50 = load i32, i32* %x63, align 4, !tbaa !67
  store i32 %50, i32* %adjust_xu, align 4, !tbaa !5
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  %51 = load i32, i32* %y64, align 4, !tbaa !68
  store i32 %51, i32* %adjust_yu, align 4, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %cond.end.60, %if.then.39
  %p66 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p66, i32 0, i32 0
  %52 = load i32, i32* %x67, align 4, !tbaa !58
  %53 = load i32, i32* %adjust_xl, align 4, !tbaa !5
  %sub = sub nsw i32 %52, %53
  %conv68 = sext i32 %sub to i64
  %add = add nsw i64 %conv68, 127
  %shr = ashr i64 %add, 8
  %conv69 = trunc i64 %shr to i32
  %shl = shl i32 %conv69, 8
  %p70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p70, i32 0, i32 0
  store i32 %shl, i32* %x71, align 4, !tbaa !58
  %p72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p72, i32 0, i32 1
  %54 = load i32, i32* %y73, align 4, !tbaa !57
  %55 = load i32, i32* %adjust_yl, align 4, !tbaa !5
  %sub74 = sub nsw i32 %54, %55
  %conv75 = sext i32 %sub74 to i64
  %add76 = add nsw i64 %conv75, 127
  %shr77 = ashr i64 %add76, 8
  %conv78 = trunc i64 %shr77 to i32
  %shl79 = shl i32 %conv78, 8
  %p80 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p80, i32 0, i32 1
  store i32 %shl79, i32* %y81, align 4, !tbaa !57
  %q82 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q82, i32 0, i32 0
  %56 = load i32, i32* %x83, align 4, !tbaa !56
  %57 = load i32, i32* %adjust_xu, align 4, !tbaa !5
  %add84 = add nsw i32 %56, %57
  %conv85 = sext i32 %add84 to i64
  %add86 = add nsw i64 %conv85, 127
  %shr87 = ashr i64 %add86, 8
  %conv88 = trunc i64 %shr87 to i32
  %shl89 = shl i32 %conv88, 8
  %q90 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q90, i32 0, i32 0
  store i32 %shl89, i32* %x91, align 4, !tbaa !56
  %q92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q92, i32 0, i32 1
  %58 = load i32, i32* %y93, align 4, !tbaa !55
  %59 = load i32, i32* %adjust_yu, align 4, !tbaa !5
  %add94 = add nsw i32 %58, %59
  %conv95 = sext i32 %add94 to i64
  %add96 = add nsw i64 %conv95, 127
  %shr97 = ashr i64 %add96, 8
  %conv98 = trunc i64 %shr97 to i32
  %shl99 = shl i32 %conv98, 8
  %q100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q100, i32 0, i32 1
  store i32 %shl99, i32* %y101, align 4, !tbaa !55
  %60 = bitcast i32* %adjust_yu to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %adjust_yl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %adjust_xu to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %adjust_xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %p102 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 0
  %x103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p102, i32 0, i32 0
  %65 = load i32, i32* %x103, align 4, !tbaa !58
  %p104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p104, i32 0, i32 0
  %66 = load i32, i32* %x105, align 4, !tbaa !58
  %cmp106 = icmp sgt i32 %65, %66
  br i1 %cmp106, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %if.end.65
  %p109 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 0
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p109, i32 0, i32 0
  %67 = load i32, i32* %x110, align 4, !tbaa !58
  %p111 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p111, i32 0, i32 0
  store i32 %67, i32* %x112, align 4, !tbaa !58
  %68 = load i32, i32* %changed, align 4, !tbaa !5
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %changed, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.108, %if.end.65
  %p114 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 0
  %y115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p114, i32 0, i32 1
  %69 = load i32, i32* %y115, align 4, !tbaa !57
  %p116 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p116, i32 0, i32 1
  %70 = load i32, i32* %y117, align 4, !tbaa !57
  %cmp118 = icmp sgt i32 %69, %70
  br i1 %cmp118, label %if.then.120, label %if.end.126

if.then.120:                                      ; preds = %if.end.113
  %p121 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 0
  %y122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p121, i32 0, i32 1
  %71 = load i32, i32* %y122, align 4, !tbaa !57
  %p123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p123, i32 0, i32 1
  store i32 %71, i32* %y124, align 4, !tbaa !57
  %72 = load i32, i32* %changed, align 4, !tbaa !5
  %inc125 = add nsw i32 %72, 1
  store i32 %inc125, i32* %changed, align 4, !tbaa !5
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.120, %if.end.113
  %q127 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 1
  %x128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q127, i32 0, i32 0
  %73 = load i32, i32* %x128, align 4, !tbaa !56
  %q129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q129, i32 0, i32 0
  %74 = load i32, i32* %x130, align 4, !tbaa !56
  %cmp131 = icmp slt i32 %73, %74
  br i1 %cmp131, label %if.then.133, label %if.end.139

if.then.133:                                      ; preds = %if.end.126
  %q134 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 1
  %x135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q134, i32 0, i32 0
  %75 = load i32, i32* %x135, align 4, !tbaa !56
  %q136 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x137 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q136, i32 0, i32 0
  store i32 %75, i32* %x137, align 4, !tbaa !56
  %76 = load i32, i32* %changed, align 4, !tbaa !5
  %inc138 = add nsw i32 %76, 1
  store i32 %inc138, i32* %changed, align 4, !tbaa !5
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.133, %if.end.126
  %q140 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q140, i32 0, i32 1
  %77 = load i32, i32* %y141, align 4, !tbaa !55
  %q142 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q142, i32 0, i32 1
  %78 = load i32, i32* %y143, align 4, !tbaa !55
  %cmp144 = icmp slt i32 %77, %78
  br i1 %cmp144, label %if.then.146, label %if.end.152

if.then.146:                                      ; preds = %if.end.139
  %q147 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %old_box, i32 0, i32 1
  %y148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q147, i32 0, i32 1
  %79 = load i32, i32* %y148, align 4, !tbaa !55
  %q149 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q149, i32 0, i32 1
  store i32 %79, i32* %y150, align 4, !tbaa !55
  %80 = load i32, i32* %changed, align 4, !tbaa !5
  %inc151 = add nsw i32 %80, 1
  store i32 %inc151, i32* %changed, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.146, %if.end.139
  %q153 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x154 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q153, i32 0, i32 0
  %81 = load i32, i32* %x154, align 4, !tbaa !56
  %p155 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p155, i32 0, i32 0
  %82 = load i32, i32* %x156, align 4, !tbaa !58
  %cmp157 = icmp slt i32 %81, %82
  br i1 %cmp157, label %if.then.166, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %if.end.152
  %q160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q160, i32 0, i32 1
  %83 = load i32, i32* %y161, align 4, !tbaa !55
  %p162 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p162, i32 0, i32 1
  %84 = load i32, i32* %y163, align 4, !tbaa !57
  %cmp164 = icmp slt i32 %83, %84
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %lor.lhs.false.159, %if.end.152
  %p167 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %q168 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %85 = bitcast %struct.gs_fixed_point_s* %p167 to i8*
  %86 = bitcast %struct.gs_fixed_point_s* %q168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 8, i32 4, i1 false), !tbaa.struct !121
  store i32 1, i32* %changed, align 4, !tbaa !5
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %lor.lhs.false.159
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.31
  %87 = load i32, i32* %changed, align 4, !tbaa !5
  %cmp171 = icmp eq i32 %87, 4
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.174:                                       ; preds = %if.end.170
  br label %do.body

do.body:                                          ; preds = %if.end.174
  %88 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %88, i32 0, i32 7
  %89 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %tobool175 = icmp ne %struct.gx_cpath_path_list_s* %89, null
  br i1 %tobool175, label %if.then.176, label %if.end.206

if.then.176:                                      ; preds = %do.body
  br label %do.body.177

do.body.177:                                      ; preds = %if.then.176
  br label %do.body.178

do.body.178:                                      ; preds = %do.body.177
  br label %do.cond

do.cond:                                          ; preds = %do.body.178
  br label %do.end

do.end:                                           ; preds = %do.cond
  %90 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list179 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %90, i32 0, i32 7
  %91 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list179, align 8, !tbaa !23
  %rc = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %91, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %92 = load i64, i64* %ref_count, align 8, !tbaa !47
  %add180 = add nsw i64 %92, -1
  store i64 %add180, i64* %ref_count, align 8, !tbaa !47
  br label %do.cond.181

do.cond.181:                                      ; preds = %do.end
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  %93 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list183 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %93, i32 0, i32 7
  %94 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list183, align 8, !tbaa !23
  %rc184 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %94, i32 0, i32 1
  %ref_count185 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc184, i32 0, i32 0
  %95 = load i64, i64* %ref_count185, align 8, !tbaa !47
  %tobool186 = icmp ne i64 %95, 0
  br i1 %tobool186, label %if.else.201, label %if.then.187

if.then.187:                                      ; preds = %do.end.182
  br label %do.body.188

do.body.188:                                      ; preds = %if.then.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.body.188
  br label %do.cond.190

do.cond.190:                                      ; preds = %do.body.189
  br label %do.end.191

do.end.191:                                       ; preds = %do.cond.190
  %96 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list192 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %96, i32 0, i32 7
  %97 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list192, align 8, !tbaa !23
  %rc193 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %97, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc193, i32 0, i32 2
  %98 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !64
  %99 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list194 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %99, i32 0, i32 7
  %100 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list194, align 8, !tbaa !23
  %rc195 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %100, i32 0, i32 1
  %memory196 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc195, i32 0, i32 1
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory196, align 8, !tbaa !65
  %102 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list197 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %102, i32 0, i32 7
  %103 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list197, align 8, !tbaa !23
  %104 = bitcast %struct.gx_cpath_path_list_s* %103 to i8*
  call void %98(%struct.gs_memory_s* %101, i8* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %do.cond.198

do.cond.198:                                      ; preds = %do.end.191
  br label %do.end.199

do.end.199:                                       ; preds = %do.cond.198
  %105 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list200 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %105, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list200, align 8, !tbaa !23
  br label %if.end.205

if.else.201:                                      ; preds = %do.end.182
  br label %do.body.202

do.body.202:                                      ; preds = %if.else.201
  br label %do.cond.203

do.cond.203:                                      ; preds = %do.body.202
  br label %do.end.204

do.end.204:                                       ; preds = %do.cond.203
  br label %if.end.205

if.end.205:                                       ; preds = %do.end.204, %do.end.199
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %do.body
  br label %do.cond.207

do.cond.207:                                      ; preds = %if.end.206
  br label %do.end.208

do.end.208:                                       ; preds = %do.cond.207
  %106 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list209 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %106, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list209, align 8, !tbaa !23
  %107 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %107, i32 0, i32 0
  %call210 = call i32 @gx_path_new(%struct.gx_path_s* %path) #4
  %108 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %108, i32 0, i32 5
  %109 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  %110 = bitcast %struct.gs_fixed_rect_s* %new_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 16, i32 4, i1 false), !tbaa.struct !61
  %111 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call211 = call i32 @cpath_set_rectangle(%struct.gx_clip_path_s* %111, %struct.gs_fixed_rect_s* %new_box) #4
  %112 = load i32, i32* %changed, align 4, !tbaa !5
  %cmp212 = icmp eq i32 %112, 0
  br i1 %cmp212, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %do.end.208
  %113 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path215 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %113, i32 0, i32 0
  %114 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call216 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %path215, %struct.gx_path_s* %114) #4
  %115 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %115, i32 0, i32 6
  store i32 1, i32* %path_valid, align 4, !tbaa !62
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.214, %do.end.208
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.217, %if.then.173
  %116 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.284 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.279

if.else.218:                                      ; preds = %land.lhs.true.13, %lor.lhs.false, %if.end.5
  %117 = bitcast %struct.gx_cpath_path_list_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list219 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %118, i32 0, i32 7
  %119 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list219, align 8, !tbaa !23
  store %struct.gx_cpath_path_list_s* %119, %struct.gx_cpath_path_list_s** %next, align 8, !tbaa !1
  %120 = bitcast i32* %path_valid220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #2
  %121 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call221 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %121, %struct.gs_fixed_rect_s* %old_box) #4
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %land.lhs.true.223, label %land.end

land.lhs.true.223:                                ; preds = %if.else.218
  %122 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call224 = call i32 @gx_path_bbox(%struct.gx_path_s* %122, %struct.gs_fixed_rect_s* %new_box) #4
  %cmp225 = icmp sge i32 %call224, 0
  br i1 %cmp225, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.223
  %123 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p227 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %x228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p227, i32 0, i32 0
  %124 = load i32, i32* %x228, align 4, !tbaa !58
  %p229 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 0
  %y230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p229, i32 0, i32 1
  %125 = load i32, i32* %y230, align 4, !tbaa !57
  %q231 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %x232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q231, i32 0, i32 0
  %126 = load i32, i32* %x232, align 4, !tbaa !56
  %q233 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %new_box, i32 0, i32 1
  %y234 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q233, i32 0, i32 1
  %127 = load i32, i32* %y234, align 4, !tbaa !55
  %call235 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %123, i32 %124, i32 %125, i32 %126, i32 %127) #4
  %tobool236 = icmp ne i32 %call235, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.223, %if.else.218
  %128 = phi i1 [ false, %land.lhs.true.223 ], [ false, %if.else.218 ], [ %tobool236, %land.rhs ]
  %land.ext = zext i1 %128 to i32
  store i32 %land.ext, i32* %path_valid220, align 4, !tbaa !5
  %129 = load i32, i32* %path_valid220, align 4, !tbaa !5
  %tobool237 = icmp ne i32 %129, 0
  br i1 %tobool237, label %if.end.251, label %land.lhs.true.238

land.lhs.true.238:                                ; preds = %land.end
  %130 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next, align 8, !tbaa !1
  %cmp239 = icmp eq %struct.gx_cpath_path_list_s* %130, null
  br i1 %cmp239, label %if.then.241, label %if.end.251

if.then.241:                                      ; preds = %land.lhs.true.238
  %131 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path242 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %131, i32 0, i32 0
  %memory243 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path242, i32 0, i32 1
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory243, align 8, !tbaa !43
  %133 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %134 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule244 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %134, i32 0, i32 2
  %135 = load i32, i32* %rule244, align 4, !tbaa !60
  %136 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path245 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %136, i32 0, i32 0
  %call246 = call i32 @gx_cpath_path_list_new(%struct.gs_memory_s* %132, %struct.gx_clip_path_s* %133, i32 %135, %struct.gx_path_s* %path245, %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %next) #4
  store i32 %call246, i32* %code, align 4, !tbaa !5
  %137 = load i32, i32* %code, align 4, !tbaa !5
  %cmp247 = icmp slt i32 %137, 0
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.then.241
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.250:                                       ; preds = %if.then.241
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %land.lhs.true.238, %land.end
  %138 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %139 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %cmp252 = icmp ne %struct.gx_fill_params_s* %139, null
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %if.end.251
  %140 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  br label %cond.end.256

cond.false.255:                                   ; preds = %if.end.251
  %141 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.255, %cond.true.254
  %cond257 = phi %struct.gx_path_s* [ %140, %cond.true.254 ], [ %141, %cond.false.255 ]
  %142 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %143 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %144 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %call258 = call i32 @gx_cpath_intersect_path_slow(%struct.gx_clip_path_s* %138, %struct.gx_path_s* %cond257, i32 %142, %struct.gs_imager_state_s* %143, %struct.gx_fill_params_s* %144) #4
  store i32 %call258, i32* %code, align 4, !tbaa !5
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %cmp259 = icmp slt i32 %145, 0
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %cond.end.256
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.275

if.end.262:                                       ; preds = %cond.end.256
  %146 = load i32, i32* %path_valid220, align 4, !tbaa !5
  %tobool263 = icmp ne i32 %146, 0
  br i1 %tobool263, label %if.then.264, label %if.else.269

if.then.264:                                      ; preds = %if.end.262
  %147 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path265 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %147, i32 0, i32 0
  %148 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  %call266 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %path265, %struct.gx_path_s* %148) #4
  %149 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid267 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %149, i32 0, i32 6
  store i32 1, i32* %path_valid267, align 4, !tbaa !62
  %150 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %151 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule268 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %151, i32 0, i32 2
  store i32 %150, i32* %rule268, align 4, !tbaa !60
  br label %if.end.274

if.else.269:                                      ; preds = %if.end.262
  %152 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path270 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %152, i32 0, i32 0
  %memory271 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path270, i32 0, i32 1
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory271, align 8, !tbaa !43
  %154 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %155 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  %156 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next, align 8, !tbaa !1
  %157 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list272 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %157, i32 0, i32 7
  %call273 = call i32 @gx_cpath_path_list_new(%struct.gs_memory_s* %153, %struct.gx_clip_path_s* null, i32 %154, %struct.gx_path_s* %155, %struct.gx_cpath_path_list_s* %156, %struct.gx_cpath_path_list_s** %path_list272) #4
  store i32 %call273, i32* %code, align 4, !tbaa !5
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.269, %if.then.264
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.275

cleanup.275:                                      ; preds = %if.then.261, %if.then.249, %if.end.274
  %158 = bitcast i32* %path_valid220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast %struct.gx_cpath_path_list_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %cleanup.dest.277 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.277, label %cleanup.284 [
    i32 0, label %cleanup.cont.278
    i32 14, label %ex
  ]

cleanup.cont.278:                                 ; preds = %cleanup.275
  br label %if.end.279

if.end.279:                                       ; preds = %cleanup.cont.278, %cleanup.cont
  br label %ex

ex:                                               ; preds = %if.end.279, %cleanup.275
  %160 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %161 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_orig.addr, align 8, !tbaa !1
  %cmp280 = icmp ne %struct.gx_path_s* %160, %161
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %ex
  %162 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %ex
  %163 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.284

cleanup.284:                                      ; preds = %if.end.283, %cleanup.275, %cleanup, %if.then.4
  %164 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast %struct.gs_fixed_rect_s* %new_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #2
  %166 = bitcast %struct.gs_fixed_rect_s* %old_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %166) #2
  %167 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %168) #2
  %169 = load i32, i32* %retval
  ret i32 %169
}

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #0

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #0

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_cpath_path_list_new(%struct.gs_memory_s* %mem, %struct.gx_clip_path_s* %pcpath, i32 %rule, %struct.gx_path_s* %ppfrom, %struct.gx_cpath_path_list_s* %next, %struct.gx_cpath_path_list_s** %pnew) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %rule.addr = alloca i32, align 4
  %ppfrom.addr = alloca %struct.gx_path_s*, align 8
  %next.addr = alloca %struct.gx_cpath_path_list_s*, align 8
  %pnew.addr = alloca %struct.gx_cpath_path_list_s**, align 8
  %code = alloca i32, align 4
  %cname = alloca i8*, align 8
  %pcplist = alloca %struct.gx_cpath_path_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i32 %rule, i32* %rule.addr, align 4, !tbaa !5
  store %struct.gx_path_s* %ppfrom, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  store %struct.gx_cpath_path_list_s* %next, %struct.gx_cpath_path_list_s** %next.addr, align 8, !tbaa !1
  store %struct.gx_cpath_path_list_s** %pnew, %struct.gx_cpath_path_list_s*** %pnew.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8** %cname, align 8, !tbaa !1
  %2 = bitcast %struct.gx_cpath_path_list_s** %pcplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !52
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cname, align 8, !tbaa !1
  %call = call i8* %4(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cpath_path_list to %struct.gs_memory_struct_type_s*), i8* %6) #4
  %7 = bitcast i8* %call to %struct.gx_cpath_path_list_s*
  store %struct.gx_cpath_path_list_s* %7, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %8 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_cpath_path_list_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %9, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !47
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %rc1 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %11, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %12 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %12, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_cpath_path_list, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !64
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gx_clip_path_s* %13, null
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.5
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 6
  %15 = load i32, i32* %path_valid, align 4, !tbaa !62
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %16 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %cname, align 8, !tbaa !1
  %call8 = call i32 @gx_path_init_contained_shared(%struct.gx_path_s* %path, %struct.gx_path_s* null, %struct.gs_memory_s* %17, i8* %18) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  %21 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %22 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %path12 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %22, i32 0, i32 0
  %call13 = call i32 @gx_cpath_to_path(%struct.gx_clip_path_s* %21, %struct.gx_path_s* %path12) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %do.end.5
  %23 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %path14 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %23, i32 0, i32 0
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path14, %struct.gx_path_s* null, %struct.gs_memory_s* %24) #4
  %25 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %path16 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %25, i32 0, i32 0
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %call17 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %path16, %struct.gx_path_s* %26) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.11
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %27, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.18
  %29 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next.addr, align 8, !tbaa !1
  %30 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %30, i32 0, i32 3
  store %struct.gx_cpath_path_list_s* %29, %struct.gx_cpath_path_list_s** %next22, align 8, !tbaa !122
  %31 = load i32, i32* %rule.addr, align 4, !tbaa !5
  %32 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %rule23 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %32, i32 0, i32 2
  store i32 %31, i32* %rule23, align 4, !tbaa !123
  %33 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %pcplist, align 8, !tbaa !1
  %34 = load %struct.gx_cpath_path_list_s**, %struct.gx_cpath_path_list_s*** %pnew.addr, align 8, !tbaa !1
  store %struct.gx_cpath_path_list_s* %33, %struct.gx_cpath_path_list_s** %34, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.10, %if.then
  %35 = bitcast %struct.gx_cpath_path_list_s** %pcplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gx_cpath_intersect_path_slow(%struct.gx_clip_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, %struct.gx_fill_params_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_scale_exp2_shared(%struct.gx_clip_path_s* %pcpath, i32 %log2_scale_x, i32 %log2_scale_y, i32 %list_shared, i32 %segments_shared) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %log2_scale_x.addr = alloca i32, align 4
  %log2_scale_y.addr = alloca i32, align 4
  %list_shared.addr = alloca i32, align 4
  %segments_shared.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %list = alloca %struct.gx_clip_list_s*, align 8
  %pr = alloca %struct.gx_clip_rect_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i32 %log2_scale_x, i32* %log2_scale_x.addr, align 4, !tbaa !5
  store i32 %log2_scale_y, i32* %log2_scale_y.addr, align 4, !tbaa !5
  store i32 %list_shared, i32* %list_shared.addr, align 4, !tbaa !5
  store i32 %segments_shared, i32* %segments_shared.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 6
  %2 = load i32, i32* %path_valid, align 4, !tbaa !62
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 0
  %4 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %6 = load i32, i32* %segments_shared.addr, align 4, !tbaa !5
  %call = call i32 @gx_path_scale_exp2_shared(%struct.gx_path_s* %path, i32 %4, i32 %5, i32 %6) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %7 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_clip_list_s* @gx_cpath_list_private(%struct.gx_clip_path_s* %8) #4
  store %struct.gx_clip_list_s* %call1, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %9 = bitcast %struct.gx_clip_rect_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %12, i32 0, i32 3
  %13 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  call void @gx_rect_scale_exp2(%struct.gs_fixed_rect_s* %inner_box, i32 %13, i32 %14) #4
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 4
  %16 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  call void @gx_rect_scale_exp2(%struct.gs_fixed_rect_s* %outer_box, i32 %16, i32 %17) #4
  %18 = load i32, i32* %list_shared.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %18, 0
  br i1 %tobool2, label %if.end.93, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %19, i32 0, i32 1
  %20 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !78
  store %struct.gx_clip_rect_s* %20, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %21 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gx_clip_rect_s* %21, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %22 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %22, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %23 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gx_clip_rect_s* %23, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %25 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %head8 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %25, i32 0, i32 1
  %26 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head8, align 8, !tbaa !78
  %cmp9 = icmp ne %struct.gx_clip_rect_s* %24, %26
  br i1 %cmp9, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %for.body
  %27 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %28 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %28, i32 0, i32 2
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !124
  %cmp10 = icmp ne %struct.gx_clip_rect_s* %27, %29
  br i1 %cmp10, label %if.then.11, label %if.end.77

if.then.11:                                       ; preds = %land.lhs.true
  %30 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %30, i32 0, i32 4
  %31 = load i32, i32* %xmin, align 4, !tbaa !79
  %cmp12 = icmp ne i32 %31, -2147483648
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.25

land.lhs.true.13:                                 ; preds = %if.then.11
  %32 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin14 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %32, i32 0, i32 4
  %33 = load i32, i32* %xmin14, align 4, !tbaa !79
  %cmp15 = icmp ne i32 %33, 2147483647
  br i1 %cmp15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %land.lhs.true.13
  %34 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %34, 0
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.then.16
  %35 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin19 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %35, i32 0, i32 4
  %36 = load i32, i32* %xmin19, align 4, !tbaa !79
  %37 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %shl = shl i32 %36, %37
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.then.16
  %38 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin21 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %38, i32 0, i32 4
  %39 = load i32, i32* %xmin21, align 4, !tbaa !79
  %40 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %40
  %shr = ashr i32 %39, %sub
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi i32 [ %shl, %cond.true.18 ], [ %shr, %cond.false.20 ]
  %41 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin24 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %41, i32 0, i32 4
  store i32 %cond23, i32* %xmin24, align 4, !tbaa !79
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.22, %land.lhs.true.13, %if.then.11
  %42 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %42, i32 0, i32 5
  %43 = load i32, i32* %xmax, align 4, !tbaa !80
  %cmp26 = icmp ne i32 %43, -2147483648
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.42

land.lhs.true.27:                                 ; preds = %if.end.25
  %44 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax28 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %44, i32 0, i32 5
  %45 = load i32, i32* %xmax28, align 4, !tbaa !80
  %cmp29 = icmp ne i32 %45, 2147483647
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %land.lhs.true.27
  %46 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %cmp31 = icmp sge i32 %46, 0
  br i1 %cmp31, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %if.then.30
  %47 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax33 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %47, i32 0, i32 5
  %48 = load i32, i32* %xmax33, align 4, !tbaa !80
  %49 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %shl34 = shl i32 %48, %49
  br label %cond.end.39

cond.false.35:                                    ; preds = %if.then.30
  %50 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax36 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %50, i32 0, i32 5
  %51 = load i32, i32* %xmax36, align 4, !tbaa !80
  %52 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %sub37 = sub nsw i32 0, %52
  %shr38 = ashr i32 %51, %sub37
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.35, %cond.true.32
  %cond40 = phi i32 [ %shl34, %cond.true.32 ], [ %shr38, %cond.false.35 ]
  %53 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax41 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %53, i32 0, i32 5
  store i32 %cond40, i32* %xmax41, align 4, !tbaa !80
  br label %if.end.42

if.end.42:                                        ; preds = %cond.end.39, %land.lhs.true.27, %if.end.25
  %54 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %54, i32 0, i32 2
  %55 = load i32, i32* %ymin, align 4, !tbaa !81
  %cmp43 = icmp ne i32 %55, -2147483648
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.59

land.lhs.true.44:                                 ; preds = %if.end.42
  %56 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin45 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %56, i32 0, i32 2
  %57 = load i32, i32* %ymin45, align 4, !tbaa !81
  %cmp46 = icmp ne i32 %57, 2147483647
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %land.lhs.true.44
  %58 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %cmp48 = icmp sge i32 %58, 0
  br i1 %cmp48, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %if.then.47
  %59 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin50 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %59, i32 0, i32 2
  %60 = load i32, i32* %ymin50, align 4, !tbaa !81
  %61 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %shl51 = shl i32 %60, %61
  br label %cond.end.56

cond.false.52:                                    ; preds = %if.then.47
  %62 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin53 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %62, i32 0, i32 2
  %63 = load i32, i32* %ymin53, align 4, !tbaa !81
  %64 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %sub54 = sub nsw i32 0, %64
  %shr55 = ashr i32 %63, %sub54
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.49
  %cond57 = phi i32 [ %shl51, %cond.true.49 ], [ %shr55, %cond.false.52 ]
  %65 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin58 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %65, i32 0, i32 2
  store i32 %cond57, i32* %ymin58, align 4, !tbaa !81
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.56, %land.lhs.true.44, %if.end.42
  %66 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %66, i32 0, i32 3
  %67 = load i32, i32* %ymax, align 4, !tbaa !82
  %cmp60 = icmp ne i32 %67, -2147483648
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.76

land.lhs.true.61:                                 ; preds = %if.end.59
  %68 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax62 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %68, i32 0, i32 3
  %69 = load i32, i32* %ymax62, align 4, !tbaa !82
  %cmp63 = icmp ne i32 %69, 2147483647
  br i1 %cmp63, label %if.then.64, label %if.end.76

if.then.64:                                       ; preds = %land.lhs.true.61
  %70 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %cmp65 = icmp sge i32 %70, 0
  br i1 %cmp65, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %if.then.64
  %71 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax67 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %71, i32 0, i32 3
  %72 = load i32, i32* %ymax67, align 4, !tbaa !82
  %73 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %shl68 = shl i32 %72, %73
  br label %cond.end.73

cond.false.69:                                    ; preds = %if.then.64
  %74 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax70 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %74, i32 0, i32 3
  %75 = load i32, i32* %ymax70, align 4, !tbaa !82
  %76 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !5
  %sub71 = sub nsw i32 0, %76
  %shr72 = ashr i32 %75, %sub71
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.69, %cond.true.66
  %cond74 = phi i32 [ %shl68, %cond.true.66 ], [ %shr72, %cond.false.69 ]
  %77 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax75 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %77, i32 0, i32 3
  store i32 %cond74, i32* %ymax75, align 4, !tbaa !82
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.73, %land.lhs.true.61, %if.end.59
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %78 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %78, i32 0, i32 0
  %79 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %79, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %80, 0
  br i1 %cmp78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.end
  %81 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %82 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmin80 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %82, i32 0, i32 4
  %83 = load i32, i32* %xmin80, align 4, !tbaa !125
  %shl81 = shl i32 %83, %81
  store i32 %shl81, i32* %xmin80, align 4, !tbaa !125
  %84 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %85 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmax82 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %85, i32 0, i32 5
  %86 = load i32, i32* %xmax82, align 4, !tbaa !126
  %shl83 = shl i32 %86, %84
  store i32 %shl83, i32* %xmax82, align 4, !tbaa !126
  br label %if.end.92

if.else:                                          ; preds = %for.end
  %87 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmin84 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %87, i32 0, i32 4
  %88 = load i32, i32* %xmin84, align 4, !tbaa !125
  %89 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %sub85 = sub nsw i32 0, %89
  %shr86 = ashr i32 %88, %sub85
  %90 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmin87 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %90, i32 0, i32 4
  store i32 %shr86, i32* %xmin87, align 4, !tbaa !125
  %91 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmax88 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %91, i32 0, i32 5
  %92 = load i32, i32* %xmax88, align 4, !tbaa !126
  %93 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !5
  %sub89 = sub nsw i32 0, %93
  %shr90 = ashr i32 %92, %sub89
  %94 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %xmax91 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %94, i32 0, i32 5
  store i32 %shr90, i32* %xmax91, align 4, !tbaa !126
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.then.79
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end
  %95 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path94 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %95, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path94, i32 0, i32 1
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %call95 = call i64 @gs_next_ids(%struct.gs_memory_s* %96, i32 1) #4
  %97 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %97, i32 0, i32 8
  store i64 %call95, i64* %id, align 8, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then
  %98 = bitcast %struct.gx_clip_rect_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i32 @gx_path_scale_exp2_shared(%struct.gx_path_s*, i32, i32, i32) #0

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gx_clip_list_s* @gx_cpath_list_private(%struct.gx_clip_path_s* %pcpath) #3 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 5
  %1 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %1, i32 0, i32 1
  ret %struct.gx_clip_list_s* %list
}

declare void @gx_rect_scale_exp2(%struct.gs_fixed_rect_s*, i32, i32) #0

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @gx_clip_list_init(%struct.gx_clip_list_s* %clp) #1 {
entry:
  %clp.addr = alloca %struct.gx_clip_list_s*, align 8
  store %struct.gx_clip_list_s* %clp, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_clip_list_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gx_clip_list_s* @clip_list_empty to i8*), i64 80, i32 8, i1 false), !tbaa.struct !66
  ret void
}

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #0

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #0

; Function Attrs: nounwind uwtable
define void @gx_clip_list_free(%struct.gx_clip_list_s* %clp, %struct.gs_memory_s* %mem) #1 {
entry:
  %clp.addr = alloca %struct.gx_clip_list_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp = alloca %struct.gx_clip_rect_s*, align 8
  %prev = alloca %struct.gx_clip_rect_s*, align 8
  store %struct.gx_clip_list_s* %clp, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %1, i32 0, i32 2
  %2 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !124
  store %struct.gx_clip_rect_s* %2, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_rect_s* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast %struct.gx_clip_rect_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %prev1 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %5, i32 0, i32 1
  %6 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev1, align 8, !tbaa !90
  store %struct.gx_clip_rect_s* %6, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %11 = bitcast %struct.gx_clip_rect_s* %10 to i8*
  call void %8(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #4
  %12 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !1
  store %struct.gx_clip_rect_s* %12, %struct.gx_clip_rect_s** %rp, align 8, !tbaa !1
  %13 = bitcast %struct.gx_clip_rect_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  call void @gx_clip_list_init(%struct.gx_clip_list_s* %14) #4
  %15 = bitcast %struct.gx_clip_rect_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_rect_visible(%struct.gx_clip_path_s* %pcpath, %struct.gs_int_rect_s* %prect) #1 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pr = alloca %struct.gx_clip_rect_s*, align 8
  %list = alloca %struct.gx_clip_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 5
  %3 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %list1 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %3, i32 0, i32 1
  store %struct.gx_clip_list_s* %list1, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %4 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %4, i32 0, i32 6
  %5 = load i32, i32* %count, align 4, !tbaa !77
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %6, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %7, i32 0, i32 1
  %8 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !78
  store %struct.gx_clip_rect_s* %8, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %9 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_rect_s* %9, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %10, i32 0, i32 4
  %11 = load i32, i32* %xmin, align 4, !tbaa !79
  %12 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %12, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %13 = load i32, i32* %x, align 4, !tbaa !127
  %cmp3 = icmp sgt i32 %11, %13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %14, i32 0, i32 5
  %15 = load i32, i32* %xmax, align 4, !tbaa !80
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %16, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %17 = load i32, i32* %x4, align 4, !tbaa !129
  %cmp5 = icmp slt i32 %15, %17
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.inc

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %18, i32 0, i32 2
  %19 = load i32, i32* %ymin, align 4, !tbaa !81
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q8, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !130
  %cmp9 = icmp sgt i32 %19, %21
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %for.inc

if.end.11:                                        ; preds = %if.end.7
  %22 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %22, i32 0, i32 3
  %23 = load i32, i32* %ymax, align 4, !tbaa !82
  %24 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %24, i32 0, i32 0
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p12, i32 0, i32 1
  %25 = load i32, i32* %y13, align 4, !tbaa !131
  %cmp14 = icmp slt i32 %23, %25
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  br label %for.inc

if.end.16:                                        ; preds = %if.end.11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

for.inc:                                          ; preds = %if.then.15, %if.then.10, %if.then.6, %if.then
  %26 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %26, i32 0, i32 0
  %27 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %27, %struct.gx_clip_rect_s** %pr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.16, %sw.bb
  %28 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_clip_rect_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_copy(%struct.gx_clip_path_s* %from, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca %struct.gx_clip_path_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %r = alloca %struct.gx_clip_rect_s*, align 8
  %s = alloca %struct.gx_clip_rect_s*, align 8
  %l = alloca %struct.gx_clip_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %from, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_clip_rect_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gx_clip_list_s** %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 5
  %4 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %4, i32 0, i32 1
  store %struct.gx_clip_list_s* %list, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %5, i32 0, i32 6
  store i32 0, i32* %path_valid, align 4, !tbaa !62
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %6, i32 0, i32 7
  %7 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !23
  %tobool = icmp ne %struct.gx_cpath_path_list_s* %7, null
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 7
  %9 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list1, align 8, !tbaa !23
  %tobool2 = icmp ne %struct.gx_cpath_path_list_s* %9, null
  br i1 %tobool2, label %if.then.3, label %if.end.29

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list6 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 7
  %11 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list6, align 8, !tbaa !23
  %rc = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %11, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %12 = load i64, i64* %ref_count, align 8, !tbaa !47
  %add = add nsw i64 %12, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !47
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list9 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 7
  %14 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list9, align 8, !tbaa !23
  %rc10 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %14, i32 0, i32 1
  %ref_count11 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc10, i32 0, i32 0
  %15 = load i64, i64* %ref_count11, align 8, !tbaa !47
  %tobool12 = icmp ne i64 %15, 0
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %do.end.8
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list18 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 7
  %17 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list18, align 8, !tbaa !23
  %rc19 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %17, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !64
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list20 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %19, i32 0, i32 7
  %20 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list20, align 8, !tbaa !23
  %rc21 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %20, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list22 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %22, i32 0, i32 7
  %23 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list22, align 8, !tbaa !23
  %24 = bitcast %struct.gx_cpath_path_list_s* %23 to i8*
  call void %18(%struct.gs_memory_s* %21, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #4
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.17
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list25 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list25, align 8, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %do.end.8
  br label %do.body.26

do.body.26:                                       ; preds = %if.else
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %if.end

if.end:                                           ; preds = %do.end.28, %do.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %do.body
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list33 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %26, i32 0, i32 7
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %path_list33, align 8, !tbaa !23
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %27, i32 0, i32 2
  %28 = load i32, i32* %rule, align 4, !tbaa !60
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule34 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %29, i32 0, i32 2
  store i32 %28, i32* %rule34, align 4, !tbaa !60
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %30, i32 0, i32 4
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %outer_box35 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %31, i32 0, i32 4
  %32 = bitcast %struct.gs_fixed_rect_s* %outer_box to i8*
  %33 = bitcast %struct.gs_fixed_rect_s* %outer_box35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 4, i1 false), !tbaa.struct !61
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %inner_box36 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %35, i32 0, i32 3
  %36 = bitcast %struct.gs_fixed_rect_s* %inner_box to i8*
  %37 = bitcast %struct.gs_fixed_rect_s* %inner_box36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 4, i1 false), !tbaa.struct !61
  %38 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %38, i32 0, i32 0
  %39 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rect_list37 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %39, i32 0, i32 5
  %40 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list37, align 8, !tbaa !9
  %list38 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %40, i32 0, i32 1
  %single39 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list38, i32 0, i32 0
  %41 = bitcast %struct.gx_clip_rect_s* %single to i8*
  %42 = bitcast %struct.gx_clip_rect_s* %single39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 40, i32 8, i1 false), !tbaa.struct !132
  %43 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rect_list40 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %43, i32 0, i32 5
  %44 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list40, align 8, !tbaa !9
  %list41 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %44, i32 0, i32 1
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list41, i32 0, i32 1
  %45 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !133
  store %struct.gx_clip_rect_s* %45, %struct.gx_clip_rect_s** %r, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %46 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %r, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_rect_s* %46, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rect_list42 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %47, i32 0, i32 5
  %48 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list42, align 8, !tbaa !9
  %rc43 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %48, i32 0, i32 0
  %memory44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 1
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !53
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %50 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !52
  %51 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rect_list45 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %51, i32 0, i32 5
  %52 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list45, align 8, !tbaa !9
  %rc46 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %52, i32 0, i32 0
  %memory47 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc46, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !53
  %call = call i8* %50(%struct.gs_memory_s* %53, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clip_rect to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #4
  %54 = bitcast i8* %call to %struct.gx_clip_rect_s*
  store %struct.gx_clip_rect_s* %54, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %55 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.gx_clip_rect_s* %55, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %for.body
  %56 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %57 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %r, align 8, !tbaa !1
  %58 = bitcast %struct.gx_clip_rect_s* %56 to i8*
  %59 = bitcast %struct.gx_clip_rect_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 40, i32 8, i1 false), !tbaa.struct !132
  %60 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %60, i32 0, i32 0
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %next, align 8, !tbaa !84
  %61 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %61, i32 0, i32 2
  %62 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !124
  %tobool51 = icmp ne %struct.gx_clip_rect_s* %62, null
  br i1 %tobool51, label %if.then.52, label %if.else.56

if.then.52:                                       ; preds = %if.end.50
  %63 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %tail53 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %63, i32 0, i32 2
  %64 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail53, align 8, !tbaa !124
  %65 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %65, i32 0, i32 1
  store %struct.gx_clip_rect_s* %64, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !90
  %66 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %67 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %tail54 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %67, i32 0, i32 2
  %68 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail54, align 8, !tbaa !124
  %next55 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %68, i32 0, i32 0
  store %struct.gx_clip_rect_s* %66, %struct.gx_clip_rect_s** %next55, align 8, !tbaa !84
  br label %if.end.59

if.else.56:                                       ; preds = %if.end.50
  %69 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %70 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %head57 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %70, i32 0, i32 1
  store %struct.gx_clip_rect_s* %69, %struct.gx_clip_rect_s** %head57, align 8, !tbaa !78
  %71 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %prev58 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %71, i32 0, i32 1
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %prev58, align 8, !tbaa !90
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.52
  %72 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %s, align 8, !tbaa !1
  %73 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %tail60 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %73, i32 0, i32 2
  store %struct.gx_clip_rect_s* %72, %struct.gx_clip_rect_s** %tail60, align 8, !tbaa !124
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %74 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %r, align 8, !tbaa !1
  %next61 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %74, i32 0, i32 0
  %75 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next61, align 8, !tbaa !84
  store %struct.gx_clip_rect_s* %75, %struct.gx_clip_rect_s** %r, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %from.addr, align 8, !tbaa !1
  %rect_list62 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %76, i32 0, i32 5
  %77 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list62, align 8, !tbaa !9
  %list63 = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %77, i32 0, i32 1
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list63, i32 0, i32 6
  %78 = load i32, i32* %count, align 4, !tbaa !134
  %79 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %l, align 8, !tbaa !1
  %count64 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %79, i32 0, i32 6
  store i32 %78, i32* %count64, align 4, !tbaa !77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.49
  %80 = bitcast %struct.gx_clip_list_s** %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.gx_clip_rect_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.gx_clip_rect_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal void @rc_free_cpath_list(%struct.gs_memory_s* %mem, i8* %vrlist, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vrlist.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vrlist, i8** %vrlist.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vrlist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @rc_free_cpath_list_local(%struct.gs_memory_s* %0, i8* %1, i8* %2) #4
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vrlist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cpath_init_rectangle(%struct.gx_clip_path_s* %pcpath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rect_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %0, i32 0, i32 5
  %1 = load %struct.gx_clip_rect_list_s*, %struct.gx_clip_rect_list_s** %rect_list, align 8, !tbaa !9
  %list = getelementptr inbounds %struct.gx_clip_rect_list_s, %struct.gx_clip_rect_list_s* %1, i32 0, i32 1
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void @gx_clip_list_from_rectangle(%struct.gx_clip_list_s* %list, %struct.gs_fixed_rect_s* %2) #4
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 3
  %4 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_fixed_rect_s* %inner_box to i8*
  %6 = bitcast %struct.gs_fixed_rect_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 4, i1 false), !tbaa.struct !61
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 6
  store i32 0, i32* %path_valid, align 4, !tbaa !62
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 0
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path, i32 0, i32 5
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  %11 = bitcast %struct.gs_fixed_rect_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 4, i1 false), !tbaa.struct !61
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @gx_cpath_set_outer_box(%struct.gx_clip_path_s* %12) #4
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %13, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path1, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %14, i32 1) #4
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 8
  store i64 %call, i64* %id, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_clip_list_from_rectangle(%struct.gx_clip_list_s* %clp, %struct.gs_fixed_rect_s* %rp) #1 {
entry:
  %clp.addr = alloca %struct.gx_clip_list_s*, align 8
  %rp.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %t = alloca i32, align 4
  %t15 = alloca i32, align 4
  store %struct.gx_clip_list_s* %clp, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rp, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  call void @gx_clip_list_init(%struct.gx_clip_list_s* %0) #4
  %1 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !58
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4, !tbaa !56
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !58
  store i32 %7, i32* %t, align 4, !tbaa !5
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %8, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q4, i32 0, i32 0
  %9 = load i32, i32* %x5, align 4, !tbaa !56
  %10 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %10, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 0
  store i32 %9, i32* %x7, align 4, !tbaa !58
  %11 = load i32, i32* %t, align 4, !tbaa !5
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 0
  store i32 %11, i32* %x9, align 4, !tbaa !56
  %13 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !57
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 1
  %17 = load i32, i32* %y12, align 4, !tbaa !55
  %cmp13 = icmp sgt i32 %15, %17
  br i1 %cmp13, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end
  %18 = bitcast i32* %t15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 1
  %20 = load i32, i32* %y17, align 4, !tbaa !57
  store i32 %20, i32* %t15, align 4, !tbaa !5
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q18, i32 0, i32 1
  %22 = load i32, i32* %y19, align 4, !tbaa !55
  %23 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %23, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p20, i32 0, i32 1
  store i32 %22, i32* %y21, align 4, !tbaa !57
  %24 = load i32, i32* %t15, align 4, !tbaa !5
  %25 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q22 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q22, i32 0, i32 1
  store i32 %24, i32* %y23, align 4, !tbaa !55
  %26 = bitcast i32* %t15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.14, %if.end
  %27 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %27, i32 0, i32 0
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 0
  %28 = load i32, i32* %x26, align 4, !tbaa !58
  %shr = ashr i32 %28, 8
  %29 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %29, i32 0, i32 4
  store i32 %shr, i32* %xmin, align 4, !tbaa !125
  %30 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %30, i32 0, i32 0
  %xmin27 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single, i32 0, i32 4
  store i32 %shr, i32* %xmin27, align 4, !tbaa !135
  %31 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %31, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p28, i32 0, i32 1
  %32 = load i32, i32* %y29, align 4, !tbaa !57
  %shr30 = ashr i32 %32, 8
  %33 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single31 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %33, i32 0, i32 0
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single31, i32 0, i32 2
  store i32 %shr30, i32* %ymin, align 4, !tbaa !136
  %34 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %34, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q32, i32 0, i32 0
  %35 = load i32, i32* %x33, align 4, !tbaa !56
  %36 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %36, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p34, i32 0, i32 0
  %37 = load i32, i32* %x35, align 4, !tbaa !58
  %cmp36 = icmp eq i32 %35, %37
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %38 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single37 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %38, i32 0, i32 0
  %xmin38 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single37, i32 0, i32 4
  %39 = load i32, i32* %xmin38, align 4, !tbaa !135
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %40 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %40, i32 0, i32 1
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q39, i32 0, i32 0
  %41 = load i32, i32* %x40, align 4, !tbaa !56
  %add = add nsw i32 %41, 255
  %shr41 = ashr i32 %add, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %shr41, %cond.false ]
  %42 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %42, i32 0, i32 5
  store i32 %cond, i32* %xmax, align 4, !tbaa !126
  %43 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single42 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %43, i32 0, i32 0
  %xmax43 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single42, i32 0, i32 5
  store i32 %cond, i32* %xmax43, align 4, !tbaa !137
  %44 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q44 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %44, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q44, i32 0, i32 1
  %45 = load i32, i32* %y45, align 4, !tbaa !55
  %46 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %p46 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %46, i32 0, i32 0
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p46, i32 0, i32 1
  %47 = load i32, i32* %y47, align 4, !tbaa !57
  %cmp48 = icmp eq i32 %45, %47
  br i1 %cmp48, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %cond.end
  %48 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single50 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %48, i32 0, i32 0
  %ymin51 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single50, i32 0, i32 2
  %49 = load i32, i32* %ymin51, align 4, !tbaa !136
  br label %cond.end.57

cond.false.52:                                    ; preds = %cond.end
  %50 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rp.addr, align 8, !tbaa !1
  %q53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %50, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q53, i32 0, i32 1
  %51 = load i32, i32* %y54, align 4, !tbaa !55
  %add55 = add nsw i32 %51, 255
  %shr56 = ashr i32 %add55, 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.52, %cond.true.49
  %cond58 = phi i32 [ %49, %cond.true.49 ], [ %shr56, %cond.false.52 ]
  %52 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %single59 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %52, i32 0, i32 0
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single59, i32 0, i32 3
  store i32 %cond58, i32* %ymax, align 4, !tbaa !138
  %53 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %clp.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %53, i32 0, i32 6
  store i32 1, i32* %count, align 4, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rc_free_cpath_path_list(%struct.gs_memory_s* %mem, i8* %vplist, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vplist.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %plist = alloca %struct.gx_cpath_path_list_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vplist, i8** %vplist.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cpath_path_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vplist.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_cpath_path_list_s*
  store %struct.gx_cpath_path_list_s* %2, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %3, i32 0, i32 3
  %4 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next, align 8, !tbaa !122
  %tobool = icmp ne %struct.gx_cpath_path_list_s* %4, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %5, i32 0, i32 3
  %6 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next3, align 8, !tbaa !122
  %rc = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %6, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !47
  %add = add nsw i64 %7, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !47
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %8 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %8, i32 0, i32 3
  %9 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next6, align 8, !tbaa !122
  %rc7 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %9, i32 0, i32 1
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %10 = load i64, i64* %ref_count8, align 8, !tbaa !47
  %tobool9 = icmp ne i64 %10, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %11 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %11, i32 0, i32 3
  %12 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next15, align 8, !tbaa !122
  %rc16 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %12, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !64
  %14 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next17 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %14, i32 0, i32 3
  %15 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next17, align 8, !tbaa !122
  %rc18 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %15, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %17 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next19 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %17, i32 0, i32 3
  %18 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next19, align 8, !tbaa !122
  %19 = bitcast %struct.gx_cpath_path_list_s* %18 to i8*
  %20 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %16, i8* %19, i8* %20) #4
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %21 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %21, i32 0, i32 3
  store %struct.gx_cpath_path_list_s* null, %struct.gx_cpath_path_list_s** %next22, align 8, !tbaa !122
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.23

do.body.23:                                       ; preds = %if.else
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %if.end

if.end:                                           ; preds = %do.end.25, %do.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %do.body
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %22 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %path, i8* %23) #4
  %24 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %path29 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %24, i32 0, i32 0
  %memory30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path29, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !139
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %27 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %path31 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %27, i32 0, i32 0
  %memory32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %path31, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !139
  %29 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %plist, align 8, !tbaa !1
  %30 = bitcast %struct.gx_cpath_path_list_s* %29 to i8*
  %31 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %28, i8* %30, i8* %31) #4
  %32 = bitcast %struct.gx_cpath_path_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

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
!9 = !{!10, !2, i64 272}
!10 = !{!"gx_clip_path_s", !11, i64 0, !18, i64 128, !6, i64 232, !16, i64 236, !16, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !14, i64 296}
!11 = !{!"gx_path_s", !12, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !16, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !17, i64 112, !2, i64 120}
!12 = !{!"gx_path_segments_s", !13, i64 0, !15, i64 24}
!13 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"long", !3, i64 0}
!15 = !{!"psc_", !2, i64 0, !2, i64 8}
!16 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 8}
!17 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_clip_rect_list_s", !13, i64 0, !19, i64 24}
!19 = !{!"gx_clip_list_s", !20, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!20 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!21 = !{!22, !2, i64 0}
!22 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!23 = !{!10, !2, i64 288}
!24 = !{!25, !2, i64 0}
!25 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!8, !2, i64 40}
!27 = !{!28, !2, i64 1816}
!28 = !{!"gx_device_clip_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !29, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144, !2, i64 1728, !19, i64 1736, !2, i64 1816, !38, i64 1824, !16, i64 1832, !6, i64 1848}
!29 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !30, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!30 = !{!"short", !3, i64 0}
!31 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !35, i64 16, !6, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!39 = !{!10, !2, i64 56}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !42, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 84, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 1, !42, i64 97, i64 1, !42, i64 98, i64 1, !42, i64 99, i64 1, !42, i64 100, i64 1, !42, i64 104, i64 4, !5, i64 108, i64 4, !5, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 8, !1, i64 128, i64 8, !41, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 4, !5, i64 172, i64 4, !5, i64 176, i64 4, !5, i64 180, i64 4, !5, i64 184, i64 1, !42, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 4, !5, i64 220, i64 4, !5, i64 224, i64 4, !5, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 4, !5, i64 244, i64 4, !5, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 260, i64 4, !5, i64 264, i64 4, !5, i64 272, i64 8, !1, i64 280, i64 4, !5, i64 288, i64 8, !1, i64 296, i64 8, !41}
!41 = !{!14, !14, i64 0}
!42 = !{!3, !3, i64 0}
!43 = !{!10, !2, i64 40}
!44 = !{!10, !3, i64 48}
!45 = !{!12, !14, i64 0}
!46 = !{!18, !14, i64 0}
!47 = !{!48, !14, i64 128}
!48 = !{!"gx_cpath_path_list_s", !11, i64 0, !13, i64 128, !6, i64 152, !2, i64 160}
!49 = !{!50, !2, i64 24}
!50 = !{!"gs_memory_s", !2, i64 0, !51, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!51 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!52 = !{!50, !2, i64 72}
!53 = !{!18, !2, i64 8}
!54 = !{!18, !2, i64 16}
!55 = !{!16, !6, i64 12}
!56 = !{!16, !6, i64 8}
!57 = !{!16, !6, i64 4}
!58 = !{!16, !6, i64 0}
!59 = !{i64 0, i64 8, !41, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !42, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 84, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 1, !42, i64 97, i64 1, !42, i64 98, i64 1, !42, i64 99, i64 1, !42, i64 100, i64 1, !42, i64 104, i64 4, !5, i64 108, i64 4, !5, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 8, !1}
!60 = !{!10, !6, i64 232}
!61 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!62 = !{!10, !6, i64 280}
!63 = !{!10, !14, i64 296}
!64 = !{!48, !2, i64 144}
!65 = !{!48, !2, i64 136}
!66 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 1, !42, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !5, i64 68, i64 4, !5, i64 72, i64 4, !5}
!67 = !{!17, !6, i64 0}
!68 = !{!17, !6, i64 4}
!69 = !{!70, !6, i64 64}
!70 = !{!"gs_cpath_enum_s", !71, i64 0, !6, i64 64, !2, i64 72, !2, i64 80, !3, i64 88, !3, i64 92, !6, i64 96, !38, i64 100, !6, i64 108}
!71 = !{!"gs_path_enum_s", !2, i64 0, !72, i64 8, !2, i64 32, !2, i64 40, !2, i64 48, !6, i64 56, !3, i64 60}
!72 = !{!"gs_matrix_s", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20}
!73 = !{!"float", !3, i64 0}
!74 = !{!70, !2, i64 72}
!75 = !{!70, !2, i64 80}
!76 = !{!70, !3, i64 88}
!77 = !{!19, !6, i64 72}
!78 = !{!19, !2, i64 40}
!79 = !{!20, !6, i64 24}
!80 = !{!20, !6, i64 28}
!81 = !{!20, !6, i64 16}
!82 = !{!20, !6, i64 20}
!83 = !{!20, !3, i64 32}
!84 = !{!20, !2, i64 0}
!85 = !{!70, !6, i64 108}
!86 = !{!70, !3, i64 92}
!87 = !{!70, !6, i64 96}
!88 = !{!70, !6, i64 100}
!89 = !{!70, !6, i64 104}
!90 = !{!20, !2, i64 8}
!91 = !{!10, !6, i64 236}
!92 = !{!10, !6, i64 244}
!93 = !{!10, !6, i64 240}
!94 = !{!10, !6, i64 248}
!95 = !{!10, !6, i64 72}
!96 = !{!10, !6, i64 252}
!97 = !{!10, !6, i64 76}
!98 = !{!10, !6, i64 256}
!99 = !{!10, !6, i64 80}
!100 = !{!10, !6, i64 260}
!101 = !{!10, !6, i64 84}
!102 = !{!10, !6, i64 264}
!103 = !{!11, !6, i64 108}
!104 = !{!105, !2, i64 8}
!105 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !106, i64 24, !6, i64 128, !108, i64 132, !6, i64 168, !109, i64 176, !109, i64 192, !6, i64 208, !6, i64 212, !30, i64 216, !3, i64 220, !111, i64 224, !111, i64 228, !112, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !73, i64 296, !17, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !73, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !113, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !114, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !114, i64 1336}
!106 = !{!"gx_line_params_s", !73, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !73, i64 24, !73, i64 28, !73, i64 32, !6, i64 36, !72, i64 40, !107, i64 64}
!107 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !73, i64 12, !6, i64 16, !73, i64 20, !6, i64 24, !6, i64 28, !73, i64 32}
!108 = !{!"gs_matrix_fixed_s", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!109 = !{!"gs_point_s", !110, i64 0, !110, i64 8}
!110 = !{!"double", !3, i64 0}
!111 = !{!"gs_transparency_source_s", !73, i64 0}
!112 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!113 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!114 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!115 = !{!105, !73, i64 296}
!116 = !{!105, !6, i64 312}
!117 = !{!11, !2, i64 56}
!118 = !{!12, !2, i64 24}
!119 = !{!105, !73, i64 148}
!120 = !{!105, !73, i64 152}
!121 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!122 = !{!48, !2, i64 160}
!123 = !{!48, !6, i64 152}
!124 = !{!19, !2, i64 48}
!125 = !{!19, !6, i64 64}
!126 = !{!19, !6, i64 68}
!127 = !{!128, !6, i64 8}
!128 = !{!"gs_int_rect_s", !38, i64 0, !38, i64 8}
!129 = !{!128, !6, i64 0}
!130 = !{!128, !6, i64 12}
!131 = !{!128, !6, i64 4}
!132 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 1, !42}
!133 = !{!18, !2, i64 64}
!134 = !{!18, !6, i64 96}
!135 = !{!19, !6, i64 24}
!136 = !{!19, !6, i64 16}
!137 = !{!19, !6, i64 28}
!138 = !{!19, !6, i64 20}
!139 = !{!48, !2, i64 40}
