; ModuleID = './gdevpdfd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psdf_set_color_commands_s = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, {}*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, {}*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
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
%struct.gx_device_halftone_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_dir_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.pdf_page_dsc_info_s = type { i32, i32, %struct.gs_rect_s }
%struct.pdf_temp_file_s = type { [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, %struct.stream_s* }
%struct.pdf_text_data_s = type { %struct.pdf_outline_fonts_s*, %struct.pdf_bitmap_fonts_s*, %struct.pdf_text_state_s* }
%struct.pdf_outline_fonts_s = type { %struct.pdf_standard_font_s* }
%struct.pdf_standard_font_s = type { %struct.pdf_font_resource_s*, %struct.gs_matrix_s }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.2 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_cmap_s = type opaque
%union.anon.2 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.5 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.5 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.pdf_bitmap_fonts_s = type opaque
%struct.pdf_text_state_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.gdev_vector_dopath_state_s = type { %struct.gx_device_vector_s*, i32, i32, %struct.gs_matrix_s, %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_cpath_enum_s = type { %struct.gs_path_enum_s, i32, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, %struct.gs_int_point_s, i32 }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }
%struct.pdf_lcvd_s = type { %struct.gx_device_memory_s, %struct.gx_device_memory_s*, %struct.gx_device_pdf_s*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32, i32, i32, i32, i32, %struct.gs_matrix_s, %struct.gs_point_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.pdf_image_writer_s = type { [4 x %struct.psdf_binary_writer_s], i32, %struct.pdf_image_names_s*, %struct.pdf_resource_s*, i32, %struct.cos_stream_s*, i8*, %struct.cos_dict_s*, %struct.pdf_resource_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.pdf_image_names_s = type { %struct.pdf_color_space_names_s, %struct.pdf_filter_names_s, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.gs_pattern2_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern2_template_s, i32 }
%struct.gs_pattern2_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, %struct.gs_shading_s* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }

@psdf_set_fill_color_commands = external constant %struct.psdf_set_color_commands_s, align 8
@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d re f\0A\00", align 1
@pdf_vector_procs = constant %struct.gx_device_vector_procs_s { i32 (%struct.gx_device_vector_s*)* null, i32 (%struct.gx_device_vector_s*, double)* @pdf_setlinewidth, i32 (%struct.gx_device_vector_s*, i32)* @psdf_setlinecap, i32 (%struct.gx_device_vector_s*, i32)* @psdf_setlinejoin, i32 (%struct.gx_device_vector_s*, double)* @psdf_setmiterlimit, i32 (%struct.gx_device_vector_s*, float*, i32, double)* @psdf_setdash, i32 (%struct.gx_device_vector_s*, double)* @psdf_setflat, i32 (%struct.gx_device_vector_s*, i32, i32)* @psdf_setlogop, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pdf_can_handle_hl_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pdf_setfillcolor, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pdf_setstrokecolor, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)* @gdev_vector_dopath, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)* @pdf_dorect, i32 (%struct.gx_device_vector_s*, i32)* @psdf_beginpath, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psdf_moveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psdf_lineto, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)* @psdf_curveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psdf_closepath, i32 (%struct.gx_device_vector_s*, i32)* @pdf_endpath }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"pdf clip path\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%g %g %g %g re\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %s n\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"W*\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s n\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pdf_lcvd_t\00", align 1
@pdf_lcvd_t_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_device_memory, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @pdf_lcvd_t_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_lcvd_t = constant %struct.gs_memory_struct_type_s { i32 2904, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_lcvd_t_reloc_ptrs to i8*) }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"W n\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" cs /R%ld scn \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"pdf_setup_masked_image_converter\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.13 = private unnamed_addr constant [34 x i8] c"pdf_remove_masked_image_converter\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"W* n\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" cm q\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Q Q\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%g i\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"q \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"cm\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"f*\0A\00", align 1
@psdf_set_stroke_color_commands = external constant %struct.psdf_set_color_commands_s, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" Q\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"%g %g %g %g re f\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"gdev_pdf_fill_rectangle_hl_color\00", align 1
@pdf_lcvd_t_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 2792 }, %struct.gc_ptr_element_s { i16 0, i16 2800 }], align 2
@.str.29 = private unnamed_addr constant [5 x i8] c" cm\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Q q\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"%ld %ld m \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"%ld %ld l \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%ld %ld l h\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %x0 = alloca float, align 4
  %y0 = alloca float, align 4
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  %Box = alloca %struct.gs_rect_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 100
  %5 = load i32, i32* %Eps2Write, align 4, !tbaa !9
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.84

if.then:                                          ; preds = %entry
  %6 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %accumulating_charproc = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 212
  %12 = load i32, i32* %accumulating_charproc, align 4, !tbaa !51
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 129
  store %struct.gs_rect_s* %BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv = sitofp i32 %14 to double
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %16 = load float, float* %arrayidx, align 4, !tbaa !52
  %conv3 = fpext float %16 to double
  %div = fdiv double %conv3, 7.200000e+01
  %div4 = fdiv double %conv, %div
  %conv5 = fptrunc double %div4 to float
  store float %conv5, float* %x0, align 4, !tbaa !52
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %conv6 = sitofp i32 %17 to double
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 22
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution7, i32 0, i64 1
  %19 = load float, float* %arrayidx8, align 4, !tbaa !52
  %conv9 = fpext float %19 to double
  %div10 = fdiv double %conv9, 7.200000e+01
  %div11 = fdiv double %conv6, %div10
  %conv12 = fptrunc double %div11 to float
  store float %conv12, float* %y0, align 4, !tbaa !52
  %20 = load float, float* %x0, align 4, !tbaa !52
  %conv13 = fpext float %20 to double
  %21 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv14 = sitofp i32 %21 to double
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 22
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution15, i32 0, i64 0
  %23 = load float, float* %arrayidx16, align 4, !tbaa !52
  %conv17 = fpext float %23 to double
  %div18 = fdiv double %conv17, 7.200000e+01
  %div19 = fdiv double %conv14, %div18
  %add = fadd double %conv13, %div19
  %conv20 = fptrunc double %add to float
  store float %conv20, float* %x1, align 4, !tbaa !52
  %24 = load float, float* %y0, align 4, !tbaa !52
  %conv21 = fpext float %24 to double
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv22 = sitofp i32 %25 to double
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 22
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution23, i32 0, i64 1
  %27 = load float, float* %arrayidx24, align 4, !tbaa !52
  %conv25 = fpext float %27 to double
  %div26 = fdiv double %conv25, 7.200000e+01
  %div27 = fdiv double %conv22, %div26
  %add28 = fadd double %conv21, %div27
  %conv29 = fptrunc double %add28 to float
  store float %conv29, float* %y1, align 4, !tbaa !52
  br label %if.end

if.else:                                          ; preds = %if.then
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 213
  store %struct.gs_rect_s* %charproc_BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %29 = load i32, i32* %x.addr, align 4, !tbaa !5
  %div30 = sdiv i32 %29, 100
  %conv31 = sitofp i32 %div30 to float
  store float %conv31, float* %x0, align 4, !tbaa !52
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %div32 = sdiv i32 %30, 100
  %conv33 = sitofp i32 %div32 to float
  store float %conv33, float* %y0, align 4, !tbaa !52
  %31 = load float, float* %x0, align 4, !tbaa !52
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %div34 = sdiv i32 %32, 100
  %conv35 = sitofp i32 %div34 to float
  %add36 = fadd float %31, %conv35
  store float %add36, float* %x1, align 4, !tbaa !52
  %33 = load float, float* %y0, align 4, !tbaa !52
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %div37 = sdiv i32 %34, 100
  %conv38 = sitofp i32 %div37 to float
  %add39 = fadd float %33, %conv38
  store float %add39, float* %y1, align 4, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %35 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %35, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %36 = load double, double* %x40, align 8, !tbaa !53
  %37 = load float, float* %x0, align 4, !tbaa !52
  %conv41 = fpext float %37 to double
  %cmp = fcmp ogt double %36, %conv41
  br i1 %cmp, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end
  %38 = load float, float* %x0, align 4, !tbaa !52
  %conv44 = fpext float %38 to double
  %39 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %39, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p45, i32 0, i32 0
  store double %conv44, double* %x46, align 8, !tbaa !53
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end
  %40 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %40, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 1
  %41 = load double, double* %y49, align 8, !tbaa !54
  %42 = load float, float* %y0, align 4, !tbaa !52
  %conv50 = fpext float %42 to double
  %cmp51 = fcmp ogt double %41, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.47
  %43 = load float, float* %y0, align 4, !tbaa !52
  %conv54 = fpext float %43 to double
  %44 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %44, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p55, i32 0, i32 1
  store double %conv54, double* %y56, align 8, !tbaa !54
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.47
  %45 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %45, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %46 = load double, double* %x58, align 8, !tbaa !55
  %47 = load float, float* %x1, align 4, !tbaa !52
  %conv59 = fpext float %47 to double
  %cmp60 = fcmp olt double %46, %conv59
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.57
  %48 = load float, float* %x1, align 4, !tbaa !52
  %conv63 = fpext float %48 to double
  %49 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %49, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q64, i32 0, i32 0
  store double %conv63, double* %x65, align 8, !tbaa !55
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.57
  %50 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %50, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q67, i32 0, i32 1
  %51 = load double, double* %y68, align 8, !tbaa !56
  %52 = load float, float* %y1, align 4, !tbaa !52
  %conv69 = fpext float %52 to double
  %cmp70 = fcmp olt double %51, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.76

if.then.72:                                       ; preds = %if.end.66
  %53 = load float, float* %y1, align 4, !tbaa !52
  %conv73 = fpext float %53 to double
  %54 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q74 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %54, i32 0, i32 1
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q74, i32 0, i32 1
  store double %conv73, double* %y75, align 8, !tbaa !56
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %if.end.66
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 128
  %56 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !57
  %tobool77 = icmp ne i32 %56, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.78
  %57 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.84

if.end.84:                                        ; preds = %cleanup.cont, %entry
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %62, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %63, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.84
  %64 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.88:                                        ; preds = %if.end.84
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call89 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %65, %struct.gx_clip_path_s* null) #6
  store i32 %call89, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %66, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.93:                                        ; preds = %if.end.88
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %69 = load i64, i64* %color.addr, align 8, !tbaa !7
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 56
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 54
  %call94 = call i32 @pdf_set_pure_color(%struct.gx_device_pdf_s* %68, i64 %69, %struct.gx_hl_saved_color_s* %saved_fill_color, i32* %fill_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_fill_color_commands) #6
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 104
  %73 = load i32, i32* %HaveStrokeColor, align 4, !tbaa !58
  %tobool95 = icmp ne i32 %73, 0
  br i1 %tobool95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %if.end.93
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 57
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 56
  %76 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color to i8*
  %77 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 632, i32 8, i1 false), !tbaa.struct !59
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.93
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 47
  %79 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %80 = load i32, i32* %x.addr, align 4, !tbaa !5
  %81 = load i32, i32* %y.addr, align 4, !tbaa !5
  %82 = load i32, i32* %w.addr, align 4, !tbaa !5
  %83 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call99 = call i8* @pprintd4(%struct.stream_s* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %80, i32 %81, i32 %82, i32 %83) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.98, %if.then.92, %if.then.87, %cleanup
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %pdev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %new_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  %state = alloca %struct.gdev_vector_dopath_state_s, align 8
  %vs = alloca [3 x %struct.gs_fixed_point_s], align 16
  %pe_op = alloca i32, align 4
  %cenum = alloca %struct.gs_cpath_enum_s, align 8
  %cenum87 = alloca %struct.gs_path_enum_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 47
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  store %struct.stream_s* %3, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = bitcast i64* %new_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 59
  %7 = load i64, i64* %clip_path_id, align 8, !tbaa !63
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 58
  %9 = load i64, i64* %no_clip_path_id, align 8, !tbaa !64
  %cmp1 = icmp eq i64 %7, %9
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end:                                           ; preds = %if.then
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 58
  %11 = load i64, i64* %no_clip_path_id3, align 8, !tbaa !64
  store i64 %11, i64* %new_id, align 8, !tbaa !7
  br label %if.end.26

if.else:                                          ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 59
  %13 = load i64, i64* %clip_path_id4, align 8, !tbaa !63
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 8
  %15 = load i64, i64* %id, align 8, !tbaa !65
  %cmp5 = icmp eq i64 %13, %15
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.7:                                         ; preds = %if.else
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id8 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 8
  %17 = load i64, i64* %id8, align 8, !tbaa !65
  store i64 %17, i64* %new_id, align 8, !tbaa !7
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width, align 4, !tbaa !74
  %shl = shl i32 %20, 8
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height, align 4, !tbaa !75
  %shl9 = shl i32 %22, 8
  %call = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %18, i32 0, i32 0, i32 %shl, i32 %shl9) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 59
  %24 = load i64, i64* %clip_path_id11, align 8, !tbaa !63
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 58
  %26 = load i64, i64* %no_clip_path_id12, align 8, !tbaa !64
  %cmp13 = icmp eq i64 %24, %26
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.15:                                        ; preds = %if.then.10
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 58
  %28 = load i64, i64* %no_clip_path_id16, align 8, !tbaa !64
  store i64 %28, i64* %new_id, align 8, !tbaa !7
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end.7
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call18 = call i32 @pdf_is_same_clip_path(%struct.gx_device_pdf_s* %29, %struct.gx_clip_path_s* %30) #6
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %31, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.21:                                        ; preds = %if.end.17
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %33, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %34 = load i64, i64* %new_id, align 8, !tbaa !7
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 59
  store i64 %34, i64* %clip_path_id24, align 8, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.25:                                        ; preds = %if.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call27 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %36, i32 1) #6
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %37, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.30:                                        ; preds = %if.end.26
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 194
  %40 = load i32, i32* %vgstack_depth, align 4, !tbaa !76
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 195
  %42 = load i32, i32* %vgstack_bottom, align 4, !tbaa !77
  %cmp31 = icmp sgt i32 %40, %42
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.30
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call33 = call i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s* %43, %struct.stream_s* %44) #6
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %45, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.30
  %47 = load i64, i64* %new_id, align 8, !tbaa !7
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 58
  %49 = load i64, i64* %no_clip_path_id38, align 8, !tbaa !64
  %cmp39 = icmp ne i64 %47, %49
  br i1 %cmp39, label %if.then.40, label %if.end.108

if.then.40:                                       ; preds = %if.end.37
  %50 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call41 = call i32 @pdf_save_viewer_state(%struct.gx_device_pdf_s* %51, %struct.stream_s* %52) #6
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %53, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105

if.end.44:                                        ; preds = %if.then.40
  %55 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call45 = call i32 @cpath_is_rectangle(%struct.gx_clip_path_s* %55, %struct.gs_fixed_rect_s* %rect) #6
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.67

if.then.47:                                       ; preds = %if.end.44
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %57 = load i32, i32* %x, align 4, !tbaa !78
  %conv = sitofp i32 %57 to double
  %mul = fmul double %conv, 3.906250e-03
  %p48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p48, i32 0, i32 1
  %58 = load i32, i32* %y, align 4, !tbaa !79
  %conv49 = sitofp i32 %58 to double
  %mul50 = fmul double %conv49, 3.906250e-03
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %59 = load i32, i32* %x51, align 4, !tbaa !80
  %p52 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p52, i32 0, i32 0
  %60 = load i32, i32* %x53, align 4, !tbaa !78
  %sub = sub nsw i32 %59, %60
  %conv54 = sitofp i32 %sub to double
  %mul55 = fmul double %conv54, 3.906250e-03
  %q56 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q56, i32 0, i32 1
  %61 = load i32, i32* %y57, align 4, !tbaa !81
  %p58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 1
  %62 = load i32, i32* %y59, align 4, !tbaa !79
  %sub60 = sub nsw i32 %61, %62
  %conv61 = sitofp i32 %sub60 to double
  %mul62 = fmul double %conv61, 3.906250e-03
  %call63 = call i8* @pprintg4(%struct.stream_s* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), double %mul, double %mul50, double %mul55, double %mul62) #6
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %64 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %64, i32 0, i32 2
  %65 = load i32, i32* %rule, align 4, !tbaa !82
  %cmp64 = icmp sle i32 %65, 0
  %cond = select i1 %cmp64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)
  %call66 = call i8* @pprints1(%struct.stream_s* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %cond) #6
  br label %if.end.104

if.else.67:                                       ; preds = %if.end.44
  %66 = bitcast %struct.gdev_vector_dopath_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 72, i8* %66) #1
  %67 = bitcast [3 x %struct.gs_fixed_point_s]* %vs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %67) #1
  %68 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_pdf_s* %69 to %struct.gx_device_vector_s*
  call void @gdev_vector_dopath_init(%struct.gdev_vector_dopath_state_s* %state, %struct.gx_device_vector_s* %70, i32 1, %struct.gs_matrix_s* null) #6
  %71 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %71, i32 0, i32 7
  %72 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list, align 8, !tbaa !83
  %cmp68 = icmp eq %struct.gx_cpath_path_list_s* %72, null
  br i1 %cmp68, label %if.then.70, label %if.else.86

if.then.70:                                       ; preds = %if.else.67
  %73 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.start(i64 112, i8* %73) #1
  %74 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call71 = call i32 @gx_cpath_enum_init(%struct.gs_cpath_enum_s* %cenum, %struct.gx_clip_path_s* %74) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.70
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call72 = call i32 @gx_cpath_enum_next(%struct.gs_cpath_enum_s* %cenum, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call72, i32* %pe_op, align 4, !tbaa !5
  %cmp73 = icmp sgt i32 %call72, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load i32, i32* %pe_op, align 4, !tbaa !5
  %arraydecay75 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call76 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 %75, %struct.gs_fixed_point_s* %arraydecay75) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %77 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule77 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %77, i32 0, i32 2
  %78 = load i32, i32* %rule77, align 4, !tbaa !82
  %cmp78 = icmp sle i32 %78, 0
  %cond80 = select i1 %cmp78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)
  %call81 = call i8* @pprints1(%struct.stream_s* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %cond80) #6
  %79 = load i32, i32* %pe_op, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %79, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %while.end
  %80 = load i32, i32* %pe_op, align 4, !tbaa !5
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.85, %if.then.84
  %81 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.end(i64 112, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.98

if.else.86:                                       ; preds = %if.else.67
  %82 = bitcast %struct.gs_path_enum_s* %cenum87 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %82) #1
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %84 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_list88 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %84, i32 0, i32 7
  %85 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %path_list88, align 8, !tbaa !83
  %arraydecay89 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call90 = call i32 @pdf_put_clip_path_list_elem(%struct.gx_device_pdf_s* %83, %struct.gx_cpath_path_list_s* %85, %struct.gs_path_enum_s* %cenum87, %struct.gdev_vector_dopath_state_s* %state, %struct.gs_fixed_point_s* %arraydecay89) #6
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %86, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.86
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.94:                                        ; preds = %if.else.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %if.then.93
  %88 = bitcast %struct.gs_path_enum_s* %cenum87 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %88) #1
  %cleanup.dest.96 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.96, label %cleanup.99 [
    i32 0, label %cleanup.cont.97
  ]

cleanup.cont.97:                                  ; preds = %cleanup.95
  br label %if.end.98

if.end.98:                                        ; preds = %cleanup.cont.97, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.99

cleanup.99:                                       ; preds = %if.end.98, %cleanup.95, %cleanup
  %89 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast [3 x %struct.gs_fixed_point_s]* %vs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %90) #1
  %91 = bitcast %struct.gdev_vector_dopath_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 72, i8* %91) #1
  %cleanup.dest.102 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.102, label %cleanup.105 [
    i32 0, label %cleanup.cont.103
  ]

cleanup.cont.103:                                 ; preds = %cleanup.99
  br label %if.end.104

if.end.104:                                       ; preds = %cleanup.cont.103, %if.then.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.105

cleanup.105:                                      ; preds = %if.end.104, %cleanup.99, %if.then.43
  %92 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %92) #1
  %cleanup.dest.106 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.106, label %cleanup.116 [
    i32 0, label %cleanup.cont.107
  ]

cleanup.cont.107:                                 ; preds = %cleanup.105
  br label %if.end.108

if.end.108:                                       ; preds = %cleanup.cont.107, %if.end.37
  %93 = load i64, i64* %new_id, align 8, !tbaa !7
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id109 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 59
  store i64 %93, i64* %clip_path_id109, align 8, !tbaa !63
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id110 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 59
  %97 = load i64, i64* %clip_path_id110, align 8, !tbaa !63
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id111 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 58
  %99 = load i64, i64* %no_clip_path_id111, align 8, !tbaa !64
  %cmp112 = icmp eq i64 %97, %99
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.108
  br label %cond.end

cond.false:                                       ; preds = %if.end.108
  %100 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond114 = phi %struct.gx_clip_path_s* [ null, %cond.true ], [ %100, %cond.false ]
  %call115 = call i32 @pdf_remember_clip_path(%struct.gx_device_pdf_s* %95, %struct.gx_clip_path_s* %cond114) #6
  store i32 %call115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

cleanup.116:                                      ; preds = %cond.end, %cleanup.105, %if.then.35, %if.then.29, %if.then.23, %if.then.20, %if.then.14, %if.then.6, %if.then.2
  %101 = bitcast i64* %new_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = load i32, i32* %retval
  ret i32 %104
}

declare i32 @pdf_set_pure_color(%struct.gx_device_pdf_s*, i64, %struct.gx_hl_saved_color_s*, i32*, %struct.psdf_set_color_commands_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @pprintd4(%struct.stream_s*, i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_setlinewidth(%struct.gx_device_vector_s* %vdev, double %width) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %width.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !84
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %1 = load double, double* %width.addr, align 8, !tbaa !84
  %call = call double @fabs(double %1) #7
  %call1 = call i32 @psdf_setlinewidth(%struct.gx_device_vector_s* %0, double %call) #6
  ret i32 %call1
}

declare i32 @psdf_setlinecap(%struct.gx_device_vector_s*, i32) #2

declare i32 @psdf_setlinejoin(%struct.gx_device_vector_s*, i32) #2

declare i32 @psdf_setmiterlimit(%struct.gx_device_vector_s*, double) #2

declare i32 @psdf_setdash(%struct.gx_device_vector_s*, float*, i32, double) #2

declare i32 @psdf_setflat(%struct.gx_device_vector_s*, double) #2

declare i32 @psdf_setlogop(%struct.gx_device_vector_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_can_handle_hl_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_imager_state_s* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_setfillcolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %hl_color = alloca i32, align 4
  %pis_for_hl_color = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !85
  %can_handle_hl_color = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %5, i32 0, i32 8
  %6 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %can_handle_hl_color, align 8, !tbaa !87
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_vector_s* %7, %struct.gs_imager_state_s* %8, %struct.gx_device_color_s* %9) #6
  store i32 %call, i32* %hl_color, align 4, !tbaa !5
  %10 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %hl_color, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_imager_state_s* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct.gs_imager_state_s* %cond, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 104
  %14 = load i32, i32* %HaveStrokeColor, align 4, !tbaa !58
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.end.4, label %if.then

if.then:                                          ; preds = %cond.end
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 57
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 55
  %call2 = call i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %16, %struct.gs_imager_state_s* %17, %struct.gx_device_color_s* %18, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %stroke_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_stroke_color_commands) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4

if.end.4:                                         ; preds = %cleanup.cont, %cond.end
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 56
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 54
  %call5 = call i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_color_s* %26, %struct.gx_hl_saved_color_s* %saved_fill_color, i32* %fill_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_fill_color_commands) #6
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.4, %cleanup
  %29 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_setstrokecolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %hl_color = alloca i32, align 4
  %pis_for_hl_color = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !85
  %can_handle_hl_color = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %5, i32 0, i32 8
  %6 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %can_handle_hl_color, align 8, !tbaa !87
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_vector_s* %7, %struct.gs_imager_state_s* %8, %struct.gx_device_color_s* %9) #6
  store i32 %call, i32* %hl_color, align 4, !tbaa !5
  %10 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %hl_color, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_imager_state_s* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct.gs_imager_state_s* %cond, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 104
  %14 = load i32, i32* %HaveStrokeColor, align 4, !tbaa !58
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.end.4, label %if.then

if.then:                                          ; preds = %cond.end
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 56
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 54
  %call2 = call i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %16, %struct.gs_imager_state_s* %17, %struct.gx_device_color_s* %18, %struct.gx_hl_saved_color_s* %saved_fill_color, i32* %fill_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_fill_color_commands) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4

if.end.4:                                         ; preds = %cleanup.cont, %cond.end
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 57
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 55
  %call5 = call i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_color_s* %26, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %stroke_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_stroke_color_commands) #6
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.4, %cleanup
  %29 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gdev_vector_dopath(%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  %bottom = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %w = alloca double, align 8
  %xw = alloca double, align 8
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !60
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 8388096, i32* %xmax, align 4, !tbaa !5
  %4 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 8388096, i32* %ymax, align 4, !tbaa !5
  %5 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 102
  %7 = load i32, i32* %ResourcesBeforeUsage, align 4, !tbaa !89
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %bottom, align 4, !tbaa !5
  %8 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 199
  %10 = load i32, i32* %sbstack_depth, align 4, !tbaa !90
  %11 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %xmax, align 4, !tbaa !5
  %sub = sub nsw i32 0, %12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond1, i32* %xmin, align 4, !tbaa !5
  %13 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %sbstack_depth2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 199
  %15 = load i32, i32* %sbstack_depth2, align 4, !tbaa !90
  %16 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %15, %16
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %17 = load i32, i32* %ymax, align 4, !tbaa !5
  %sub5 = sub nsw i32 0, %17
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i32 [ %sub5, %cond.true.4 ], [ 0, %cond.false.6 ]
  store i32 %cond8, i32* %ymin, align 4, !tbaa !5
  %18 = load i32, i32* %type.addr, align 4, !tbaa !60
  %and = and i32 %18, 2
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.7
  %19 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %20, i32 0, i32 51
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %21 = load float, float* %half_width, align 4, !tbaa !91
  %conv = fpext float %21 to double
  store double %conv, double* %w, align 8, !tbaa !84
  %22 = bitcast double* %xw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load double, double* %w, align 8, !tbaa !84
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state10 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 51
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state10, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %25 = load float, float* %xx, align 4, !tbaa !92
  %conv11 = fpext float %25 to double
  %call = call double @fabs(double %conv11) #7
  %26 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 51
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state12, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm13, i32 0, i32 2
  %27 = load float, float* %yx, align 4, !tbaa !93
  %conv14 = fpext float %27 to double
  %call15 = call double @fabs(double %conv14) #7
  %add = fadd double %call, %call15
  %mul = fmul double %23, %add
  store double %mul, double* %xw, align 8, !tbaa !84
  %28 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load double, double* %xw, align 8, !tbaa !84
  %mul16 = fmul double %29, 2.560000e+02
  %conv17 = fptosi double %mul16 to i32
  %conv18 = sext i32 %conv17 to i64
  %add19 = add nsw i64 %conv18, 256
  %conv20 = trunc i64 %add19 to i32
  store i32 %conv20, i32* %d, align 4, !tbaa !5
  %30 = load i32, i32* %d, align 4, !tbaa !5
  %31 = load i32, i32* %xmin, align 4, !tbaa !5
  %sub21 = sub nsw i32 %31, %30
  store i32 %sub21, i32* %xmin, align 4, !tbaa !5
  %32 = load i32, i32* %d, align 4, !tbaa !5
  %33 = load i32, i32* %xmax, align 4, !tbaa !5
  %add22 = add nsw i32 %33, %32
  store i32 %add22, i32* %xmax, align 4, !tbaa !5
  %34 = load i32, i32* %d, align 4, !tbaa !5
  %35 = load i32, i32* %ymin, align 4, !tbaa !5
  %sub23 = sub nsw i32 %35, %34
  store i32 %sub23, i32* %ymin, align 4, !tbaa !5
  %36 = load i32, i32* %d, align 4, !tbaa !5
  %37 = load i32, i32* %ymax, align 4, !tbaa !5
  %add24 = add nsw i32 %37, %36
  store i32 %add24, i32* %ymax, align 4, !tbaa !5
  %38 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast double* %xw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.7
  %41 = load i32, i32* %type.addr, align 4, !tbaa !60
  %and25 = and i32 %41, 4
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %42 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %43 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %42, %43
  br i1 %cmp27, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %44 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %45 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %44, %45
  br i1 %cmp29, label %if.then.43, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false
  %46 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %47 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %46, %47
  br i1 %cmp32, label %if.then.43, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %48 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %49 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %48, %49
  br i1 %cmp35, label %if.then.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %50 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %51 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %50, %51
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %52 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %53 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp41 = icmp sgt i32 %52, %53
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.37, %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %lor.lhs.false.40, %if.end
  %54 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %55 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %54, %55
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %56 = load i32, i32* %xmin, align 4, !tbaa !5
  store i32 %56, i32* %x0.addr, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  %57 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %58 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %57, %58
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %59 = load i32, i32* %xmax, align 4, !tbaa !5
  store i32 %59, i32* %x1.addr, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %60 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %61 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %60, %61
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %62 = load i32, i32* %ymin, align 4, !tbaa !5
  store i32 %62, i32* %y0.addr, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %63 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %64 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp57 = icmp sgt i32 %63, %64
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  %65 = load i32, i32* %ymax, align 4, !tbaa !5
  store i32 %65, i32* %y1.addr, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.56
  %66 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %67 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %68 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %69 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %70 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %71 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call61 = call i32 @psdf_dorect(%struct.gx_device_vector_s* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71) #6
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.43
  %72 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare i32 @psdf_beginpath(%struct.gx_device_vector_s*, i32) #2

declare i32 @psdf_moveto(%struct.gx_device_vector_s*, double, double, double, double, i32) #2

declare i32 @psdf_lineto(%struct.gx_device_vector_s*, double, double, double, double, i32) #2

declare i32 @psdf_curveto(%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32) #2

declare i32 @psdf_closepath(%struct.gx_device_vector_s*, double, double, double, double, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_endpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !60
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_remember_clip_path(%struct.gx_device_pdf_s* %pdev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 187
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8, !tbaa !94
  %cmp = icmp ne %struct.gx_path_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 187
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path1, align 8, !tbaa !94
  call void @gx_path_free(%struct.gx_path_s* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_clip_path_s* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 187
  store %struct.gx_path_s* null, %struct.gx_path_s** %clip_path4, align 8, !tbaa !94
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 43
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !95
  %call = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #6
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 187
  store %struct.gx_path_s* %call, %struct.gx_path_s** %clip_path6, align 8, !tbaa !94
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 187
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path7, align 8, !tbaa !94
  %cmp8 = icmp eq %struct.gx_path_s* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 -25, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 187
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path11, align 8, !tbaa !94
  %call12 = call i32 @gx_cpath_to_path(%struct.gx_clip_path_s* %11, %struct.gx_path_s* %13) #6
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.3
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s*, %struct.gs_memory_s*, i8*) #2

declare i32 @gx_cpath_to_path(%struct.gx_clip_path_s*, %struct.gx_path_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %pdev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 59
  %2 = load i64, i64* %clip_path_id, align 8, !tbaa !63
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 58
  %4 = load i64, i64* %no_clip_path_id, align 8, !tbaa !64
  %cmp1 = icmp eq i64 %2, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.21

if.else:                                          ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 59
  %6 = load i64, i64* %clip_path_id3, align 8, !tbaa !63
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 8
  %8 = load i64, i64* %id, align 8, !tbaa !65
  %cmp4 = icmp eq i64 %6, %8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.else
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !74
  %shl = shl i32 %11, 8
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height, align 4, !tbaa !75
  %shl7 = shl i32 %13, 8
  %call = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %9, i32 0, i32 0, i32 %shl, i32 %shl7) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 59
  %15 = load i64, i64* %clip_path_id9, align 8, !tbaa !63
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 58
  %17 = load i64, i64* %no_clip_path_id10, align 8, !tbaa !64
  %cmp11 = icmp eq i64 %15, %17
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %19 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call15 = call i32 @pdf_is_same_clip_path(%struct.gx_device_pdf_s* %18, %struct.gx_clip_path_s* %19) #6
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id18 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %20, i32 0, i32 8
  %21 = load i64, i64* %id18, align 8, !tbaa !65
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 59
  store i64 %21, i64* %clip_path_id19, align 8, !tbaa !63
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.17, %if.then.12, %if.then.5, %if.then.2
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_is_same_clip_path(%struct.gx_device_pdf_s* %pdev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cenum = alloca %struct.gs_cpath_enum_s, align 8
  %penum = alloca %struct.gs_path_enum_s, align 8
  %vs0 = alloca [3 x %struct.gs_fixed_point_s], align 16
  %vs1 = alloca [3 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  %pe_op = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.start(i64 112, i8* %0) #1
  %1 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [3 x %struct.gs_fixed_point_s]* %vs0 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast [3 x %struct.gs_fixed_point_s]* %vs1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 187
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8, !tbaa !94
  %cmp = icmp ne %struct.gx_path_s* %7, null
  %conv = zext i1 %cmp to i32
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_clip_path_s* %8, null
  %conv2 = zext i1 %cmp1 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 187
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path5, align 8, !tbaa !94
  %cmp6 = icmp eq %struct.gx_path_s* %10, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 187
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path10, align 8, !tbaa !94
  %call = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %penum, %struct.gx_path_s* %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_cpath_enum_init(%struct.gs_cpath_enum_s* %cenum, %struct.gx_clip_path_s* %15) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %16, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.19
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i32 0
  %call20 = call i32 @gx_cpath_enum_next(%struct.gs_cpath_enum_s* %cenum, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay23 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i32 0
  %call24 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_fixed_point_s* %arraydecay23) #6
  store i32 %call24, i32* %pe_op, align 4, !tbaa !5
  %18 = load i32, i32* %pe_op, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %18, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body
  %19 = load i32, i32* %pe_op, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %while.body
  %20 = load i32, i32* %pe_op, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp ne i32 %20, %21
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %22 = load i32, i32* %pe_op, align 4, !tbaa !5
  switch i32 %22, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.58
    i32 2, label %sw.bb.58
    i32 5, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end.32
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %23 = load i32, i32* %x, align 4, !tbaa !96
  %arrayidx33 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 1
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx33, i32 0, i32 0
  %24 = load i32, i32* %x34, align 4, !tbaa !96
  %cmp35 = icmp ne i32 %23, %24
  br i1 %cmp35, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %arrayidx37 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx37, i32 0, i32 1
  %25 = load i32, i32* %y, align 4, !tbaa !97
  %arrayidx38 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 1
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx38, i32 0, i32 1
  %26 = load i32, i32* %y39, align 4, !tbaa !97
  %cmp40 = icmp ne i32 %25, %26
  br i1 %cmp40, label %if.then.56, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %arrayidx43 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 2
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx43, i32 0, i32 0
  %27 = load i32, i32* %x44, align 4, !tbaa !96
  %arrayidx45 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 2
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx45, i32 0, i32 0
  %28 = load i32, i32* %x46, align 4, !tbaa !96
  %cmp47 = icmp ne i32 %27, %28
  br i1 %cmp47, label %if.then.56, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.42
  %arrayidx50 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 2
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx50, i32 0, i32 1
  %29 = load i32, i32* %y51, align 4, !tbaa !97
  %arrayidx52 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 2
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx52, i32 0, i32 1
  %30 = load i32, i32* %y53, align 4, !tbaa !97
  %cmp54 = icmp ne i32 %29, %30
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.42, %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %lor.lhs.false.49
  br label %sw.bb.58

sw.bb.58:                                         ; preds = %if.end.32, %if.end.32, %if.end.32, %if.end.57
  %arrayidx59 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 0
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx59, i32 0, i32 0
  %31 = load i32, i32* %x60, align 4, !tbaa !96
  %arrayidx61 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 0
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx61, i32 0, i32 0
  %32 = load i32, i32* %x62, align 4, !tbaa !96
  %cmp63 = icmp ne i32 %31, %32
  br i1 %cmp63, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %sw.bb.58
  %arrayidx66 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs0, i32 0, i64 0
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx66, i32 0, i32 1
  %33 = load i32, i32* %y67, align 4, !tbaa !97
  %arrayidx68 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i64 0
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx68, i32 0, i32 1
  %34 = load i32, i32* %y69, align 4, !tbaa !97
  %cmp70 = icmp ne i32 %33, %34
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.65, %sw.bb.58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %lor.lhs.false.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.73, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %35, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.end
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %while.end
  %arraydecay78 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs1, i32 0, i32 0
  %call79 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_fixed_point_s* %arraydecay78) #6
  store i32 %call79, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %37, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.77
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.77
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %39, 0
  %conv85 = zext i1 %cmp84 to i32
  store i32 %conv85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.82, %if.then.76, %if.then.72, %if.then.56, %if.then.31, %if.then.27, %if.then.18, %if.then.13, %if.then.8, %if.then
  %40 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast [3 x %struct.gs_fixed_point_s]* %vs1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %42) #1
  %43 = bitcast [3 x %struct.gs_fixed_point_s]* %vs0 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %43) #1
  %44 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %44) #1
  %45 = bitcast %struct.gs_cpath_enum_s* %cenum to i8*
  call void @llvm.lifetime.end(i64 112, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #2

declare i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s*, %struct.stream_s*) #2

declare i32 @pdf_save_viewer_state(%struct.gx_device_pdf_s*, %struct.stream_s*) #2

declare i32 @cpath_is_rectangle(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare void @gdev_vector_dopath_init(%struct.gdev_vector_dopath_state_s*, %struct.gx_device_vector_s*, i32, %struct.gs_matrix_s*) #2

declare i32 @gx_cpath_enum_init(%struct.gs_cpath_enum_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_cpath_enum_next(%struct.gs_cpath_enum_s*, %struct.gs_fixed_point_s*) #2

declare i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s*, i32, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_clip_path_list_elem(%struct.gx_device_pdf_s* %pdev, %struct.gx_cpath_path_list_s* %e, %struct.gs_path_enum_s* %cenum, %struct.gdev_vector_dopath_state_s* %state, %struct.gs_fixed_point_s* %vs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %e.addr = alloca %struct.gx_cpath_path_list_s*, align 8
  %cenum.addr = alloca %struct.gs_path_enum_s*, align 8
  %state.addr = alloca %struct.gdev_vector_dopath_state_s*, align 8
  %vs.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pe_op = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_cpath_path_list_s* %e, %struct.gx_cpath_path_list_s** %e.addr, align 8, !tbaa !1
  store %struct.gs_path_enum_s* %cenum, %struct.gs_path_enum_s** %cenum.addr, align 8, !tbaa !1
  store %struct.gdev_vector_dopath_state_s* %state, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %vs, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %e.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %1, i32 0, i32 3
  %2 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next, align 8, !tbaa !98
  %cmp = icmp ne %struct.gx_cpath_path_list_s* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %e.addr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %5, i32 0, i32 3
  %6 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %next1, align 8, !tbaa !98
  %7 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %cenum.addr, align 8, !tbaa !1
  %8 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %call = call i32 @pdf_put_clip_path_list_elem(%struct.gx_device_pdf_s* %4, %struct.gx_cpath_path_list_s* %6, %struct.gs_path_enum_s* %7, %struct.gdev_vector_dopath_state_s* %8, %struct.gs_fixed_point_s* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4

if.end.4:                                         ; preds = %cleanup.cont, %entry
  %13 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %cenum.addr, align 8, !tbaa !1
  %14 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %e.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %14, i32 0, i32 0
  %call5 = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %13, %struct.gx_path_s* %path) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %15 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %cenum.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %15, %struct.gs_fixed_point_s* %16) #6
  store i32 %call6, i32* %pe_op, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %18 = load i32, i32* %pe_op, align 4, !tbaa !5
  %19 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %call8 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %17, i32 %18, %struct.gs_fixed_point_s* %19) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 47
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %22 = load %struct.gx_cpath_path_list_s*, %struct.gx_cpath_path_list_s** %e.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_cpath_path_list_s, %struct.gx_cpath_path_list_s* %22, i32 0, i32 2
  %23 = load i32, i32* %rule, align 4, !tbaa !100
  %cmp9 = icmp sle i32 %23, 0
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)
  %call10 = call i8* @pprints1(%struct.stream_s* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %cond) #6
  %24 = load i32, i32* %pe_op, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %24, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end
  %25 = load i32, i32* %pe_op, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

if.end.13:                                        ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

cleanup.14:                                       ; preds = %if.end.13, %if.then.12, %cleanup
  %26 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_lcvd_s* %cvd) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cvd.addr = alloca %struct.pdf_lcvd_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.gs_imager_state_s, align 8
  %inst = alloca %struct.gs_pattern1_instance_s, align 8
  %id = alloca i64, align 8
  %v = alloca %struct.cos_value_s, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_lcvd_s* %cvd, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %path_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %1, i32 0, i32 8
  %2 = load i32, i32* %path_is_empty, align 4, !tbaa !101
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %has_background = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %3, i32 0, i32 11
  %4 = load i32, i32* %has_background, align 4, !tbaa !110
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %has_background2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %5, i32 0, i32 11
  %6 = load i32, i32* %has_background2, align 4, !tbaa !110
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 47
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call = call i32 @stream_puts(%struct.stream_s* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %10, i32 0, i32 0
  %11 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %write_matrix = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %11, i32 0, i32 10
  %12 = load i32, i32* %write_matrix, align 4, !tbaa !111
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %13, i32 0, i32 12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix_s* [ %m, %cond.true ], [ null, %cond.false ]
  %call6 = call i32 @write_image(%struct.gx_device_pdf_s* %9, %struct.gx_device_memory_s* %mdev, %struct.gs_matrix_s* %cond) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %14 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %path_is_empty7 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %14, i32 0, i32 8
  store i32 1, i32* %path_is_empty7, align 4, !tbaa !101
  br label %if.end.120

if.else:                                          ; preds = %lor.lhs.false
  %15 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %15, i32 0, i32 7
  %16 = load i32, i32* %mask_is_empty, align 4, !tbaa !112
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.else.106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 107
  %18 = load i32, i32* %PatternImagemask, align 4, !tbaa !113
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then.10, label %if.else.106

if.then.10:                                       ; preds = %land.lhs.true
  %19 = bitcast %struct.gs_imager_state_s* %s to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %19) #1
  %20 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.start(i64 248, i8* %20) #1
  %21 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev11 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %22, i32 0, i32 0
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev11, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !114
  %call12 = call i64 @gs_next_ids(%struct.gs_memory_s* %23, i32 1) #6
  store i64 %call12, i64* %id, align 8, !tbaa !7
  %24 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %24) #1
  %25 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_imager_state_s* %s to i8*
  %call13 = call i8* @memset(i8* %26, i32 0, i64 1616) #8
  %27 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m14 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %27, i32 0, i32 12
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m14, i32 0, i32 0
  %28 = load float, float* %xx, align 4, !tbaa !115
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %xx15 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  store float %28, float* %xx15, align 4, !tbaa !116
  %29 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m16 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %29, i32 0, i32 12
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m16, i32 0, i32 1
  %30 = load float, float* %xy, align 4, !tbaa !117
  %ctm17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %xy18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 1
  store float %30, float* %xy18, align 4, !tbaa !118
  %31 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m19 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %31, i32 0, i32 12
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m19, i32 0, i32 2
  %32 = load float, float* %yx, align 4, !tbaa !119
  %ctm20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %yx21 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm20, i32 0, i32 2
  store float %32, float* %yx21, align 4, !tbaa !120
  %33 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m22 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %33, i32 0, i32 12
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m22, i32 0, i32 3
  %34 = load float, float* %yy, align 4, !tbaa !121
  %ctm23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %yy24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 3
  store float %34, float* %yy24, align 4, !tbaa !122
  %35 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m25 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %35, i32 0, i32 12
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m25, i32 0, i32 4
  %36 = load float, float* %tx, align 4, !tbaa !123
  %ctm26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %tx27 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm26, i32 0, i32 4
  store float %36, float* %tx27, align 4, !tbaa !124
  %37 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m28 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %37, i32 0, i32 12
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m28, i32 0, i32 5
  %38 = load float, float* %ty, align 4, !tbaa !125
  %ctm29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %ty30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 5
  store float %38, float* %ty30, align 4, !tbaa !126
  %39 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %call31 = call i8* @memset(i8* %39, i32 0, i64 248) #8
  %40 = bitcast %struct.gs_imager_state_s* %s to %struct.gs_state_s*
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 2
  store %struct.gs_state_s* %40, %struct.gs_state_s** %saved, align 8, !tbaa !127
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  store i32 1, i32* %PaintType, align 4, !tbaa !131
  %templat32 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat32, i32 0, i32 5
  store i32 1, i32* %TilingType, align 4, !tbaa !132
  %templat33 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat33, i32 0, i32 7
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !133
  %templat34 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox35 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat34, i32 0, i32 7
  %p36 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox35, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p36, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !134
  %41 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev37 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %41, i32 0, i32 0
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev37, i32 0, i32 13
  %42 = load i32, i32* %width, align 4, !tbaa !135
  %conv = sitofp i32 %42 to double
  %templat38 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox39 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat38, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox39, i32 0, i32 1
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv, double* %x40, align 8, !tbaa !136
  %43 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev41 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %43, i32 0, i32 0
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev41, i32 0, i32 14
  %44 = load i32, i32* %height, align 4, !tbaa !137
  %conv42 = sitofp i32 %44 to double
  %templat43 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox44 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat43, i32 0, i32 7
  %q45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox44, i32 0, i32 1
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q45, i32 0, i32 1
  store double %conv42, double* %y46, align 8, !tbaa !138
  %45 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev47 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %45, i32 0, i32 0
  %width48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev47, i32 0, i32 13
  %46 = load i32, i32* %width48, align 4, !tbaa !135
  %conv49 = sitofp i32 %46 to float
  %templat50 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat50, i32 0, i32 8
  store float %conv49, float* %XStep, align 4, !tbaa !139
  %47 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev51 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %47, i32 0, i32 0
  %height52 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev51, i32 0, i32 14
  %48 = load i32, i32* %height52, align 4, !tbaa !137
  %conv53 = sitofp i32 %48 to float
  %templat54 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat54, i32 0, i32 9
  store float %conv53, float* %YStep, align 4, !tbaa !140
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %50 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !141
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_pdf_s* %51 to %struct.gx_device_s*
  %53 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %54 = load i64, i64* %id, align 8, !tbaa !7
  %conv55 = trunc i64 %54 to i32
  %call56 = call i32 %50(%struct.gx_device_s* %52, i32 1, i8* %53, i32 %conv55) #6
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %55, 0
  br i1 %cmp, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.then.10
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm59 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 47
  %57 = load %struct.stream_s*, %struct.stream_s** %strm59, align 8, !tbaa !62
  %call60 = call i32 @stream_puts(%struct.stream_s* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %59 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev61 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %59, i32 0, i32 0
  %call62 = call i32 @write_image(%struct.gx_device_pdf_s* %58, %struct.gx_device_memory_s* %mdev61, %struct.gs_matrix_s* null) #6
  store i32 %call62, i32* %code, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.then.10
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 210
  %61 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !142
  store %struct.pdf_resource_s* %61, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp sge i32 %62, 0
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end.63
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 42
  %dev_spec_op68 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs67, i32 0, i32 65
  %64 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op68, align 8, !tbaa !141
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gx_device_pdf_s* %65 to %struct.gx_device_s*
  %67 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %68 = load i64, i64* %id, align 8, !tbaa !7
  %conv69 = trunc i64 %68 to i32
  %call70 = call i32 %64(%struct.gx_device_s* %66, i32 2, i8* %67, i32 %conv69) #6
  store i32 %call70, i32* %code, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end.63
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp72 = icmp sge i32 %69, 0
  br i1 %cmp72, label %if.then.74, label %if.end.79

if.then.74:                                       ; preds = %if.end.71
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 42
  %dev_spec_op76 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs75, i32 0, i32 65
  %71 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op76, align 8, !tbaa !141
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %73 = bitcast %struct.gx_device_pdf_s* %72 to %struct.gx_device_s*
  %74 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %75 = load i64, i64* %id, align 8, !tbaa !7
  %conv77 = trunc i64 %75 to i32
  %call78 = call i32 %71(%struct.gx_device_s* %73, i32 3, i8* %74, i32 %conv77) #6
  store i32 %call78, i32* %code, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.74, %if.end.71
  %76 = load i32, i32* %code, align 4, !tbaa !5
  %cmp80 = icmp sge i32 %76, 0
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.79
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call83 = call i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %77, %struct.cos_value_s* %v) #6
  store i32 %call83, i32* %code, align 4, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.79
  %78 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp sge i32 %78, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %if.end.84
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call88 = call i32 @cos_value_write(%struct.cos_value_s* %v, %struct.gx_device_pdf_s* %79) #6
  %80 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm89 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %80, i32 0, i32 47
  %81 = load %struct.stream_s*, %struct.stream_s** %strm89, align 8, !tbaa !62
  %82 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call90 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %82) #6
  %call91 = call i8* @pprintld1(%struct.stream_s* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i64 %call90) #6
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %if.end.84
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %cmp93 = icmp sge i32 %83, 0
  br i1 %cmp93, label %if.then.95, label %if.end.104

if.then.95:                                       ; preds = %if.end.92
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %85 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %85, i32 0, i32 1
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !143
  %87 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %write_matrix96 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %87, i32 0, i32 10
  %88 = load i32, i32* %write_matrix96, align 4, !tbaa !111
  %tobool97 = icmp ne i32 %88, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.100

cond.true.98:                                     ; preds = %if.then.95
  %89 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m99 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %89, i32 0, i32 12
  br label %cond.end.101

cond.false.100:                                   ; preds = %if.then.95
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.98
  %cond102 = phi %struct.gs_matrix_s* [ %m99, %cond.true.98 ], [ null, %cond.false.100 ]
  %call103 = call i32 @write_mask(%struct.gx_device_pdf_s* %84, %struct.gx_device_memory_s* %86, %struct.gs_matrix_s* %cond102) #6
  store i32 %call103, i32* %code, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.101, %if.end.92
  %90 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask_is_empty105 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %90, i32 0, i32 7
  store i32 1, i32* %mask_is_empty105, align 4, !tbaa !112
  %91 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %92) #1
  %93 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.end(i64 248, i8* %94) #1
  %95 = bitcast %struct.gs_imager_state_s* %s to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %95) #1
  br label %if.end.119

if.else.106:                                      ; preds = %land.lhs.true, %if.else
  %96 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask_is_empty107 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %96, i32 0, i32 7
  %97 = load i32, i32* %mask_is_empty107, align 4, !tbaa !112
  %tobool108 = icmp ne i32 %97, 0
  br i1 %tobool108, label %if.end.118, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %if.else.106
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask110 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 107
  %99 = load i32, i32* %PatternImagemask110, align 4, !tbaa !113
  %tobool111 = icmp ne i32 %99, 0
  br i1 %tobool111, label %if.end.118, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.109
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm113 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 47
  %101 = load %struct.stream_s*, %struct.stream_s** %strm113, align 8, !tbaa !62
  %call114 = call i32 @stream_puts(%struct.stream_s* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #6
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %103 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %call115 = call i32 @write_image_with_clip(%struct.gx_device_pdf_s* %102, %struct.pdf_lcvd_s* %103) #6
  store i32 %call115, i32* %code, align 4, !tbaa !5
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm116 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %104, i32 0, i32 47
  %105 = load %struct.stream_s*, %struct.stream_s** %strm116, align 8, !tbaa !62
  %call117 = call i32 @stream_puts(%struct.stream_s* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.112, %land.lhs.true.109, %if.else.106
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.104
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %cond.end
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp sgt i32 %106, 0
  br i1 %cmp121, label %if.then.123, label %if.end.133

if.then.123:                                      ; preds = %if.end.120
  %107 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev124 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %107, i32 0, i32 0
  %procs125 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev124, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs125, i32 0, i32 7
  %fill_rectangle126 = bitcast {}** %fill_rectangle to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %108 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle126, align 8, !tbaa !144
  %109 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev127 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %109, i32 0, i32 0
  %110 = bitcast %struct.gx_device_memory_s* %mdev127 to %struct.gx_device_s*
  %111 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev128 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %111, i32 0, i32 0
  %width129 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev128, i32 0, i32 13
  %112 = load i32, i32* %width129, align 4, !tbaa !135
  %113 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev130 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %113, i32 0, i32 0
  %height131 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev130, i32 0, i32 14
  %114 = load i32, i32* %height131, align 4, !tbaa !137
  %call132 = call i32 %108(%struct.gx_device_s* %110, i32 0, i32 0, i32 %112, i32 %114, i64 0) #6
  store i32 %call132, i32* %code, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.123, %if.end.120
  %115 = load i32, i32* %code, align 4, !tbaa !5
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  ret i32 %115
}

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_image(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_memory_s* %mdev, %struct.gs_matrix_s* %m) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %sourcex = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %0) #1
  %1 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1) #1
  %2 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %sourcex, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_matrix_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %5, i8* null, %struct.gs_matrix_s* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 45
  %9 = load i8*, i8** %base, align 8, !tbaa !145
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 44
  %11 = load i32, i32* %raster, align 4, !tbaa !146
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !147
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height, align 4, !tbaa !148
  %call = call i32 @pdf_copy_color_data(%struct.gx_device_pdf_s* %7, i8* %9, i32 0, i32 %11, i64 0, i32 0, i32 0, i32 %13, i32 %15, %struct.gs_image1_s* %image, %struct.pdf_image_writer_s* %writer, i32 2) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %16, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %17, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.else
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !149
  %call5 = call i32 @pdf_do_image(%struct.gx_device_pdf_s* %18, %struct.pdf_resource_s* %19, %struct.gs_matrix_s* null, i32 1) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.2
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %23) #1
  %24 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %24) #1
  ret i32 %20
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

declare i32 @cos_value_write(%struct.cos_value_s*, %struct.gx_device_pdf_s*) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_mask(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_memory_s* %mdev, %struct.gs_matrix_s* %m) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %sourcex = alloca i32, align 4
  %save_clip_id = alloca i64, align 8
  %save_skip_color = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %sourcex, align 4, !tbaa !5
  %1 = bitcast i64* %save_clip_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 59
  %3 = load i64, i64* %clip_path_id, align 8, !tbaa !63
  store i64 %3, i64* %save_clip_id, align 8, !tbaa !7
  %4 = bitcast i32* %save_skip_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 207
  %6 = load i32, i32* %skip_colors, align 4, !tbaa !151
  store i32 %6, i32* %save_skip_color, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_matrix_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %9, i8* null, %struct.gs_matrix_s* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 58
  %12 = load i64, i64* %no_clip_path_id, align 8, !tbaa !64
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 59
  store i64 %12, i64* %clip_path_id1, align 8, !tbaa !63
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 207
  store i32 1, i32* %skip_colors2, align 4, !tbaa !151
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_pdf_s* %15 to %struct.gx_device_s*
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 45
  %18 = load i8*, i8** %base, align 8, !tbaa !145
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 44
  %20 = load i32, i32* %raster, align 4, !tbaa !146
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width, align 4, !tbaa !147
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 14
  %24 = load i32, i32* %height, align 4, !tbaa !148
  %call = call i32 @gdev_pdf_copy_mono(%struct.gx_device_s* %16, i8* %18, i32 0, i32 %20, i64 0, i32 0, i32 0, i32 %22, i32 %24, i64 -1, i64 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %25 = load i64, i64* %save_clip_id, align 8, !tbaa !7
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 59
  store i64 %25, i64* %clip_path_id3, align 8, !tbaa !63
  %27 = load i32, i32* %save_skip_color, align 4, !tbaa !5
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 207
  store i32 %27, i32* %skip_colors4, align 4, !tbaa !151
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %save_skip_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i64* %save_clip_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @write_image_with_clip(%struct.gx_device_pdf_s* %pdev, %struct.pdf_lcvd_s* %cvd) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cvd.addr = alloca %struct.pdf_lcvd_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_lcvd_s* %cvd, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %x, align 4, !tbaa !5
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %y, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %write_matrix = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %4, i32 0, i32 10
  %5 = load i32, i32* %write_matrix, align 4, !tbaa !111
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %7, i32 0, i32 12
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %6, i8* null, %struct.gs_matrix_s* %m, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end
  %8 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %10, i32 0, i32 1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !143
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4, !tbaa !147
  %13 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %13, i32 0, i32 1
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask1, align 8, !tbaa !143
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height, align 4, !tbaa !148
  %16 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %16, i32 0, i32 1
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask2, align 8, !tbaa !143
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 44
  %18 = load i32, i32* %raster, align 4, !tbaa !146
  %19 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask3 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %19, i32 0, i32 1
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask3, align 8, !tbaa !143
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 45
  %21 = load i8*, i8** %base, align 8, !tbaa !145
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxClipPathSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 111
  %25 = load i64, i64* %MaxClipPathSize, align 8, !tbaa !152
  %cmp = icmp sgt i64 %25, 100
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxClipPathSize4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 111
  %27 = load i64, i64* %MaxClipPathSize4, align 8, !tbaa !152
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ 100, %cond.false ]
  call void @compute_subimage(i32 %12, i32 %15, i32 %18, i8* %21, i32 %22, i32 %23, i64 %cond, i32* %x1, i32* %y1) #6
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask5 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %29, i32 0, i32 1
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask5, align 8, !tbaa !143
  %width6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width6, align 4, !tbaa !147
  %32 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %32, i32 0, i32 1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask7, align 8, !tbaa !143
  %height8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height8, align 4, !tbaa !148
  %35 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask9 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %35, i32 0, i32 1
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask9, align 8, !tbaa !143
  %raster10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 44
  %37 = load i32, i32* %raster10, align 4, !tbaa !146
  %38 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask11 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %38, i32 0, i32 1
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask11, align 8, !tbaa !143
  %base12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 45
  %40 = load i8*, i8** %base12, align 8, !tbaa !145
  %41 = load i32, i32* %x, align 4, !tbaa !5
  %42 = load i32, i32* %y, align 4, !tbaa !5
  %43 = load i32, i32* %x1, align 4, !tbaa !5
  %44 = load i32, i32* %y1, align 4, !tbaa !5
  %call = call i32 @mask_to_clip(%struct.gx_device_pdf_s* %28, i32 %31, i32 %34, i32 %37, i8* %40, i32 %41, i32 %42, i32 %43, i32 %44) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %45, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %cond.end
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %47, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %49, i32 0, i32 0
  %50 = load i32, i32* %x, align 4, !tbaa !5
  %51 = load i32, i32* %y, align 4, !tbaa !5
  %52 = load i32, i32* %x1, align 4, !tbaa !5
  %53 = load i32, i32* %y1, align 4, !tbaa !5
  %call18 = call i32 @write_subimage(%struct.gx_device_pdf_s* %48, %struct.gx_device_memory_s* %mdev, i32 %50, i32 %51, i32 %52, i32 %53) #6
  store i32 %call18, i32* %code1, align 4, !tbaa !5
  %54 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %54, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  %55 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  %56 = load i32, i32* %x1, align 4, !tbaa !5
  %57 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev23 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %57, i32 0, i32 0
  %width24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev23, i32 0, i32 13
  %58 = load i32, i32* %width24, align 4, !tbaa !135
  %cmp25 = icmp sge i32 %56, %58
  br i1 %cmp25, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.22
  %59 = load i32, i32* %y1, align 4, !tbaa !5
  %60 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev26 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %60, i32 0, i32 0
  %height27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev26, i32 0, i32 14
  %61 = load i32, i32* %height27, align 4, !tbaa !137
  %cmp28 = icmp sge i32 %59, %61
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %land.lhs.true, %if.end.22
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %62, 0
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 47
  %64 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call33 = call i32 @stream_puts(%struct.stream_s* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #6
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %65 = load i32, i32* %x1, align 4, !tbaa !5
  %66 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask35 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %66, i32 0, i32 1
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask35, align 8, !tbaa !143
  %width36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 13
  %68 = load i32, i32* %width36, align 4, !tbaa !147
  %cmp37 = icmp eq i32 %65, %68
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  store i32 0, i32* %x, align 4, !tbaa !5
  %69 = load i32, i32* %y1, align 4, !tbaa !5
  store i32 %69, i32* %y, align 4, !tbaa !5
  br label %if.end.39

if.else:                                          ; preds = %if.end.34
  %70 = load i32, i32* %x1, align 4, !tbaa !5
  store i32 %70, i32* %x, align 4, !tbaa !5
  %71 = load i32, i32* %y1, align 4, !tbaa !5
  store i32 %71, i32* %y, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.29, %if.then.20, %if.then.14
  %72 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %74 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %write_matrix41 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %74, i32 0, i32 10
  %75 = load i32, i32* %write_matrix41, align 4, !tbaa !111
  %tobool42 = icmp ne i32 %75, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %for.end
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 47
  %77 = load %struct.stream_s*, %struct.stream_s** %strm44, align 8, !tbaa !62
  %call45 = call i32 @stream_puts(%struct.stream_s* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %cleanup
  %78 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s* %pdev, %struct.gs_memory_s* %mem, %struct.gs_matrix_s* %m, %struct.pdf_lcvd_s** %pcvd, i32 %need_mask, i32 %x, i32 %y, i32 %w, i32 %h, i32 %write_on_close) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %pcvd.addr = alloca %struct.pdf_lcvd_s**, align 8
  %need_mask.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %write_on_close.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %mask = alloca %struct.gx_device_memory_s*, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  store %struct.pdf_lcvd_s** %pcvd, %struct.pdf_lcvd_s*** %pcvd.addr, align 8, !tbaa !1
  store i32 %need_mask, i32* %need_mask.addr, align 4, !tbaa !5
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %write_on_close, i32* %write_on_close.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.pdf_lcvd_s**, %struct.pdf_lcvd_s*** %pcvd.addr, align 8, !tbaa !1
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %3, align 8, !tbaa !1
  store %struct.pdf_lcvd_s* %4, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_lcvd_s* %5, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !153
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_pdf_lcvd_t, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0)) #6
  %9 = bitcast i8* %call to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %9, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %10 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.pdf_lcvd_s* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %12 = load %struct.pdf_lcvd_s**, %struct.pdf_lcvd_s*** %pcvd.addr, align 8, !tbaa !1
  store %struct.pdf_lcvd_s* %11, %struct.pdf_lcvd_s** %12, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %pdev4 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %14, i32 0, i32 2
  store %struct.gx_device_pdf_s* %13, %struct.gx_device_pdf_s** %pdev4, align 8, !tbaa !156
  %15 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %15, i32 0, i32 0
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %17 = load i16, i16* %depth, align 2, !tbaa !157
  %conv = zext i16 %17 to i32
  %call5 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %conv) #6
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_pdf_s* %19 to %struct.gx_device_s*
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s* %call5, %struct.gs_memory_s* %18, i32 0, %struct.gx_device_s* %20) #6
  %21 = load i32, i32* %w.addr, align 4, !tbaa !5
  %22 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev6 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %22, i32 0, i32 0
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev6, i32 0, i32 13
  store i32 %21, i32* %width, align 4, !tbaa !135
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev7 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %24, i32 0, i32 0
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev7, i32 0, i32 14
  store i32 %23, i32* %height, align 4, !tbaa !137
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev8 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %26, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev8, i32 0, i32 61
  store i32 %25, i32* %mapped_x, align 4, !tbaa !158
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev9 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %28, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev9, i32 0, i32 62
  store i32 %27, i32* %mapped_y, align 4, !tbaa !159
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev10 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %30, i32 0, i32 0
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev10, i32 0, i32 46
  store %struct.gs_memory_s* %29, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !160
  %31 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev11 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %31, i32 0, i32 0
  %color_info12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev11, i32 0, i32 11
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 11
  %33 = bitcast %struct.gx_device_color_info_s* %color_info12 to i8*
  %34 = bitcast %struct.gx_device_color_info_s* %color_info13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 720, i32 8, i1 false), !tbaa.struct !161
  %35 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %35, i32 0, i32 8
  store i32 1, i32* %path_is_empty, align 4, !tbaa !101
  %36 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %36, i32 0, i32 7
  store i32 1, i32* %mask_is_empty, align 4, !tbaa !112
  %37 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_clean = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %37, i32 0, i32 9
  store i32 0, i32* %mask_is_clean, align 4, !tbaa !162
  %38 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %has_background = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %38, i32 0, i32 11
  store i32 0, i32* %has_background, align 4, !tbaa !110
  %39 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask14 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %39, i32 0, i32 1
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mask14, align 8, !tbaa !143
  %40 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %write_matrix = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %40, i32 0, i32 10
  store i32 1, i32* %write_matrix, align 4, !tbaa !111
  %41 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev15 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %41, i32 0, i32 0
  %procs16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev15, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs16, i32 0, i32 0
  %42 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !163
  %43 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev17 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %43, i32 0, i32 0
  %44 = bitcast %struct.gx_device_memory_s* %mdev17 to %struct.gx_device_s*
  %call18 = call i32 %42(%struct.gx_device_s* %44) #6
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %45, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.3
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.3
  %47 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev23 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %47, i32 0, i32 0
  %procs24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev23, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 7
  %fill_rectangle25 = bitcast {}** %fill_rectangle to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle25, align 8, !tbaa !144
  %49 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev26 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %49, i32 0, i32 0
  %50 = bitcast %struct.gx_device_memory_s* %mdev26 to %struct.gx_device_s*
  %51 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev27 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %51, i32 0, i32 0
  %width28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev27, i32 0, i32 13
  %52 = load i32, i32* %width28, align 4, !tbaa !135
  %53 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev29 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %53, i32 0, i32 0
  %height30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev29, i32 0, i32 14
  %54 = load i32, i32* %height30, align 4, !tbaa !137
  %call31 = call i32 %48(%struct.gx_device_s* %50, i32 0, i32 0, i32 %52, i32 %54, i64 0) #6
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %55, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.22
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.22
  %57 = load i32, i32* %need_mask.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.then.36, label %if.end.73

if.then.36:                                       ; preds = %if.end.35
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %alloc_struct38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 8
  %59 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct38, align 8, !tbaa !153
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call39 = call i8* %59(%struct.gs_memory_s* %60, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0)) #6
  %61 = bitcast i8* %call39 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %61, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %cmp40 = icmp eq %struct.gx_device_memory_s* %62, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.36
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %64 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask44 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %64, i32 0, i32 1
  store %struct.gx_device_memory_s* %63, %struct.gx_device_memory_s** %mask44, align 8, !tbaa !143
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_pdf_s* %67 to %struct.gx_device_s*
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %65, %struct.gs_memory_s* %66, %struct.gx_device_s* %68) #6
  %69 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev45 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %69, i32 0, i32 0
  %width46 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev45, i32 0, i32 13
  %70 = load i32, i32* %width46, align 4, !tbaa !135
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %width47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %71, i32 0, i32 13
  store i32 %70, i32* %width47, align 4, !tbaa !147
  %72 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev48 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %72, i32 0, i32 0
  %height49 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev48, i32 0, i32 14
  %73 = load i32, i32* %height49, align 4, !tbaa !137
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %height50 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 14
  store i32 %73, i32* %height50, align 4, !tbaa !148
  %75 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %76 = bitcast %struct.gx_device_memory_s* %75 to %struct.gx_device_s*
  %call51 = call i32 @gx_device_raster(%struct.gx_device_s* %76, i32 1) #6
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 44
  store i32 %call51, i32* %raster, align 4, !tbaa !146
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %bitmap_memory52 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 46
  store %struct.gs_memory_s* %78, %struct.gs_memory_s** %bitmap_memory52, align 8, !tbaa !164
  %80 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %80, i32 0, i32 42
  %open_device54 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs53, i32 0, i32 0
  %81 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device54, align 8, !tbaa !163
  %82 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %83 = bitcast %struct.gx_device_memory_s* %82 to %struct.gx_device_s*
  %call55 = call i32 %81(%struct.gx_device_s* %83) #6
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %84, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.43
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.43
  %86 = load i32, i32* %write_on_close.addr, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %86, 0
  br i1 %tobool60, label %if.then.61, label %if.end.72

if.then.61:                                       ; preds = %if.end.59
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %87, i32 0, i32 42
  %fill_rectangle63 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs62, i32 0, i32 7
  %fill_rectangle64 = bitcast {}** %fill_rectangle63 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %88 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle64, align 8, !tbaa !144
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_memory_s* %89 to %struct.gx_device_s*
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %width65 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 13
  %92 = load i32, i32* %width65, align 4, !tbaa !147
  %93 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %height66 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %93, i32 0, i32 14
  %94 = load i32, i32* %height66, align 4, !tbaa !148
  %call67 = call i32 %88(%struct.gx_device_s* %90, i32 0, i32 0, i32 %92, i32 %94, i64 0) #6
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %95, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.61
  %96 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.then.61
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.59
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.35
  %97 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev74 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %97, i32 0, i32 0
  %procs75 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev74, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs75, i32 0, i32 10
  %98 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !165
  %99 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_copy_color = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %99, i32 0, i32 3
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %98, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %std_copy_color, align 8, !tbaa !166
  %100 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev76 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %100, i32 0, i32 0
  %procs77 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev76, i32 0, i32 42
  %fill_rectangle78 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs77, i32 0, i32 7
  %fill_rectangle79 = bitcast {}** %fill_rectangle78 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %101 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle79, align 8, !tbaa !144
  %102 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_fill_rectangle = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %102, i32 0, i32 4
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %101, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %std_fill_rectangle, align 8, !tbaa !167
  %103 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev80 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %103, i32 0, i32 0
  %procs81 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev80, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs81, i32 0, i32 4
  %104 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !168
  %105 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_close_device = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %105, i32 0, i32 5
  store i32 (%struct.gx_device_s*)* %104, i32 (%struct.gx_device_s*)** %std_close_device, align 8, !tbaa !169
  %106 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev82 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %106, i32 0, i32 0
  %procs83 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev82, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs83, i32 0, i32 36
  %107 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !170
  %108 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_get_clipping_box = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %108, i32 0, i32 6
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* %107, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %std_get_clipping_box, align 8, !tbaa !171
  %109 = load i32, i32* %write_on_close.addr, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %109, 0
  br i1 %tobool84, label %if.else, label %if.then.85

if.then.85:                                       ; preds = %if.end.73
  %110 = load i32, i32* %need_mask.addr, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %110, 0
  %cond = select i1 %tobool86, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @lcvd_fill_rectangle_shifted2, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @lcvd_fill_rectangle_shifted
  %111 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev87 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %111, i32 0, i32 0
  %procs88 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev87, i32 0, i32 42
  %fill_rectangle89 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs88, i32 0, i32 7
  %fill_rectangle90 = bitcast {}** %fill_rectangle89 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %cond, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle90, align 8, !tbaa !144
  %112 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev91 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %112, i32 0, i32 0
  %procs92 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev91, i32 0, i32 42
  %get_clipping_box93 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs92, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @lcvd_get_clipping_box_shifted_from_mdev, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box93, align 8, !tbaa !170
  br label %if.end.101

if.else:                                          ; preds = %if.end.73
  %113 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev94 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %113, i32 0, i32 0
  %procs95 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev94, i32 0, i32 42
  %fill_rectangle96 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs95, i32 0, i32 7
  %fill_rectangle97 = bitcast {}** %fill_rectangle96 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @lcvd_fill_rectangle_shifted, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle97, align 8, !tbaa !144
  %114 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev98 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %114, i32 0, i32 0
  %procs99 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev98, i32 0, i32 42
  %get_clipping_box100 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs99, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @lcvd_get_clipping_box_shifted_from_mdev, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box100, align 8, !tbaa !170
  br label %if.end.101

if.end.101:                                       ; preds = %if.else, %if.then.85
  %115 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev102 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %115, i32 0, i32 0
  %procs103 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev102, i32 0, i32 42
  %copy_color104 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs103, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @lcvd_copy_color_shifted, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color104, align 8, !tbaa !165
  %116 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev105 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %116, i32 0, i32 0
  %procs106 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev105, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs106, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @lcvd_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !172
  %117 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev107 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %117, i32 0, i32 0
  %procs108 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev107, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs108, i32 0, i32 24
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @lcvd_handle_fill_path_as_shading_coverage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !173
  %118 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %m109 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %118, i32 0, i32 12
  %119 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gs_matrix_s* %m109 to i8*
  %121 = bitcast %struct.gs_matrix_s* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 24, i32 4, i1 false), !tbaa.struct !174
  %122 = load i32, i32* %write_on_close.addr, align 4, !tbaa !5
  %tobool110 = icmp ne i32 %122, 0
  br i1 %tobool110, label %if.then.111, label %if.end.120

if.then.111:                                      ; preds = %if.end.101
  %123 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev112 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %123, i32 0, i32 0
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev112, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !175
  %124 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %tobool113 = icmp ne %struct.gx_device_memory_s* %124, null
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.then.111
  %125 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !1
  %is_open115 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %125, i32 0, i32 9
  store i32 1, i32* %is_open115, align 4, !tbaa !176
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.then.111
  %126 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev117 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %126, i32 0, i32 0
  %procs118 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev117, i32 0, i32 42
  %close_device119 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 4
  store i32 (%struct.gx_device_s*)* @lcvd_close_device_with_writing, i32 (%struct.gx_device_s*)** %close_device119, align 8, !tbaa !168
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.116, %if.end.101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.120, %if.then.70, %if.then.58, %if.then.42, %if.then.34, %if.then.21, %if.then.2
  %127 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gx_device_memory_s** %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_fill_rectangle_shifted2(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %2, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %4, i32 0, i32 1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !143
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %fill_rectangle1 = bitcast {}** %fill_rectangle to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %6 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle1, align 8, !tbaa !144
  %7 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %7, i32 0, i32 1
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask2, align 8, !tbaa !143
  %9 = bitcast %struct.gx_device_memory_s* %8 to %struct.gx_device_s*
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %11, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 61
  %12 = load i32, i32* %mapped_x, align 4, !tbaa !158
  %sub = sub nsw i32 %10, %12
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev3 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %14, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev3, i32 0, i32 62
  %15 = load i32, i32* %mapped_y, align 4, !tbaa !159
  %sub4 = sub nsw i32 %13, %15
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %17 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 %6(%struct.gx_device_s* %9, i32 %sub, i32 %sub4, i32 %16, i32 %17, i64 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_fill_rectangle = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %20, i32 0, i32 4
  %21 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %std_fill_rectangle, align 8, !tbaa !167
  %22 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev5 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %22, i32 0, i32 0
  %23 = bitcast %struct.gx_device_memory_s* %mdev5 to %struct.gx_device_s*
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %25 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev6 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %25, i32 0, i32 0
  %mapped_x7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev6, i32 0, i32 61
  %26 = load i32, i32* %mapped_x7, align 4, !tbaa !158
  %sub8 = sub nsw i32 %24, %26
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev9 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %28, i32 0, i32 0
  %mapped_y10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev9, i32 0, i32 62
  %29 = load i32, i32* %mapped_y10, align 4, !tbaa !159
  %sub11 = sub nsw i32 %27, %29
  %30 = load i32, i32* %width.addr, align 4, !tbaa !5
  %31 = load i32, i32* %height.addr, align 4, !tbaa !5
  %32 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call12 = call i32 %21(%struct.gx_device_s* %23, i32 %sub8, i32 %sub11, i32 %30, i32 %31, i64 %32) #6
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_fill_rectangle_shifted(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %2, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %3 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_fill_rectangle = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %3, i32 0, i32 4
  %4 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %std_fill_rectangle, align 8, !tbaa !167
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %5, i32 0, i32 0
  %6 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %8, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev1, i32 0, i32 61
  %9 = load i32, i32* %mapped_x, align 4, !tbaa !158
  %sub = sub nsw i32 %7, %9
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %11, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev2, i32 0, i32 62
  %12 = load i32, i32* %mapped_y, align 4, !tbaa !159
  %sub3 = sub nsw i32 %10, %12
  %13 = load i32, i32* %width.addr, align 4, !tbaa !5
  %14 = load i32, i32* %height.addr, align 4, !tbaa !5
  %15 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 %4(%struct.gx_device_s* %6, i32 %sub, i32 %sub3, i32 %13, i32 %14, i64 %15) #6
  %16 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @lcvd_get_clipping_box_shifted_from_mdev(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %ofs = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %3, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_get_clipping_box = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %4, i32 0, i32 6
  %5 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %std_get_clipping_box, align 8, !tbaa !171
  %6 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %6, i32 0, i32 0
  %7 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void %5(%struct.gx_device_s* %7, %struct.gs_fixed_rect_s* %8) #6
  %9 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %9, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev1, i32 0, i32 61
  %10 = load i32, i32* %mapped_x, align 4, !tbaa !158
  %shl = shl i32 %10, 8
  store i32 %shl, i32* %ofs, align 4, !tbaa !5
  %11 = load i32, i32* %ofs, align 4, !tbaa !5
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %13 = load i32, i32* %x, align 4, !tbaa !78
  %add = add nsw i32 %13, %11
  store i32 %add, i32* %x, align 4, !tbaa !78
  %14 = load i32, i32* %ofs, align 4, !tbaa !5
  %15 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %15, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %16 = load i32, i32* %x2, align 4, !tbaa !80
  %add3 = add nsw i32 %16, %14
  store i32 %add3, i32* %x2, align 4, !tbaa !80
  %17 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev4 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %17, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev4, i32 0, i32 62
  %18 = load i32, i32* %mapped_y, align 4, !tbaa !159
  %shl5 = shl i32 %18, 8
  store i32 %shl5, i32* %ofs, align 4, !tbaa !5
  %19 = load i32, i32* %ofs, align 4, !tbaa !5
  %20 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %20, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !79
  %add7 = add nsw i32 %21, %19
  store i32 %add7, i32* %y, align 4, !tbaa !79
  %22 = load i32, i32* %ofs, align 4, !tbaa !5
  %23 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %23, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 1
  %24 = load i32, i32* %y9, align 4, !tbaa !81
  %add10 = add nsw i32 %24, %22
  store i32 %add10, i32* %y9, align 4, !tbaa !81
  %25 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_copy_color_shifted(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %2, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %3 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_copy_color = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %3, i32 0, i32 3
  %4 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %std_copy_color, align 8, !tbaa !166
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %5, i32 0, i32 0
  %6 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %7 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %8 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %10 = load i64, i64* %id.addr, align 8, !tbaa !7
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %12, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev1, i32 0, i32 61
  %13 = load i32, i32* %mapped_x, align 4, !tbaa !158
  %sub = sub nsw i32 %11, %13
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %15, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev2, i32 0, i32 62
  %16 = load i32, i32* %mapped_y, align 4, !tbaa !159
  %sub3 = sub nsw i32 %14, %16
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 %4(%struct.gx_device_s* %6, i8* %7, i32 %8, i32 %9, i64 %10, i32 %sub, i32 %sub3, i32 %17, i32 %18) #6
  %19 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_dev_spec_op(%struct.gx_device_s* %pdev1, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
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
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 5, label %sw.bb.1
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
  %call = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %1, i32 %2, i8* %3, i32 %4) #6
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_handle_fill_path_as_shading_coverage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %m = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %2, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %4, i32 0, i32 0
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !177
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %6, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %has_background = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %8, i32 0, i32 11
  %9 = load i32, i32* %has_background, align 4, !tbaa !110
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_is_null(%struct.gx_path_s* %10) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %11, i32 0, i32 8
  %12 = load i32, i32* %path_is_empty, align 4, !tbaa !101
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.end.11, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %14 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %call5 = call i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %13, %struct.pdf_lcvd_s* %14) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.7:                                         ; preds = %if.then.4
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 47
  %18 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call8 = call i32 @stream_puts(%struct.stream_s* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #6
  %19 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev9 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %19, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev9, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %fill_rectangle10 = bitcast {}** %fill_rectangle to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @lcvd_fill_rectangle_shifted2, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle10, align 8, !tbaa !144
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.7, %if.then.2
  %20 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_clean = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %20, i32 0, i32 9
  %21 = load i32, i32* %mask_is_clean, align 4, !tbaa !162
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end.11
  %22 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_is_empty13 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %22, i32 0, i32 8
  %23 = load i32, i32* %path_is_empty13, align 4, !tbaa !101
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.end.27, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.11
  %24 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %24, i32 0, i32 1
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !143
  %procs16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 42
  %fill_rectangle17 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs16, i32 0, i32 7
  %fill_rectangle18 = bitcast {}** %fill_rectangle17 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  %26 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle18, align 8, !tbaa !144
  %27 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %27, i32 0, i32 1
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask19, align 8, !tbaa !143
  %29 = bitcast %struct.gx_device_memory_s* %28 to %struct.gx_device_s*
  %30 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask20 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %30, i32 0, i32 1
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask20, align 8, !tbaa !143
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width, align 4, !tbaa !147
  %33 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask21 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %33, i32 0, i32 1
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask21, align 8, !tbaa !143
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height, align 4, !tbaa !148
  %call22 = call i32 %26(%struct.gx_device_s* %29, i32 0, i32 0, i32 %32, i32 %35, i64 0) #6
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %36, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.15
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.25:                                        ; preds = %if.then.15
  %38 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_clean26 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %38, i32 0, i32 9
  store i32 1, i32* %mask_is_clean26, align 4, !tbaa !162
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %lor.lhs.false
  %39 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_is_empty28 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %39, i32 0, i32 8
  store i32 1, i32* %path_is_empty28, align 4, !tbaa !101
  %40 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %40, i32 0, i32 7
  store i32 0, i32* %mask_is_empty, align 4, !tbaa !112
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %41 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %41) #1
  %42 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_offset = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %42, i32 0, i32 13
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset, i32 0, i32 0
  %43 = load double, double* %x, align 8, !tbaa !178
  %44 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_offset29 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %44, i32 0, i32 13
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset29, i32 0, i32 1
  %45 = load double, double* %y, align 8, !tbaa !179
  %call30 = call i32 @gs_make_translation(double %43, double %45, %struct.gs_matrix_s* %m) #6
  %46 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty31 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %46, i32 0, i32 7
  %47 = load i32, i32* %mask_is_empty31, align 4, !tbaa !112
  %tobool32 = icmp ne i32 %47, 0
  br i1 %tobool32, label %if.end.45, label %if.then.33

if.then.33:                                       ; preds = %if.else
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %49 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %call34 = call i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %48, %struct.pdf_lcvd_s* %49) #6
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %50, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.33
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 47
  %53 = load %struct.stream_s*, %struct.stream_s** %strm38, align 8, !tbaa !62
  %call39 = call i32 @stream_puts(%struct.stream_s* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #6
  %54 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev40 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %54, i32 0, i32 0
  %procs41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev40, i32 0, i32 42
  %fill_rectangle42 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs41, i32 0, i32 7
  %fill_rectangle43 = bitcast {}** %fill_rectangle42 to i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)**
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @lcvd_fill_rectangle_shifted, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle43, align 8, !tbaa !144
  %55 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty44 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %55, i32 0, i32 7
  store i32 1, i32* %mask_is_empty44, align 4, !tbaa !112
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.37, %if.else
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_pdf_s* %56 to %struct.gx_device_vector_s*
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call46 = call i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %57, %struct.gx_path_s* %58, i32 17, %struct.gs_matrix_s* %m) #6
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %59, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.45
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 47
  %62 = load %struct.stream_s*, %struct.stream_s** %strm50, align 8, !tbaa !62
  %call51 = call i32 @stream_puts(%struct.stream_s* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)) #6
  %63 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %path_is_empty52 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %63, i32 0, i32 8
  store i32 0, i32* %path_is_empty52, align 4, !tbaa !101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48, %if.then.36
  %64 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.end.53:                                        ; preds = %cleanup.cont, %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.53, %cleanup, %if.then.24, %if.then.6, %if.then
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @lcvd_close_device_with_writing(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %2, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !156
  %7 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %call = call i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %6, %struct.pdf_lcvd_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %std_close_device = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %8, i32 0, i32 5
  %9 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %std_close_device, align 8, !tbaa !169
  %10 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %10, i32 0, i32 0
  %11 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %call2 = call i32 %9(%struct.gx_device_s* %11) #6
  store i32 %call2, i32* %code1, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %code1, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @pdf_remove_masked_image_converter(%struct.gx_device_pdf_s* %pdev, %struct.pdf_lcvd_s* %cvd, i32 %need_mask) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cvd.addr = alloca %struct.pdf_lcvd_s*, align 8
  %need_mask.addr = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_lcvd_s* %cvd, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  store i32 %need_mask, i32* %need_mask.addr, align 4, !tbaa !5
  %0 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %0, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %1 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !168
  %2 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %2, i32 0, i32 0
  %3 = bitcast %struct.gx_device_memory_s* %mdev1 to %struct.gx_device_s*
  %call = call i32 %1(%struct.gx_device_s* %3) #6
  %4 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %4, i32 0, i32 1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !143
  %tobool = icmp ne %struct.gx_device_memory_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %6, i32 0, i32 1
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask2, align 8, !tbaa !143
  %procs3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 42
  %close_device4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 4
  %8 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device4, align 8, !tbaa !168
  %9 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask5 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %9, i32 0, i32 1
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask5, align 8, !tbaa !143
  %11 = bitcast %struct.gx_device_memory_s* %10 to %struct.gx_device_s*
  %call6 = call i32 %8(%struct.gx_device_s* %11) #6
  %12 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %12, i32 0, i32 1
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask7, align 8, !tbaa !143
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !180
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !181
  %16 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask9 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %16, i32 0, i32 1
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask9, align 8, !tbaa !143
  %memory10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !180
  %19 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd.addr, align 8, !tbaa !1
  %mask11 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %19, i32 0, i32 1
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask11, align 8, !tbaa !143
  %21 = bitcast %struct.gx_device_memory_s* %20 to i8*
  call void %15(%struct.gs_memory_s* %18, i8* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %have_path = alloca i32, align 4
  %box = alloca %struct.gs_fixed_rect_s, align 4
  %box1 = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %convert_to_image = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s, align 8
  %pcvd = alloca %struct.pdf_lcvd_s*, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %bbox1 = alloca %struct.gs_fixed_rect_s, align 4
  %need_mask = alloca i32, align 4
  %m = alloca %struct.gs_matrix_s, align 4
  %save_ctm = alloca %struct.gs_matrix_s, align 4
  %ms = alloca %struct.gs_matrix_s, align 4
  %msi = alloca %struct.gs_matrix_s, align 4
  %mm = alloca %struct.gs_matrix_s, align 4
  %rect_size = alloca %struct.gs_int_point_s, align 4
  %scale = alloca double, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %log2_scale_x = alloca i32, align 4
  %log2_scale_y = alloca i32, align 4
  %dc = alloca %struct.gx_device_color_s, align 8
  %pi = alloca %struct.gs_pattern2_instance_s, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %scale346 = alloca double, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %psmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %have_path to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 4, i1 false)
  %7 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 100
  %9 = load i32, i32* %Eps2Write, align 4, !tbaa !9
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 128
  %11 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !57
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %AccumulatingBBox, align 4, !tbaa !57
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %15 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_fill_path(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_path_s* %14, %struct.gx_fill_params_s* %15, %struct.gx_device_color_s* %16, %struct.gx_clip_path_s* %17) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 128
  %19 = load i32, i32* %AccumulatingBBox1, align 4, !tbaa !57
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %AccumulatingBBox1, align 4, !tbaa !57
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end:                                           ; preds = %if.then
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 128
  %23 = load i32, i32* %AccumulatingBBox3, align 4, !tbaa !57
  %tobool4 = icmp ne i32 %23, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 3
  %25 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !182
  %cmp8 = icmp ne %struct.gx_path_segments_s* %25, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 3
  %27 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments9, align 8, !tbaa !182
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %27, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %28 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !183
  %cmp10 = icmp eq %struct.subpath_s* %28, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %29 = phi i1 [ false, %if.end.7 ], [ %cmp10, %land.rhs ]
  %lnot = xor i1 %29, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %have_path, align 4, !tbaa !5
  %30 = load i32, i32* %have_path, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %30, 0
  br i1 %tobool11, label %if.end.14, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %vg_initial_set = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 197
  %32 = load i32, i32* %vg_initial_set, align 4, !tbaa !184
  %tobool12 = icmp ne i32 %32, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @pdf_prepare_initial_viewer_state(%struct.gx_device_pdf_s* %33, %struct.gs_imager_state_s* %34) #6
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_reset_graphics(%struct.gx_device_pdf_s* %35) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.14:                                        ; preds = %land.lhs.true, %land.end
  %36 = load i32, i32* %have_path, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %36, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.14
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call17 = call i32 @gx_path_bbox(%struct.gx_path_s* %37, %struct.gs_fixed_rect_s* %box) #6
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %38, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.20:                                        ; preds = %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.14
  %40 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  %41 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 4, i1 false), !tbaa.struct !185
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %44 = load i32, i32* %have_path, align 4, !tbaa !5
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call22 = call i32 @prepare_fill_with_clip(%struct.gx_device_pdf_s* %42, %struct.gs_imager_state_s* %43, %struct.gs_fixed_rect_s* %box, i32 %44, %struct.gx_device_color_s* %45, %struct.gx_clip_path_s* %46) #6
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %47, -15
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %49 = bitcast %struct.gx_device_pdf_s* %48 to %struct.gx_device_s*
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %52 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %54 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call25 = call i32 @gx_default_fill_path(%struct.gx_device_s* %49, %struct.gs_imager_state_s* %50, %struct.gx_path_s* %51, %struct.gx_fill_params_s* %52, %struct.gx_device_color_s* %53, %struct.gx_clip_path_s* %54) #6
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.26:                                        ; preds = %if.end.21
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %55, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.29:                                        ; preds = %if.end.26
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %57, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.32:                                        ; preds = %if.end.29
  %58 = load i32, i32* %have_path, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %58, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.35:                                        ; preds = %if.end.32
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_pdf_s* %59 to %struct.gx_device_vector_s*
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call36 = call i32 @pdf_setfillcolor(%struct.gx_device_vector_s* %60, %struct.gs_imager_state_s* %61, %struct.gx_device_color_s* %62) #6
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %63, -15
  br i1 %cmp37, label %if.then.38, label %if.end.340

if.then.38:                                       ; preds = %if.end.35
  %64 = bitcast i32* %convert_to_image to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 75
  %66 = load double, double* %CompatibilityLevel, align 8, !tbaa !186
  %cmp39 = fcmp ole double %66, 1.200000e+00
  br i1 %cmp39, label %land.rhs.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.38
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params40, i32 0, i32 17
  %68 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !187
  %cmp41 = icmp ne i32 %68, 0
  br i1 %cmp41, label %land.rhs.42, label %land.end.45

land.rhs.42:                                      ; preds = %lor.lhs.false, %if.then.38
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call43 = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %69) #6
  %tobool44 = icmp ne i32 %call43, 0
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.42, %lor.lhs.false
  %70 = phi i1 [ false, %lor.lhs.false ], [ %tobool44, %land.rhs.42 ]
  %land.ext = zext i1 %70 to i32
  store i32 %land.ext, i32* %convert_to_image, align 4, !tbaa !5
  %71 = load i32, i32* %convert_to_image, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %71, 0
  br i1 %tobool46, label %if.else, label %if.then.47

if.then.47:                                       ; preds = %land.end.45
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %75 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %77 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call48 = call i32 @gx_default_fill_path(%struct.gx_device_s* %72, %struct.gs_imager_state_s* %73, %struct.gx_path_s* %74, %struct.gx_fill_params_s* %75, %struct.gx_device_color_s* %76, %struct.gx_clip_path_s* %77) #6
  store i32 %call48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.else:                                          ; preds = %land.end.45
  %78 = bitcast %struct.pdf_lcvd_s* %cvd to i8*
  call void @llvm.lifetime.start(i64 2904, i8* %78) #1
  %79 = bitcast %struct.pdf_lcvd_s** %pcvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store %struct.pdf_lcvd_s* %cvd, %struct.pdf_lcvd_s** %pcvd, align 8, !tbaa !1
  %80 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %82) #1
  %83 = bitcast %struct.gs_fixed_rect_s* %bbox1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %83) #1
  %84 = bitcast i32* %need_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call49 = call i32 @gx_dc_pattern2_can_overlap(%struct.gx_device_color_s* %85) #6
  store i32 %call49, i32* %need_mask, align 4, !tbaa !5
  %86 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %86) #1
  %87 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %87) #1
  %88 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %88, i32 0, i32 5
  %89 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %90 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  %91 = bitcast %struct.gs_matrix_s* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 24, i32 4, i1 false), !tbaa.struct !174
  %92 = bitcast %struct.gs_matrix_s* %ms to i8*
  call void @llvm.lifetime.start(i64 24, i8* %92) #1
  %93 = bitcast %struct.gs_matrix_s* %msi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %93) #1
  %94 = bitcast %struct.gs_matrix_s* %mm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %94) #1
  %95 = bitcast %struct.gs_int_point_s* %rect_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = bitcast double* %scalex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = bitcast double* %scaley to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = bitcast i32* %log2_scale_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  store i32 0, i32* %log2_scale_x, align 4, !tbaa !5
  %100 = bitcast i32* %log2_scale_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 0, i32* %log2_scale_y, align 4, !tbaa !5
  %101 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %101) #1
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %103 = bitcast %struct.gx_device_color_s* %dc to i8*
  %104 = bitcast %struct.gx_device_color_s* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 656, i32 8, i1 false), !tbaa.struct !188
  %105 = bitcast %struct.gs_pattern2_instance_s* %pi to i8*
  call void @llvm.lifetime.start(i64 104, i8* %105) #1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %106 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !189
  %107 = bitcast %struct.gs_pattern_instance_s* %106 to %struct.gs_pattern2_instance_s*
  %108 = bitcast %struct.gs_pattern2_instance_s* %pi to i8*
  %109 = bitcast %struct.gs_pattern2_instance_s* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 104, i32 8, i1 false), !tbaa.struct !193
  %110 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %pi, i32 0, i32 2
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !194
  %saved50 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %pi, i32 0, i32 2
  %112 = load %struct.gs_state_s*, %struct.gs_state_s** %saved50, align 8, !tbaa !194
  %call51 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %112) #6
  %call52 = call %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s* %111, %struct.gs_memory_s* %call51) #6
  store %struct.gs_state_s* %call52, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp53 = icmp eq %struct.gs_state_s* %113, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.else
  %114 = bitcast %struct.gs_pattern2_instance_s* %pi to %struct.gs_pattern_instance_s*
  %ccolor56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 4
  %pattern57 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor56, i32 0, i32 0
  store %struct.gs_pattern_instance_s* %114, %struct.gs_pattern_instance_s** %pattern57, align 8, !tbaa !189
  %115 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %saved58 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %pi, i32 0, i32 2
  store %struct.gs_state_s* %115, %struct.gs_state_s** %saved58, align 8, !tbaa !194
  %116 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call59 = call i32 @gx_path_bbox(%struct.gx_path_s* %116, %struct.gs_fixed_rect_s* %bbox) #6
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %117 = load i32, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %117, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.55
  %118 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.55
  br label %do.body

do.body:                                          ; preds = %if.end.62
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %119 = load i32, i32* %x, align 4, !tbaa !78
  %p63 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p63, i32 0, i32 0
  %120 = load i32, i32* %x64, align 4, !tbaa !78
  %cmp65 = icmp sgt i32 %119, %120
  br i1 %cmp65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %do.body
  %p67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p67, i32 0, i32 0
  %121 = load i32, i32* %x68, align 4, !tbaa !78
  %p69 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p69, i32 0, i32 0
  store i32 %121, i32* %x70, align 4, !tbaa !78
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %do.body
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %122 = load i32, i32* %x72, align 4, !tbaa !80
  %q73 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q73, i32 0, i32 0
  %123 = load i32, i32* %x74, align 4, !tbaa !80
  %cmp75 = icmp slt i32 %122, %123
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.71
  %q77 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q77, i32 0, i32 0
  %124 = load i32, i32* %x78, align 4, !tbaa !80
  %q79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q79, i32 0, i32 0
  store i32 %124, i32* %x80, align 4, !tbaa !80
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.71
  %p82 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p82, i32 0, i32 1
  %125 = load i32, i32* %y, align 4, !tbaa !79
  %p83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p83, i32 0, i32 1
  %126 = load i32, i32* %y84, align 4, !tbaa !79
  %cmp85 = icmp sgt i32 %125, %126
  br i1 %cmp85, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.end.81
  %p87 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p87, i32 0, i32 1
  %127 = load i32, i32* %y88, align 4, !tbaa !79
  %p89 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p89, i32 0, i32 1
  store i32 %127, i32* %y90, align 4, !tbaa !79
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.end.81
  %q92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q92, i32 0, i32 1
  %128 = load i32, i32* %y93, align 4, !tbaa !81
  %q94 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q94, i32 0, i32 1
  %129 = load i32, i32* %y95, align 4, !tbaa !81
  %cmp96 = icmp slt i32 %128, %129
  br i1 %cmp96, label %if.then.97, label %if.end.102

if.then.97:                                       ; preds = %if.end.91
  %q98 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q98, i32 0, i32 1
  %130 = load i32, i32* %y99, align 4, !tbaa !81
  %q100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q100, i32 0, i32 1
  store i32 %130, i32* %y101, align 4, !tbaa !81
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.97, %if.end.91
  br label %do.cond

do.cond:                                          ; preds = %if.end.102
  br label %do.end

do.end:                                           ; preds = %do.cond
  %131 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call103 = call i32 @gx_dc_pattern2_get_bbox(%struct.gx_device_color_s* %131, %struct.gs_fixed_rect_s* %bbox1) #6
  store i32 %call103, i32* %code, align 4, !tbaa !5
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %132, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %do.end
  %133 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %do.end
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %134, 0
  br i1 %tobool107, label %if.then.108, label %if.end.156

if.then.108:                                      ; preds = %if.end.106
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  %p110 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p110, i32 0, i32 0
  %135 = load i32, i32* %x111, align 4, !tbaa !78
  %p112 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p112, i32 0, i32 0
  %136 = load i32, i32* %x113, align 4, !tbaa !78
  %cmp114 = icmp sgt i32 %135, %136
  br i1 %cmp114, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %do.body.109
  %p116 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p116, i32 0, i32 0
  %137 = load i32, i32* %x117, align 4, !tbaa !78
  %p118 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p118, i32 0, i32 0
  store i32 %137, i32* %x119, align 4, !tbaa !78
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.115, %do.body.109
  %q121 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 1
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q121, i32 0, i32 0
  %138 = load i32, i32* %x122, align 4, !tbaa !80
  %q123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q123, i32 0, i32 0
  %139 = load i32, i32* %x124, align 4, !tbaa !80
  %cmp125 = icmp slt i32 %138, %139
  br i1 %cmp125, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %if.end.120
  %q127 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 1
  %x128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q127, i32 0, i32 0
  %140 = load i32, i32* %x128, align 4, !tbaa !80
  %q129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q129, i32 0, i32 0
  store i32 %140, i32* %x130, align 4, !tbaa !80
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.end.120
  %p132 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %y133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p132, i32 0, i32 1
  %141 = load i32, i32* %y133, align 4, !tbaa !79
  %p134 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p134, i32 0, i32 1
  %142 = load i32, i32* %y135, align 4, !tbaa !79
  %cmp136 = icmp sgt i32 %141, %142
  br i1 %cmp136, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %if.end.131
  %p138 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %y139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p138, i32 0, i32 1
  %143 = load i32, i32* %y139, align 4, !tbaa !79
  %p140 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p140, i32 0, i32 1
  store i32 %143, i32* %y141, align 4, !tbaa !79
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %if.end.131
  %q143 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 1
  %y144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q143, i32 0, i32 1
  %144 = load i32, i32* %y144, align 4, !tbaa !81
  %q145 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q145, i32 0, i32 1
  %145 = load i32, i32* %y146, align 4, !tbaa !81
  %cmp147 = icmp slt i32 %144, %145
  br i1 %cmp147, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.end.142
  %q149 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 1
  %y150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q149, i32 0, i32 1
  %146 = load i32, i32* %y150, align 4, !tbaa !81
  %q151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q151, i32 0, i32 1
  store i32 %146, i32* %y152, align 4, !tbaa !81
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.148, %if.end.142
  br label %do.cond.154

do.cond.154:                                      ; preds = %if.end.153
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.155, %if.end.106
  %p157 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p157, i32 0, i32 0
  %147 = load i32, i32* %x158, align 4, !tbaa !78
  %q159 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x160 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q159, i32 0, i32 0
  %148 = load i32, i32* %x160, align 4, !tbaa !80
  %cmp161 = icmp sge i32 %147, %148
  br i1 %cmp161, label %if.then.168, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.end.156
  %p163 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p163, i32 0, i32 1
  %149 = load i32, i32* %y164, align 4, !tbaa !79
  %q165 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q165, i32 0, i32 1
  %150 = load i32, i32* %y166, align 4, !tbaa !81
  %cmp167 = icmp sge i32 %149, %150
  br i1 %cmp167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %lor.lhs.false.162, %if.end.156
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %lor.lhs.false.162
  %p170 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p170, i32 0, i32 0
  %151 = load i32, i32* %x171, align 4, !tbaa !78
  %shr = ashr i32 %151, 8
  store i32 %shr, i32* %sx, align 4, !tbaa !5
  %p172 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p172, i32 0, i32 1
  %152 = load i32, i32* %y173, align 4, !tbaa !79
  %shr174 = ashr i32 %152, 8
  store i32 %shr174, i32* %sy, align 4, !tbaa !5
  call void @gs_make_identity(%struct.gs_matrix_s* %m) #6
  %q175 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x176 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q175, i32 0, i32 0
  %153 = load i32, i32* %x176, align 4, !tbaa !80
  %conv = sext i32 %153 to i64
  %add = add nsw i64 %conv, 128
  %shr177 = ashr i64 %add, 8
  %conv178 = trunc i64 %shr177 to i32
  %154 = load i32, i32* %sx, align 4, !tbaa !5
  %sub = sub nsw i32 %conv178, %154
  %x179 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  store i32 %sub, i32* %x179, align 4, !tbaa !197
  %q180 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q180, i32 0, i32 1
  %155 = load i32, i32* %y181, align 4, !tbaa !81
  %conv182 = sext i32 %155 to i64
  %add183 = add nsw i64 %conv182, 128
  %shr184 = ashr i64 %add183, 8
  %conv185 = trunc i64 %shr184 to i32
  %156 = load i32, i32* %sy, align 4, !tbaa !5
  %sub186 = sub nsw i32 %conv185, %156
  %y187 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  store i32 %sub186, i32* %y187, align 4, !tbaa !198
  %x188 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  %157 = load i32, i32* %x188, align 4, !tbaa !197
  %cmp189 = icmp eq i32 %157, 0
  br i1 %cmp189, label %if.then.195, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %if.end.169
  %y192 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  %158 = load i32, i32* %y192, align 4, !tbaa !198
  %cmp193 = icmp eq i32 %158, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %lor.lhs.false.191, %if.end.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.196:                                       ; preds = %lor.lhs.false.191
  %159 = load i32, i32* %sx, align 4, !tbaa !5
  %conv197 = sitofp i32 %159 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv197, float* %tx, align 4, !tbaa !199
  %160 = load i32, i32* %sy, align 4, !tbaa !5
  %conv198 = sitofp i32 %160 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv198, float* %ty, align 4, !tbaa !200
  %161 = load i32, i32* %sx, align 4, !tbaa !5
  %conv199 = sitofp i32 %161 to double
  %path_offset = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 13
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset, i32 0, i32 0
  store double %conv199, double* %x200, align 8, !tbaa !178
  %162 = load i32, i32* %sy, align 4, !tbaa !5
  %conv201 = sitofp i32 %162 to double
  %path_offset202 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 13
  %y203 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset202, i32 0, i32 1
  store double %conv201, double* %y203, align 8, !tbaa !179
  %x204 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  %163 = load i32, i32* %x204, align 4, !tbaa !197
  %conv205 = sitofp i32 %163 to double
  %y206 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  %164 = load i32, i32* %y206, align 4, !tbaa !198
  %conv207 = sitofp i32 %164 to double
  %mul = fmul double %conv205, %conv207
  %165 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %165, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %166 = load i32, i32* %num_components, align 4, !tbaa !201
  %conv208 = sitofp i32 %166 to double
  %mul209 = fmul double %mul, %conv208
  %167 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %MaxShadingBitmapSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %167, i32 0, i32 112
  %168 = load i64, i64* %MaxShadingBitmapSize, align 8, !tbaa !202
  %conv210 = sitofp i64 %168 to double
  %div = fdiv double %mul209, %conv210
  store double %div, double* %scale, align 8, !tbaa !84
  %169 = load double, double* %scale, align 8, !tbaa !84
  %cmp211 = fcmp ogt double %169, 1.000000e+00
  br i1 %cmp211, label %if.then.213, label %if.end.282

if.then.213:                                      ; preds = %if.end.196
  %170 = load double, double* %scale, align 8, !tbaa !84
  %call214 = call double @sqrt(double %170) #8
  %call215 = call double @ceil(double %call214) #7
  %conv216 = fptosi double %call215 to i32
  %call217 = call i32 @ilog2(i32 %conv216) #6
  store i32 %call217, i32* %log2_scale_y, align 4, !tbaa !5
  store i32 %call217, i32* %log2_scale_x, align 4, !tbaa !5
  %171 = load i32, i32* %log2_scale_x, align 4, !tbaa !5
  %shl = shl i32 1, %171
  %conv218 = sitofp i32 %shl to double
  %172 = load i32, i32* %log2_scale_y, align 4, !tbaa !5
  %shl219 = shl i32 1, %172
  %conv220 = sitofp i32 %shl219 to double
  %mul221 = fmul double %conv218, %conv220
  %173 = load double, double* %scale, align 8, !tbaa !84
  %cmp222 = fcmp olt double %mul221, %173
  br i1 %cmp222, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %if.then.213
  %174 = load i32, i32* %log2_scale_y, align 4, !tbaa !5
  %inc225 = add nsw i32 %174, 1
  store i32 %inc225, i32* %log2_scale_y, align 4, !tbaa !5
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %if.then.213
  %175 = load i32, i32* %log2_scale_x, align 4, !tbaa !5
  %shl227 = shl i32 1, %175
  %conv228 = sitofp i32 %shl227 to double
  %176 = load i32, i32* %log2_scale_y, align 4, !tbaa !5
  %shl229 = shl i32 1, %176
  %conv230 = sitofp i32 %shl229 to double
  %mul231 = fmul double %conv228, %conv230
  %177 = load double, double* %scale, align 8, !tbaa !84
  %cmp232 = fcmp olt double %mul231, %177
  br i1 %cmp232, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %if.end.226
  %178 = load i32, i32* %log2_scale_x, align 4, !tbaa !5
  %inc235 = add nsw i32 %178, 1
  store i32 %inc235, i32* %log2_scale_x, align 4, !tbaa !5
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.234, %if.end.226
  %179 = load i32, i32* %log2_scale_x, align 4, !tbaa !5
  %shl237 = shl i32 1, %179
  %conv238 = sitofp i32 %shl237 to double
  store double %conv238, double* %scalex, align 8, !tbaa !84
  %180 = load i32, i32* %log2_scale_y, align 4, !tbaa !5
  %shl239 = shl i32 1, %180
  %conv240 = sitofp i32 %shl239 to double
  store double %conv240, double* %scaley, align 8, !tbaa !84
  %x241 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  %181 = load i32, i32* %x241, align 4, !tbaa !197
  %conv242 = sitofp i32 %181 to double
  %182 = load double, double* %scalex, align 8, !tbaa !84
  %div243 = fdiv double %conv242, %182
  %add244 = fadd double %div243, 5.000000e-01
  %call245 = call double @floor(double %add244) #7
  %conv246 = fptosi double %call245 to i32
  %x247 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  store i32 %conv246, i32* %x247, align 4, !tbaa !197
  %y248 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  %183 = load i32, i32* %y248, align 4, !tbaa !198
  %conv249 = sitofp i32 %183 to double
  %184 = load double, double* %scaley, align 8, !tbaa !84
  %div250 = fdiv double %conv249, %184
  %add251 = fadd double %div250, 5.000000e-01
  %call252 = call double @floor(double %add251) #7
  %conv253 = fptosi double %call252 to i32
  %y254 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  store i32 %conv253, i32* %y254, align 4, !tbaa !198
  %185 = load double, double* %scalex, align 8, !tbaa !84
  %div255 = fdiv double 1.000000e+00, %185
  %186 = load double, double* %scaley, align 8, !tbaa !84
  %div256 = fdiv double 1.000000e+00, %186
  %call257 = call i32 @gs_make_scaling(double %div255, double %div256, %struct.gs_matrix_s* %ms) #6
  %187 = load double, double* %scalex, align 8, !tbaa !84
  %188 = load double, double* %scaley, align 8, !tbaa !84
  %call258 = call i32 @gs_make_scaling(double %187, double %188, %struct.gs_matrix_s* %msi) #6
  %call259 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %msi, %struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #6
  %189 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm260 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %189, i32 0, i32 5
  %190 = bitcast %struct.gs_matrix_fixed_s* %ctm260 to %struct.gs_matrix_s*
  %call261 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %190, %struct.gs_matrix_s* %ms, %struct.gs_matrix_s* %mm) #6
  %191 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %192 = bitcast %struct.gs_imager_state_s* %191 to %struct.gs_state_s*
  %call262 = call i32 @gs_setmatrix(%struct.gs_state_s* %192, %struct.gs_matrix_s* %mm) #6
  %193 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %194 = bitcast %struct.gs_state_s* %193 to %struct.gs_imager_state_s*
  %ctm263 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %194, i32 0, i32 5
  %195 = bitcast %struct.gs_matrix_fixed_s* %ctm263 to %struct.gs_matrix_s*
  %call264 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %195, %struct.gs_matrix_s* %ms, %struct.gs_matrix_s* %mm) #6
  %196 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call265 = call i32 @gs_setmatrix(%struct.gs_state_s* %196, %struct.gs_matrix_s* %mm) #6
  %p266 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x267 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p266, i32 0, i32 0
  %197 = load i32, i32* %x267, align 4, !tbaa !78
  %198 = load double, double* %scalex, align 8, !tbaa !84
  %conv268 = fptosi double %198 to i32
  %div269 = sdiv i32 %197, %conv268
  %shr270 = ashr i32 %div269, 8
  store i32 %shr270, i32* %sx, align 4, !tbaa !5
  %p271 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y272 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p271, i32 0, i32 1
  %199 = load i32, i32* %y272, align 4, !tbaa !79
  %200 = load double, double* %scaley, align 8, !tbaa !84
  %conv273 = fptosi double %200 to i32
  %div274 = sdiv i32 %199, %conv273
  %shr275 = ashr i32 %div274, 8
  store i32 %shr275, i32* %sy, align 4, !tbaa !5
  %201 = load i32, i32* %sx, align 4, !tbaa !5
  %conv276 = sitofp i32 %201 to double
  %path_offset277 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 13
  %x278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset277, i32 0, i32 0
  store double %conv276, double* %x278, align 8, !tbaa !178
  %202 = load i32, i32* %sy, align 4, !tbaa !5
  %conv279 = sitofp i32 %202 to double
  %path_offset280 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 13
  %y281 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %path_offset280, i32 0, i32 1
  store double %conv279, double* %y281, align 8, !tbaa !179
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.236, %if.end.196
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %204 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %204, i32 0, i32 3
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !203
  %206 = load i32, i32* %need_mask, align 4, !tbaa !5
  %207 = load i32, i32* %sx, align 4, !tbaa !5
  %208 = load i32, i32* %sy, align 4, !tbaa !5
  %x283 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 0
  %209 = load i32, i32* %x283, align 4, !tbaa !197
  %y284 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %rect_size, i32 0, i32 1
  %210 = load i32, i32* %y284, align 4, !tbaa !198
  %call285 = call i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s* %203, %struct.gs_memory_s* %205, %struct.gs_matrix_s* %m, %struct.pdf_lcvd_s** %pcvd, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 0) #6
  store i32 %call285, i32* %code, align 4, !tbaa !5
  %211 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call286 = call i32 @gx_dc_pattern2_has_background(%struct.gx_device_color_s* %211) #6
  %212 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %pcvd, align 8, !tbaa !1
  %has_background = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %212, i32 0, i32 11
  store i32 %call286, i32* %has_background, align 4, !tbaa !110
  %213 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %213, i32 0, i32 47
  %214 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call287 = call i32 @stream_puts(%struct.stream_s* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #6
  %215 = load i32, i32* %code, align 4, !tbaa !5
  %cmp288 = icmp sge i32 %215, 0
  br i1 %cmp288, label %if.then.290, label %if.end.300

if.then.290:                                      ; preds = %if.end.282
  %216 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %217 = bitcast %struct.gx_device_pdf_s* %216 to %struct.gx_device_vector_s*
  %218 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call291 = call i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %217, %struct.gx_path_s* %218, i32 4, %struct.gs_matrix_s* null) #6
  store i32 %call291, i32* %code, align 4, !tbaa !5
  %219 = load i32, i32* %code, align 4, !tbaa !5
  %cmp292 = icmp sge i32 %219, 0
  br i1 %cmp292, label %if.then.294, label %if.end.299

if.then.294:                                      ; preds = %if.then.290
  %220 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm295 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %220, i32 0, i32 47
  %221 = load %struct.stream_s*, %struct.stream_s** %strm295, align 8, !tbaa !62
  %222 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %222, i32 0, i32 0
  %223 = load i32, i32* %rule, align 4, !tbaa !204
  %cmp296 = icmp slt i32 %223, 0
  %cond = select i1 %cmp296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)
  %call298 = call i32 @stream_puts(%struct.stream_s* %221, i8* %cond) #6
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.294, %if.then.290
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.282
  %224 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %m301 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 12
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %224, i8* null, %struct.gs_matrix_s* %m301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #6
  %write_matrix = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 10
  store i32 0, i32* %write_matrix, align 4, !tbaa !111
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp302 = icmp sge i32 %225, 0
  br i1 %cmp302, label %if.then.304, label %if.end.309

if.then.304:                                      ; preds = %if.end.300
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %pi, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %226 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !206
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %cvd, i32 0, i32 0
  %227 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %228 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %229 = bitcast %struct.gs_state_s* %228 to %struct.gs_imager_state_s*
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %pi, i32 0, i32 5
  %230 = load i32, i32* %shfill, align 4, !tbaa !207
  %tobool305 = icmp ne i32 %230, 0
  %lnot306 = xor i1 %tobool305, true
  %lnot.ext307 = zext i1 %lnot306 to i32
  %call308 = call i32 @gs_shading_do_fill_rectangle(%struct.gs_shading_s* %226, %struct.gs_fixed_rect_s* null, %struct.gx_device_s* %227, %struct.gs_imager_state_s* %229, i32 %lnot.ext307) #6
  store i32 %call308, i32* %code, align 4, !tbaa !5
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.304, %if.end.300
  %231 = load i32, i32* %code, align 4, !tbaa !5
  %cmp310 = icmp sge i32 %231, 0
  br i1 %cmp310, label %if.then.312, label %if.end.314

if.then.312:                                      ; preds = %if.end.309
  %232 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call313 = call i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %232, %struct.pdf_lcvd_s* %cvd) #6
  store i32 %call313, i32* %code, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.312, %if.end.309
  %233 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm315 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %233, i32 0, i32 47
  %234 = load %struct.stream_s*, %struct.stream_s** %strm315, align 8, !tbaa !62
  %call316 = call i32 @stream_puts(%struct.stream_s* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #6
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %236 = load i32, i32* %need_mask, align 4, !tbaa !5
  call void @pdf_remove_masked_image_converter(%struct.gx_device_pdf_s* %235, %struct.pdf_lcvd_s* %cvd, i32 %236) #6
  %237 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %238 = bitcast %struct.gs_imager_state_s* %237 to %struct.gs_state_s*
  %call317 = call i32 @gs_setmatrix(%struct.gs_state_s* %238, %struct.gs_matrix_s* %save_ctm) #6
  %239 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call318 = call i32 @gs_state_free(%struct.gs_state_s* %239) #6
  %240 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %240, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.314, %if.then.195, %if.then.168, %if.then.105, %if.then.61, %if.then.54
  %241 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast %struct.gs_pattern2_instance_s* %pi to i8*
  call void @llvm.lifetime.end(i64 104, i8* %242) #1
  %243 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %243) #1
  %244 = bitcast i32* %log2_scale_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %log2_scale_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast double* %scaley to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast double* %scalex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast %struct.gs_int_point_s* %rect_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast %struct.gs_matrix_s* %mm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %250) #1
  %251 = bitcast %struct.gs_matrix_s* %msi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %251) #1
  %252 = bitcast %struct.gs_matrix_s* %ms to i8*
  call void @llvm.lifetime.end(i64 24, i8* %252) #1
  %253 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %253) #1
  %254 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %254) #1
  %255 = bitcast i32* %need_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast %struct.gs_fixed_rect_s* %bbox1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %256) #1
  %257 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %257) #1
  %258 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast %struct.pdf_lcvd_s** %pcvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast %struct.pdf_lcvd_s* %cvd to i8*
  call void @llvm.lifetime.end(i64 2904, i8* %261) #1
  br label %cleanup.339

cleanup.339:                                      ; preds = %cleanup, %if.then.47
  %262 = bitcast i32* %convert_to_image to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  br label %cleanup.452

if.end.340:                                       ; preds = %if.end.35
  %263 = load i32, i32* %code, align 4, !tbaa !5
  %cmp341 = icmp slt i32 %263, 0
  br i1 %cmp341, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %if.end.340
  %264 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %264, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.344:                                       ; preds = %if.end.340
  %265 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #1
  %266 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm345 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %266, i32 0, i32 47
  %267 = load %struct.stream_s*, %struct.stream_s** %strm345, align 8, !tbaa !62
  store %struct.stream_s* %267, %struct.stream_s** %s, align 8, !tbaa !1
  %268 = bitcast double* %scale346 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #1
  %269 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %269) #1
  %270 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %270) #1
  store %struct.gs_matrix_s* null, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %271 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool347 = icmp ne %struct.gx_clip_path_s* %271, null
  br i1 %tobool347, label %if.then.348, label %if.end.415

if.then.348:                                      ; preds = %if.end.344
  br label %do.body.349

do.body.349:                                      ; preds = %if.then.348
  %p350 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x351 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p350, i32 0, i32 0
  %272 = load i32, i32* %x351, align 4, !tbaa !78
  %p352 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x353 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p352, i32 0, i32 0
  %273 = load i32, i32* %x353, align 4, !tbaa !78
  %cmp354 = icmp sgt i32 %272, %273
  br i1 %cmp354, label %if.then.356, label %if.end.361

if.then.356:                                      ; preds = %do.body.349
  %p357 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x358 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p357, i32 0, i32 0
  %274 = load i32, i32* %x358, align 4, !tbaa !78
  %p359 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x360 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p359, i32 0, i32 0
  store i32 %274, i32* %x360, align 4, !tbaa !78
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.356, %do.body.349
  %q362 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x363 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q362, i32 0, i32 0
  %275 = load i32, i32* %x363, align 4, !tbaa !80
  %q364 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x365 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q364, i32 0, i32 0
  %276 = load i32, i32* %x365, align 4, !tbaa !80
  %cmp366 = icmp slt i32 %275, %276
  br i1 %cmp366, label %if.then.368, label %if.end.373

if.then.368:                                      ; preds = %if.end.361
  %q369 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x370 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q369, i32 0, i32 0
  %277 = load i32, i32* %x370, align 4, !tbaa !80
  %q371 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x372 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q371, i32 0, i32 0
  store i32 %277, i32* %x372, align 4, !tbaa !80
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.368, %if.end.361
  %p374 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y375 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p374, i32 0, i32 1
  %278 = load i32, i32* %y375, align 4, !tbaa !79
  %p376 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y377 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p376, i32 0, i32 1
  %279 = load i32, i32* %y377, align 4, !tbaa !79
  %cmp378 = icmp sgt i32 %278, %279
  br i1 %cmp378, label %if.then.380, label %if.end.385

if.then.380:                                      ; preds = %if.end.373
  %p381 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y382 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p381, i32 0, i32 1
  %280 = load i32, i32* %y382, align 4, !tbaa !79
  %p383 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y384 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p383, i32 0, i32 1
  store i32 %280, i32* %y384, align 4, !tbaa !79
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.380, %if.end.373
  %q386 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y387 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q386, i32 0, i32 1
  %281 = load i32, i32* %y387, align 4, !tbaa !81
  %q388 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y389 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q388, i32 0, i32 1
  %282 = load i32, i32* %y389, align 4, !tbaa !81
  %cmp390 = icmp slt i32 %281, %282
  br i1 %cmp390, label %if.then.392, label %if.end.397

if.then.392:                                      ; preds = %if.end.385
  %q393 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y394 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q393, i32 0, i32 1
  %283 = load i32, i32* %y394, align 4, !tbaa !81
  %q395 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y396 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q395, i32 0, i32 1
  store i32 %283, i32* %y396, align 4, !tbaa !81
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.392, %if.end.385
  br label %do.cond.398

do.cond.398:                                      ; preds = %if.end.397
  br label %do.end.399

do.end.399:                                       ; preds = %do.cond.398
  %p400 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x401 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p400, i32 0, i32 0
  %284 = load i32, i32* %x401, align 4, !tbaa !78
  %q402 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x403 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q402, i32 0, i32 0
  %285 = load i32, i32* %x403, align 4, !tbaa !80
  %cmp404 = icmp sgt i32 %284, %285
  br i1 %cmp404, label %if.then.413, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %do.end.399
  %p407 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y408 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p407, i32 0, i32 1
  %286 = load i32, i32* %y408, align 4, !tbaa !79
  %q409 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y410 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q409, i32 0, i32 1
  %287 = load i32, i32* %y410, align 4, !tbaa !81
  %cmp411 = icmp sgt i32 %286, %287
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %lor.lhs.false.406, %do.end.399
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end.414:                                       ; preds = %lor.lhs.false.406
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %if.end.344
  %288 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %288, i32 0, i32 2
  %289 = load float, float* %flatness, align 4, !tbaa !208
  %290 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %290, i32 0, i32 51
  %flatness416 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 27
  %291 = load float, float* %flatness416, align 4, !tbaa !209
  %cmp417 = fcmp une float %289, %291
  br i1 %cmp417, label %if.then.419, label %if.end.426

if.then.419:                                      ; preds = %if.end.415
  %292 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %293 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness420 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %293, i32 0, i32 2
  %294 = load float, float* %flatness420, align 4, !tbaa !208
  %conv421 = fpext float %294 to double
  %call422 = call i8* @pprintg1(%struct.stream_s* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), double %conv421) #6
  %295 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness423 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %295, i32 0, i32 2
  %296 = load float, float* %flatness423, align 4, !tbaa !208
  %297 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %state424 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %297, i32 0, i32 51
  %flatness425 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state424, i32 0, i32 27
  store float %296, float* %flatness425, align 4, !tbaa !209
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.419, %if.end.415
  %298 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call427 = call i32 @make_rect_scaling(%struct.gx_device_pdf_s* %298, %struct.gs_fixed_rect_s* %box1, double 1.000000e+00, double* %scale346) #6
  %tobool428 = icmp ne i32 %call427, 0
  br i1 %tobool428, label %if.then.429, label %if.end.437

if.then.429:                                      ; preds = %if.end.426
  %299 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %scale430 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %299, i32 0, i32 62
  %x431 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale430, i32 0, i32 0
  %300 = load double, double* %x431, align 8, !tbaa !210
  %301 = load double, double* %scale346, align 8, !tbaa !84
  %mul432 = fmul double %300, %301
  %302 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %scale433 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %302, i32 0, i32 62
  %y434 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale433, i32 0, i32 1
  %303 = load double, double* %y434, align 8, !tbaa !211
  %304 = load double, double* %scale346, align 8, !tbaa !84
  %mul435 = fmul double %303, %304
  %call436 = call i32 @gs_make_scaling(double %mul432, double %mul435, %struct.gs_matrix_s* %smat) #6
  %305 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.gs_matrix_s* %smat, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #6
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.429, %if.end.426
  %306 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %307 = bitcast %struct.gx_device_pdf_s* %306 to %struct.gx_device_vector_s*
  %308 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %309 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %call438 = call i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %307, %struct.gx_path_s* %308, i32 17, %struct.gs_matrix_s* %309) #6
  %310 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %311 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %rule439 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %311, i32 0, i32 0
  %312 = load i32, i32* %rule439, align 4, !tbaa !204
  %cmp440 = icmp slt i32 %312, 0
  %cond442 = select i1 %cmp440, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)
  %call443 = call i32 @stream_puts(%struct.stream_s* %310, i8* %cond442) #6
  %313 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %tobool444 = icmp ne %struct.gs_matrix_s* %313, null
  br i1 %tobool444, label %if.then.445, label %if.end.447

if.then.445:                                      ; preds = %if.end.437
  %314 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call446 = call i32 @stream_puts(%struct.stream_s* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.445, %if.end.437
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.448

cleanup.448:                                      ; preds = %if.end.447, %if.then.413
  %315 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %316) #1
  %317 = bitcast double* %scale346 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.452 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.448
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

cleanup.452:                                      ; preds = %cleanup.cont, %cleanup.448, %if.then.343, %cleanup.339, %if.then.34, %if.then.31, %if.then.28, %if.then.24, %if.then.19, %if.then.13, %if.then.5, %if.then.2
  %319 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %319) #1
  %320 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %320) #1
  %321 = bitcast i32* %have_path to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = load i32, i32* %retval
  ret i32 %324
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare void @pdf_prepare_initial_viewer_state(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*) #2

declare void @pdf_reset_graphics(%struct.gx_device_pdf_s*) #2

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @prepare_fill_with_clip(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_fixed_rect_s* %box, i32 %have_path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %box.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %have_path.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %new_clip = alloca i32, align 4
  %code = alloca i32, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %box, %struct.gs_fixed_rect_s** %box.addr, align 8, !tbaa !1
  store i32 %have_path, i32* %have_path.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %new_clip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %2, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %4, %struct.gs_fixed_rect_s* %cbox) #6
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !78
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !80
  %cmp = icmp sge i32 %5, %6
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !79
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 1
  %8 = load i32, i32* %y4, align 4, !tbaa !81
  %cmp5 = icmp sge i32 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %box.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fixed_rect_s* %9 to i8*
  %11 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 4, i1 false), !tbaa.struct !185
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %12 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %13, %struct.gx_clip_path_s* %14) #6
  store i32 %call8, i32* %new_clip, align 4, !tbaa !5
  %15 = load i32, i32* %have_path.addr, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.7
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 156
  %17 = load i32, i32* %context, align 4, !tbaa !212
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %18 = load i32, i32* %new_clip, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %if.end.7
  %19 = load i32, i32* %new_clip, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call17 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %20) #6
  store i32 %call17, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.then.14
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call18 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %21, i32 1) #6
  store i32 %call18, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %22, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.22:                                        ; preds = %if.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %lor.lhs.false.12
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call24 = call i32 @pdf_prepare_fill(%struct.gx_device_pdf_s* %24, %struct.gs_imager_state_s* %25) #6
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %26, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.27:                                        ; preds = %if.end.23
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call28 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %28, %struct.gx_clip_path_s* %29) #6
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.27, %if.then.26, %if.then.21, %cleanup
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %new_clip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s*) #2

declare i32 @gx_dc_pattern2_can_overlap(%struct.gx_device_color_s*) #2

declare %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s*, %struct.gs_memory_s*) #2

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

declare i32 @gx_dc_pattern2_get_bbox(%struct.gx_device_color_s*, %struct.gs_fixed_rect_s*) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @ilog2(i32) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_dc_pattern2_has_background(%struct.gx_device_color_s*) #2

declare void @pdf_put_matrix(%struct.gx_device_pdf_s*, i8*, %struct.gs_matrix_s*, i8*) #2

declare i32 @gs_shading_do_fill_rectangle(%struct.gs_shading_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, i32) #2

declare i32 @gs_state_free(%struct.gs_state_s*) #2

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_rect_scaling(%struct.gx_device_pdf_s* %pdev, %struct.gs_fixed_rect_s* %bbox, double %prescale, double* %pscale) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %bbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %prescale.addr = alloca double, align 8
  %pscale.addr = alloca double*, align 8
  %bmin = alloca double, align 8
  %bmax = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %bbox, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  store double %prescale, double* %prescale.addr, align 8, !tbaa !84
  store double* %pscale, double** %pscale.addr, align 8, !tbaa !1
  %0 = bitcast double* %bmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %bmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !78
  %conv = sitofp i32 %3 to double
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 62
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  %5 = load double, double* %x1, align 8, !tbaa !210
  %div = fdiv double %conv, %5
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !79
  %conv3 = sitofp i32 %7 to double
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 62
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale4, i32 0, i32 1
  %9 = load double, double* %y5, align 8, !tbaa !211
  %div6 = fdiv double %conv3, %9
  %cmp = fcmp olt double %div, %div6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %10, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 0
  %11 = load i32, i32* %x9, align 4, !tbaa !78
  %conv10 = sitofp i32 %11 to double
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 62
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale11, i32 0, i32 0
  %13 = load double, double* %x12, align 8, !tbaa !210
  %div13 = fdiv double %conv10, %13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %15 = load i32, i32* %y15, align 4, !tbaa !79
  %conv16 = sitofp i32 %15 to double
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 62
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale17, i32 0, i32 1
  %17 = load double, double* %y18, align 8, !tbaa !211
  %div19 = fdiv double %conv16, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div13, %cond.true ], [ %div19, %cond.false ]
  %18 = load double, double* %prescale.addr, align 8, !tbaa !84
  %mul = fmul double %cond, %18
  store double %mul, double* %bmin, align 8, !tbaa !84
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %20 = load i32, i32* %x20, align 4, !tbaa !80
  %conv21 = sitofp i32 %20 to double
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 62
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale22, i32 0, i32 0
  %22 = load double, double* %x23, align 8, !tbaa !210
  %div24 = fdiv double %conv21, %22
  %23 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %q25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %23, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q25, i32 0, i32 1
  %24 = load i32, i32* %y26, align 4, !tbaa !81
  %conv27 = sitofp i32 %24 to double
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 62
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale28, i32 0, i32 1
  %26 = load double, double* %y29, align 8, !tbaa !211
  %div30 = fdiv double %conv27, %26
  %cmp31 = fcmp ogt double %div24, %div30
  br i1 %cmp31, label %cond.true.33, label %cond.false.40

cond.true.33:                                     ; preds = %cond.end
  %27 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %27, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 0
  %28 = load i32, i32* %x35, align 4, !tbaa !80
  %conv36 = sitofp i32 %28 to double
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 62
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale37, i32 0, i32 0
  %30 = load double, double* %x38, align 8, !tbaa !210
  %div39 = fdiv double %conv36, %30
  br label %cond.end.47

cond.false.40:                                    ; preds = %cond.end
  %31 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %bbox.addr, align 8, !tbaa !1
  %q41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %31, i32 0, i32 1
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q41, i32 0, i32 1
  %32 = load i32, i32* %y42, align 4, !tbaa !81
  %conv43 = sitofp i32 %32 to double
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %scale44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 62
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale44, i32 0, i32 1
  %34 = load double, double* %y45, align 8, !tbaa !211
  %div46 = fdiv double %conv43, %34
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.40, %cond.true.33
  %cond48 = phi double [ %div39, %cond.true.33 ], [ %div46, %cond.false.40 ]
  %35 = load double, double* %prescale.addr, align 8, !tbaa !84
  %mul49 = fmul double %cond48, %35
  store double %mul49, double* %bmax, align 8, !tbaa !84
  %36 = load double, double* %bmin, align 8, !tbaa !84
  %cmp50 = fcmp ole double %36, -4.172800e+06
  br i1 %cmp50, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.47
  %37 = load double, double* %bmax, align 8, !tbaa !84
  %cmp52 = fcmp ogt double %37, 4.172800e+06
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.47
  %38 = load double, double* %bmin, align 8, !tbaa !84
  %div54 = fdiv double %38, -4.172800e+06
  %39 = load double, double* %bmax, align 8, !tbaa !84
  %div55 = fdiv double %39, 4.172800e+06
  %cmp56 = fcmp ogt double %div54, %div55
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %if.then
  %40 = load double, double* %bmin, align 8, !tbaa !84
  %div59 = fdiv double %40, -4.172800e+06
  br label %cond.end.62

cond.false.60:                                    ; preds = %if.then
  %41 = load double, double* %bmax, align 8, !tbaa !84
  %div61 = fdiv double %41, 4.172800e+06
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.58
  %cond63 = phi double [ %div59, %cond.true.58 ], [ %div61, %cond.false.60 ]
  %42 = load double*, double** %pscale.addr, align 8, !tbaa !1
  store double %cond63, double* %42, align 8, !tbaa !84
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %43 = load double*, double** %pscale.addr, align 8, !tbaa !1
  store double 1.000000e+00, double* %43, align 8, !tbaa !84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end.62
  %44 = bitcast double* %bmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast double* %bmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca double, align 8
  %path_scale = alloca double, align 8
  %set_ctm = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %prescale = alloca double, align 8
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %hl_color = alloca i32, align 4
  %pis_for_hl_color = alloca %struct.gs_imager_state_s*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %minor = alloca double, align 8
  %clip_box = alloca %struct.gs_fixed_rect_s, align 4
  %stroke_bbox = alloca %struct.gs_fixed_rect_s, align 4
  %d0 = alloca %struct.gs_point_s, align 8
  %d1 = alloca %struct.gs_point_s, align 8
  %p0 = alloca %struct.gs_fixed_point_s, align 4
  %p1 = alloca %struct.gs_fixed_point_s, align 4
  %bbox_expansion_x = alloca i32, align 4
  %bbox_expansion_y = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %path_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast double* %prescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store double 1.000000e+00, double* %prescale, align 8, !tbaa !84
  %10 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 3
  %12 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !182
  %cmp = icmp ne %struct.gx_path_segments_s* %12, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 3
  %14 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !182
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %14, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %15 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !183
  %cmp2 = icmp eq %struct.subpath_s* %15, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %16, %struct.gx_clip_path_s* %17) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call4 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %18) #6
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.40

if.else:                                          ; preds = %if.end
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %last_charpath_op = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 230
  %20 = load i32, i32* %last_charpath_op, align 4, !tbaa !213
  %and = and i32 %20, 4096
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else.37

land.lhs.true.6:                                  ; preds = %if.else
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %22 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments7, align 8, !tbaa !182
  %contents8 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %22, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents8, i32 0, i32 1
  %23 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !214
  %tobool9 = icmp ne %struct.subpath_s* %23, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else.37

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %last_charpath_segment = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 4
  %25 = load %struct.segment_s*, %struct.segment_s** %last_charpath_segment, align 8, !tbaa !215
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 3
  %27 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments11, align 8, !tbaa !182
  %contents12 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %27, i32 0, i32 1
  %subpath_current13 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents12, i32 0, i32 1
  %28 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current13, align 8, !tbaa !214
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %28, i32 0, i32 5
  %29 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !216
  %cmp14 = icmp eq %struct.segment_s* %25, %29
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.37

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 99
  %31 = load i32, i32* %ForOPDFRead, align 4, !tbaa !219
  %tobool16 = icmp ne i32 %31, 0
  br i1 %tobool16, label %if.else.37, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %32 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_pdf_s* %33 to %struct.gx_device_vector_s*
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call18 = call i32 @pdf_can_handle_hl_color(%struct.gx_device_vector_s* %34, %struct.gs_imager_state_s* %35, %struct.gx_device_color_s* %36) #6
  store i32 %call18, i32* %hl_color, align 4, !tbaa !5
  %37 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i32, i32* %hl_color, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %38, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_imager_state_s* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct.gs_imager_state_s* %cond, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 160
  %41 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !220
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %41, i32 0, i32 2
  %42 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !221
  %call20 = call i32 @pdf_modify_text_render_mode(%struct.pdf_text_state_s* %42, i32 1) #6
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %cond.end
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 57
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 55
  %call23 = call i32 @pdf_reset_color(%struct.gx_device_pdf_s* %43, %struct.gs_imager_state_s* %44, %struct.gx_device_color_s* %45, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %stroke_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_stroke_color_commands) #6
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %48, 0
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.then.22
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 47
  %50 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  store %struct.stream_s* %50, %struct.stream_s** %s, align 8, !tbaa !1
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %52 = load float, float* %arrayidx, align 4, !tbaa !52
  %div = fdiv float 7.200000e+01, %52
  %conv = fpext float %div to double
  store double %conv, double* %scale, align 8, !tbaa !84
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %54 = load float, float* %xx, align 4, !tbaa !116
  %conv26 = fpext float %54 to double
  %55 = load double, double* %scale, align 8, !tbaa !84
  %mul = fmul double %55, %conv26
  store double %mul, double* %scale, align 8, !tbaa !84
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %58 = load float, float* %half_width, align 4, !tbaa !223
  %mul27 = fmul float %58, 2.000000e+00
  %59 = load double, double* %scale, align 8, !tbaa !84
  %conv28 = fptrunc double %59 to float
  %mul29 = fmul float %mul27, %conv28
  %conv30 = fpext float %mul29 to double
  %call31 = call i8* @pprintg1(%struct.stream_s* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), double %conv30) #6
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call32 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %60, i32 1) #6
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %cond.end
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call35 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %62, i32 1) #6
  store i32 %call35, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.25
  %63 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.354 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true.6, %if.else
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call38 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %65, i32 1) #6
  store i32 %call38, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %cleanup.cont
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.3
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %66, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.44:                                        ; preds = %if.end.40
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call45 = call i32 @pdf_prepare_stroke(%struct.gx_device_pdf_s* %68, %struct.gs_imager_state_s* %69) #6
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %70, -15
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %74 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %75 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %76 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call49 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %71, %struct.gs_imager_state_s* %72, %struct.gx_path_s* %73, %struct.gx_stroke_params_s* %74, %struct.gx_device_color_s* %75, %struct.gx_clip_path_s* %76) #6
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.50:                                        ; preds = %if.end.44
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %77, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.54:                                        ; preds = %if.end.50
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %80 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call55 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %79, %struct.gx_clip_path_s* %80) #6
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %81 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %81, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.59:                                        ; preds = %if.end.54
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %84 = bitcast %struct.gx_device_pdf_s* %83 to %struct.gx_device_vector_s*
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call60 = call i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s* %84, %struct.gs_imager_state_s* %85, double* %scale, %struct.gs_matrix_s* %mat) #6
  store i32 %call60, i32* %set_ctm, align 4, !tbaa !5
  %86 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %86, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.93

land.lhs.true.62:                                 ; preds = %if.end.59
  %87 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm63 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %87, i32 0, i32 5
  %xx64 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm63, i32 0, i32 0
  %88 = load float, float* %xx64, align 4, !tbaa !116
  %cmp65 = fcmp oeq float %88, 0.000000e+00
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false

land.lhs.true.67:                                 ; preds = %land.lhs.true.62
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm68 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm68, i32 0, i32 1
  %90 = load float, float* %xy, align 4, !tbaa !118
  %cmp69 = fcmp oeq float %90, 0.000000e+00
  br i1 %cmp69, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.67, %land.lhs.true.62
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm71, i32 0, i32 2
  %92 = load float, float* %yx, align 4, !tbaa !120
  %cmp72 = fcmp oeq float %92, 0.000000e+00
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %lor.lhs.false
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm75, i32 0, i32 3
  %94 = load float, float* %yy, align 4, !tbaa !122
  %cmp76 = fcmp oeq float %94, 0.000000e+00
  br i1 %cmp76, label %if.then.78, label %if.end.93

if.then.78:                                       ; preds = %land.lhs.true.74, %land.lhs.true.67
  store i32 0, i32* %set_ctm, align 4, !tbaa !5
  %95 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm79 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %95, i32 0, i32 5
  %xx80 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm79, i32 0, i32 0
  %96 = load float, float* %xx80, align 4, !tbaa !116
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %97, i32 0, i32 5
  %xy82 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm81, i32 0, i32 1
  %98 = load float, float* %xy82, align 4, !tbaa !118
  %add = fadd float %96, %98
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm83 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %99, i32 0, i32 5
  %yx84 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm83, i32 0, i32 2
  %100 = load float, float* %yx84, align 4, !tbaa !120
  %add85 = fadd float %add, %100
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm86 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 5
  %yy87 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm86, i32 0, i32 3
  %102 = load float, float* %yy87, align 4, !tbaa !122
  %add88 = fadd float %add85, %102
  %conv89 = fpext float %add88 to double
  %call90 = call double @fabs(double %conv89) #7
  %call91 = call double @sqrt(double 2.000000e+00) #8
  %div92 = fdiv double %call90, %call91
  store double %div92, double* %scale, align 8, !tbaa !84
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.78, %land.lhs.true.74, %lor.lhs.false, %if.end.59
  %103 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool94 = icmp ne i32 %103, 0
  br i1 %tobool94, label %if.then.95, label %if.end.132

if.then.95:                                       ; preds = %if.end.93
  %104 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %xx96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %105 = load float, float* %xx96, align 4, !tbaa !224
  %conv97 = fpext float %105 to double
  store double %conv97, double* %a, align 8, !tbaa !84
  %106 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %xy98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %107 = load float, float* %xy98, align 4, !tbaa !225
  %conv99 = fpext float %107 to double
  store double %conv99, double* %b, align 8, !tbaa !84
  %108 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %yx100 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %109 = load float, float* %yx100, align 4, !tbaa !226
  %conv101 = fpext float %109 to double
  store double %conv101, double* %c, align 8, !tbaa !84
  %110 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %yy102 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %111 = load float, float* %yy102, align 4, !tbaa !227
  %conv103 = fpext float %111 to double
  store double %conv103, double* %d, align 8, !tbaa !84
  %112 = bitcast double* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load double, double* %a, align 8, !tbaa !84
  %114 = load double, double* %d, align 8, !tbaa !84
  %mul104 = fmul double %113, %114
  %115 = load double, double* %b, align 8, !tbaa !84
  %116 = load double, double* %c, align 8, !tbaa !84
  %mul105 = fmul double %115, %116
  %sub = fsub double %mul104, %mul105
  %call106 = call double @fabs(double %sub) #7
  store double %call106, double* %u, align 8, !tbaa !84
  %117 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load double, double* %a, align 8, !tbaa !84
  %119 = load double, double* %a, align 8, !tbaa !84
  %mul107 = fmul double %118, %119
  %120 = load double, double* %b, align 8, !tbaa !84
  %121 = load double, double* %b, align 8, !tbaa !84
  %mul108 = fmul double %120, %121
  %add109 = fadd double %mul107, %mul108
  %122 = load double, double* %c, align 8, !tbaa !84
  %123 = load double, double* %c, align 8, !tbaa !84
  %mul110 = fmul double %122, %123
  %add111 = fadd double %add109, %mul110
  %124 = load double, double* %d, align 8, !tbaa !84
  %125 = load double, double* %d, align 8, !tbaa !84
  %mul112 = fmul double %124, %125
  %add113 = fadd double %add111, %mul112
  store double %add113, double* %v, align 8, !tbaa !84
  %126 = bitcast double* %minor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  %127 = load double, double* %v, align 8, !tbaa !84
  %128 = load double, double* %u, align 8, !tbaa !84
  %mul114 = fmul double 2.000000e+00, %128
  %add115 = fadd double %127, %mul114
  %call116 = call double @sqrt(double %add115) #8
  %129 = load double, double* %v, align 8, !tbaa !84
  %130 = load double, double* %u, align 8, !tbaa !84
  %mul117 = fmul double 2.000000e+00, %130
  %sub118 = fsub double %129, %mul117
  %call119 = call double @sqrt(double %sub118) #8
  %sub120 = fsub double %call116, %call119
  %mul121 = fmul double %sub120, 5.000000e-01
  store double %mul121, double* %minor, align 8, !tbaa !84
  %131 = load double, double* %minor, align 8, !tbaa !84
  %cmp122 = fcmp oeq double %131, 0.000000e+00
  br i1 %cmp122, label %cond.true.127, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.then.95
  %132 = load double, double* %minor, align 8, !tbaa !84
  %cmp125 = fcmp ogt double %132, 1.000000e+00
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %lor.lhs.false.124, %if.then.95
  br label %cond.end.130

cond.false.128:                                   ; preds = %lor.lhs.false.124
  %133 = load double, double* %minor, align 8, !tbaa !84
  %div129 = fdiv double 1.000000e+00, %133
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.128, %cond.true.127
  %cond131 = phi double [ 1.000000e+00, %cond.true.127 ], [ %div129, %cond.false.128 ]
  store double %cond131, double* %prescale, align 8, !tbaa !84
  %134 = bitcast double* %minor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast double* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  br label %if.end.132

if.end.132:                                       ; preds = %cond.end.130, %if.end.93
  %141 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call133 = call i32 @gx_path_bbox(%struct.gx_path_s* %141, %struct.gs_fixed_rect_s* %bbox) #6
  %142 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %142) #1
  %143 = bitcast %struct.gs_fixed_rect_s* %stroke_bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %143) #1
  %144 = bitcast %struct.gs_fixed_rect_s* %stroke_bbox to i8*
  %145 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 16, i32 4, i1 false), !tbaa.struct !185
  %146 = bitcast %struct.gs_point_s* %d0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %146) #1
  %147 = bitcast %struct.gs_point_s* %d1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %147) #1
  %148 = bitcast %struct.gs_fixed_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  %149 = bitcast %struct.gs_fixed_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  %150 = bitcast i32* %bbox_expansion_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %151 = bitcast i32* %bbox_expansion_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %152, i32 0, i32 3
  %half_width135 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params134, i32 0, i32 0
  %153 = load float, float* %half_width135, align 4, !tbaa !223
  %conv136 = fpext float %153 to double
  %154 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm137 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %154, i32 0, i32 5
  %155 = bitcast %struct.gs_matrix_fixed_s* %ctm137 to %struct.gs_matrix_s*
  %call138 = call i32 @gs_distance_transform(double %conv136, double 0.000000e+00, %struct.gs_matrix_s* %155, %struct.gs_point_s* %d0) #6
  %156 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params139 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %156, i32 0, i32 3
  %half_width140 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params139, i32 0, i32 0
  %157 = load float, float* %half_width140, align 4, !tbaa !223
  %conv141 = fpext float %157 to double
  %158 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm142 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %158, i32 0, i32 5
  %159 = bitcast %struct.gs_matrix_fixed_s* %ctm142 to %struct.gs_matrix_s*
  %call143 = call i32 @gs_distance_transform(double 0.000000e+00, double %conv141, %struct.gs_matrix_s* %159, %struct.gs_point_s* %d1) #6
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 0
  %160 = load double, double* %x, align 8, !tbaa !228
  %cmp144 = fcmp olt double %160, 0.000000e+00
  br i1 %cmp144, label %cond.true.146, label %cond.false.149

cond.true.146:                                    ; preds = %if.end.132
  %x147 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 0
  %161 = load double, double* %x147, align 8, !tbaa !228
  %sub148 = fsub double -0.000000e+00, %161
  br label %cond.end.151

cond.false.149:                                   ; preds = %if.end.132
  %x150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 0
  %162 = load double, double* %x150, align 8, !tbaa !228
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %cond.true.146
  %cond152 = phi double [ %sub148, %cond.true.146 ], [ %162, %cond.false.149 ]
  %mul153 = fmul double %cond152, 2.560000e+02
  %conv154 = fptosi double %mul153 to i32
  %x155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  store i32 %conv154, i32* %x155, align 4, !tbaa !96
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 1
  %163 = load double, double* %y, align 8, !tbaa !229
  %cmp156 = fcmp olt double %163, 0.000000e+00
  br i1 %cmp156, label %cond.true.158, label %cond.false.161

cond.true.158:                                    ; preds = %cond.end.151
  %y159 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 1
  %164 = load double, double* %y159, align 8, !tbaa !229
  %sub160 = fsub double -0.000000e+00, %164
  br label %cond.end.163

cond.false.161:                                   ; preds = %cond.end.151
  %y162 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d0, i32 0, i32 1
  %165 = load double, double* %y162, align 8, !tbaa !229
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.158
  %cond164 = phi double [ %sub160, %cond.true.158 ], [ %165, %cond.false.161 ]
  %mul165 = fmul double %cond164, 2.560000e+02
  %conv166 = fptosi double %mul165 to i32
  %y167 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  store i32 %conv166, i32* %y167, align 4, !tbaa !97
  %x168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 0
  %166 = load double, double* %x168, align 8, !tbaa !228
  %cmp169 = fcmp olt double %166, 0.000000e+00
  br i1 %cmp169, label %cond.true.171, label %cond.false.174

cond.true.171:                                    ; preds = %cond.end.163
  %x172 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 0
  %167 = load double, double* %x172, align 8, !tbaa !228
  %sub173 = fsub double -0.000000e+00, %167
  br label %cond.end.176

cond.false.174:                                   ; preds = %cond.end.163
  %x175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 0
  %168 = load double, double* %x175, align 8, !tbaa !228
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.174, %cond.true.171
  %cond177 = phi double [ %sub173, %cond.true.171 ], [ %168, %cond.false.174 ]
  %mul178 = fmul double %cond177, 2.560000e+02
  %conv179 = fptosi double %mul178 to i32
  %x180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %conv179, i32* %x180, align 4, !tbaa !96
  %y181 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 1
  %169 = load double, double* %y181, align 8, !tbaa !229
  %cmp182 = fcmp olt double %169, 0.000000e+00
  br i1 %cmp182, label %cond.true.184, label %cond.false.187

cond.true.184:                                    ; preds = %cond.end.176
  %y185 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 1
  %170 = load double, double* %y185, align 8, !tbaa !229
  %sub186 = fsub double -0.000000e+00, %170
  br label %cond.end.189

cond.false.187:                                   ; preds = %cond.end.176
  %y188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d1, i32 0, i32 1
  %171 = load double, double* %y188, align 8, !tbaa !229
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.187, %cond.true.184
  %cond190 = phi double [ %sub186, %cond.true.184 ], [ %171, %cond.false.187 ]
  %mul191 = fmul double %cond190, 2.560000e+02
  %conv192 = fptosi double %mul191 to i32
  %y193 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  store i32 %conv192, i32* %y193, align 4, !tbaa !97
  %x194 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  %172 = load i32, i32* %x194, align 4, !tbaa !96
  %x195 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %173 = load i32, i32* %x195, align 4, !tbaa !96
  %cmp196 = icmp sgt i32 %172, %173
  br i1 %cmp196, label %cond.true.198, label %cond.false.200

cond.true.198:                                    ; preds = %cond.end.189
  %x199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 0
  %174 = load i32, i32* %x199, align 4, !tbaa !96
  br label %cond.end.202

cond.false.200:                                   ; preds = %cond.end.189
  %x201 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %175 = load i32, i32* %x201, align 4, !tbaa !96
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.200, %cond.true.198
  %cond203 = phi i32 [ %174, %cond.true.198 ], [ %175, %cond.false.200 ]
  %conv204 = sext i32 %cond203 to i64
  %add205 = add nsw i64 %conv204, 512
  %conv206 = trunc i64 %add205 to i32
  store i32 %conv206, i32* %bbox_expansion_x, align 4, !tbaa !5
  %y207 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  %176 = load i32, i32* %y207, align 4, !tbaa !97
  %y208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %177 = load i32, i32* %y208, align 4, !tbaa !97
  %cmp209 = icmp sgt i32 %176, %177
  br i1 %cmp209, label %cond.true.211, label %cond.false.213

cond.true.211:                                    ; preds = %cond.end.202
  %y212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p0, i32 0, i32 1
  %178 = load i32, i32* %y212, align 4, !tbaa !97
  br label %cond.end.215

cond.false.213:                                   ; preds = %cond.end.202
  %y214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %179 = load i32, i32* %y214, align 4, !tbaa !97
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.211
  %cond216 = phi i32 [ %178, %cond.true.211 ], [ %179, %cond.false.213 ]
  %conv217 = sext i32 %cond216 to i64
  %add218 = add nsw i64 %conv217, 512
  %conv219 = trunc i64 %add218 to i32
  store i32 %conv219, i32* %bbox_expansion_y, align 4, !tbaa !5
  %180 = load i32, i32* %bbox_expansion_x, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %x220 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %181 = load i32, i32* %x220, align 4, !tbaa !78
  %sub221 = sub nsw i32 %181, %180
  store i32 %sub221, i32* %x220, align 4, !tbaa !78
  %182 = load i32, i32* %bbox_expansion_y, align 4, !tbaa !5
  %p222 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %y223 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p222, i32 0, i32 1
  %183 = load i32, i32* %y223, align 4, !tbaa !79
  %sub224 = sub nsw i32 %183, %182
  store i32 %sub224, i32* %y223, align 4, !tbaa !79
  %184 = load i32, i32* %bbox_expansion_x, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %x225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %185 = load i32, i32* %x225, align 4, !tbaa !80
  %add226 = add nsw i32 %185, %184
  store i32 %add226, i32* %x225, align 4, !tbaa !80
  %186 = load i32, i32* %bbox_expansion_y, align 4, !tbaa !5
  %q227 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %y228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q227, i32 0, i32 1
  %187 = load i32, i32* %y228, align 4, !tbaa !81
  %add229 = add nsw i32 %187, %186
  store i32 %add229, i32* %y228, align 4, !tbaa !81
  %188 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call230 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %188, %struct.gs_fixed_rect_s* %clip_box) #6
  br label %do.body

do.body:                                          ; preds = %cond.end.215
  %p231 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p231, i32 0, i32 0
  %189 = load i32, i32* %x232, align 4, !tbaa !78
  %p233 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %x234 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p233, i32 0, i32 0
  %190 = load i32, i32* %x234, align 4, !tbaa !78
  %cmp235 = icmp sgt i32 %189, %190
  br i1 %cmp235, label %if.then.237, label %if.end.242

if.then.237:                                      ; preds = %do.body
  %p238 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x239 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p238, i32 0, i32 0
  %191 = load i32, i32* %x239, align 4, !tbaa !78
  %p240 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %x241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p240, i32 0, i32 0
  store i32 %191, i32* %x241, align 4, !tbaa !78
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.237, %do.body
  %q243 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q243, i32 0, i32 0
  %192 = load i32, i32* %x244, align 4, !tbaa !80
  %q245 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %x246 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q245, i32 0, i32 0
  %193 = load i32, i32* %x246, align 4, !tbaa !80
  %cmp247 = icmp slt i32 %192, %193
  br i1 %cmp247, label %if.then.249, label %if.end.254

if.then.249:                                      ; preds = %if.end.242
  %q250 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x251 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q250, i32 0, i32 0
  %194 = load i32, i32* %x251, align 4, !tbaa !80
  %q252 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %x253 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q252, i32 0, i32 0
  store i32 %194, i32* %x253, align 4, !tbaa !80
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.249, %if.end.242
  %p255 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y256 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p255, i32 0, i32 1
  %195 = load i32, i32* %y256, align 4, !tbaa !79
  %p257 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %y258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p257, i32 0, i32 1
  %196 = load i32, i32* %y258, align 4, !tbaa !79
  %cmp259 = icmp sgt i32 %195, %196
  br i1 %cmp259, label %if.then.261, label %if.end.266

if.then.261:                                      ; preds = %if.end.254
  %p262 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p262, i32 0, i32 1
  %197 = load i32, i32* %y263, align 4, !tbaa !79
  %p264 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %y265 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p264, i32 0, i32 1
  store i32 %197, i32* %y265, align 4, !tbaa !79
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.261, %if.end.254
  %q267 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y268 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q267, i32 0, i32 1
  %198 = load i32, i32* %y268, align 4, !tbaa !81
  %q269 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %y270 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q269, i32 0, i32 1
  %199 = load i32, i32* %y270, align 4, !tbaa !81
  %cmp271 = icmp slt i32 %198, %199
  br i1 %cmp271, label %if.then.273, label %if.end.278

if.then.273:                                      ; preds = %if.end.266
  %q274 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y275 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q274, i32 0, i32 1
  %200 = load i32, i32* %y275, align 4, !tbaa !81
  %q276 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %y277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q276, i32 0, i32 1
  store i32 %200, i32* %y277, align 4, !tbaa !81
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.273, %if.end.266
  br label %do.cond

do.cond:                                          ; preds = %if.end.278
  br label %do.end

do.end:                                           ; preds = %do.cond
  %q279 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %x280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q279, i32 0, i32 0
  %201 = load i32, i32* %x280, align 4, !tbaa !80
  %p281 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %x282 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p281, i32 0, i32 0
  %202 = load i32, i32* %x282, align 4, !tbaa !78
  %cmp283 = icmp slt i32 %201, %202
  br i1 %cmp283, label %if.then.292, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %do.end
  %q286 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 1
  %y287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q286, i32 0, i32 1
  %203 = load i32, i32* %y287, align 4, !tbaa !81
  %p288 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %stroke_bbox, i32 0, i32 0
  %y289 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p288, i32 0, i32 1
  %204 = load i32, i32* %y289, align 4, !tbaa !79
  %cmp290 = icmp slt i32 %203, %204
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %lor.lhs.false.285, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.293:                                       ; preds = %lor.lhs.false.285
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.294

cleanup.294:                                      ; preds = %if.end.293, %if.then.292
  %205 = bitcast i32* %bbox_expansion_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %bbox_expansion_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.gs_fixed_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.gs_fixed_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast %struct.gs_point_s* %d1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %209) #1
  %210 = bitcast %struct.gs_point_s* %d0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %210) #1
  %211 = bitcast %struct.gs_fixed_rect_s* %stroke_bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %211) #1
  %212 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %212) #1
  %cleanup.dest.302 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.302, label %cleanup.354 [
    i32 0, label %cleanup.cont.303
  ]

cleanup.cont.303:                                 ; preds = %cleanup.294
  %213 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %214 = load double, double* %prescale, align 8, !tbaa !84
  %call304 = call i32 @make_rect_scaling(%struct.gx_device_pdf_s* %213, %struct.gs_fixed_rect_s* %bbox, double %214, double* %path_scale) #6
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.then.306, label %if.end.314

if.then.306:                                      ; preds = %cleanup.cont.303
  %215 = load double, double* %path_scale, align 8, !tbaa !84
  %216 = load double, double* %scale, align 8, !tbaa !84
  %div307 = fdiv double %216, %215
  store double %div307, double* %scale, align 8, !tbaa !84
  %217 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool308 = icmp ne i32 %217, 0
  br i1 %tobool308, label %if.then.309, label %if.else.311

if.then.309:                                      ; preds = %if.then.306
  %218 = load double, double* %path_scale, align 8, !tbaa !84
  %219 = load double, double* %path_scale, align 8, !tbaa !84
  %call310 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mat, double %218, double %219, %struct.gs_matrix_s* %mat) #6
  br label %if.end.313

if.else.311:                                      ; preds = %if.then.306
  %220 = load double, double* %path_scale, align 8, !tbaa !84
  %221 = load double, double* %path_scale, align 8, !tbaa !84
  %call312 = call i32 @gs_make_scaling(double %220, double %221, %struct.gs_matrix_s* %mat) #6
  store i32 1, i32* %set_ctm, align 4, !tbaa !5
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.311, %if.then.309
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %cleanup.cont.303
  %222 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %223 = bitcast %struct.gx_device_pdf_s* %222 to %struct.gx_device_vector_s*
  %224 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %225 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %226 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %227 = load double, double* %scale, align 8, !tbaa !84
  %call315 = call i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s* %223, %struct.gs_imager_state_s* %224, %struct.gx_stroke_params_s* %225, %struct.gx_device_color_s* %226, double %227) #6
  store i32 %call315, i32* %code, align 4, !tbaa !5
  %228 = load i32, i32* %code, align 4, !tbaa !5
  %cmp316 = icmp slt i32 %228, 0
  br i1 %cmp316, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %if.end.314
  %229 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %230 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %231 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %232 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %233 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %234 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call319 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %229, %struct.gs_imager_state_s* %230, %struct.gx_path_s* %231, %struct.gx_stroke_params_s* %232, %struct.gx_device_color_s* %233, %struct.gx_clip_path_s* %234) #6
  store i32 %call319, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.320:                                       ; preds = %if.end.314
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %235, i32 0, i32 104
  %236 = load i32, i32* %HaveStrokeColor, align 4, !tbaa !58
  %tobool321 = icmp ne i32 %236, 0
  br i1 %tobool321, label %if.end.324, label %if.then.322

if.then.322:                                      ; preds = %if.end.320
  %237 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %237, i32 0, i32 56
  %238 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color323 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %238, i32 0, i32 57
  %239 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color to i8*
  %240 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %240, i64 632, i32 8, i1 false), !tbaa.struct !59
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.322, %if.end.320
  %241 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool325 = icmp ne i32 %241, 0
  br i1 %tobool325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %if.end.324
  %242 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.gs_matrix_s* %mat, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #6
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %if.end.324
  %243 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %244 = bitcast %struct.gx_device_pdf_s* %243 to %struct.gx_device_vector_s*
  %245 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %246 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool328 = icmp ne i32 %246, 0
  br i1 %tobool328, label %cond.true.329, label %cond.false.330

cond.true.329:                                    ; preds = %if.end.327
  br label %cond.end.331

cond.false.330:                                   ; preds = %if.end.327
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.329
  %cond332 = phi %struct.gs_matrix_s* [ %mat, %cond.true.329 ], [ null, %cond.false.330 ]
  %call333 = call i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %244, %struct.gx_path_s* %245, i32 18, %struct.gs_matrix_s* %cond332) #6
  store i32 %call333, i32* %code, align 4, !tbaa !5
  %247 = load i32, i32* %code, align 4, !tbaa !5
  %cmp334 = icmp slt i32 %247, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %cond.end.331
  %248 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.337:                                       ; preds = %cond.end.331
  %249 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm338 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %249, i32 0, i32 47
  %250 = load %struct.stream_s*, %struct.stream_s** %strm338, align 8, !tbaa !62
  store %struct.stream_s* %250, %struct.stream_s** %s, align 8, !tbaa !1
  %251 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %252 = load i32, i32* %code, align 4, !tbaa !5
  %tobool339 = icmp ne i32 %252, 0
  %cond340 = select i1 %tobool339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)
  %call341 = call i32 @stream_puts(%struct.stream_s* %251, i8* %cond340) #6
  %253 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %254 = load i32, i32* %set_ctm, align 4, !tbaa !5
  %tobool342 = icmp ne i32 %254, 0
  %cond343 = select i1 %tobool342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)
  %call344 = call i32 @stream_puts(%struct.stream_s* %253, i8* %cond343) #6
  %255 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %255, i32 0, i32 100
  %256 = load i32, i32* %Eps2Write, align 4, !tbaa !9
  %tobool345 = icmp ne i32 %256, 0
  br i1 %tobool345, label %if.then.346, label %if.end.353

if.then.346:                                      ; preds = %if.end.337
  %257 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %257, i32 0, i32 128
  %258 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !57
  %inc = add nsw i32 %258, 1
  store i32 %inc, i32* %AccumulatingBBox, align 4, !tbaa !57
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %260 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %261 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %262 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %263 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %264 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call347 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %259, %struct.gs_imager_state_s* %260, %struct.gx_path_s* %261, %struct.gx_stroke_params_s* %262, %struct.gx_device_color_s* %263, %struct.gx_clip_path_s* %264) #6
  store i32 %call347, i32* %code, align 4, !tbaa !5
  %265 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox348 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %265, i32 0, i32 128
  %266 = load i32, i32* %AccumulatingBBox348, align 4, !tbaa !57
  %dec = add nsw i32 %266, -1
  store i32 %dec, i32* %AccumulatingBBox348, align 4, !tbaa !57
  %267 = load i32, i32* %code, align 4, !tbaa !5
  %cmp349 = icmp slt i32 %267, 0
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.then.346
  %268 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %268, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

if.end.352:                                       ; preds = %if.then.346
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.337
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.354

cleanup.354:                                      ; preds = %if.end.353, %if.then.351, %if.then.336, %if.then.318, %cleanup.294, %if.then.58, %if.then.53, %if.then.48, %if.then.43, %cleanup, %if.then
  %269 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %269) #1
  %270 = bitcast double* %prescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %271) #1
  %272 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast double* %path_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = load i32, i32* %retval
  ret i32 %278
}

declare i32 @pdf_unclip(%struct.gx_device_pdf_s*) #2

declare i32 @pdf_modify_text_render_mode(%struct.pdf_text_state_s*, i32) #2

declare i32 @pdf_reset_color(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_hl_saved_color_s*, i32*, %struct.psdf_set_color_commands_s*) #2

declare i32 @pdf_prepare_stroke(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*) #2

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, double*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %box1 = alloca %struct.gs_fixed_rect_s, align 4
  %box = alloca %struct.gs_fixed_rect_s, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %scale = alloca double, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %psmat = alloca %struct.gs_matrix_s*, align 8
  %convert_to_image = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %Box = alloca %struct.gs_rect_s*, align 8
  %params = alloca %struct.gx_fill_params_s, align 4
  %path = alloca %struct.gx_path_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  %4 = bitcast %struct.gs_fixed_rect_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 4, i1 false), !tbaa.struct !185
  %5 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  %7 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 4, i1 false), !tbaa.struct !185
  %8 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %10, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %11 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.gs_matrix_s* null, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %14 = bitcast i32* %convert_to_image to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 75
  %16 = load double, double* %CompatibilityLevel, align 8, !tbaa !186
  %cmp = fcmp ole double %16, 1.200000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %17) #6
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %18 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %convert_to_image, align 4, !tbaa !5
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !78
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %22 = load i32, i32* %x1, align 4, !tbaa !80
  %cmp2 = icmp eq i32 %20, %22
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end:                                           ; preds = %land.end
  %23 = load i32, i32* %convert_to_image, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %23, 0
  br i1 %tobool3, label %if.else.227, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %27 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call5 = call i32 @prepare_fill_with_clip(%struct.gx_device_pdf_s* %24, %struct.gs_imager_state_s* %25, %struct.gs_fixed_rect_s* %box, i32 1, %struct.gx_device_color_s* %26, %struct.gx_clip_path_s* %27) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %28, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end.8:                                         ; preds = %if.then.4
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %30, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end.11:                                        ; preds = %if.end.8
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_pdf_s* %31 to %struct.gx_device_vector_s*
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call12 = call i32 @pdf_setfillcolor(%struct.gx_device_vector_s* %32, %struct.gs_imager_state_s* %33, %struct.gx_device_color_s* %34) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %35, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end.15:                                        ; preds = %if.end.11
  %37 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.gx_clip_path_s* %37, null
  br i1 %tobool16, label %if.then.17, label %if.end.61

if.then.17:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 0
  %38 = load i32, i32* %x19, align 4, !tbaa !78
  %p20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p20, i32 0, i32 0
  %39 = load i32, i32* %x21, align 4, !tbaa !78
  %cmp22 = icmp sgt i32 %38, %39
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %do.body
  %p24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 0
  %40 = load i32, i32* %x25, align 4, !tbaa !78
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 0
  store i32 %40, i32* %x27, align 4, !tbaa !78
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %do.body
  %q29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q29, i32 0, i32 0
  %41 = load i32, i32* %x30, align 4, !tbaa !80
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 0
  %42 = load i32, i32* %x32, align 4, !tbaa !80
  %cmp33 = icmp slt i32 %41, %42
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.28
  %q35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q35, i32 0, i32 0
  %43 = load i32, i32* %x36, align 4, !tbaa !80
  %q37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q37, i32 0, i32 0
  store i32 %43, i32* %x38, align 4, !tbaa !80
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.28
  %p40 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p40, i32 0, i32 1
  %44 = load i32, i32* %y, align 4, !tbaa !79
  %p41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p41, i32 0, i32 1
  %45 = load i32, i32* %y42, align 4, !tbaa !79
  %cmp43 = icmp sgt i32 %44, %45
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.39
  %p45 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p45, i32 0, i32 1
  %46 = load i32, i32* %y46, align 4, !tbaa !79
  %p47 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p47, i32 0, i32 1
  store i32 %46, i32* %y48, align 4, !tbaa !79
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.39
  %q50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q50, i32 0, i32 1
  %47 = load i32, i32* %y51, align 4, !tbaa !81
  %q52 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q52, i32 0, i32 1
  %48 = load i32, i32* %y53, align 4, !tbaa !81
  %cmp54 = icmp slt i32 %47, %48
  br i1 %cmp54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.49
  %q56 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q56, i32 0, i32 1
  %49 = load i32, i32* %y57, align 4, !tbaa !81
  %q58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q58, i32 0, i32 1
  store i32 %49, i32* %y59, align 4, !tbaa !81
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.end.49
  br label %do.cond

do.cond:                                          ; preds = %if.end.60
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.61

if.end.61:                                        ; preds = %do.end, %if.end.15
  %p62 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p62, i32 0, i32 0
  %50 = load i32, i32* %x63, align 4, !tbaa !78
  %q64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q64, i32 0, i32 0
  %51 = load i32, i32* %x65, align 4, !tbaa !80
  %cmp66 = icmp sgt i32 %50, %51
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.61
  %p67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p67, i32 0, i32 1
  %52 = load i32, i32* %y68, align 4, !tbaa !79
  %q69 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q69, i32 0, i32 1
  %53 = load i32, i32* %y70, align 4, !tbaa !81
  %cmp71 = icmp sgt i32 %52, %53
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false, %if.end.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.end.73:                                        ; preds = %lor.lhs.false
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call74 = call i32 @make_rect_scaling(%struct.gx_device_pdf_s* %54, %struct.gs_fixed_rect_s* %box1, double 1.000000e+00, double* %scale) #6
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.end.73
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %scale77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 62
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale77, i32 0, i32 0
  %56 = load double, double* %x78, align 8, !tbaa !210
  %57 = load double, double* %scale, align 8, !tbaa !84
  %mul = fmul double %56, %57
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %scale79 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 62
  %y80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale79, i32 0, i32 1
  %59 = load double, double* %y80, align 8, !tbaa !211
  %60 = load double, double* %scale, align 8, !tbaa !84
  %mul81 = fmul double %59, %60
  %call82 = call i32 @gs_make_scaling(double %mul, double %mul81, %struct.gs_matrix_s* %smat) #6
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.gs_matrix_s* %smat, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #6
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.76, %if.end.73
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 47
  %63 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %p84 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p84, i32 0, i32 0
  %64 = load i32, i32* %x85, align 4, !tbaa !78
  %conv = sitofp i32 %64 to double
  %mul86 = fmul double %conv, 3.906250e-03
  %65 = load double, double* %scale, align 8, !tbaa !84
  %div = fdiv double %mul86, %65
  %p87 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p87, i32 0, i32 1
  %66 = load i32, i32* %y88, align 4, !tbaa !79
  %conv89 = sitofp i32 %66 to double
  %mul90 = fmul double %conv89, 3.906250e-03
  %67 = load double, double* %scale, align 8, !tbaa !84
  %div91 = fdiv double %mul90, %67
  %q92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q92, i32 0, i32 0
  %68 = load i32, i32* %x93, align 4, !tbaa !80
  %p94 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p94, i32 0, i32 0
  %69 = load i32, i32* %x95, align 4, !tbaa !78
  %sub = sub nsw i32 %68, %69
  %conv96 = sitofp i32 %sub to double
  %mul97 = fmul double %conv96, 3.906250e-03
  %70 = load double, double* %scale, align 8, !tbaa !84
  %div98 = fdiv double %mul97, %70
  %q99 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q99, i32 0, i32 1
  %71 = load i32, i32* %y100, align 4, !tbaa !81
  %p101 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p101, i32 0, i32 1
  %72 = load i32, i32* %y102, align 4, !tbaa !79
  %sub103 = sub nsw i32 %71, %72
  %conv104 = sitofp i32 %sub103 to double
  %mul105 = fmul double %conv104, 3.906250e-03
  %73 = load double, double* %scale, align 8, !tbaa !84
  %div106 = fdiv double %mul105, %73
  %call107 = call i8* @pprintg4(%struct.stream_s* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), double %div, double %div91, double %div98, double %div106) #6
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %tobool108 = icmp ne %struct.gs_matrix_s* %74, null
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.end.83
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm110 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 47
  %76 = load %struct.stream_s*, %struct.stream_s** %strm110, align 8, !tbaa !62
  %call111 = call i32 @stream_puts(%struct.stream_s* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %if.end.83
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %77, i32 0, i32 100
  %78 = load i32, i32* %Eps2Write, align 4, !tbaa !9
  %tobool113 = icmp ne i32 %78, 0
  br i1 %tobool113, label %if.then.114, label %if.end.226

if.then.114:                                      ; preds = %if.end.112
  %79 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %accumulating_charproc = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %80, i32 0, i32 212
  %81 = load i32, i32* %accumulating_charproc, align 4, !tbaa !51
  %tobool115 = icmp ne i32 %81, 0
  br i1 %tobool115, label %if.else, label %if.then.116

if.then.116:                                      ; preds = %if.then.114
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 129
  store %struct.gs_rect_s* %BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  br label %if.end.117

if.else:                                          ; preds = %if.then.114
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 213
  store %struct.gs_rect_s* %charproc_BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  br label %if.end.117

if.end.117:                                       ; preds = %if.else, %if.then.116
  %p118 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p118, i32 0, i32 0
  %84 = load i32, i32* %x119, align 4, !tbaa !78
  %conv120 = sitofp i32 %84 to double
  %mul121 = fmul double %conv120, 3.906250e-03
  %85 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %85, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %86 = load float, float* %arrayidx, align 4, !tbaa !52
  %conv122 = fpext float %86 to double
  %div123 = fdiv double %conv122, 7.200000e+01
  %div124 = fdiv double %mul121, %div123
  %87 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p125 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %87, i32 0, i32 0
  %x126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p125, i32 0, i32 0
  %88 = load double, double* %x126, align 8, !tbaa !53
  %cmp127 = fcmp olt double %div124, %88
  br i1 %cmp127, label %if.then.129, label %if.end.141

if.then.129:                                      ; preds = %if.end.117
  %p130 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %x131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p130, i32 0, i32 0
  %89 = load i32, i32* %x131, align 4, !tbaa !78
  %conv132 = sitofp i32 %89 to double
  %mul133 = fmul double %conv132, 3.906250e-03
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution134 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 22
  %arrayidx135 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution134, i32 0, i64 0
  %91 = load float, float* %arrayidx135, align 4, !tbaa !52
  %conv136 = fpext float %91 to double
  %div137 = fdiv double %conv136, 7.200000e+01
  %div138 = fdiv double %mul133, %div137
  %92 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p139 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %92, i32 0, i32 0
  %x140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p139, i32 0, i32 0
  store double %div138, double* %x140, align 8, !tbaa !53
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.129, %if.end.117
  %p142 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p142, i32 0, i32 1
  %93 = load i32, i32* %y143, align 4, !tbaa !79
  %conv144 = sitofp i32 %93 to double
  %mul145 = fmul double %conv144, 3.906250e-03
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution146 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 22
  %arrayidx147 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution146, i32 0, i64 1
  %95 = load float, float* %arrayidx147, align 4, !tbaa !52
  %conv148 = fpext float %95 to double
  %div149 = fdiv double %conv148, 7.200000e+01
  %div150 = fdiv double %mul145, %div149
  %96 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p151 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %96, i32 0, i32 0
  %y152 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p151, i32 0, i32 1
  %97 = load double, double* %y152, align 8, !tbaa !54
  %cmp153 = fcmp olt double %div150, %97
  br i1 %cmp153, label %if.then.155, label %if.end.167

if.then.155:                                      ; preds = %if.end.141
  %p156 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 0
  %y157 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p156, i32 0, i32 1
  %98 = load i32, i32* %y157, align 4, !tbaa !79
  %conv158 = sitofp i32 %98 to double
  %mul159 = fmul double %conv158, 3.906250e-03
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution160 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %99, i32 0, i32 22
  %arrayidx161 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution160, i32 0, i64 1
  %100 = load float, float* %arrayidx161, align 4, !tbaa !52
  %conv162 = fpext float %100 to double
  %div163 = fdiv double %conv162, 7.200000e+01
  %div164 = fdiv double %mul159, %div163
  %101 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p165 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %101, i32 0, i32 0
  %y166 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p165, i32 0, i32 1
  store double %div164, double* %y166, align 8, !tbaa !54
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.155, %if.end.141
  %q168 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x169 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q168, i32 0, i32 0
  %102 = load i32, i32* %x169, align 4, !tbaa !80
  %conv170 = sitofp i32 %102 to double
  %mul171 = fmul double %conv170, 3.906250e-03
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution172 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %103, i32 0, i32 22
  %arrayidx173 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution172, i32 0, i64 0
  %104 = load float, float* %arrayidx173, align 4, !tbaa !52
  %conv174 = fpext float %104 to double
  %div175 = fdiv double %conv174, 7.200000e+01
  %div176 = fdiv double %mul171, %div175
  %105 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %105, i32 0, i32 1
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q177, i32 0, i32 0
  %106 = load double, double* %x178, align 8, !tbaa !55
  %cmp179 = fcmp ogt double %div176, %106
  br i1 %cmp179, label %if.then.181, label %if.end.196

if.then.181:                                      ; preds = %if.end.167
  %q182 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %x183 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q182, i32 0, i32 0
  %107 = load i32, i32* %x183, align 4, !tbaa !80
  %conv184 = sitofp i32 %107 to double
  %mul185 = fmul double %conv184, 3.906250e-03
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution186 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %108, i32 0, i32 22
  %arrayidx187 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution186, i32 0, i64 0
  %109 = load float, float* %arrayidx187, align 4, !tbaa !52
  %conv188 = fpext float %109 to double
  %div189 = fdiv double %conv188, 7.200000e+01
  %div190 = fdiv double %mul185, %div189
  %110 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p191 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %110, i32 0, i32 0
  %x192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p191, i32 0, i32 0
  %111 = load double, double* %x192, align 8, !tbaa !53
  %sub193 = fsub double %div190, %111
  %112 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q194 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %112, i32 0, i32 1
  %x195 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q194, i32 0, i32 0
  store double %sub193, double* %x195, align 8, !tbaa !55
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.181, %if.end.167
  %q197 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q197, i32 0, i32 1
  %113 = load i32, i32* %y198, align 4, !tbaa !81
  %conv199 = sitofp i32 %113 to double
  %mul200 = fmul double %conv199, 3.906250e-03
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution201 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %114, i32 0, i32 22
  %arrayidx202 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution201, i32 0, i64 1
  %115 = load float, float* %arrayidx202, align 4, !tbaa !52
  %conv203 = fpext float %115 to double
  %div204 = fdiv double %conv203, 7.200000e+01
  %div205 = fdiv double %mul200, %div204
  %116 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q206 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %116, i32 0, i32 1
  %y207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q206, i32 0, i32 1
  %117 = load double, double* %y207, align 8, !tbaa !56
  %cmp208 = fcmp ogt double %div205, %117
  br i1 %cmp208, label %if.then.210, label %if.end.225

if.then.210:                                      ; preds = %if.end.196
  %q211 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box1, i32 0, i32 1
  %y212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q211, i32 0, i32 1
  %118 = load i32, i32* %y212, align 4, !tbaa !81
  %conv213 = sitofp i32 %118 to double
  %mul214 = fmul double %conv213, 3.906250e-03
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution215 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 22
  %arrayidx216 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution215, i32 0, i64 1
  %120 = load float, float* %arrayidx216, align 4, !tbaa !52
  %conv217 = fpext float %120 to double
  %div218 = fdiv double %conv217, 7.200000e+01
  %div219 = fdiv double %mul214, %div218
  %121 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p220 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %121, i32 0, i32 0
  %y221 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p220, i32 0, i32 1
  %122 = load double, double* %y221, align 8, !tbaa !54
  %sub222 = fsub double %div219, %122
  %123 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q223 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %123, i32 0, i32 1
  %y224 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q223, i32 0, i32 1
  store double %sub222, double* %y224, align 8, !tbaa !56
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.210, %if.end.196
  %124 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.end.112
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

if.else.227:                                      ; preds = %if.end
  %125 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %125) #1
  %126 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %126) #1
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 0
  store i32 1, i32* %rule, align 4, !tbaa !204
  %adjust = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %y228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  store i32 0, i32* %y228, align 4, !tbaa !230
  %adjust229 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %x230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust229, i32 0, i32 0
  store i32 0, i32* %x230, align 4, !tbaa !231
  %127 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %127, i32 0, i32 27
  %128 = load float, float* %flatness, align 4, !tbaa !232
  %flatness231 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 2
  store float %128, float* %flatness231, align 4, !tbaa !208
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 1
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !233
  %call232 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path, %struct.gx_path_s* null, %struct.gs_memory_s* %130) #6
  %131 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p233 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %131, i32 0, i32 0
  %x234 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p233, i32 0, i32 0
  %132 = load i32, i32* %x234, align 4, !tbaa !78
  %133 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p235 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %133, i32 0, i32 0
  %y236 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p235, i32 0, i32 1
  %134 = load i32, i32* %y236, align 4, !tbaa !79
  %135 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q237 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %135, i32 0, i32 1
  %x238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q237, i32 0, i32 0
  %136 = load i32, i32* %x238, align 4, !tbaa !80
  %137 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q239 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %137, i32 0, i32 1
  %y240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q239, i32 0, i32 1
  %138 = load i32, i32* %y240, align 4, !tbaa !81
  %call241 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %path, i32 %132, i32 %134, i32 %136, i32 %138) #6
  store i32 %call241, i32* %code, align 4, !tbaa !5
  %139 = load i32, i32* %code, align 4, !tbaa !5
  %cmp242 = icmp slt i32 %139, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.else.227
  %140 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.245:                                       ; preds = %if.else.227
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %143 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %144 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call246 = call i32 @gdev_pdf_fill_path(%struct.gx_device_s* %141, %struct.gs_imager_state_s* %142, %struct.gx_path_s* %path, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %143, %struct.gx_clip_path_s* %144) #6
  store i32 %call246, i32* %code, align 4, !tbaa !5
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %cmp247 = icmp slt i32 %145, 0
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.245
  %146 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.250:                                       ; preds = %if.end.245
  call void @gx_path_free(%struct.gx_path_s* %path, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0)) #6
  %147 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.250, %if.then.249, %if.then.244
  %148 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %148) #1
  %149 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %149) #1
  br label %cleanup.252

cleanup.252:                                      ; preds = %cleanup, %if.end.226, %if.then.72, %if.then.14, %if.then.10, %if.then.7, %if.then
  %150 = bitcast i32* %convert_to_image to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %152) #1
  %153 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %155) #1
  %156 = bitcast %struct.gs_fixed_rect_s* %box1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %156) #1
  %157 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = load i32, i32* %retval
  ret i32 %158
}

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_path_add_rectangle(%struct.gx_path_s*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %bottom = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 102
  %5 = load i32, i32* %ResourcesBeforeUsage, align 4, !tbaa !89
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %bottom, align 4, !tbaa !5
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %7 = load i64, i64* %pure, align 8, !tbaa !7
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 66
  %9 = load i64, i64* %white, align 8, !tbaa !234
  %cmp = icmp eq i64 %7, %9
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %contents_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 155
  %11 = load i64, i64* %contents_id, align 8, !tbaa !235
  %cmp1 = icmp ne i64 %11, 0
  br i1 %cmp1, label %if.else, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 199
  %13 = load i32, i32* %sbstack_depth, align 4, !tbaa !90
  %14 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %13, %14
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_fillpage(%struct.gx_device_s* %15, %struct.gs_imager_state_s* %16, %struct.gx_device_color_s* %17) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %18 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gx_default_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #2

declare i32 @psdf_setlinewidth(%struct.gx_device_vector_s*, double) #2

declare i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_hl_saved_color_s*, i32*, %struct.psdf_set_color_commands_s*) #2

declare i32 @psdf_dorect(%struct.gx_device_vector_s*, i32, i32, i32, i32, i32) #2

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #2

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #2

declare i32 @pdf_copy_color_data(%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32) #2

declare i32 @pdf_do_image(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.gs_matrix_s*, i32) #2

declare i32 @gdev_pdf_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @compute_subimage(i32 %width, i32 %height, i32 %raster, i8* %base, i32 %x0, i32 %y0, i64 %MaxClipPathSize, i32* %x1, i32* %y1) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %MaxClipPathSize.addr = alloca i64, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %bytes = alloca i32, align 4
  %count = alloca i64, align 8
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %yy = alloca i32, align 4
  %count2 = alloca i64, align 8
  %count1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i64 %MaxClipPathSize, i64* %MaxClipPathSize.addr, align 8, !tbaa !7
  store i32* %x1, i32** %x1.addr, align 8, !tbaa !1
  store i32* %y1, i32** %y1.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %bytes, align 4, !tbaa !5
  %2 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %6 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %7 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %9 = load i64, i64* %MaxClipPathSize.addr, align 8, !tbaa !7
  %div1 = sdiv i64 %9, 4
  %10 = load i32*, i32** %x1.addr, align 8, !tbaa !1
  call void @max_subimage_width(i32 %4, i8* %add.ptr, i32 %8, i64 %div1, i32* %10, i64* %count) #6
  %11 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %12 = load i32*, i32** %y1.addr, align 8, !tbaa !1
  store i32 %11, i32* %12, align 4, !tbaa !5
  %13 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end.32

if.else:                                          ; preds = %entry
  %14 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %y0.addr, align 4, !tbaa !5
  store i32 %16, i32* %y, align 4, !tbaa !5
  %17 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i64* %count2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i64, i64* %MaxClipPathSize.addr, align 8, !tbaa !7
  %div3 = sdiv i64 %20, 4
  store i64 %div3, i64* %count1, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.else
  %21 = load i32, i32* %y, align 4, !tbaa !5
  %22 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %21, %22
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %23 = load i64, i64* %count1, align 8, !tbaa !7
  %cmp5 = icmp sgt i64 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %24, label %for.body, label %for.end.27

for.body:                                         ; preds = %land.end
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  %26 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul6 = mul nsw i32 %27, %28
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %26, i64 %idx.ext7
  %29 = load i64, i64* %count1, align 8, !tbaa !7
  call void @max_subimage_width(i32 %25, i8* %add.ptr8, i32 0, i64 %29, i32* %xx, i64* %count2) #6
  %30 = load i32, i32* %xx, align 4, !tbaa !5
  %31 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %30, %31
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !tbaa !5
  %33 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %32, %33
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.then.10
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %add13 = add nsw i32 %34, 1
  %35 = load i32*, i32** %y1.addr, align 8, !tbaa !1
  store i32 %add13, i32* %35, align 4, !tbaa !5
  %36 = load i32, i32* %xx, align 4, !tbaa !5
  %37 = load i32*, i32** %x1.addr, align 8, !tbaa !1
  store i32 %36, i32* %37, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.14:                                       ; preds = %if.then.10
  br label %for.end.27

if.end:                                           ; preds = %for.body
  %38 = load i64, i64* %count2, align 8, !tbaa !7
  %39 = load i64, i64* %count1, align 8, !tbaa !7
  %sub = sub nsw i64 %39, %38
  store i64 %sub, i64* %count1, align 8, !tbaa !7
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %add15 = add nsw i32 %40, 1
  store i32 %add15, i32* %yy, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.end
  %41 = load i32, i32* %yy, align 4, !tbaa !5
  %42 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %41, %42
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %43 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %44 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %45 = load i32, i32* %y, align 4, !tbaa !5
  %mul19 = mul nsw i32 %44, %45
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %43, i64 %idx.ext20
  %46 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %47 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %48 = load i32, i32* %yy, align 4, !tbaa !5
  %mul22 = mul nsw i32 %47, %48
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %46, i64 %idx.ext23
  %49 = load i32, i32* %bytes, align 4, !tbaa !5
  %conv = sext i32 %49 to i64
  %call = call i32 @memcmp(i8* %add.ptr21, i8* %add.ptr24, i64 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.18
  br label %for.end

if.end.26:                                        ; preds = %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %50 = load i32, i32* %yy, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %yy, align 4, !tbaa !5
  br label %for.cond.16

for.end:                                          ; preds = %if.then.25, %for.cond.16
  %51 = load i32, i32* %yy, align 4, !tbaa !5
  store i32 %51, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.27:                                       ; preds = %if.else.14, %land.end
  %52 = load i32, i32* %y, align 4, !tbaa !5
  %53 = load i32*, i32** %y1.addr, align 8, !tbaa !1
  store i32 %52, i32* %53, align 4, !tbaa !5
  %54 = load i32, i32* %width.addr, align 4, !tbaa !5
  %55 = load i32*, i32** %x1.addr, align 8, !tbaa !1
  store i32 %54, i32* %55, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.27, %if.then.12
  %56 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i64* %count2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.32, %cleanup
  %61 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.34, label %unreachable [
    i32 0, label %cleanup.cont.35
    i32 1, label %cleanup.cont.35
  ]

cleanup.cont.35:                                  ; preds = %cleanup.33, %cleanup.33
  ret void

unreachable:                                      ; preds = %cleanup.33
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_to_clip(%struct.gx_device_pdf_s* %pdev, i32 %width, i32 %height, i32 %raster, i8* %base, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %yy = alloca i32, align 4
  %code = alloca i32, align 4
  %bytes = alloca i32, align 4
  %has_segments = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %4, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %bytes, align 4, !tbaa !5
  %5 = bitcast i32* %has_segments to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %has_segments, align 4, !tbaa !5
  %6 = load i32, i32* %y0.addr, align 4, !tbaa !5
  store i32 %6, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %entry
  %7 = load i32, i32* %y, align 4, !tbaa !5
  %8 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %10, label %for.body, label %for.end.20

for.body:                                         ; preds = %land.end
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %add2 = add nsw i32 %11, 1
  store i32 %add2, i32* %yy, align 4, !tbaa !5
  %12 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %13 = load i32, i32* %yy, align 4, !tbaa !5
  %14 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %15 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %16 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %17
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %18 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %19 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %20 = load i32, i32* %yy, align 4, !tbaa !5
  %mul7 = mul nsw i32 %19, %20
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %18, i64 %idx.ext8
  %21 = load i32, i32* %bytes, align 4, !tbaa !5
  %conv = sext i32 %21 to i64
  %call = call i32 @memcmp(i8* %add.ptr, i8* %add.ptr9, i64 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body.6
  br label %for.end

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %yy, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %yy, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %if.then.10, %for.cond.4
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %for.body
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %mul12 = mul nsw i32 %25, %26
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %24, i64 %idx.ext13
  %27 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %28 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %29 = load i32, i32* %y, align 4, !tbaa !5
  %30 = load i32, i32* %yy, align 4, !tbaa !5
  %31 = load i32, i32* %has_segments, align 4, !tbaa !5
  %call15 = call i32 @image_line_to_clip(%struct.gx_device_pdf_s* %23, i8* %add.ptr14, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %32, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.11
  store i32 1, i32* %has_segments, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.11
  %33 = load i32, i32* %yy, align 4, !tbaa !5
  store i32 %33, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.20:                                       ; preds = %land.end
  %34 = load i32, i32* %has_segments, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %34, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.end.20
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 47
  %36 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call23 = call i32 @stream_puts(%struct.stream_s* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.end.20
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %37, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %38 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %39 = load i32, i32* %has_segments, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %39, 0
  %cond = select i1 %tobool27, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi i32 [ %38, %cond.true ], [ %cond, %cond.false ]
  %40 = bitcast i32* %has_segments to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret i32 %cond28
}

; Function Attrs: nounwind uwtable
define internal i32 @write_subimage(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_memory_s* %mdev, i32 %x, i32 %y, i32 %x1, i32 %y1) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %0) #1
  %1 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1) #1
  %2 = bitcast i32* %X to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp = icmp sgt i32 0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub1, %cond.false ]
  store i32 %cond, i32* %X, align 4, !tbaa !5
  %5 = bitcast i32* %Y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %6, 1
  %cmp3 = icmp sgt i32 0, %sub2
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %7, 1
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i32 [ 0, %cond.true.4 ], [ %sub6, %cond.false.5 ]
  store i32 %cond8, i32* %Y, align 4, !tbaa !5
  %8 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !147
  %11 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %cmp9 = icmp slt i32 %10, %add
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end.7
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width11, align 4, !tbaa !147
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end.7
  %14 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %add13 = add nsw i32 %14, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.10
  %cond15 = phi i32 [ %13, %cond.true.10 ], [ %add13, %cond.false.12 ]
  store i32 %cond15, i32* %X1, align 4, !tbaa !5
  %15 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 14
  %17 = load i32, i32* %height, align 4, !tbaa !148
  %18 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %add16 = add nsw i32 %18, 1
  %cmp17 = icmp slt i32 %17, %add16
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.14
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height19 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height19, align 4, !tbaa !148
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end.14
  %21 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %21, 1
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi i32 [ %20, %cond.true.18 ], [ %add21, %cond.false.20 ]
  store i32 %cond23, i32* %Y1, align 4, !tbaa !5
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %24, i32 0, i32 45
  %25 = load i8*, i8** %base, align 8, !tbaa !145
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 44
  %27 = load i32, i32* %raster, align 4, !tbaa !146
  %28 = load i32, i32* %Y, align 4, !tbaa !5
  %mul = mul i32 %27, %28
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %29 = load i32, i32* %X, align 4, !tbaa !5
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 44
  %31 = load i32, i32* %raster24, align 4, !tbaa !146
  %32 = load i32, i32* %X, align 4, !tbaa !5
  %33 = load i32, i32* %Y, align 4, !tbaa !5
  %34 = load i32, i32* %X1, align 4, !tbaa !5
  %35 = load i32, i32* %X, align 4, !tbaa !5
  %sub25 = sub nsw i32 %34, %35
  %36 = load i32, i32* %Y1, align 4, !tbaa !5
  %37 = load i32, i32* %Y, align 4, !tbaa !5
  %sub26 = sub nsw i32 %36, %37
  %call = call i32 @pdf_copy_color_data(%struct.gx_device_pdf_s* %23, i8* %add.ptr, i32 %29, i32 %31, i64 0, i32 %32, i32 %33, i32 %sub25, i32 %sub26, %struct.gs_image1_s* %image, %struct.pdf_image_writer_s* %writer, i32 2) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %38, 0
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.22
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.22
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %40 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !149
  %tobool = icmp ne %struct.pdf_resource_s* %40, null
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres30 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %42 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres30, align 8, !tbaa !149
  %call31 = call i32 @pdf_do_image(%struct.gx_device_pdf_s* %41, %struct.pdf_resource_s* %42, %struct.gs_matrix_s* null, i32 1) #6
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %Y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %X to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %48) #1
  %49 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @max_subimage_width(i32 %width, i8* %base, i32 %x0, i64 %count1, i32* %x1, i64* %count) #0 {
entry:
  %width.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %count1.addr = alloca i64, align 8
  %x1.addr = alloca i32*, align 8
  %count.addr = alloca i64*, align 8
  %c = alloca i64, align 8
  %c1 = alloca i64, align 8
  %x = alloca i32, align 4
  %p = alloca i8, align 1
  %r = alloca i8, align 1
  %q = alloca i8*, align 8
  %m = alloca i8, align 1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i64 %count1, i64* %count1.addr, align 8, !tbaa !7
  store i32* %x1, i32** %x1.addr, align 8, !tbaa !1
  store i64* %count, i64** %count.addr, align 8, !tbaa !1
  %0 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %c, align 8, !tbaa !7
  %1 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64, i64* %count1.addr, align 8, !tbaa !7
  %sub = sub nsw i64 %2, 1
  store i64 %sub, i64* %c1, align 8, !tbaa !7
  %3 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %x0.addr, align 4, !tbaa !5
  store i32 %4, i32* %x, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %p) #1
  store i8 1, i8* %p, align 1, !tbaa !60
  call void @llvm.lifetime.start(i64 1, i8* %r) #1
  %5 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x, align 4, !tbaa !5
  %div = sdiv i32 %7, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %m) #1
  %8 = load i32, i32* %x, align 4, !tbaa !5
  %rem = srem i32 %8, 8
  %shr = ashr i32 128, %rem
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %m, align 1, !tbaa !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %x, align 4, !tbaa !5
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %q, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !60
  %conv2 = zext i8 %12 to i32
  %13 = load i8, i8* %m, align 1, !tbaa !60
  %conv3 = zext i8 %13 to i32
  %and = and i32 %conv2, %conv3
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv4 = trunc i32 %lnot.ext to i8
  store i8 %conv4, i8* %r, align 1, !tbaa !60
  %14 = load i8, i8* %p, align 1, !tbaa !60
  %conv5 = zext i8 %14 to i32
  %15 = load i8, i8* %r, align 1, !tbaa !60
  %conv6 = zext i8 %15 to i32
  %cmp7 = icmp ne i32 %conv5, %conv6
  br i1 %cmp7, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %16 = load i64, i64* %c, align 8, !tbaa !7
  %17 = load i64, i64* %c1, align 8, !tbaa !7
  %cmp9 = icmp sge i64 %16, %17
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then
  %18 = load i8, i8* %r, align 1, !tbaa !60
  %tobool12 = icmp ne i8 %18, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  br label %ex

if.end:                                           ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %19 = load i64, i64* %c, align 8, !tbaa !7
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %c, align 8, !tbaa !7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body
  %20 = load i8, i8* %r, align 1, !tbaa !60
  store i8 %20, i8* %p, align 1, !tbaa !60
  %21 = load i8, i8* %m, align 1, !tbaa !60
  %conv16 = zext i8 %21 to i32
  %shr17 = ashr i32 %conv16, 1
  %conv18 = trunc i32 %shr17 to i8
  store i8 %conv18, i8* %m, align 1, !tbaa !60
  %22 = load i8, i8* %m, align 1, !tbaa !60
  %tobool19 = icmp ne i8 %22, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  store i8 -128, i8* %m, align 1, !tbaa !60
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, i32* %x, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8, i8* %p, align 1, !tbaa !60
  %tobool23 = icmp ne i8 %25, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end
  %26 = load i64, i64* %c, align 8, !tbaa !7
  %inc25 = add nsw i64 %26, 1
  store i64 %inc25, i64* %c, align 8, !tbaa !7
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.end
  br label %ex

ex:                                               ; preds = %if.end.26, %if.then.13
  %27 = load i64, i64* %c, align 8, !tbaa !7
  %28 = load i64*, i64** %count.addr, align 8, !tbaa !1
  store i64 %27, i64* %28, align 8, !tbaa !7
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %30 = load i32*, i32** %x1.addr, align 8, !tbaa !1
  store i32 %29, i32* %30, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %m) #1
  %31 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  call void @llvm.lifetime.end(i64 1, i8* %r) #1
  call void @llvm.lifetime.end(i64 1, i8* %p) #1
  %32 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @image_line_to_clip(%struct.gx_device_pdf_s* %pdev, i8* %base, i32 %x0, i32 %x1, i32 %y0, i32 %y1, i32 %started) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %base.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %started.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %q = alloca i8*, align 8
  %m = alloca i8, align 1
  %c = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  store i32 %started, i32* %started.addr, align 4, !tbaa !5
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !5
  store i32 %1, i32* %x, align 4, !tbaa !5
  %2 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %5 = load i32, i32* %x, align 4, !tbaa !5
  %div = sdiv i32 %5, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %m) #1
  %6 = load i32, i32* %x, align 4, !tbaa !5
  %rem = srem i32 %6, 8
  %shr = ashr i32 128, %rem
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %m, align 1, !tbaa !60
  %7 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 0, i64* %c, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %if.end.38, %entry
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.cond
  %8 = load i32, i32* %x, align 4, !tbaa !5
  %9 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.1
  %10 = load i8*, i8** %q, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !60
  %conv3 = zext i8 %11 to i32
  %12 = load i8, i8* %m, align 1, !tbaa !60
  %conv4 = zext i8 %12 to i32
  %and = and i32 %conv3, %conv4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %13 = load i8, i8* %m, align 1, !tbaa !60
  %conv5 = zext i8 %13 to i32
  %shr6 = ashr i32 %conv5, 1
  %conv7 = trunc i32 %shr6 to i8
  store i8 %conv7, i8* %m, align 1, !tbaa !60
  %14 = load i8, i8* %m, align 1, !tbaa !60
  %tobool8 = icmp ne i8 %14, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i8 -128, i8* %m, align 1, !tbaa !60
  %15 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %17 = load i32, i32* %x, align 4, !tbaa !5
  %18 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %17, %18
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.end
  %19 = load i64, i64* %c, align 8, !tbaa !7
  %conv14 = trunc i64 %19 to i32
  %20 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  call void @llvm.lifetime.end(i64 1, i8* %m) #1
  %21 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret i32 %conv14

if.end.15:                                        ; preds = %for.end
  %24 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %24, i32* %xx, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.33, %if.end.15
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %26 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %for.cond.16
  %27 = load i8*, i8** %q, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !60
  %conv20 = zext i8 %28 to i32
  %29 = load i8, i8* %m, align 1, !tbaa !60
  %conv21 = zext i8 %29 to i32
  %and22 = and i32 %conv20, %conv21
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.body.19
  br label %for.end.35

if.end.25:                                        ; preds = %for.body.19
  %30 = load i8, i8* %m, align 1, !tbaa !60
  %conv26 = zext i8 %30 to i32
  %shr27 = ashr i32 %conv26, 1
  %conv28 = trunc i32 %shr27 to i8
  store i8 %conv28, i8* %m, align 1, !tbaa !60
  %31 = load i8, i8* %m, align 1, !tbaa !60
  %tobool29 = icmp ne i8 %31, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.25
  store i8 -128, i8* %m, align 1, !tbaa !60
  %32 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr31, i8** %q, align 8, !tbaa !1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %inc34 = add nsw i32 %33, 1
  store i32 %inc34, i32* %x, align 4, !tbaa !5
  br label %for.cond.16

for.end.35:                                       ; preds = %if.then.24, %for.cond.16
  %34 = load i32, i32* %started.addr, align 4, !tbaa !5
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %for.end.35
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 47
  %36 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !62
  %call = call i32 @stream_puts(%struct.stream_s* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)) #6
  store i32 1, i32* %started.addr, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.end.35
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 47
  %38 = load %struct.stream_s*, %struct.stream_s** %strm39, align 8, !tbaa !62
  %39 = load i32, i32* %xx, align 4, !tbaa !5
  %conv40 = sext i32 %39 to i64
  %40 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv41 = sext i32 %40 to i64
  %call42 = call i8* @pprintld2(%struct.stream_s* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i64 %conv40, i64 %conv41) #6
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 47
  %42 = load %struct.stream_s*, %struct.stream_s** %strm43, align 8, !tbaa !62
  %43 = load i32, i32* %x, align 4, !tbaa !5
  %conv44 = sext i32 %43 to i64
  %44 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv45 = sext i32 %44 to i64
  %call46 = call i8* @pprintld2(%struct.stream_s* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i64 %conv44, i64 %conv45) #6
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 47
  %46 = load %struct.stream_s*, %struct.stream_s** %strm47, align 8, !tbaa !62
  %47 = load i32, i32* %x, align 4, !tbaa !5
  %conv48 = sext i32 %47 to i64
  %48 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv49 = sext i32 %48 to i64
  %call50 = call i8* @pprintld2(%struct.stream_s* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i64 %conv48, i64 %conv49) #6
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 47
  %50 = load %struct.stream_s*, %struct.stream_s** %strm51, align 8, !tbaa !62
  %51 = load i32, i32* %xx, align 4, !tbaa !5
  %conv52 = sext i32 %51 to i64
  %52 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv53 = sext i32 %52 to i64
  %call54 = call i8* @pprintld2(%struct.stream_s* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i64 %conv52, i64 %conv53) #6
  %53 = load i64, i64* %c, align 8, !tbaa !7
  %add = add nsw i64 %53, 4
  store i64 %add, i64* %c, align 8, !tbaa !7
  br label %for.cond
}

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #2

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

declare i32 @gx_path_is_null(%struct.gx_path_s*) #2

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #2

declare i32 @pdf_prepare_fill(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 9528}
!10 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !21, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !34, i64 7512, !34, i64 8144, !8, i64 8776, !8, i64 8784, !3, i64 8792, !3, i64 8796, !27, i64 8800, !6, i64 8816, !2, i64 8824, !8, i64 8832, !8, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !28, i64 8872, !39, i64 8880, !6, i64 9360, !28, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !44, i64 9424, !44, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !8, i64 9472, !6, i64 9480, !6, i64 9484, !43, i64 9488, !43, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !8, i64 9576, !8, i64 9584, !8, i64 9592, !45, i64 9600, !43, i64 9616, !43, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !43, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !46, i64 9784, !47, i64 9816, !47, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !8, i64 9920, !3, i64 9928, !6, i64 9960, !8, i64 9968, !8, i64 9976, !3, i64 9984, !3, i64 9988, !48, i64 9992, !48, i64 14120, !48, i64 18248, !48, i64 22376, !8, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !8, i64 26536, !6, i64 26544, !6, i64 26548, !8, i64 26552, !3, i64 26560, !8, i64 26568, !8, i64 26576, !3, i64 26584, !2, i64 26592, !49, i64 26600, !2, i64 26648, !6, i64 26656, !8, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !8, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !27, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !50, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !24, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !26, i64 30488, !6, i64 30524, !46, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !8, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !24, i64 30612, !28, i64 30640, !2, i64 30648, !40, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!11 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !22, i64 24, !6, i64 128, !26, i64 132, !6, i64 168, !27, i64 176, !27, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !29, i64 224, !29, i64 228, !30, i64 232, !8, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !23, i64 296, !31, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !23, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !32, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !33, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !33, i64 1336}
!22 = !{!"gx_line_params_s", !23, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !6, i64 36, !24, i64 40, !25, i64 64}
!23 = !{!"float", !3, i64 0}
!24 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!25 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !23, i64 12, !6, i64 16, !23, i64 20, !6, i64 24, !6, i64 28, !23, i64 32}
!26 = !{!"gs_matrix_fixed_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!27 = !{!"gs_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"double", !3, i64 0}
!29 = !{!"gs_transparency_source_s", !23, i64 0}
!30 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!31 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!33 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !8, i64 16, !3, i64 24}
!34 = !{!"gx_hl_saved_color_s", !8, i64 0, !8, i64 8, !6, i64 16, !35, i64 24, !37, i64 288}
!35 = !{!"gs_client_color_s", !2, i64 0, !36, i64 8}
!36 = !{!"gs_paint_color_s", !3, i64 0}
!37 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !38, i64 336}
!38 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!39 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !8, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !40, i64 64, !40, i64 80, !40, i64 96, !40, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !41, i64 152, !6, i64 232, !6, i64 236, !41, i64 240, !41, i64 320, !42, i64 400, !42, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !43, i64 448, !42, i64 464}
!40 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!41 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !23, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!42 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!43 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"gs_rect_s", !27, i64 0, !27, i64 16}
!47 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !46, i64 8}
!48 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!49 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!50 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !23, i64 40, !23, i64 44, !3, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !6, i64 80, !23, i64 84, !23, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !34, i64 120, !34, i64 752, !22, i64 1384, !2, i64 1488, !6, i64 1496, !8, i64 1504}
!51 = !{!10, !6, i64 30524}
!52 = !{!23, !23, i64 0}
!53 = !{!46, !28, i64 0}
!54 = !{!46, !28, i64 8}
!55 = !{!46, !28, i64 16}
!56 = !{!46, !28, i64 24}
!57 = !{!10, !6, i64 9776}
!58 = !{!10, !6, i64 9544}
!59 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !5, i64 24, i64 8, !1, i64 32, i64 256, !60, i64 288, i64 8, !1, i64 296, i64 8, !7, i64 296, i64 16, !60, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 296, i64 64, !60, i64 360, i64 256, !60, i64 616, i64 2, !61, i64 296, i64 128, !60, i64 296, i64 8, !7, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 296, i64 8, !7, i64 304, i64 4, !5, i64 624, i64 4, !5, i64 628, i64 4, !5}
!60 = !{!3, !3, i64 0}
!61 = !{!13, !13, i64 0}
!62 = !{!10, !2, i64 5848}
!63 = !{!10, !8, i64 8784}
!64 = !{!10, !8, i64 8776}
!65 = !{!66, !8, i64 296}
!66 = !{!"gx_clip_path_s", !67, i64 0, !71, i64 128, !6, i64 232, !70, i64 236, !70, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !8, i64 296}
!67 = !{!"gx_path_s", !68, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !70, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !31, i64 112, !2, i64 120}
!68 = !{!"gx_path_segments_s", !11, i64 0, !69, i64 24}
!69 = !{!"psc_", !2, i64 0, !2, i64 8}
!70 = !{!"gs_fixed_rect_s", !31, i64 0, !31, i64 8}
!71 = !{!"gx_clip_rect_list_s", !11, i64 0, !72, i64 24}
!72 = !{!"gx_clip_list_s", !73, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!73 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!74 = !{!10, !6, i64 832}
!75 = !{!10, !6, i64 836}
!76 = !{!10, !6, i64 28860}
!77 = !{!10, !6, i64 28864}
!78 = !{!70, !6, i64 0}
!79 = !{!70, !6, i64 4}
!80 = !{!70, !6, i64 8}
!81 = !{!70, !6, i64 12}
!82 = !{!66, !6, i64 232}
!83 = !{!66, !2, i64 288}
!84 = !{!28, !28, i64 0}
!85 = !{!86, !2, i64 1736}
!86 = !{!"gx_device_vector_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !21, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !34, i64 7512, !34, i64 8144, !8, i64 8776, !8, i64 8784, !3, i64 8792, !3, i64 8796, !27, i64 8800, !6, i64 8816, !2, i64 8824, !8, i64 8832, !8, i64 8840}
!87 = !{!88, !2, i64 64}
!88 = !{!"gx_device_vector_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144}
!89 = !{!10, !6, i64 9536}
!90 = !{!10, !6, i64 30392}
!91 = !{!86, !23, i64 5896}
!92 = !{!86, !23, i64 6004}
!93 = !{!86, !23, i64 6012}
!94 = !{!10, !2, i64 28808}
!95 = !{!10, !2, i64 1728}
!96 = !{!31, !6, i64 0}
!97 = !{!31, !6, i64 4}
!98 = !{!99, !2, i64 160}
!99 = !{!"gx_cpath_path_list_s", !67, i64 0, !11, i64 128, !6, i64 152, !2, i64 160}
!100 = !{!99, !6, i64 152}
!101 = !{!102, !6, i64 2844}
!102 = !{!"pdf_lcvd_s", !103, i64 0, !2, i64 2792, !2, i64 2800, !2, i64 2808, !2, i64 2816, !2, i64 2824, !2, i64 2832, !6, i64 2840, !6, i64 2844, !6, i64 2848, !6, i64 2852, !6, i64 2856, !24, i64 2860, !27, i64 2888}
!103 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !24, i64 2548, !2, i64 2576, !40, i64 2584, !104, i64 2600, !105, i64 2624, !106, i64 2656, !107, i64 2680, !108, i64 2720, !109, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!104 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!105 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!106 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!107 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!108 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!109 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!110 = !{!102, !6, i64 2856}
!111 = !{!102, !6, i64 2852}
!112 = !{!102, !6, i64 2840}
!113 = !{!10, !6, i64 9556}
!114 = !{!102, !2, i64 24}
!115 = !{!102, !23, i64 2860}
!116 = !{!21, !23, i64 132}
!117 = !{!102, !23, i64 2864}
!118 = !{!21, !23, i64 136}
!119 = !{!102, !23, i64 2868}
!120 = !{!21, !23, i64 140}
!121 = !{!102, !23, i64 2872}
!122 = !{!21, !23, i64 144}
!123 = !{!102, !23, i64 2876}
!124 = !{!21, !23, i64 148}
!125 = !{!102, !23, i64 2880}
!126 = !{!21, !23, i64 152}
!127 = !{!128, !2, i64 32}
!128 = !{!"gs_pattern1_instance_s", !11, i64 0, !2, i64 24, !2, i64 32, !8, i64 40, !129, i64 48, !24, i64 152, !46, i64 176, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !38, i64 228, !8, i64 240}
!129 = !{!"gs_pattern1_template_s", !2, i64 0, !6, i64 8, !130, i64 16, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !46, i64 56, !23, i64 88, !23, i64 92, !2, i64 96}
!130 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!131 = !{!128, !6, i64 88}
!132 = !{!128, !6, i64 92}
!133 = !{!128, !28, i64 112}
!134 = !{!128, !28, i64 104}
!135 = !{!102, !6, i64 832}
!136 = !{!128, !28, i64 120}
!137 = !{!102, !6, i64 836}
!138 = !{!128, !28, i64 128}
!139 = !{!128, !23, i64 136}
!140 = !{!128, !23, i64 140}
!141 = !{!10, !2, i64 1664}
!142 = !{!10, !2, i64 30480}
!143 = !{!102, !2, i64 2792}
!144 = !{!103, !2, i64 1200}
!145 = !{!103, !2, i64 1744}
!146 = !{!103, !6, i64 1736}
!147 = !{!103, !6, i64 832}
!148 = !{!103, !6, i64 836}
!149 = !{!150, !2, i64 144}
!150 = !{!"pdf_image_writer_s", !3, i64 0, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!151 = !{!10, !6, i64 30460}
!152 = !{!10, !8, i64 9576}
!153 = !{!154, !2, i64 72}
!154 = !{!"gs_memory_s", !2, i64 0, !155, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!155 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!156 = !{!102, !2, i64 2800}
!157 = !{!10, !13, i64 108}
!158 = !{!102, !6, i64 2748}
!159 = !{!102, !6, i64 2752}
!160 = !{!102, !2, i64 1752}
!161 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !60, i64 12, i64 2, !61, i64 14, i64 1, !60, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !60, i64 44, i64 64, !60, i64 108, i64 64, !60, i64 176, i64 512, !60, i64 688, i64 8, !1, i64 696, i64 4, !60, i64 704, i64 8, !7, i64 712, i64 4, !5}
!162 = !{!102, !6, i64 2848}
!163 = !{!103, !2, i64 1144}
!164 = !{!103, !2, i64 1752}
!165 = !{!103, !2, i64 1224}
!166 = !{!102, !2, i64 2808}
!167 = !{!102, !2, i64 2816}
!168 = !{!103, !2, i64 1176}
!169 = !{!102, !2, i64 2824}
!170 = !{!103, !2, i64 1432}
!171 = !{!102, !2, i64 2832}
!172 = !{!103, !2, i64 1664}
!173 = !{!103, !2, i64 1336}
!174 = !{i64 0, i64 4, !52, i64 4, i64 4, !52, i64 8, i64 4, !52, i64 12, i64 4, !52, i64 16, i64 4, !52, i64 20, i64 4, !52}
!175 = !{!102, !6, i64 84}
!176 = !{!103, !6, i64 84}
!177 = !{!102, !2, i64 1728}
!178 = !{!102, !28, i64 2888}
!179 = !{!102, !28, i64 2896}
!180 = !{!103, !2, i64 24}
!181 = !{!154, !2, i64 24}
!182 = !{!67, !2, i64 56}
!183 = !{!68, !2, i64 24}
!184 = !{!10, !6, i64 30384}
!185 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!186 = !{!10, !28, i64 9368}
!187 = !{!10, !3, i64 9008}
!188 = !{i64 0, i64 8, !1, i64 8, i64 8, !7, i64 8, i64 8, !1, i64 16, i64 16, !60, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !61, i64 18, i64 64, !60, i64 84, i64 256, !60, i64 340, i64 2, !61, i64 344, i64 8, !7, i64 8, i64 8, !1, i64 8, i64 128, !60, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !60, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !7, i64 648, i64 8, !1}
!189 = !{!190, !2, i64 368}
!190 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !38, i64 352, !6, i64 360, !35, i64 368, !191, i64 632}
!191 = !{!"_mask", !192, i64 0, !8, i64 8, !2, i64 16}
!192 = !{!"mp_", !6, i64 0, !6, i64 4}
!193 = !{i64 0, i64 8, !7, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !7, i64 48, i64 8, !1, i64 56, i64 4, !5, i64 64, i64 8, !7, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 4, !5}
!194 = !{!195, !2, i64 32}
!195 = !{!"gs_pattern2_instance_s", !11, i64 0, !2, i64 24, !2, i64 32, !8, i64 40, !196, i64 48, !6, i64 96}
!196 = !{!"gs_pattern2_template_s", !2, i64 0, !6, i64 8, !130, i64 16, !2, i64 32, !2, i64 40}
!197 = !{!38, !6, i64 0}
!198 = !{!38, !6, i64 4}
!199 = !{!24, !23, i64 16}
!200 = !{!24, !23, i64 20}
!201 = !{!10, !6, i64 100}
!202 = !{!10, !8, i64 9584}
!203 = !{!10, !2, i64 24}
!204 = !{!205, !6, i64 0}
!205 = !{!"gx_fill_params_s", !6, i64 0, !31, i64 4, !23, i64 12}
!206 = !{!195, !2, i64 88}
!207 = !{!195, !6, i64 96}
!208 = !{!205, !23, i64 12}
!209 = !{!10, !23, i64 6168}
!210 = !{!10, !28, i64 8800}
!211 = !{!10, !28, i64 8808}
!212 = !{!10, !3, i64 26560}
!213 = !{!10, !6, i64 30688}
!214 = !{!68, !2, i64 32}
!215 = !{!67, !2, i64 64}
!216 = !{!217, !2, i64 32}
!217 = !{!"subpath_s", !2, i64 0, !2, i64 8, !13, i64 16, !13, i64 18, !31, i64 20, !2, i64 32, !6, i64 40, !218, i64 48, !3, i64 88}
!218 = !{!"", !2, i64 0, !2, i64 8, !13, i64 16, !13, i64 18, !31, i64 20, !2, i64 32}
!219 = !{!10, !6, i64 9524}
!220 = !{!10, !2, i64 26592}
!221 = !{!222, !2, i64 16}
!222 = !{!"pdf_text_data_s", !2, i64 0, !2, i64 8, !2, i64 16}
!223 = !{!21, !23, i64 24}
!224 = !{!24, !23, i64 0}
!225 = !{!24, !23, i64 4}
!226 = !{!24, !23, i64 8}
!227 = !{!24, !23, i64 12}
!228 = !{!27, !28, i64 0}
!229 = !{!27, !28, i64 8}
!230 = !{!205, !6, i64 8}
!231 = !{!205, !6, i64 4}
!232 = !{!21, !23, i64 296}
!233 = !{!21, !2, i64 8}
!234 = !{!10, !8, i64 8840}
!235 = !{!10, !8, i64 26552}
