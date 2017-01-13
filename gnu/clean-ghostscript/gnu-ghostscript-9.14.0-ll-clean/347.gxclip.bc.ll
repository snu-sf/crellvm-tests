; ModuleID = './gxclip.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
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
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%struct.gs_point_s = type { double, double }
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
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.clip_callback_data_s = type { %struct.gx_device_s*, i32, i32, i32, i32, [2 x i64], i8*, [2 x %struct.gx_device_color_s*], i32, i32, i32, %struct.gx_device_color_s*, i32, %struct.gx_clip_path_s*, %struct.gx_strip_bitmap_s*, %struct.gs_int_point_s, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s* }

@gs_clip_device = internal constant %struct.gx_device_clip_s { i32 1856, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @clip_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @clip_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @clip_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @clip_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @clip_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @clip_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @clip_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @clip_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @clip_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @clip_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @clip_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_forward_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @clip_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_default_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_default_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_default_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @clip_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @clip_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @clip_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @clip_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gx_clip_list_s zeroinitializer, %struct.gx_clip_rect_s* null, %struct.gs_int_point_s zeroinitializer, %struct.gs_fixed_rect_s zeroinitializer, i32 0 }, align 8
@.str = private unnamed_addr constant [8 x i8] c"clipper\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"clip_call_fill_path\00", align 1

; Function Attrs: nounwind uwtable
define void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %dev, %struct.gx_clip_path_s* %pcpath, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_clip_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_clip_s* %dev, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_clip_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  call void @gx_device_init_on_stack(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_clip_s* @gs_clip_device to %struct.gx_device_s*), %struct.gs_memory_s* %3) #3
  %4 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %4, i32 0, i32 44
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %5) #3
  %6 = bitcast %struct.gx_clip_list_s* %list to i8*
  %7 = bitcast %struct.gx_clip_list_s* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 80, i32 8, i1 false), !tbaa.struct !19
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 46
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !22
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation1 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %9, i32 0, i32 46
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation1, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !29
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !30
  %12 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %12, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 0
  store float %11, float* %arrayidx3, align 4, !tbaa !30
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution4, i32 0, i64 1
  %14 = load float, float* %arrayidx5, align 4, !tbaa !30
  %15 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %15, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 1
  store float %14, float* %arrayidx7, align 4, !tbaa !30
  %16 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %sgr = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %16, i32 0, i32 35
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %sgr8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 35
  %18 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr to i8*
  %19 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 68, i32 4, i1 false), !tbaa.struct !32
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %target9 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %21, i32 0, i32 43
  store %struct.gx_device_s* %20, %struct.gx_device_s** %target9, align 8, !tbaa !33
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 15
  %23 = load i32, i32* %pad, align 4, !tbaa !34
  %24 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %pad10 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %24, i32 0, i32 15
  store i32 %23, i32* %pad10, align 4, !tbaa !35
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 16
  %26 = load i32, i32* %log2_align_mod, align 4, !tbaa !36
  %27 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod11 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %27, i32 0, i32 16
  store i32 %26, i32* %log2_align_mod11, align 4, !tbaa !37
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 17
  %29 = load i32, i32* %is_planar, align 4, !tbaa !38
  %30 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %is_planar12 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %30, i32 0, i32 17
  store i32 %29, i32* %is_planar12, align 4, !tbaa !39
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 40
  %32 = load i32, i32* %graphics_type_tag, align 4, !tbaa !40
  %33 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag13 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %33, i32 0, i32 40
  store i32 %32, i32* %graphics_type_tag13, align 4, !tbaa !41
  %34 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %34, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %35 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !42
  %36 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_clip_s* %36 to %struct.gx_device_s*
  %call14 = call i32 %35(%struct.gx_device_s* %37) #3
  ret void
}

declare void @gx_device_init_on_stack(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #1

declare %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_make_clip_device_on_stack_if_needed(%struct.gx_device_clip_s* %dev, %struct.gx_clip_path_s* %pcpath, %struct.gx_device_s* %target, %struct.gs_fixed_rect_s* %rect) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %dev.addr = alloca %struct.gx_device_clip_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_device_clip_s* %dev, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !43
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %2, i32 0, i32 4
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %3 = load i32, i32* %x2, align 4, !tbaa !44
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box3 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %4, i32 0, i32 4
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box3, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 0
  %5 = load i32, i32* %x5, align 4, !tbaa !44
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 0
  store i32 %5, i32* %x7, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %8 = load i32, i32* %x8, align 4, !tbaa !50
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box9 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %9, i32 0, i32 4
  %q10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box9, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q10, i32 0, i32 0
  %10 = load i32, i32* %x11, align 4, !tbaa !51
  %cmp12 = icmp sgt i32 %8, %10
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box14 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %11, i32 0, i32 4
  %q15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box14, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q15, i32 0, i32 0
  %12 = load i32, i32* %x16, align 4, !tbaa !51
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %13, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q17, i32 0, i32 0
  store i32 %12, i32* %x18, align 4, !tbaa !50
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %if.end
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p20, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !52
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box21 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %16, i32 0, i32 4
  %p22 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box21, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p22, i32 0, i32 1
  %17 = load i32, i32* %y23, align 4, !tbaa !53
  %cmp24 = icmp slt i32 %15, %17
  br i1 %cmp24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.19
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box26 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %18, i32 0, i32 4
  %p27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box26, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p27, i32 0, i32 1
  %19 = load i32, i32* %y28, align 4, !tbaa !53
  %20 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %20, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p29, i32 0, i32 1
  store i32 %19, i32* %y30, align 4, !tbaa !52
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.end.19
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q32, i32 0, i32 1
  %22 = load i32, i32* %y33, align 4, !tbaa !54
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box34 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %23, i32 0, i32 4
  %q35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box34, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q35, i32 0, i32 1
  %24 = load i32, i32* %y36, align 4, !tbaa !55
  %cmp37 = icmp sgt i32 %22, %24
  br i1 %cmp37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.end.31
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %outer_box39 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %25, i32 0, i32 4
  %q40 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %outer_box39, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q40, i32 0, i32 1
  %26 = load i32, i32* %y41, align 4, !tbaa !55
  %27 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %27, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q42, i32 0, i32 1
  store i32 %26, i32* %y43, align 4, !tbaa !54
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %if.end.31
  %28 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %28, i32 0, i32 3
  %p45 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p45, i32 0, i32 0
  %29 = load i32, i32* %x46, align 4, !tbaa !56
  %30 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p47 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %30, i32 0, i32 0
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p47, i32 0, i32 0
  %31 = load i32, i32* %x48, align 4, !tbaa !43
  %cmp49 = icmp sle i32 %29, %31
  br i1 %cmp49, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.44
  %32 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box50 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %32, i32 0, i32 3
  %p51 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box50, i32 0, i32 0
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p51, i32 0, i32 1
  %33 = load i32, i32* %y52, align 4, !tbaa !57
  %34 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %34, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p53, i32 0, i32 1
  %35 = load i32, i32* %y54, align 4, !tbaa !52
  %cmp55 = icmp sle i32 %33, %35
  br i1 %cmp55, label %land.lhs.true.56, label %if.else

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %36 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box57 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %36, i32 0, i32 3
  %q58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box57, i32 0, i32 1
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q58, i32 0, i32 0
  %37 = load i32, i32* %x59, align 4, !tbaa !58
  %38 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q60 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %38, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q60, i32 0, i32 0
  %39 = load i32, i32* %x61, align 4, !tbaa !50
  %cmp62 = icmp sge i32 %37, %39
  br i1 %cmp62, label %land.lhs.true.63, label %if.else

land.lhs.true.63:                                 ; preds = %land.lhs.true.56
  %40 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %inner_box64 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %40, i32 0, i32 3
  %q65 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %inner_box64, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q65, i32 0, i32 1
  %41 = load i32, i32* %y66, align 4, !tbaa !59
  %42 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %42, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q67, i32 0, i32 1
  %43 = load i32, i32* %y68, align 4, !tbaa !54
  %cmp69 = icmp sge i32 %41, %43
  br i1 %cmp69, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %land.lhs.true.63
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %44, %struct.gx_device_s** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.63, %land.lhs.true.56, %land.lhs.true, %if.end.44
  %45 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %45, i32 0, i32 0
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p71, i32 0, i32 0
  %46 = load i32, i32* %x72, align 4, !tbaa !43
  %47 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q73 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %47, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q73, i32 0, i32 0
  %48 = load i32, i32* %x74, align 4, !tbaa !50
  %cmp75 = icmp sge i32 %46, %48
  br i1 %cmp75, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %49 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p76 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %49, i32 0, i32 0
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p76, i32 0, i32 1
  %50 = load i32, i32* %y77, align 4, !tbaa !52
  %51 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q78 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %51, i32 0, i32 1
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q78, i32 0, i32 1
  %52 = load i32, i32* %y79, align 4, !tbaa !54
  %cmp80 = icmp sge i32 %50, %52
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false, %if.else
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  br label %return

if.end.82:                                        ; preds = %lor.lhs.false
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  %53 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_clip_s* %53 to %struct.gx_device_s*
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  call void @gx_device_init_on_stack(%struct.gx_device_s* %54, %struct.gx_device_s* bitcast (%struct.gx_device_clip_s* @gs_clip_device to %struct.gx_device_s*), %struct.gs_memory_s* %56) #3
  %57 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %57, i32 0, i32 44
  %58 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %58) #3
  %59 = bitcast %struct.gx_clip_list_s* %list to i8*
  %60 = bitcast %struct.gx_clip_list_s* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 80, i32 8, i1 false), !tbaa.struct !19
  %61 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %61, i32 0, i32 46
  %x84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  store i32 0, i32* %x84, align 4, !tbaa !22
  %62 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation85 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %62, i32 0, i32 46
  %y86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation85, i32 0, i32 1
  store i32 0, i32* %y86, align 4, !tbaa !29
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %64 = load float, float* %arrayidx, align 4, !tbaa !30
  %65 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution87 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %65, i32 0, i32 22
  %arrayidx88 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution87, i32 0, i64 0
  store float %64, float* %arrayidx88, align 4, !tbaa !30
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 22
  %arrayidx90 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution89, i32 0, i64 1
  %67 = load float, float* %arrayidx90, align 4, !tbaa !30
  %68 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution91 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %68, i32 0, i32 22
  %arrayidx92 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution91, i32 0, i64 1
  store float %67, float* %arrayidx92, align 4, !tbaa !30
  %69 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %sgr = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %69, i32 0, i32 35
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %sgr93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 35
  %71 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr to i8*
  %72 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 68, i32 4, i1 false), !tbaa.struct !32
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %74 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %target94 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %74, i32 0, i32 43
  store %struct.gx_device_s* %73, %struct.gx_device_s** %target94, align 8, !tbaa !33
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 15
  %76 = load i32, i32* %pad, align 4, !tbaa !34
  %77 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %pad95 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %77, i32 0, i32 15
  store i32 %76, i32* %pad95, align 4, !tbaa !35
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 16
  %79 = load i32, i32* %log2_align_mod, align 4, !tbaa !36
  %80 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod96 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %80, i32 0, i32 16
  store i32 %79, i32* %log2_align_mod96, align 4, !tbaa !37
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 17
  %82 = load i32, i32* %is_planar, align 4, !tbaa !38
  %83 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %is_planar97 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %83, i32 0, i32 17
  store i32 %82, i32* %is_planar97, align 4, !tbaa !39
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 40
  %85 = load i32, i32* %graphics_type_tag, align 4, !tbaa !40
  %86 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag98 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %86, i32 0, i32 40
  store i32 %85, i32* %graphics_type_tag98, align 4, !tbaa !41
  %87 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %87, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %88 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !42
  %89 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_clip_s* %89 to %struct.gx_device_s*
  %call99 = call i32 %88(%struct.gx_device_s* %90) #3
  %91 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gx_device_clip_s* %91 to %struct.gx_device_s*
  store %struct.gx_device_s* %92, %struct.gx_device_s** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.81, %if.then.70
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %93
}

; Function Attrs: nounwind uwtable
define void @gx_make_clip_device_in_heap(%struct.gx_device_clip_s* %dev, %struct.gx_clip_path_s* %pcpath, %struct.gx_device_s* %target, %struct.gs_memory_s* %mem) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_clip_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_clip_s* %dev, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_clip_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_clip_s* @gs_clip_device to %struct.gx_device_s*), %struct.gs_memory_s* %2, i32 1) #3
  %3 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %3, i32 0, i32 44
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %4) #3
  %5 = bitcast %struct.gx_clip_list_s* %list to i8*
  %6 = bitcast %struct.gx_clip_list_s* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 80, i32 8, i1 false), !tbaa.struct !19
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %7, i32 0, i32 46
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !22
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %translation1 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 46
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation1, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !29
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !30
  %11 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %11, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 0
  store float %10, float* %arrayidx3, align 4, !tbaa !30
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution4, i32 0, i64 1
  %13 = load float, float* %arrayidx5, align 4, !tbaa !30
  %14 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %14, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 1
  store float %13, float* %arrayidx7, align 4, !tbaa !30
  %15 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %sgr = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %15, i32 0, i32 35
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %sgr8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 35
  %17 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr to i8*
  %18 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 68, i32 4, i1 false), !tbaa.struct !32
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 15
  %20 = load i32, i32* %pad, align 4, !tbaa !34
  %21 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %pad9 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %21, i32 0, i32 15
  store i32 %20, i32* %pad9, align 4, !tbaa !35
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 16
  %23 = load i32, i32* %log2_align_mod, align 4, !tbaa !36
  %24 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod10 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %24, i32 0, i32 16
  store i32 %23, i32* %log2_align_mod10, align 4, !tbaa !37
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 17
  %26 = load i32, i32* %is_planar, align 4, !tbaa !38
  %27 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %is_planar11 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %27, i32 0, i32 17
  store i32 %26, i32* %is_planar11, align 4, !tbaa !39
  %28 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_clip_s* %28 to %struct.gx_device_forward_s*
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %29, %struct.gx_device_s* %30) #3
  %31 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_clip_s* %31 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %32, i32 1) #3
  %33 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %33, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %34 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !42
  %35 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %dev.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_clip_s* %35 to %struct.gx_device_s*
  %call12 = call i32 %34(%struct.gx_device_s* %36) #3
  ret void
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @clip_call_fill_rectangle(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %2 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !62
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %6 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %7 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %8 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %7, %8
  %9 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %10 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub2 = sub nsw i32 %9, %10
  %11 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %11, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !63
  %call = call i32 %2(%struct.gx_device_s* %4, i32 %5, i32 %6, i32 %sub, i32 %sub2, i64 %12) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_fill_rectangle_hl_color(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %shl = shl i32 %1, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x, align 4, !tbaa !43
  %2 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %shl1 = shl i32 %2, 8
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  store i32 %shl1, i32* %y, align 4, !tbaa !52
  %3 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %shl3 = shl i32 %3, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl3, i32* %x4, align 4, !tbaa !50
  %4 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %shl5 = shl i32 %4, 8
  %q6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q6, i32 0, i32 1
  store i32 %shl5, i32* %y7, align 4, !tbaa !54
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 0
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %7 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !64
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev8 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 0
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev8, align 8, !tbaa !60
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 20
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !65
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdcolor = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 11
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !66
  %14 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %14, i32 0, i32 13
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !67
  %call = call i32 %7(%struct.gx_device_s* %9, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %11, %struct.gx_device_color_s* %13, %struct.gx_clip_path_s* %15) #3
  %16 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @clip_call_copy_mono(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !68
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %25 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %25, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %26 = load i64, i64* %arrayidx, align 8, !tbaa !63
  %27 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %27, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %color6, i32 0, i64 1
  %28 = load i64, i64* %arrayidx7, align 8, !tbaa !63
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5, i64 %26, i64 %28) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_copy_planes(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !74
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %25 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %plane_height = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %25, i32 0, i32 19
  %26 = load i32, i32* %plane_height, align 4, !tbaa !75
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5, i32 %26) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_copy_color(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !76
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_copy_alpha(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !77
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %25 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %25, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %26 = load i64, i64* %arrayidx, align 8, !tbaa !63
  %27 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %27, i32 0, i32 10
  %28 = load i32, i32* %depth, align 4, !tbaa !78
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5, i64 %26, i32 %28) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_copy_alpha_hl_color(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 71
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !79
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %25 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdcolor = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %25, i32 0, i32 11
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !66
  %27 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %27, i32 0, i32 10
  %28 = load i32, i32* %depth, align 4, !tbaa !78
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5, %struct.gx_device_color_s* %26, i32 %28) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_fill_mask(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !80
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %20 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %21 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %22 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %21, %22
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %24 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %23, %24
  %25 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdcolor = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %25, i32 0, i32 11
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !66
  %27 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %27, i32 0, i32 10
  %28 = load i32, i32* %depth, align 4, !tbaa !78
  %29 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %29, i32 0, i32 12
  %30 = load i32, i32* %lop, align 4, !tbaa !81
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i32 %19, i32 %20, i32 %sub4, i32 %sub5, %struct.gx_device_color_s* %26, i32 %28, i32 %30, %struct.gx_clip_path_s* null) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_strip_tile_rect_devn(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 70
  %2 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !82
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 14
  %6 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !83
  %7 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %8 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %9 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %10 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %12 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub2 = sub nsw i32 %11, %12
  %13 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdc = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %13, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc, i32 0, i64 0
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %arrayidx, align 8, !tbaa !1
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdc3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc3, i32 0, i64 1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %arrayidx4, align 8, !tbaa !1
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 15
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !84
  %19 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %19, i32 0, i32 15
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase5, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !85
  %call = call i32 %2(%struct.gx_device_s* %4, %struct.gx_strip_bitmap_s* %6, i32 %7, i32 %8, i32 %sub, i32 %sub2, %struct.gx_device_color_s* %14, %struct.gx_device_color_s* %16, i32 %18, i32 %20) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_strip_tile_rectangle(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %2 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !86
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 14
  %6 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !83
  %7 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %8 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %9 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %10 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %12 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub2 = sub nsw i32 %11, %12
  %13 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %14 = load i64, i64* %arrayidx, align 8, !tbaa !63
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %color3, i32 0, i64 1
  %16 = load i64, i64* %arrayidx4, align 8, !tbaa !63
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 15
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !84
  %19 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %19, i32 0, i32 15
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase5, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !85
  %call = call i32 %2(%struct.gx_device_s* %4, %struct.gx_strip_bitmap_s* %6, i32 %7, i32 %8, i32 %sub, i32 %sub2, i64 %14, i64 %16, i32 %18, i32 %20) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_strip_copy_rop(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !87
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %19, i32 0, i32 16
  %20 = load i64*, i64** %scolors, align 8, !tbaa !88
  %21 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %textures = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %21, i32 0, i32 17
  %22 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !89
  %23 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tcolors = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %23, i32 0, i32 18
  %24 = load i64*, i64** %tcolors, align 8, !tbaa !90
  %25 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %26 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %27 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %28 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %27, %28
  %29 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %30 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %29, %30
  %31 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %31, i32 0, i32 15
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %32 = load i32, i32* %x6, align 4, !tbaa !84
  %33 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %33, i32 0, i32 15
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %34 = load i32, i32* %y8, align 4, !tbaa !85
  %35 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %35, i32 0, i32 12
  %36 = load i32, i32* %lop, align 4, !tbaa !81
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i64* %20, %struct.gx_strip_bitmap_s* %22, i64* %24, i32 %25, i32 %26, i32 %sub4, i32 %sub5, i32 %32, i32 %34, i32 %36) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clip_call_strip_copy_rop2(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 69
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !91
  %3 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  %5 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %data, align 8, !tbaa !69
  %7 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4, !tbaa !70
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 9
  %11 = load i32, i32* %raster, align 4, !tbaa !71
  %mul = mul i32 %sub, %11
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !72
  %14 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %add = add nsw i32 %13, %14
  %15 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %15, i32 0, i32 1
  %16 = load i32, i32* %x, align 4, !tbaa !73
  %sub2 = sub nsw i32 %add, %16
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 9
  %18 = load i32, i32* %raster3, align 4, !tbaa !71
  %19 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %19, i32 0, i32 16
  %20 = load i64*, i64** %scolors, align 8, !tbaa !88
  %21 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %textures = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %21, i32 0, i32 17
  %22 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !89
  %23 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tcolors = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %23, i32 0, i32 18
  %24 = load i64*, i64** %tcolors, align 8, !tbaa !90
  %25 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %26 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %27 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %28 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %sub4 = sub nsw i32 %27, %28
  %29 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %30 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %sub5 = sub nsw i32 %29, %30
  %31 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %31, i32 0, i32 15
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %32 = load i32, i32* %x6, align 4, !tbaa !84
  %33 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %phase7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %33, i32 0, i32 15
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  %34 = load i32, i32* %y8, align 4, !tbaa !85
  %35 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %35, i32 0, i32 12
  %36 = load i32, i32* %lop, align 4, !tbaa !81
  %37 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %plane_height = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %37, i32 0, i32 19
  %38 = load i32, i32* %plane_height, align 4, !tbaa !75
  %call = call i32 %2(%struct.gx_device_s* %4, i8* %add.ptr, i32 %sub2, i32 %18, i64 0, i64* %20, %struct.gx_strip_bitmap_s* %22, i64* %24, i32 %25, i32 %26, i32 %sub4, i32 %sub5, i32 %32, i32 %34, i32 %36, i32 %38) #3
  ret i32 %call
}

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_open(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %6, i32 0, i32 44
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 1
  %7 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !92
  %cmp = icmp eq %struct.gx_clip_rect_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 44
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list1, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list2 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %9, i32 0, i32 44
  %head3 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list2, i32 0, i32 1
  %10 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head3, align 8, !tbaa !92
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_clip_rect_s* [ %single, %cond.true ], [ %10, %cond.false ]
  %11 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %11, i32 0, i32 45
  store %struct.gx_clip_rect_s* %cond, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  %12 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %12, i32 0, i32 11
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %14 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %15 = bitcast %struct.gx_device_color_info_s* %color_info4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 720, i32 8, i1 false), !tbaa.struct !94
  %16 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %16, i32 0, i32 12
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cached_colors5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 12
  %18 = bitcast %struct.gx_device_cached_colors_s* %cached_colors to i8*
  %19 = bitcast %struct.gx_device_cached_colors_s* %cached_colors5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !96
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !97
  %22 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %22, i32 0, i32 13
  store i32 %21, i32* %width6, align 4, !tbaa !98
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 14
  %24 = load i32, i32* %height, align 4, !tbaa !99
  %25 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %25, i32 0, i32 14
  store i32 %24, i32* %height7, align 4, !tbaa !100
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  call void @gx_device_copy_color_procs(%struct.gx_device_s* %26, %struct.gx_device_s* %27) #3
  %28 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %clipping_box_set = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %28, i32 0, i32 48
  store i32 0, i32* %clipping_box_set, align 4, !tbaa !101
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  %31 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %31, i32 0, i32 3
  store %struct.gs_memory_s* %30, %struct.gs_memory_s** %memory8, align 8, !tbaa !102
  %32 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i32 0
}

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #1

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #1

declare i32 @gx_default_close_device(%struct.gx_device_s*) #1

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i64 %color, i64* %color.addr, align 8, !tbaa !63
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %6, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 45
  %9 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %9, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %10 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %cmp = icmp sle i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %cmp1 = icmp sle i32 %13, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %14, i32 0, i32 46
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %15 = load i32, i32* %x2, align 4, !tbaa !22
  %16 = load i32, i32* %x.addr, align 4, !tbaa !20
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %x.addr, align 4, !tbaa !20
  %17 = load i32, i32* %x.addr, align 4, !tbaa !20
  %18 = load i32, i32* %w.addr, align 4, !tbaa !20
  %add3 = add nsw i32 %17, %18
  store i32 %add3, i32* %xe, align 4, !tbaa !20
  %19 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation4 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %19, i32 0, i32 46
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation4, i32 0, i32 1
  %20 = load i32, i32* %y5, align 4, !tbaa !29
  %21 = load i32, i32* %y.addr, align 4, !tbaa !20
  %add6 = add nsw i32 %21, %20
  store i32 %add6, i32* %y.addr, align 4, !tbaa !20
  %22 = load i32, i32* %y.addr, align 4, !tbaa !20
  %23 = load i32, i32* %h.addr, align 4, !tbaa !20
  %add7 = add nsw i32 %22, %23
  store i32 %add7, i32* %ye, align 4, !tbaa !20
  %24 = load i32, i32* %y.addr, align 4, !tbaa !20
  %25 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %25, i32 0, i32 2
  %26 = load i32, i32* %ymin, align 4, !tbaa !103
  %cmp8 = icmp sge i32 %24, %26
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false.10

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %ye, align 4, !tbaa !20
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 3
  %29 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp9 = icmp sle i32 %27, %29
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true, %if.end
  %30 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %30, i32 0, i32 0
  %31 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %31, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gx_clip_rect_s* %31, null
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.61

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %32 = load i32, i32* %y.addr, align 4, !tbaa !20
  %33 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin13 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %33, i32 0, i32 2
  %34 = load i32, i32* %ymin13, align 4, !tbaa !103
  %cmp14 = icmp sge i32 %32, %34
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.61

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %35 = load i32, i32* %ye, align 4, !tbaa !20
  %36 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax16 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %36, i32 0, i32 3
  %37 = load i32, i32* %ymax16, align 4, !tbaa !104
  %cmp17 = icmp sle i32 %35, %37
  br i1 %cmp17, label %if.then.18, label %if.end.61

if.then.18:                                       ; preds = %land.lhs.true.15, %land.lhs.true
  %38 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %39 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current19 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %39, i32 0, i32 45
  store %struct.gx_clip_rect_s* %38, %struct.gx_clip_rect_s** %current19, align 8, !tbaa !93
  br label %do.body

do.body:                                          ; preds = %if.then.18
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, i32* %x.addr, align 4, !tbaa !20
  %41 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %41, i32 0, i32 4
  %42 = load i32, i32* %xmin, align 4, !tbaa !106
  %cmp20 = icmp sge i32 %40, %42
  br i1 %cmp20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %do.end
  %43 = load i32, i32* %xe, align 4, !tbaa !20
  %44 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %44, i32 0, i32 5
  %45 = load i32, i32* %xmax, align 4, !tbaa !107
  %cmp22 = icmp sle i32 %43, %45
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %47 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !62
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %49 = load i32, i32* %x.addr, align 4, !tbaa !20
  %50 = load i32, i32* %y.addr, align 4, !tbaa !20
  %51 = load i32, i32* %w.addr, align 4, !tbaa !20
  %52 = load i32, i32* %h.addr, align 4, !tbaa !20
  %53 = load i64, i64* %color.addr, align 8, !tbaa !63
  %call = call i32 %47(%struct.gx_device_s* %48, i32 %49, i32 %50, i32 %51, i32 %52, i64 %53) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.21, %do.end
  %54 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %54, i32 0, i32 1
  %55 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  %cmp27 = icmp eq %struct.gx_clip_rect_s* %55, null
  br i1 %cmp27, label %land.lhs.true.33, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.else
  %56 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev29 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %56, i32 0, i32 1
  %57 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev29, align 8, !tbaa !108
  %ymax30 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %57, i32 0, i32 3
  %58 = load i32, i32* %ymax30, align 4, !tbaa !104
  %59 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax31 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %59, i32 0, i32 3
  %60 = load i32, i32* %ymax31, align 4, !tbaa !104
  %cmp32 = icmp ne i32 %58, %60
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.59

land.lhs.true.33:                                 ; preds = %lor.lhs.false.28, %if.else
  %61 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next34 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %61, i32 0, i32 0
  %62 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next34, align 8, !tbaa !105
  %cmp35 = icmp eq %struct.gx_clip_rect_s* %62, null
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.33
  %63 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %63, i32 0, i32 0
  %64 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next37, align 8, !tbaa !105
  %ymax38 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %64, i32 0, i32 3
  %65 = load i32, i32* %ymax38, align 4, !tbaa !104
  %66 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax39 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %66, i32 0, i32 3
  %67 = load i32, i32* %ymax39, align 4, !tbaa !104
  %cmp40 = icmp ne i32 %65, %67
  br i1 %cmp40, label %if.then.41, label %if.end.59

if.then.41:                                       ; preds = %lor.lhs.false.36, %land.lhs.true.33
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %68 = load i32, i32* %x.addr, align 4, !tbaa !20
  %69 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin45 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %69, i32 0, i32 4
  %70 = load i32, i32* %xmin45, align 4, !tbaa !106
  %cmp46 = icmp slt i32 %68, %70
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %do.end.44
  %71 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin48 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %71, i32 0, i32 4
  %72 = load i32, i32* %xmin48, align 4, !tbaa !106
  store i32 %72, i32* %x.addr, align 4, !tbaa !20
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %do.end.44
  %73 = load i32, i32* %xe, align 4, !tbaa !20
  %74 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax50 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %74, i32 0, i32 5
  %75 = load i32, i32* %xmax50, align 4, !tbaa !107
  %cmp51 = icmp sgt i32 %73, %75
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %76 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax53 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %76, i32 0, i32 5
  %77 = load i32, i32* %xmax53, align 4, !tbaa !107
  store i32 %77, i32* %xe, align 4, !tbaa !20
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.49
  %78 = load i32, i32* %x.addr, align 4, !tbaa !20
  %79 = load i32, i32* %xe, align 4, !tbaa !20
  %cmp55 = icmp sge i32 %78, %79
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %80, i32 0, i32 42
  %fill_rectangle57 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 7
  %81 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle57, align 8, !tbaa !62
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %83 = load i32, i32* %x.addr, align 4, !tbaa !20
  %84 = load i32, i32* %y.addr, align 4, !tbaa !20
  %85 = load i32, i32* %xe, align 4, !tbaa !20
  %86 = load i32, i32* %x.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %85, %86
  %87 = load i32, i32* %h.addr, align 4, !tbaa !20
  %88 = load i64, i64* %color.addr, align 8, !tbaa !63
  %call58 = call i32 %81(%struct.gx_device_s* %82, i32 %83, i32 %84, i32 %sub, i32 %87, i64 %88) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call58, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %lor.lhs.false.36, %lor.lhs.false.28
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.15, %land.lhs.true.12, %lor.lhs.false.10
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tdev62 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %89, %struct.gx_device_s** %tdev62, align 8, !tbaa !60
  %90 = load i64, i64* %color.addr, align 8, !tbaa !63
  %color63 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color63, i32 0, i64 0
  store i64 %90, i64* %arrayidx, align 8, !tbaa !63
  %91 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %92 = load i32, i32* %x.addr, align 4, !tbaa !20
  %93 = load i32, i32* %y.addr, align 4, !tbaa !20
  %94 = load i32, i32* %xe, align 4, !tbaa !20
  %95 = load i32, i32* %ye, align 4, !tbaa !20
  %call64 = call i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_fill_rectangle, %struct.clip_callback_data_s* %ccdata) #3
  store i32 %call64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %cond.end, %do.end.26, %if.then
  %96 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  %100 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %100) #2
  %101 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = load i32, i32* %retval
  ret i32 %102
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !63
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !63
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %6, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 45
  %9 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %9, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %10 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %cmp = icmp sle i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %cmp1 = icmp sle i32 %13, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %14, i32 0, i32 46
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %15 = load i32, i32* %x2, align 4, !tbaa !22
  %16 = load i32, i32* %x.addr, align 4, !tbaa !20
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %x.addr, align 4, !tbaa !20
  %17 = load i32, i32* %x.addr, align 4, !tbaa !20
  %18 = load i32, i32* %w.addr, align 4, !tbaa !20
  %add3 = add nsw i32 %17, %18
  store i32 %add3, i32* %xe, align 4, !tbaa !20
  %19 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation4 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %19, i32 0, i32 46
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation4, i32 0, i32 1
  %20 = load i32, i32* %y5, align 4, !tbaa !29
  %21 = load i32, i32* %y.addr, align 4, !tbaa !20
  %add6 = add nsw i32 %21, %20
  store i32 %add6, i32* %y.addr, align 4, !tbaa !20
  %22 = load i32, i32* %y.addr, align 4, !tbaa !20
  %23 = load i32, i32* %h.addr, align 4, !tbaa !20
  %add7 = add nsw i32 %22, %23
  store i32 %add7, i32* %ye, align 4, !tbaa !20
  %24 = load i32, i32* %y.addr, align 4, !tbaa !20
  %25 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %25, i32 0, i32 2
  %26 = load i32, i32* %ymin, align 4, !tbaa !103
  %cmp8 = icmp sge i32 %24, %26
  br i1 %cmp8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %ye, align 4, !tbaa !20
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 3
  %29 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp9 = icmp sle i32 %27, %29
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.10
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %30 = load i32, i32* %x.addr, align 4, !tbaa !20
  %31 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %31, i32 0, i32 4
  %32 = load i32, i32* %xmin, align 4, !tbaa !106
  %cmp11 = icmp sge i32 %30, %32
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %do.end
  %33 = load i32, i32* %xe, align 4, !tbaa !20
  %34 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %34, i32 0, i32 5
  %35 = load i32, i32* %xmax, align 4, !tbaa !107
  %cmp13 = icmp sle i32 %33, %35
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %37 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !68
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %39 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %42 = load i64, i64* %id.addr, align 8, !tbaa !63
  %43 = load i32, i32* %x.addr, align 4, !tbaa !20
  %44 = load i32, i32* %y.addr, align 4, !tbaa !20
  %45 = load i32, i32* %w.addr, align 4, !tbaa !20
  %46 = load i32, i32* %h.addr, align 4, !tbaa !20
  %47 = load i64, i64* %color0.addr, align 8, !tbaa !63
  %48 = load i64, i64* %color1.addr, align 8, !tbaa !63
  %call = call i32 %37(%struct.gx_device_s* %38, i8* %39, i32 %40, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45, i32 %46, i64 %47, i64 %48) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true.12, %do.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.end
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tdev20 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %49, %struct.gx_device_s** %tdev20, align 8, !tbaa !60
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %50, i8** %data21, align 8, !tbaa !69
  %51 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex22 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %51, i32* %sourcex22, align 4, !tbaa !72
  %52 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster23 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %52, i32* %raster23, align 4, !tbaa !71
  %53 = load i64, i64* %color0.addr, align 8, !tbaa !63
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  store i64 %53, i64* %arrayidx, align 8, !tbaa !63
  %54 = load i64, i64* %color1.addr, align 8, !tbaa !63
  %color24 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %color24, i32 0, i64 1
  store i64 %54, i64* %arrayidx25, align 8, !tbaa !63
  %55 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %56 = load i32, i32* %x.addr, align 4, !tbaa !20
  %57 = load i32, i32* %y.addr, align 4, !tbaa !20
  %58 = load i32, i32* %xe, align 4, !tbaa !20
  %59 = load i32, i32* %ye, align 4, !tbaa !20
  %call26 = call i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_mono, %struct.clip_callback_data_s* %ccdata) #3
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %do.end.17, %if.then
  %60 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %64) #2
  %65 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %4, i8** %data1, align 8, !tbaa !69
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %5, i32* %sourcex2, align 4, !tbaa !72
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %6, i32* %raster3, align 4, !tbaa !71
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !20
  %9 = load i32, i32* %y.addr, align 4, !tbaa !20
  %10 = load i32, i32* %w.addr, align 4, !tbaa !20
  %11 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_color, %struct.clip_callback_data_s* %ccdata) #3
  %12 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %12) #2
  %13 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret i32 %call
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #1

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i64 %color, i64* %color.addr, align 8, !tbaa !63
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %4, i8** %data1, align 8, !tbaa !69
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %5, i32* %sourcex2, align 4, !tbaa !72
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %6, i32* %raster3, align 4, !tbaa !71
  %7 = load i64, i64* %color.addr, align 8, !tbaa !63
  %color4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color4, i32 0, i64 0
  store i64 %7, i64* %arrayidx, align 8, !tbaa !63
  %8 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %depth5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 10
  store i32 %8, i32* %depth5, align 4, !tbaa !78
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %11 = load i32, i32* %y.addr, align 4, !tbaa !20
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_alpha, %struct.clip_callback_data_s* %ccdata) #3
  %14 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %14) #2
  %15 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call
}

declare i32 @gx_forward_get_band(%struct.gx_device_s*, i32, i32*) #1

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %box = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 20
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !65
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %ppath2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 21
  store %struct.gx_path_s* %6, %struct.gx_path_s** %ppath2, align 8, !tbaa !109
  %7 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 22
  store %struct.gx_fill_params_s* %7, %struct.gx_fill_params_s** %params3, align 8, !tbaa !110
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %pdcolor4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 11
  store %struct.gx_device_color_s* %8, %struct.gx_device_color_s** %pdcolor4, align 8, !tbaa !66
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %pcpath5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 13
  store %struct.gx_clip_path_s* %9, %struct.gx_clip_path_s** %pcpath5, align 8, !tbaa !67
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @clip_get_clipping_box(%struct.gx_device_s* %10, %struct.gs_fixed_rect_s* %box) #3
  %11 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !43
  %shr = ashr i32 %12, 8
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !52
  %shr7 = ashr i32 %13, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %14 = load i32, i32* %x8, align 4, !tbaa !50
  %p9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p9, i32 0, i32 0
  %15 = load i32, i32* %x10, align 4, !tbaa !43
  %sub = sub nsw i32 %14, %15
  %shr11 = ashr i32 %sub, 8
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %16 = load i32, i32* %y13, align 4, !tbaa !54
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %17 = load i32, i32* %y15, align 4, !tbaa !52
  %sub16 = sub nsw i32 %16, %17
  %shr17 = ashr i32 %sub16, 8
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %11, i32 %shr, i32 %shr7, i32 %shr11, i32 %shr17, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_fill_path, %struct.clip_callback_data_s* %ccdata) #3
  %18 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #2
  %19 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %19) #2
  %20 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %call
}

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !20
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !20
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_path_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %9 = load i64, i64* %id.addr, align 8, !tbaa !63
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %11 = load i32, i32* %y.addr, align 4, !tbaa !20
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %16 = load i32, i32* %lop.addr, align 4, !tbaa !20
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_fill_mask(%struct.gx_device_s* %5, i8* %6, i32 %7, i32 %8, i64 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.gx_device_color_s* %14, i32 %15, i32 %16, %struct.gx_clip_path_s* %17) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %18, i8** %data1, align 8, !tbaa !69
  %19 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %19, i32* %sourcex2, align 4, !tbaa !72
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %20, i32* %raster3, align 4, !tbaa !71
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %pdcolor4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 11
  store %struct.gx_device_color_s* %21, %struct.gx_device_color_s** %pdcolor4, align 8, !tbaa !66
  %22 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %depth5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 10
  store i32 %22, i32* %depth5, align 4, !tbaa !78
  %23 = load i32, i32* %lop.addr, align 4, !tbaa !20
  %lop6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 12
  store i32 %23, i32* %lop6, align 4, !tbaa !81
  %24 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %25 = load i32, i32* %x.addr, align 4, !tbaa !20
  %26 = load i32, i32* %y.addr, align 4, !tbaa !20
  %27 = load i32, i32* %w.addr, align 4, !tbaa !20
  %28 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call7 = call i32 @clip_enumerate(%struct.gx_device_clip_s* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_fill_mask, %struct.clip_callback_data_s* %ccdata) #3
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %29) #2
  %30 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %phase_x, i32 %phase_y) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !63
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !63
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !20
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %tiles1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 14
  store %struct.gx_strip_bitmap_s* %4, %struct.gx_strip_bitmap_s** %tiles1, align 8, !tbaa !83
  %5 = load i64, i64* %color0.addr, align 8, !tbaa !63
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  store i64 %5, i64* %arrayidx, align 8, !tbaa !63
  %6 = load i64, i64* %color1.addr, align 8, !tbaa !63
  %color2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %color2, i32 0, i64 1
  store i64 %6, i64* %arrayidx3, align 8, !tbaa !63
  %7 = load i32, i32* %phase_x.addr, align 4, !tbaa !20
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %7, i32* %x4, align 4, !tbaa !84
  %8 = load i32, i32* %phase_y.addr, align 4, !tbaa !20
  %phase5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase5, i32 0, i32 1
  store i32 %8, i32* %y6, align 4, !tbaa !85
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %11 = load i32, i32* %y.addr, align 4, !tbaa !20
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_tile_rectangle, %struct.clip_callback_data_s* %ccdata) #3
  %14 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %14) #2
  %15 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !20
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !20
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %4, i8** %data, align 8, !tbaa !69
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %5, i32* %sourcex1, align 4, !tbaa !72
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %6, i32* %raster2, align 4, !tbaa !71
  %7 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %scolors3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 16
  store i64* %7, i64** %scolors3, align 8, !tbaa !88
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %textures4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 17
  store %struct.gx_strip_bitmap_s* %8, %struct.gx_strip_bitmap_s** %textures4, align 8, !tbaa !89
  %9 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tcolors5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 18
  store i64* %9, i64** %tcolors5, align 8, !tbaa !90
  %10 = load i32, i32* %phase_x.addr, align 4, !tbaa !20
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %10, i32* %x6, align 4, !tbaa !84
  %11 = load i32, i32* %phase_y.addr, align 4, !tbaa !20
  %phase7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  store i32 %11, i32* %y8, align 4, !tbaa !85
  %12 = load i32, i32* %lop.addr, align 4, !tbaa !20
  %lop9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 12
  store i32 %12, i32* %lop9, align 4, !tbaa !81
  %13 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !20
  %15 = load i32, i32* %y.addr, align 4, !tbaa !20
  %16 = load i32, i32* %w.addr, align 4, !tbaa !20
  %17 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_copy_rop, %struct.clip_callback_data_s* %ccdata) #3
  %18 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %18) #2
  %19 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @clip_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %tbox = alloca %struct.gs_fixed_rect_s, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %clipping_box_set = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %3, i32 0, i32 48
  %4 = load i32, i32* %clipping_box_set, align 4, !tbaa !101
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.129, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %6, i32 0, i32 43
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %7, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %8 = bitcast %struct.gs_fixed_rect_s* %tbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %10 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !111
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  call void %10(%struct.gx_device_s* %11, %struct.gs_fixed_rect_s* %tbox) #3
  %12 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %12, i32 0, i32 44
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 6
  %13 = load i32, i32* %count, align 4, !tbaa !112
  %cmp = icmp ne i32 %13, 0
  br i1 %cmp, label %if.then.1, label %if.end.84

if.then.1:                                        ; preds = %if.then
  %14 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list2 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %15, i32 0, i32 44
  %count3 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list2, i32 0, i32 6
  %16 = load i32, i32* %count3, align 4, !tbaa !112
  %cmp4 = icmp eq i32 %16, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.1
  %17 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list6 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %17, i32 0, i32 44
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list6, i32 0, i32 0
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single, i32 0, i32 4
  %18 = load i32, i32* %xmin, align 4, !tbaa !113
  %shl = shl i32 %18, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x, align 4, !tbaa !43
  %19 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list7 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %19, i32 0, i32 44
  %single8 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list7, i32 0, i32 0
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single8, i32 0, i32 2
  %20 = load i32, i32* %ymin, align 4, !tbaa !114
  %shl9 = shl i32 %20, 8
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 1
  store i32 %shl9, i32* %y, align 4, !tbaa !52
  %21 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list11 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %21, i32 0, i32 44
  %single12 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list11, i32 0, i32 0
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single12, i32 0, i32 5
  %22 = load i32, i32* %xmax, align 4, !tbaa !115
  %shl13 = shl i32 %22, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl13, i32* %x14, align 4, !tbaa !50
  %23 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list15 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %23, i32 0, i32 44
  %single16 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list15, i32 0, i32 0
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %single16, i32 0, i32 3
  %24 = load i32, i32* %ymax, align 4, !tbaa !116
  %shl17 = shl i32 %24, 8
  %q18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q18, i32 0, i32 1
  store i32 %shl17, i32* %y19, align 4, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %if.then.1
  %25 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list20 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %25, i32 0, i32 44
  %xmin21 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list20, i32 0, i32 4
  %26 = load i32, i32* %xmin21, align 4, !tbaa !117
  %shl22 = shl i32 %26, 8
  %p23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p23, i32 0, i32 0
  store i32 %shl22, i32* %x24, align 4, !tbaa !43
  %27 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list25 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %27, i32 0, i32 44
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list25, i32 0, i32 1
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !92
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 0
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !105
  %ymin26 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %29, i32 0, i32 2
  %30 = load i32, i32* %ymin26, align 4, !tbaa !103
  %shl27 = shl i32 %30, 8
  %p28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p28, i32 0, i32 1
  store i32 %shl27, i32* %y29, align 4, !tbaa !52
  %31 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list30 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %31, i32 0, i32 44
  %xmax31 = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list30, i32 0, i32 5
  %32 = load i32, i32* %xmax31, align 4, !tbaa !118
  %shl32 = shl i32 %32, 8
  %q33 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q33, i32 0, i32 0
  store i32 %shl32, i32* %x34, align 4, !tbaa !50
  %33 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %list35 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %33, i32 0, i32 44
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list35, i32 0, i32 2
  %34 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !119
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %34, i32 0, i32 1
  %35 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  %ymax36 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %35, i32 0, i32 3
  %36 = load i32, i32* %ymax36, align 4, !tbaa !104
  %shl37 = shl i32 %36, 8
  %q38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q38, i32 0, i32 1
  store i32 %shl37, i32* %y39, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.end
  %p40 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p40, i32 0, i32 0
  %37 = load i32, i32* %x41, align 4, !tbaa !43
  %p42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p42, i32 0, i32 0
  %38 = load i32, i32* %x43, align 4, !tbaa !43
  %cmp44 = icmp sgt i32 %37, %38
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %do.body
  %p46 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p46, i32 0, i32 0
  %39 = load i32, i32* %x47, align 4, !tbaa !43
  %p48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p48, i32 0, i32 0
  store i32 %39, i32* %x49, align 4, !tbaa !43
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %do.body
  %q51 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q51, i32 0, i32 0
  %40 = load i32, i32* %x52, align 4, !tbaa !50
  %q53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q53, i32 0, i32 0
  %41 = load i32, i32* %x54, align 4, !tbaa !50
  %cmp55 = icmp slt i32 %40, %41
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.50
  %q57 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q57, i32 0, i32 0
  %42 = load i32, i32* %x58, align 4, !tbaa !50
  %q59 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q59, i32 0, i32 0
  store i32 %42, i32* %x60, align 4, !tbaa !50
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %if.end.50
  %p62 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p62, i32 0, i32 1
  %43 = load i32, i32* %y63, align 4, !tbaa !52
  %p64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p64, i32 0, i32 1
  %44 = load i32, i32* %y65, align 4, !tbaa !52
  %cmp66 = icmp sgt i32 %43, %44
  br i1 %cmp66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.61
  %p68 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p68, i32 0, i32 1
  %45 = load i32, i32* %y69, align 4, !tbaa !52
  %p70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %y71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p70, i32 0, i32 1
  store i32 %45, i32* %y71, align 4, !tbaa !52
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.61
  %q73 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q73, i32 0, i32 1
  %46 = load i32, i32* %y74, align 4, !tbaa !54
  %q75 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %y76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q75, i32 0, i32 1
  %47 = load i32, i32* %y76, align 4, !tbaa !54
  %cmp77 = icmp slt i32 %46, %47
  br i1 %cmp77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.end.72
  %q79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q79, i32 0, i32 1
  %48 = load i32, i32* %y80, align 4, !tbaa !54
  %q81 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q81, i32 0, i32 1
  store i32 %48, i32* %y82, align 4, !tbaa !54
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.end.72
  br label %do.cond

do.cond:                                          ; preds = %if.end.83
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #2
  br label %if.end.84

if.end.84:                                        ; preds = %do.end, %if.then
  %50 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %50, i32 0, i32 46
  %x85 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %51 = load i32, i32* %x85, align 4, !tbaa !22
  %52 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation86 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %52, i32 0, i32 46
  %y87 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation86, i32 0, i32 1
  %53 = load i32, i32* %y87, align 4, !tbaa !29
  %or = or i32 %51, %53
  %tobool88 = icmp ne i32 %or, 0
  br i1 %tobool88, label %if.then.89, label %if.end.127

if.then.89:                                       ; preds = %if.end.84
  %54 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation90 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %55, i32 0, i32 46
  %x91 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation90, i32 0, i32 0
  %56 = load i32, i32* %x91, align 4, !tbaa !22
  %shl92 = shl i32 %56, 8
  store i32 %shl92, i32* %tx, align 4, !tbaa !20
  %57 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation93 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %58, i32 0, i32 46
  %y94 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation93, i32 0, i32 1
  %59 = load i32, i32* %y94, align 4, !tbaa !29
  %shl95 = shl i32 %59, 8
  store i32 %shl95, i32* %ty, align 4, !tbaa !20
  %p96 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %x97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p96, i32 0, i32 0
  %60 = load i32, i32* %x97, align 4, !tbaa !43
  %cmp98 = icmp ne i32 %60, -2147483648
  br i1 %cmp98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.then.89
  %61 = load i32, i32* %tx, align 4, !tbaa !20
  %p100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p100, i32 0, i32 0
  %62 = load i32, i32* %x101, align 4, !tbaa !43
  %sub = sub nsw i32 %62, %61
  store i32 %sub, i32* %x101, align 4, !tbaa !43
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.then.89
  %p103 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %y104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p103, i32 0, i32 1
  %63 = load i32, i32* %y104, align 4, !tbaa !52
  %cmp105 = icmp ne i32 %63, -2147483648
  br i1 %cmp105, label %if.then.106, label %if.end.110

if.then.106:                                      ; preds = %if.end.102
  %64 = load i32, i32* %ty, align 4, !tbaa !20
  %p107 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p107, i32 0, i32 1
  %65 = load i32, i32* %y108, align 4, !tbaa !52
  %sub109 = sub nsw i32 %65, %64
  store i32 %sub109, i32* %y108, align 4, !tbaa !52
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.106, %if.end.102
  %q111 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q111, i32 0, i32 0
  %66 = load i32, i32* %x112, align 4, !tbaa !50
  %cmp113 = icmp ne i32 %66, 2147483647
  br i1 %cmp113, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %if.end.110
  %67 = load i32, i32* %tx, align 4, !tbaa !20
  %q115 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q115, i32 0, i32 0
  %68 = load i32, i32* %x116, align 4, !tbaa !50
  %sub117 = sub nsw i32 %68, %67
  store i32 %sub117, i32* %x116, align 4, !tbaa !50
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %if.end.110
  %q119 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %y120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q119, i32 0, i32 1
  %69 = load i32, i32* %y120, align 4, !tbaa !54
  %cmp121 = icmp ne i32 %69, 2147483647
  br i1 %cmp121, label %if.then.122, label %if.end.126

if.then.122:                                      ; preds = %if.end.118
  %70 = load i32, i32* %ty, align 4, !tbaa !20
  %q123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q123, i32 0, i32 1
  %71 = load i32, i32* %y124, align 4, !tbaa !54
  %sub125 = sub nsw i32 %71, %70
  store i32 %sub125, i32* %y124, align 4, !tbaa !54
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.122, %if.end.118
  %72 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.84
  %74 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %clipping_box = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %74, i32 0, i32 47
  %75 = bitcast %struct.gs_fixed_rect_s* %clipping_box to i8*
  %76 = bitcast %struct.gs_fixed_rect_s* %tbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 4, i1 false), !tbaa.struct !120
  %77 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %clipping_box_set128 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %77, i32 0, i32 48
  store i32 1, i32* %clipping_box_set128, align 4, !tbaa !101
  %78 = bitcast %struct.gs_fixed_rect_s* %tbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %78) #2
  %79 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.127, %entry
  %80 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %81 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %clipping_box130 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %81, i32 0, i32 47
  %82 = bitcast %struct.gs_fixed_rect_s* %80 to i8*
  %83 = bitcast %struct.gs_fixed_rect_s* %clipping_box130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 4, i1 false), !tbaa.struct !120
  %84 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  ret void
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %list = alloca %struct.gs_int_rect_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %7, i32 0, i32 46
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !22
  store i32 %8, i32* %tx, align 4, !tbaa !20
  %9 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation1 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %10, i32 0, i32 46
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation1, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !29
  store i32 %11, i32* %ty, align 4, !tbaa !20
  %12 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %15 = load i32, i32* %x2, align 4, !tbaa !121
  %16 = load i32, i32* %tx, align 4, !tbaa !20
  %sub = sub nsw i32 %15, %16
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 0
  store i32 %sub, i32* %x4, align 4, !tbaa !121
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 1
  %18 = load i32, i32* %y6, align 4, !tbaa !123
  %19 = load i32, i32* %ty, align 4, !tbaa !20
  %sub7 = sub nsw i32 %18, %19
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 1
  store i32 %sub7, i32* %y9, align 4, !tbaa !123
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %21 = load i32, i32* %x10, align 4, !tbaa !124
  %22 = load i32, i32* %tx, align 4, !tbaa !20
  %sub11 = sub nsw i32 %21, %22
  %q12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q12, i32 0, i32 0
  store i32 %sub11, i32* %x13, align 4, !tbaa !124
  %23 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %23, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q14, i32 0, i32 1
  %24 = load i32, i32* %y15, align 4, !tbaa !125
  %25 = load i32, i32* %ty, align 4, !tbaa !20
  %sub16 = sub nsw i32 %24, %25
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 1
  store i32 %sub16, i32* %y18, align 4, !tbaa !125
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %27 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !126
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %29 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %30 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call = call i32 %27(%struct.gx_device_s* %28, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %29, %struct.gs_int_rect_s** %30) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %31 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp sgt i32 %31, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %32 = bitcast %struct.gs_int_rect_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %34 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %33, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %34, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %36 = load i32, i32* %i, align 4, !tbaa !20
  %37 = load i32, i32* %code, align 4, !tbaa !20
  %cmp19 = icmp slt i32 %36, %37
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %tx, align 4, !tbaa !20
  %39 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %p20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %39, i32 0, i32 0
  %x21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p20, i32 0, i32 0
  %40 = load i32, i32* %x21, align 4, !tbaa !121
  %add = add nsw i32 %40, %38
  store i32 %add, i32* %x21, align 4, !tbaa !121
  %41 = load i32, i32* %ty, align 4, !tbaa !20
  %42 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %p22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %42, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p22, i32 0, i32 1
  %43 = load i32, i32* %y23, align 4, !tbaa !123
  %add24 = add nsw i32 %43, %41
  store i32 %add24, i32* %y23, align 4, !tbaa !123
  %44 = load i32, i32* %tx, align 4, !tbaa !20
  %45 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %q25 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %45, i32 0, i32 1
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q25, i32 0, i32 0
  %46 = load i32, i32* %x26, align 4, !tbaa !124
  %add27 = add nsw i32 %46, %44
  store i32 %add27, i32* %x26, align 4, !tbaa !124
  %47 = load i32, i32* %ty, align 4, !tbaa !20
  %48 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %q28 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %48, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q28, i32 0, i32 1
  %49 = load i32, i32* %y29, align 4, !tbaa !125
  %add30 = add nsw i32 %49, %47
  store i32 %add30, i32* %y29, align 4, !tbaa !125
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %50, i32 1
  store %struct.gs_int_rect_s* %incdec.ptr, %struct.gs_int_rect_s** %list, align 8, !tbaa !1
  %51 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.gs_int_rect_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %54 = load i32, i32* %code, align 4, !tbaa !20
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #2
  %57 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret i32 %54
}

declare i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_forward_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_forward_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #1

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %newrect = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %6, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 45
  %9 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %9, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %10 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast %struct.gs_fixed_rect_s* %newrect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #2
  %17 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %17, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %18 = load i32, i32* %x1, align 4, !tbaa !43
  %shr = ashr i32 %18, 8
  store i32 %shr, i32* %x, align 4, !tbaa !20
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %20 = load i32, i32* %y3, align 4, !tbaa !52
  %shr4 = ashr i32 %20, 8
  store i32 %shr4, i32* %y, align 4, !tbaa !20
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %22 = load i32, i32* %x5, align 4, !tbaa !50
  %shr6 = ashr i32 %22, 8
  %23 = load i32, i32* %x, align 4, !tbaa !20
  %sub = sub nsw i32 %shr6, %23
  store i32 %sub, i32* %w, align 4, !tbaa !20
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q7, i32 0, i32 1
  %25 = load i32, i32* %y8, align 4, !tbaa !54
  %shr9 = ashr i32 %25, 8
  %26 = load i32, i32* %y, align 4, !tbaa !20
  %sub10 = sub nsw i32 %shr9, %26
  store i32 %sub10, i32* %h, align 4, !tbaa !20
  %27 = load i32, i32* %w, align 4, !tbaa !20
  %cmp = icmp sle i32 %27, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %28 = load i32, i32* %h, align 4, !tbaa !20
  %cmp11 = icmp sle i32 %28, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %29 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %29, i32 0, i32 46
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %30 = load i32, i32* %x12, align 4, !tbaa !22
  %31 = load i32, i32* %x, align 4, !tbaa !20
  %add = add nsw i32 %31, %30
  store i32 %add, i32* %x, align 4, !tbaa !20
  %32 = load i32, i32* %x, align 4, !tbaa !20
  %33 = load i32, i32* %w, align 4, !tbaa !20
  %add13 = add nsw i32 %32, %33
  store i32 %add13, i32* %xe, align 4, !tbaa !20
  %34 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation14 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %34, i32 0, i32 46
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation14, i32 0, i32 1
  %35 = load i32, i32* %y15, align 4, !tbaa !29
  %36 = load i32, i32* %y, align 4, !tbaa !20
  %add16 = add nsw i32 %36, %35
  store i32 %add16, i32* %y, align 4, !tbaa !20
  %37 = load i32, i32* %y, align 4, !tbaa !20
  %38 = load i32, i32* %h, align 4, !tbaa !20
  %add17 = add nsw i32 %37, %38
  store i32 %add17, i32* %ye, align 4, !tbaa !20
  %39 = load i32, i32* %y, align 4, !tbaa !20
  %40 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %40, i32 0, i32 2
  %41 = load i32, i32* %ymin, align 4, !tbaa !103
  %cmp18 = icmp sge i32 %39, %41
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false.20

land.lhs.true:                                    ; preds = %if.end
  %42 = load i32, i32* %ye, align 4, !tbaa !20
  %43 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %43, i32 0, i32 3
  %44 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp19 = icmp sle i32 %42, %44
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true, %if.end
  %45 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %45, i32 0, i32 0
  %46 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %46, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.gx_clip_rect_s* %46, null
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.99

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %47 = load i32, i32* %y, align 4, !tbaa !20
  %48 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin23 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %48, i32 0, i32 2
  %49 = load i32, i32* %ymin23, align 4, !tbaa !103
  %cmp24 = icmp sge i32 %47, %49
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.99

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %50 = load i32, i32* %ye, align 4, !tbaa !20
  %51 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax26 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %51, i32 0, i32 3
  %52 = load i32, i32* %ymax26, align 4, !tbaa !104
  %cmp27 = icmp sle i32 %50, %52
  br i1 %cmp27, label %if.then.28, label %if.end.99

if.then.28:                                       ; preds = %land.lhs.true.25, %land.lhs.true
  %53 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %54 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current29 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %54, i32 0, i32 45
  store %struct.gx_clip_rect_s* %53, %struct.gx_clip_rect_s** %current29, align 8, !tbaa !93
  br label %do.body

do.body:                                          ; preds = %if.then.28
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load i32, i32* %x, align 4, !tbaa !20
  %56 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %56, i32 0, i32 4
  %57 = load i32, i32* %xmin, align 4, !tbaa !106
  %cmp30 = icmp sge i32 %55, %57
  br i1 %cmp30, label %land.lhs.true.31, label %if.else

land.lhs.true.31:                                 ; preds = %do.end
  %58 = load i32, i32* %xe, align 4, !tbaa !20
  %59 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %59, i32 0, i32 5
  %60 = load i32, i32* %xmax, align 4, !tbaa !107
  %cmp32 = icmp sle i32 %58, %60
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %61 = load i32, i32* %x, align 4, !tbaa !20
  %shl = shl i32 %61, 8
  %p37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p37, i32 0, i32 0
  store i32 %shl, i32* %x38, align 4, !tbaa !43
  %62 = load i32, i32* %y, align 4, !tbaa !20
  %shl39 = shl i32 %62, 8
  %p40 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 0
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p40, i32 0, i32 1
  store i32 %shl39, i32* %y41, align 4, !tbaa !52
  %63 = load i32, i32* %x, align 4, !tbaa !20
  %64 = load i32, i32* %w, align 4, !tbaa !20
  %add42 = add nsw i32 %63, %64
  %shl43 = shl i32 %add42, 8
  %q44 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q44, i32 0, i32 0
  store i32 %shl43, i32* %x45, align 4, !tbaa !50
  %65 = load i32, i32* %y, align 4, !tbaa !20
  %66 = load i32, i32* %h, align 4, !tbaa !20
  %add46 = add nsw i32 %65, %66
  %shl47 = shl i32 %add46, 8
  %q48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q48, i32 0, i32 1
  store i32 %shl47, i32* %y49, align 4, !tbaa !54
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %68 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !64
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %72 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %68(%struct.gx_device_s* %69, %struct.gs_fixed_rect_s* %newrect, %struct.gs_imager_state_s* %70, %struct.gx_device_color_s* %71, %struct.gx_clip_path_s* %72) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.31, %do.end
  %73 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %73, i32 0, i32 1
  %74 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  %cmp50 = icmp eq %struct.gx_clip_rect_s* %74, null
  br i1 %cmp50, label %land.lhs.true.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.else
  %75 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev52 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %75, i32 0, i32 1
  %76 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev52, align 8, !tbaa !108
  %ymax53 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %76, i32 0, i32 3
  %77 = load i32, i32* %ymax53, align 4, !tbaa !104
  %78 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax54 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %78, i32 0, i32 3
  %79 = load i32, i32* %ymax54, align 4, !tbaa !104
  %cmp55 = icmp ne i32 %77, %79
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.97

land.lhs.true.56:                                 ; preds = %lor.lhs.false.51, %if.else
  %80 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next57 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %80, i32 0, i32 0
  %81 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next57, align 8, !tbaa !105
  %cmp58 = icmp eq %struct.gx_clip_rect_s* %81, null
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.56
  %82 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next60 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %82, i32 0, i32 0
  %83 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next60, align 8, !tbaa !105
  %ymax61 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %83, i32 0, i32 3
  %84 = load i32, i32* %ymax61, align 4, !tbaa !104
  %85 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax62 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %85, i32 0, i32 3
  %86 = load i32, i32* %ymax62, align 4, !tbaa !104
  %cmp63 = icmp ne i32 %84, %86
  br i1 %cmp63, label %if.then.64, label %if.end.97

if.then.64:                                       ; preds = %lor.lhs.false.59, %land.lhs.true.56
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %87 = load i32, i32* %x, align 4, !tbaa !20
  %88 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin68 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %88, i32 0, i32 4
  %89 = load i32, i32* %xmin68, align 4, !tbaa !106
  %cmp69 = icmp slt i32 %87, %89
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %do.end.67
  %90 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin71 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %90, i32 0, i32 4
  %91 = load i32, i32* %xmin71, align 4, !tbaa !106
  store i32 %91, i32* %x, align 4, !tbaa !20
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %do.end.67
  %92 = load i32, i32* %xe, align 4, !tbaa !20
  %93 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax73 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %93, i32 0, i32 5
  %94 = load i32, i32* %xmax73, align 4, !tbaa !107
  %cmp74 = icmp sgt i32 %92, %94
  br i1 %cmp74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %95 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax76 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %95, i32 0, i32 5
  %96 = load i32, i32* %xmax76, align 4, !tbaa !107
  store i32 %96, i32* %xe, align 4, !tbaa !20
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  %97 = load i32, i32* %x, align 4, !tbaa !20
  %98 = load i32, i32* %xe, align 4, !tbaa !20
  %cmp78 = icmp sge i32 %97, %98
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.80:                                       ; preds = %if.end.77
  %99 = load i32, i32* %x, align 4, !tbaa !20
  %shl81 = shl i32 %99, 8
  %p82 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 0
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p82, i32 0, i32 0
  store i32 %shl81, i32* %x83, align 4, !tbaa !43
  %100 = load i32, i32* %y, align 4, !tbaa !20
  %shl84 = shl i32 %100, 8
  %p85 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p85, i32 0, i32 1
  store i32 %shl84, i32* %y86, align 4, !tbaa !52
  %101 = load i32, i32* %xe, align 4, !tbaa !20
  %shl87 = shl i32 %101, 8
  %q88 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 1
  %x89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q88, i32 0, i32 0
  store i32 %shl87, i32* %x89, align 4, !tbaa !50
  %102 = load i32, i32* %y, align 4, !tbaa !20
  %103 = load i32, i32* %h, align 4, !tbaa !20
  %add90 = add nsw i32 %102, %103
  %shl91 = shl i32 %add90, 8
  %q92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %newrect, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q92, i32 0, i32 1
  store i32 %shl91, i32* %y93, align 4, !tbaa !54
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs94 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %104, i32 0, i32 42
  %fill_rectangle_hl_color95 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs94, i32 0, i32 54
  %105 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color95, align 8, !tbaa !64
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %109 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call96 = call i32 %105(%struct.gx_device_s* %106, %struct.gs_fixed_rect_s* %newrect, %struct.gs_imager_state_s* %107, %struct.gx_device_color_s* %108, %struct.gx_clip_path_s* %109) #3
  store i32 %call96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %lor.lhs.false.59, %lor.lhs.false.51
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %land.lhs.true.25, %land.lhs.true.22, %lor.lhs.false.20
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tdev100 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %110, %struct.gx_device_s** %tdev100, align 8, !tbaa !60
  %111 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %pdcolor101 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 11
  store %struct.gx_device_color_s* %111, %struct.gx_device_color_s** %pdcolor101, align 8, !tbaa !66
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pis102 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 20
  store %struct.gs_imager_state_s* %112, %struct.gs_imager_state_s** %pis102, align 8, !tbaa !65
  %113 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %pcpath103 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 13
  store %struct.gx_clip_path_s* %113, %struct.gx_clip_path_s** %pcpath103, align 8, !tbaa !67
  %114 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %115 = load i32, i32* %x, align 4, !tbaa !20
  %116 = load i32, i32* %y, align 4, !tbaa !20
  %117 = load i32, i32* %xe, align 4, !tbaa !20
  %118 = load i32, i32* %ye, align 4, !tbaa !20
  %call104 = call i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_fill_rectangle_hl_color, %struct.clip_callback_data_s* %ccdata) #3
  store i32 %call104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.99, %if.else.80, %if.then.79, %do.end.36, %if.then
  %119 = bitcast %struct.gs_fixed_rect_s* %newrect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %119) #2
  %120 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %128) #2
  %129 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare i32 @gx_forward_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #1

declare i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #1

declare i32 @gx_default_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #1

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #1

declare i32 @gx_forward_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @gx_forward_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %plane_height.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  store %struct.gx_device_s* %6, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %8, i32 0, i32 45
  %9 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %9, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %10 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %cmp = icmp sle i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %cmp1 = icmp sle i32 %13, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %14, i32 0, i32 46
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %15 = load i32, i32* %x2, align 4, !tbaa !22
  %16 = load i32, i32* %x.addr, align 4, !tbaa !20
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %x.addr, align 4, !tbaa !20
  %17 = load i32, i32* %x.addr, align 4, !tbaa !20
  %18 = load i32, i32* %w.addr, align 4, !tbaa !20
  %add3 = add nsw i32 %17, %18
  store i32 %add3, i32* %xe, align 4, !tbaa !20
  %19 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %translation4 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %19, i32 0, i32 46
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation4, i32 0, i32 1
  %20 = load i32, i32* %y5, align 4, !tbaa !29
  %21 = load i32, i32* %y.addr, align 4, !tbaa !20
  %add6 = add nsw i32 %21, %20
  store i32 %add6, i32* %y.addr, align 4, !tbaa !20
  %22 = load i32, i32* %y.addr, align 4, !tbaa !20
  %23 = load i32, i32* %h.addr, align 4, !tbaa !20
  %add7 = add nsw i32 %22, %23
  store i32 %add7, i32* %ye, align 4, !tbaa !20
  %24 = load i32, i32* %y.addr, align 4, !tbaa !20
  %25 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %25, i32 0, i32 2
  %26 = load i32, i32* %ymin, align 4, !tbaa !103
  %cmp8 = icmp sge i32 %24, %26
  br i1 %cmp8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %ye, align 4, !tbaa !20
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 3
  %29 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp9 = icmp sle i32 %27, %29
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.10
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %30 = load i32, i32* %x.addr, align 4, !tbaa !20
  %31 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %31, i32 0, i32 4
  %32 = load i32, i32* %xmin, align 4, !tbaa !106
  %cmp11 = icmp sge i32 %30, %32
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %do.end
  %33 = load i32, i32* %xe, align 4, !tbaa !20
  %34 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %34, i32 0, i32 5
  %35 = load i32, i32* %xmax, align 4, !tbaa !107
  %cmp13 = icmp sle i32 %33, %35
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %37 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !74
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %39 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %42 = load i64, i64* %id.addr, align 8, !tbaa !63
  %43 = load i32, i32* %x.addr, align 4, !tbaa !20
  %44 = load i32, i32* %y.addr, align 4, !tbaa !20
  %45 = load i32, i32* %w.addr, align 4, !tbaa !20
  %46 = load i32, i32* %h.addr, align 4, !tbaa !20
  %47 = load i32, i32* %plane_height.addr, align 4, !tbaa !20
  %call = call i32 %37(%struct.gx_device_s* %38, i8* %39, i32 %40, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true.12, %do.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.end
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tdev20 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %48, %struct.gx_device_s** %tdev20, align 8, !tbaa !60
  %49 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %49, i8** %data21, align 8, !tbaa !69
  %50 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex22 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %50, i32* %sourcex22, align 4, !tbaa !72
  %51 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster23 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %51, i32* %raster23, align 4, !tbaa !71
  %52 = load i32, i32* %plane_height.addr, align 4, !tbaa !20
  %plane_height24 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 19
  store i32 %52, i32* %plane_height24, align 4, !tbaa !75
  %53 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %54 = load i32, i32* %x.addr, align 4, !tbaa !20
  %55 = load i32, i32* %y.addr, align 4, !tbaa !20
  %56 = load i32, i32* %xe, align 4, !tbaa !20
  %57 = load i32, i32* %ye, align 4, !tbaa !20
  %call25 = call i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_planes, %struct.clip_callback_data_s* %ccdata) #3
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %do.end.17, %if.then
  %58 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %62) #2
  %63 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %planar_height.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !20
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !20
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !20
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %4, i8** %data, align 8, !tbaa !69
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %5, i32* %sourcex1, align 4, !tbaa !72
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %6, i32* %raster2, align 4, !tbaa !71
  %7 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %scolors3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 16
  store i64* %7, i64** %scolors3, align 8, !tbaa !88
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %textures4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 17
  store %struct.gx_strip_bitmap_s* %8, %struct.gx_strip_bitmap_s** %textures4, align 8, !tbaa !89
  %9 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tcolors5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 18
  store i64* %9, i64** %tcolors5, align 8, !tbaa !90
  %10 = load i32, i32* %phase_x.addr, align 4, !tbaa !20
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %10, i32* %x6, align 4, !tbaa !84
  %11 = load i32, i32* %phase_y.addr, align 4, !tbaa !20
  %phase7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase7, i32 0, i32 1
  store i32 %11, i32* %y8, align 4, !tbaa !85
  %12 = load i32, i32* %lop.addr, align 4, !tbaa !20
  %lop9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 12
  store i32 %12, i32* %lop9, align 4, !tbaa !81
  %13 = load i32, i32* %planar_height.addr, align 4, !tbaa !20
  %plane_height = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 19
  store i32 %13, i32* %plane_height, align 4, !tbaa !75
  %14 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !20
  %16 = load i32, i32* %y.addr, align 4, !tbaa !20
  %17 = load i32, i32* %w.addr, align 4, !tbaa !20
  %18 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_copy_rop2, %struct.clip_callback_data_s* %ccdata) #3
  %19 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %19) #2
  %20 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %phase_x, i32 %phase_y) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor0.addr = alloca %struct.gx_device_color_s*, align 8
  %pdcolor1.addr = alloca %struct.gx_device_color_s*, align 8
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !20
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %tiles1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 14
  store %struct.gx_strip_bitmap_s* %4, %struct.gx_strip_bitmap_s** %tiles1, align 8, !tbaa !83
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %pdc = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc, i32 0, i64 0
  store %struct.gx_device_color_s* %5, %struct.gx_device_color_s** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %pdc2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc2, i32 0, i64 1
  store %struct.gx_device_color_s* %6, %struct.gx_device_color_s** %arrayidx3, align 8, !tbaa !1
  %7 = load i32, i32* %phase_x.addr, align 4, !tbaa !20
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %7, i32* %x4, align 4, !tbaa !84
  %8 = load i32, i32* %phase_y.addr, align 4, !tbaa !20
  %phase5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase5, i32 0, i32 1
  store i32 %8, i32* %y6, align 4, !tbaa !85
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %11 = load i32, i32* %y.addr, align 4, !tbaa !20
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_tile_rect_devn, %struct.clip_callback_data_s* %ccdata) #3
  %14 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %14) #2
  %15 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !20
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !20
  store i64 %id, i64* %id.addr, align 8, !tbaa !63
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_clip_s*
  store %struct.gx_device_clip_s* %2, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %4, i8** %data1, align 8, !tbaa !69
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !20
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %5, i32* %sourcex2, align 4, !tbaa !72
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !20
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %6, i32* %raster3, align 4, !tbaa !71
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %pdcolor4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 11
  store %struct.gx_device_color_s* %7, %struct.gx_device_color_s** %pdcolor4, align 8, !tbaa !66
  %8 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %depth5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 10
  store i32 %8, i32* %depth5, align 4, !tbaa !78
  %9 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %11 = load i32, i32* %y.addr, align 4, !tbaa !20
  %12 = load i32, i32* %w.addr, align 4, !tbaa !20
  %13 = load i32, i32* %h.addr, align 4, !tbaa !20
  %call = call i32 @clip_enumerate(%struct.gx_device_clip_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_alpha_hl_color, %struct.clip_callback_data_s* %ccdata) #3
  %14 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %14) #2
  %15 = bitcast %struct.gx_device_clip_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call
}

declare void @gx_device_copy_color_procs(%struct.gx_device_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %rdev, i32 %x, i32 %y, i32 %xe, i32 %ye, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, %struct.clip_callback_data_s* %pccd) #0 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.gx_device_clip_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %process.addr = alloca i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, align 8
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %yc = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ymax41 = alloca i32, align 4
  %yec = alloca i32, align 4
  %xc = alloca i32, align 4
  %xec = alloca i32, align 4
  store %struct.gx_device_clip_s* %rdev, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %xe, i32* %xe.addr, align 4, !tbaa !20
  store i32 %ye, i32* %ye.addr, align 4, !tbaa !20
  store i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %1, i32 0, i32 45
  %2 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %2, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %3 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %x.addr, align 4, !tbaa !20
  %6 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %6, i32 0, i32 1
  store i32 %5, i32* %x1, align 4, !tbaa !73
  %7 = load i32, i32* %y.addr, align 4, !tbaa !20
  %8 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %8, i32 0, i32 2
  store i32 %7, i32* %y2, align 4, !tbaa !70
  %9 = load i32, i32* %xe.addr, align 4, !tbaa !20
  %10 = load i32, i32* %x.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %9, %10
  %11 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %11, i32 0, i32 3
  store i32 %sub, i32* %w, align 4, !tbaa !127
  %12 = load i32, i32* %ye.addr, align 4, !tbaa !20
  %13 = load i32, i32* %y.addr, align 4, !tbaa !20
  %sub3 = sub nsw i32 %12, %13
  %14 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %14, i32 0, i32 4
  store i32 %sub3, i32* %h, align 4, !tbaa !128
  %15 = load i32, i32* %y.addr, align 4, !tbaa !20
  %16 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %16, i32 0, i32 3
  %17 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp = icmp sge i32 %15, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %18, i32 0, i32 0
  %19 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %19, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_clip_rect_s* %19, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %20 = load i32, i32* %y.addr, align 4, !tbaa !20
  %21 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax6 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %21, i32 0, i32 3
  %22 = load i32, i32* %ymax6, align 4, !tbaa !104
  %cmp7 = icmp sge i32 %20, %22
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %23, i32 0, i32 0
  %24 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next8, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %24, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.14, %if.else
  %25 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %25, i32 0, i32 1
  %26 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev, align 8, !tbaa !108
  %cmp10 = icmp ne %struct.gx_clip_rect_s* %26, null
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.9
  %27 = load i32, i32* %y.addr, align 4, !tbaa !20
  %28 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev11 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %28, i32 0, i32 1
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev11, align 8, !tbaa !108
  %ymax12 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %29, i32 0, i32 3
  %30 = load i32, i32* %ymax12, align 4, !tbaa !104
  %cmp13 = icmp slt i32 %27, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.9
  %31 = phi i1 [ false, %while.cond.9 ], [ %cmp13, %land.rhs ]
  br i1 %31, label %while.body.14, label %while.end.16

while.body.14:                                    ; preds = %land.end
  %32 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %prev15 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %32, i32 0, i32 1
  %33 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prev15, align 8, !tbaa !108
  store %struct.gx_clip_rect_s* %33, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %while.cond.9

while.end.16:                                     ; preds = %land.end
  br label %if.end.17

if.end.17:                                        ; preds = %while.end.16, %if.end
  %34 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.gx_clip_rect_s* %34, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %35 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %35, i32 0, i32 2
  %36 = load i32, i32* %ymin, align 4, !tbaa !103
  store i32 %36, i32* %yc, align 4, !tbaa !20
  %37 = load i32, i32* %ye.addr, align 4, !tbaa !20
  %cmp19 = icmp sge i32 %36, %37
  br i1 %cmp19, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %38, i32 0, i32 44
  %count = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list, i32 0, i32 6
  %39 = load i32, i32* %count, align 4, !tbaa !112
  %cmp21 = icmp sgt i32 %39, 1
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %do.end
  %40 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.gx_clip_rect_s* %40, null
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %41 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %cond.end.31

cond.false:                                       ; preds = %if.then.22
  %42 = load i32, i32* %y.addr, align 4, !tbaa !20
  %43 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %current24 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %43, i32 0, i32 45
  %44 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current24, align 8, !tbaa !93
  %ymax25 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %44, i32 0, i32 3
  %45 = load i32, i32* %ymax25, align 4, !tbaa !104
  %cmp26 = icmp sge i32 %42, %45
  br i1 %cmp26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.false
  %46 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %list28 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %46, i32 0, i32 44
  %tail = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list28, i32 0, i32 2
  %47 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %tail, align 8, !tbaa !119
  br label %cond.end

cond.false.29:                                    ; preds = %cond.false
  %48 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %list30 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %48, i32 0, i32 44
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %list30, i32 0, i32 1
  %49 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !92
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.27
  %cond = phi %struct.gx_clip_rect_s* [ %47, %cond.true.27 ], [ %49, %cond.false.29 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi %struct.gx_clip_rect_s* [ %41, %cond.true ], [ %cond, %cond.end ]
  %50 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %current33 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %50, i32 0, i32 45
  store %struct.gx_clip_rect_s* %cond32, %struct.gx_clip_rect_s** %current33, align 8, !tbaa !93
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.31, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.35:                                        ; preds = %lor.lhs.false
  %51 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %52 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %current36 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %52, i32 0, i32 45
  store %struct.gx_clip_rect_s* %51, %struct.gx_clip_rect_s** %current36, align 8, !tbaa !93
  %53 = load i32, i32* %yc, align 4, !tbaa !20
  %54 = load i32, i32* %y.addr, align 4, !tbaa !20
  %cmp37 = icmp slt i32 %53, %54
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %55 = load i32, i32* %y.addr, align 4, !tbaa !20
  store i32 %55, i32* %yc, align 4, !tbaa !20
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %do.cond.112, %if.end.39
  %56 = bitcast i32* %ymax41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax42 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %57, i32 0, i32 3
  %58 = load i32, i32* %ymax42, align 4, !tbaa !104
  store i32 %58, i32* %ymax41, align 4, !tbaa !20
  %59 = bitcast i32* %yec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = load i32, i32* %ymax41, align 4, !tbaa !20
  %61 = load i32, i32* %ye.addr, align 4, !tbaa !20
  %cmp43 = icmp slt i32 %60, %61
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %do.body.40
  %62 = load i32, i32* %ymax41, align 4, !tbaa !20
  br label %cond.end.46

cond.false.45:                                    ; preds = %do.body.40
  %63 = load i32, i32* %ye.addr, align 4, !tbaa !20
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi i32 [ %62, %cond.true.44 ], [ %63, %cond.false.45 ]
  store i32 %cond47, i32* %yec, align 4, !tbaa !20
  br label %do.body.48

do.body.48:                                       ; preds = %cond.end.46
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.cond.104, %do.end.50
  %64 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %65, i32 0, i32 4
  %66 = load i32, i32* %xmin, align 4, !tbaa !106
  store i32 %66, i32* %xc, align 4, !tbaa !20
  %67 = bitcast i32* %xec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %68, i32 0, i32 5
  %69 = load i32, i32* %xmax, align 4, !tbaa !107
  store i32 %69, i32* %xec, align 4, !tbaa !20
  %70 = load i32, i32* %xc, align 4, !tbaa !20
  %71 = load i32, i32* %x.addr, align 4, !tbaa !20
  %cmp52 = icmp slt i32 %70, %71
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.body.51
  %72 = load i32, i32* %x.addr, align 4, !tbaa !20
  store i32 %72, i32* %xc, align 4, !tbaa !20
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %do.body.51
  %73 = load i32, i32* %xec, align 4, !tbaa !20
  %74 = load i32, i32* %xe.addr, align 4, !tbaa !20
  %cmp55 = icmp sgt i32 %73, %74
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  %75 = load i32, i32* %xe.addr, align 4, !tbaa !20
  store i32 %75, i32* %xec, align 4, !tbaa !20
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  %76 = load i32, i32* %xec, align 4, !tbaa !20
  %77 = load i32, i32* %xc, align 4, !tbaa !20
  %cmp58 = icmp sgt i32 %76, %77
  br i1 %cmp58, label %if.then.59, label %if.else.97

if.then.59:                                       ; preds = %if.end.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  br label %do.cond.67

do.cond.67:                                       ; preds = %do.body.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  %78 = load i32, i32* %xec, align 4, !tbaa !20
  %79 = load i32, i32* %xc, align 4, !tbaa !20
  %sub69 = sub nsw i32 %78, %79
  %80 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %w70 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %80, i32 0, i32 3
  %81 = load i32, i32* %w70, align 4, !tbaa !127
  %cmp71 = icmp eq i32 %sub69, %81
  br i1 %cmp71, label %if.then.72, label %if.else.91

if.then.72:                                       ; preds = %do.end.68
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.88, %if.then.72
  %82 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next74 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %82, i32 0, i32 0
  %83 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next74, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %83, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp75 = icmp ne %struct.gx_clip_rect_s* %83, null
  br i1 %cmp75, label %land.lhs.true, label %land.end.87

land.lhs.true:                                    ; preds = %while.cond.73
  %84 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin76 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %84, i32 0, i32 2
  %85 = load i32, i32* %ymin76, align 4, !tbaa !103
  %86 = load i32, i32* %yec, align 4, !tbaa !20
  %cmp77 = icmp eq i32 %85, %86
  br i1 %cmp77, label %land.lhs.true.78, label %land.end.87

land.lhs.true.78:                                 ; preds = %land.lhs.true
  %87 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax79 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %87, i32 0, i32 3
  %88 = load i32, i32* %ymax79, align 4, !tbaa !104
  %89 = load i32, i32* %ye.addr, align 4, !tbaa !20
  %cmp80 = icmp sle i32 %88, %89
  br i1 %cmp80, label %land.lhs.true.81, label %land.end.87

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %90 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin82 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %90, i32 0, i32 4
  %91 = load i32, i32* %xmin82, align 4, !tbaa !106
  %92 = load i32, i32* %x.addr, align 4, !tbaa !20
  %cmp83 = icmp sle i32 %91, %92
  br i1 %cmp83, label %land.rhs.84, label %land.end.87

land.rhs.84:                                      ; preds = %land.lhs.true.81
  %93 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax85 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %93, i32 0, i32 5
  %94 = load i32, i32* %xmax85, align 4, !tbaa !107
  %95 = load i32, i32* %xe.addr, align 4, !tbaa !20
  %cmp86 = icmp sge i32 %94, %95
  br label %land.end.87

land.end.87:                                      ; preds = %land.rhs.84, %land.lhs.true.81, %land.lhs.true.78, %land.lhs.true, %while.cond.73
  %96 = phi i1 [ false, %land.lhs.true.81 ], [ false, %land.lhs.true.78 ], [ false, %land.lhs.true ], [ false, %while.cond.73 ], [ %cmp86, %land.rhs.84 ]
  br i1 %96, label %while.body.88, label %while.end.90

while.body.88:                                    ; preds = %land.end.87
  %97 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax89 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %97, i32 0, i32 3
  %98 = load i32, i32* %ymax89, align 4, !tbaa !104
  store i32 %98, i32* %yec, align 4, !tbaa !20
  br label %while.cond.73

while.end.90:                                     ; preds = %land.end.87
  br label %if.end.93

if.else.91:                                       ; preds = %do.end.68
  %99 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next92 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %99, i32 0, i32 0
  %100 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next92, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %100, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %while.end.90
  %101 = load i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  %102 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %103 = load i32, i32* %xc, align 4, !tbaa !20
  %104 = load i32, i32* %yc, align 4, !tbaa !20
  %105 = load i32, i32* %xec, align 4, !tbaa !20
  %106 = load i32, i32* %yec, align 4, !tbaa !20
  %call = call i32 %101(%struct.clip_callback_data_s* %102, i32 %103, i32 %104, i32 %105, i32 %106) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %107 = load i32, i32* %code, align 4, !tbaa !20
  %cmp94 = icmp slt i32 %107, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.93
  %108 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.93
  br label %if.end.99

if.else.97:                                       ; preds = %if.end.57
  %109 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %next98 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %109, i32 0, i32 0
  %110 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next98, align 8, !tbaa !105
  store %struct.gx_clip_rect_s* %110, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.end.96
  %111 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %cmp100 = icmp eq %struct.gx_clip_rect_s* %111, null
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.99
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %if.then.101, %if.then.95
  %112 = bitcast i32* %xec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.108 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.104

do.cond.104:                                      ; preds = %cleanup.cont
  %114 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax105 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %114, i32 0, i32 3
  %115 = load i32, i32* %ymax105, align 4, !tbaa !104
  %116 = load i32, i32* %ymax41, align 4, !tbaa !20
  %cmp106 = icmp eq i32 %115, %116
  br i1 %cmp106, label %do.body.51, label %do.end.107

do.end.107:                                       ; preds = %do.cond.104
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %do.end.107, %cleanup
  %117 = bitcast i32* %yec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %ymax41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %cleanup.dest.110 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.110, label %cleanup.116 [
    i32 0, label %cleanup.cont.111
  ]

cleanup.cont.111:                                 ; preds = %cleanup.108
  br label %do.cond.112

do.cond.112:                                      ; preds = %cleanup.cont.111
  %119 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin113 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %119, i32 0, i32 2
  %120 = load i32, i32* %ymin113, align 4, !tbaa !103
  store i32 %120, i32* %yc, align 4, !tbaa !20
  %121 = load i32, i32* %ye.addr, align 4, !tbaa !20
  %cmp114 = icmp slt i32 %120, %121
  br i1 %cmp114, label %do.body.40, label %do.end.115

do.end.115:                                       ; preds = %do.cond.112
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

cleanup.116:                                      ; preds = %do.end.115, %cleanup.108, %if.end.34
  %122 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = load i32, i32* %retval
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_enumerate(%struct.gx_device_clip_s* %rdev, i32 %x, i32 %y, i32 %w, i32 %h, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, %struct.clip_callback_data_s* %pccd) #0 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.gx_device_clip_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %process.addr = alloca i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, align 8
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %rptr = alloca %struct.gx_clip_rect_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clip_s* %rdev, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !20
  store i32 %y, i32* %y.addr, align 4, !tbaa !20
  store i32 %w, i32* %w.addr, align 4, !tbaa !20
  store i32 %h, i32* %h.addr, align 4, !tbaa !20
  store i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %3, i32 0, i32 45
  %4 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %current, align 8, !tbaa !93
  store %struct.gx_clip_rect_s* %4, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %5 = load i32, i32* %w.addr, align 4, !tbaa !20
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %h.addr, align 4, !tbaa !20
  %cmp1 = icmp sle i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %7, i32 0, i32 43
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  %9 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %9, i32 0, i32 0
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !60
  %10 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %translation = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %10, i32 0, i32 46
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation, i32 0, i32 0
  %11 = load i32, i32* %x2, align 4, !tbaa !22
  %12 = load i32, i32* %x.addr, align 4, !tbaa !20
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %x.addr, align 4, !tbaa !20
  %13 = load i32, i32* %x.addr, align 4, !tbaa !20
  %14 = load i32, i32* %w.addr, align 4, !tbaa !20
  %add3 = add nsw i32 %13, %14
  store i32 %add3, i32* %xe, align 4, !tbaa !20
  %15 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %translation4 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %15, i32 0, i32 46
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %translation4, i32 0, i32 1
  %16 = load i32, i32* %y5, align 4, !tbaa !29
  %17 = load i32, i32* %y.addr, align 4, !tbaa !20
  %add6 = add nsw i32 %17, %16
  store i32 %add6, i32* %y.addr, align 4, !tbaa !20
  %18 = load i32, i32* %y.addr, align 4, !tbaa !20
  %19 = load i32, i32* %h.addr, align 4, !tbaa !20
  %add7 = add nsw i32 %18, %19
  store i32 %add7, i32* %ye, align 4, !tbaa !20
  %20 = load i32, i32* %y.addr, align 4, !tbaa !20
  %21 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %21, i32 0, i32 2
  %22 = load i32, i32* %ymin, align 4, !tbaa !103
  %cmp8 = icmp sge i32 %20, %22
  br i1 %cmp8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, i32* %ye, align 4, !tbaa !20
  %24 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %24, i32 0, i32 3
  %25 = load i32, i32* %ymax, align 4, !tbaa !104
  %cmp9 = icmp sle i32 %23, %25
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.19

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %26 = load i32, i32* %x.addr, align 4, !tbaa !20
  %27 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %27, i32 0, i32 4
  %28 = load i32, i32* %xmin, align 4, !tbaa !106
  %cmp11 = icmp sge i32 %26, %28
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %29 = load i32, i32* %xe, align 4, !tbaa !20
  %30 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %rptr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %30, i32 0, i32 5
  %31 = load i32, i32* %xmax, align 4, !tbaa !107
  %cmp13 = icmp sle i32 %29, %31
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true.12
  %32 = load i32, i32* %x.addr, align 4, !tbaa !20
  %33 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x15 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %33, i32 0, i32 1
  store i32 %32, i32* %x15, align 4, !tbaa !73
  %34 = load i32, i32* %y.addr, align 4, !tbaa !20
  %35 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y16 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %35, i32 0, i32 2
  store i32 %34, i32* %y16, align 4, !tbaa !70
  %36 = load i32, i32* %w.addr, align 4, !tbaa !20
  %37 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %w17 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %37, i32 0, i32 3
  store i32 %36, i32* %w17, align 4, !tbaa !127
  %38 = load i32, i32* %h.addr, align 4, !tbaa !20
  %39 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %h18 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %39, i32 0, i32 4
  store i32 %38, i32* %h18, align 4, !tbaa !128
  %40 = load i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  %41 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !20
  %43 = load i32, i32* %y.addr, align 4, !tbaa !20
  %44 = load i32, i32* %xe, align 4, !tbaa !20
  %45 = load i32, i32* %ye, align 4, !tbaa !20
  %call = call i32 %40(%struct.clip_callback_data_s* %41, i32 %42, i32 %43, i32 %44, i32 %45) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %if.end
  %46 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %rdev.addr, align 8, !tbaa !1
  %47 = load i32, i32* %x.addr, align 4, !tbaa !20
  %48 = load i32, i32* %y.addr, align 4, !tbaa !20
  %49 = load i32, i32* %xe, align 4, !tbaa !20
  %50 = load i32, i32* %ye, align 4, !tbaa !20
  %51 = load i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  %52 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %call20 = call i32 @clip_enumerate_rest(%struct.gx_device_clip_s* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %51, %struct.clip_callback_data_s* %52) #3
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.14, %if.then
  %53 = bitcast %struct.gx_clip_rect_s** %rptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_call_fill_path(%struct.clip_callback_data_s* %pccd, i32 %xc, i32 %yc, i32 %xec, i32 %yec) #0 {
entry:
  %retval = alloca i32, align 4
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %xec.addr = alloca i32, align 4
  %yec.addr = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, align 8
  %code = alloca i32, align 4
  %cpath_intersection = alloca %struct.gx_clip_path_s, align 8
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %rect_path = alloca %struct.gx_path_s, align 8
  %cleanup.dest.slot = alloca i32
  %clip_box = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  store i32 %xc, i32* %xc.addr, align 4, !tbaa !20
  store i32 %yc, i32* %yc.addr, align 4, !tbaa !20
  store i32 %xec, i32* %xec.addr, align 4, !tbaa !20
  store i32 %yec, i32* %yec.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev1, align 8, !tbaa !60
  store %struct.gx_device_s* %2, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %3 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.gx_clip_path_s* %cpath_intersection to i8*
  call void @llvm.lifetime.start(i64 304, i8* %5) #2
  %6 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pcpath2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %7, i32 0, i32 13
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath2, align 8, !tbaa !67
  store %struct.gx_clip_path_s* %8, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_clip_path_s* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = bitcast %struct.gx_path_s* %rect_path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #2
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %ppath = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 21
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !109
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !129
  %call = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %cpath_intersection, %struct.gx_clip_path_s* %11, %struct.gs_memory_s* %14) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %15 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %ppath5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %17, i32 0, i32 21
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath5, align 8, !tbaa !109
  %memory6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !129
  %call7 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %rect_path, %struct.gx_path_s* null, %struct.gs_memory_s* %19) #3
  %20 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %shl = shl i32 %20, 8
  %21 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %shl8 = shl i32 %21, 8
  %22 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %shl9 = shl i32 %22, 8
  %23 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %shl10 = shl i32 %23, 8
  %call11 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %rect_path, i32 %shl, i32 %shl8, i32 %shl9, i32 %shl10) #3
  %24 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %24, i32 0, i32 20
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !65
  %call12 = call i32 @gx_cpath_intersect(%struct.gx_clip_path_s* %cpath_intersection, %struct.gx_path_s* %rect_path, i32 -1, %struct.gs_imager_state_s* %25) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  call void @gx_path_free(%struct.gx_path_s* %rect_path, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %26 = bitcast %struct.gx_path_s* %rect_path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %26) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.else:                                          ; preds = %entry
  %27 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %27) #2
  %28 = load i32, i32* %xc.addr, align 4, !tbaa !20
  %shl13 = shl i32 %28, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl13, i32* %x, align 4, !tbaa !43
  %29 = load i32, i32* %yc.addr, align 4, !tbaa !20
  %shl14 = shl i32 %29, 8
  %p15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p15, i32 0, i32 1
  store i32 %shl14, i32* %y, align 4, !tbaa !52
  %30 = load i32, i32* %xec.addr, align 4, !tbaa !20
  %shl16 = shl i32 %30, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl16, i32* %x17, align 4, !tbaa !50
  %31 = load i32, i32* %yec.addr, align 4, !tbaa !20
  %shl18 = shl i32 %31, 8
  %q19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q19, i32 0, i32 1
  store i32 %shl18, i32* %y20, align 4, !tbaa !54
  %32 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %ppath21 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %32, i32 0, i32 21
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath21, align 8, !tbaa !109
  %memory22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !129
  %call23 = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %cpath_intersection, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %34) #3
  %call24 = call i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s* %cpath_intersection, %struct.gs_fixed_rect_s* %clip_box) #3
  store i32 %call24, i32* %code, align 4, !tbaa !20
  %35 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #2
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %cleanup.cont
  %36 = load i32, i32* %code, align 4, !tbaa !20
  %cmp26 = icmp slt i32 %36, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %37 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.28:                                        ; preds = %if.end.25
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %39 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !130
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %39, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %40 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %cmp29 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %40, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %41 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %42 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %tdev32 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %42, i32 0, i32 0
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev32, align 8, !tbaa !60
  %44 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pis33 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %44, i32 0, i32 20
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis33, align 8, !tbaa !65
  %46 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %ppath34 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %46, i32 0, i32 21
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath34, align 8, !tbaa !109
  %48 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %48, i32 0, i32 22
  %49 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params, align 8, !tbaa !110
  %50 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %pdcolor = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %50, i32 0, i32 11
  %51 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !66
  %call35 = call i32 %41(%struct.gx_device_s* %43, %struct.gs_imager_state_s* %45, %struct.gx_path_s* %47, %struct.gx_fill_params_s* %49, %struct.gx_device_color_s* %51, %struct.gx_clip_path_s* %cpath_intersection) #3
  store i32 %call35, i32* %code, align 4, !tbaa !20
  call void @gx_cpath_free(%struct.gx_clip_path_s* %cpath_intersection, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #3
  %52 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.31, %if.then.27, %cleanup
  %53 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast %struct.gx_clip_path_s* %cpath_intersection to i8*
  call void @llvm.lifetime.end(i64 304, i8* %54) #2
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_path_add_rectangle(%struct.gx_path_s*, i32, i32, i32, i32) #1

declare i32 @gx_cpath_intersect(%struct.gx_clip_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*) #1

declare void @gx_path_free(%struct.gx_path_s*, i8*) #1

declare i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare void @gx_cpath_free(%struct.gx_clip_path_s*, i8*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

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
!5 = !{!6, !2, i64 24}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 28, i64 4, !20, i64 32, i64 1, !21, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !20, i64 68, i64 4, !20, i64 72, i64 4, !20}
!20 = !{!7, !7, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!23, !7, i64 1824}
!23 = !{!"gx_device_clip_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !24, i64 1736, !2, i64 1816, !26, i64 1824, !27, i64 1832, !7, i64 1848}
!24 = !{!"gx_clip_list_s", !25, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !7, i64 72}
!25 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !3, i64 32}
!26 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!27 = !{!"gs_fixed_rect_s", !28, i64 0, !28, i64 8}
!28 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!29 = !{!23, !7, i64 1828}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !3, i64 0}
!32 = !{i64 0, i64 4, !20, i64 4, i64 32, !21, i64 36, i64 32, !21}
!33 = !{!23, !2, i64 1728}
!34 = !{!6, !7, i64 840}
!35 = !{!23, !7, i64 840}
!36 = !{!6, !7, i64 844}
!37 = !{!23, !7, i64 844}
!38 = !{!6, !7, i64 848}
!39 = !{!23, !7, i64 848}
!40 = !{!6, !3, i64 1112}
!41 = !{!23, !3, i64 1112}
!42 = !{!23, !2, i64 1144}
!43 = !{!27, !7, i64 0}
!44 = !{!45, !7, i64 252}
!45 = !{!"gx_clip_path_s", !46, i64 0, !49, i64 128, !7, i64 232, !27, i64 236, !27, i64 252, !2, i64 272, !7, i64 280, !2, i64 288, !9, i64 296}
!46 = !{!"gx_path_s", !47, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !27, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !7, i64 104, !7, i64 108, !28, i64 112, !2, i64 120}
!47 = !{!"gx_path_segments_s", !8, i64 0, !48, i64 24}
!48 = !{!"psc_", !2, i64 0, !2, i64 8}
!49 = !{!"gx_clip_rect_list_s", !8, i64 0, !24, i64 24}
!50 = !{!27, !7, i64 8}
!51 = !{!45, !7, i64 260}
!52 = !{!27, !7, i64 4}
!53 = !{!45, !7, i64 256}
!54 = !{!27, !7, i64 12}
!55 = !{!45, !7, i64 264}
!56 = !{!45, !7, i64 236}
!57 = !{!45, !7, i64 240}
!58 = !{!45, !7, i64 244}
!59 = !{!45, !7, i64 248}
!60 = !{!61, !2, i64 0}
!61 = !{!"clip_callback_data_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !3, i64 24, !2, i64 40, !3, i64 48, !7, i64 64, !7, i64 68, !7, i64 72, !2, i64 80, !7, i64 88, !2, i64 96, !2, i64 104, !26, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !2, i64 160, !2, i64 168}
!62 = !{!6, !2, i64 1200}
!63 = !{!9, !9, i64 0}
!64 = !{!6, !2, i64 1576}
!65 = !{!61, !2, i64 152}
!66 = !{!61, !2, i64 80}
!67 = !{!61, !2, i64 96}
!68 = !{!6, !2, i64 1216}
!69 = !{!61, !2, i64 40}
!70 = !{!61, !7, i64 12}
!71 = !{!61, !7, i64 68}
!72 = !{!61, !7, i64 64}
!73 = !{!61, !7, i64 8}
!74 = !{!6, !2, i64 1672}
!75 = !{!61, !7, i64 144}
!76 = !{!6, !2, i64 1224}
!77 = !{!6, !2, i64 1312}
!78 = !{!61, !7, i64 72}
!79 = !{!6, !2, i64 1712}
!80 = !{!6, !2, i64 1352}
!81 = !{!61, !7, i64 88}
!82 = !{!6, !2, i64 1704}
!83 = !{!61, !2, i64 104}
!84 = !{!61, !7, i64 112}
!85 = !{!61, !7, i64 116}
!86 = !{!6, !2, i64 1416}
!87 = !{!6, !2, i64 1424}
!88 = !{!61, !2, i64 120}
!89 = !{!61, !2, i64 128}
!90 = !{!61, !2, i64 136}
!91 = !{!6, !2, i64 1696}
!92 = !{!23, !2, i64 1776}
!93 = !{!23, !2, i64 1816}
!94 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !21, i64 12, i64 2, !95, i64 14, i64 1, !21, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 28, i64 4, !20, i64 32, i64 4, !20, i64 36, i64 4, !20, i64 40, i64 4, !21, i64 44, i64 64, !21, i64 108, i64 64, !21, i64 176, i64 512, !21, i64 688, i64 8, !1, i64 696, i64 4, !21, i64 704, i64 8, !63, i64 712, i64 4, !20}
!95 = !{!11, !11, i64 0}
!96 = !{i64 0, i64 8, !63, i64 8, i64 8, !63}
!97 = !{!6, !7, i64 832}
!98 = !{!23, !7, i64 832}
!99 = !{!6, !7, i64 836}
!100 = !{!23, !7, i64 836}
!101 = !{!23, !7, i64 1848}
!102 = !{!23, !2, i64 24}
!103 = !{!25, !7, i64 16}
!104 = !{!25, !7, i64 20}
!105 = !{!25, !2, i64 0}
!106 = !{!25, !7, i64 24}
!107 = !{!25, !7, i64 28}
!108 = !{!25, !2, i64 8}
!109 = !{!61, !2, i64 160}
!110 = !{!61, !2, i64 168}
!111 = !{!6, !2, i64 1432}
!112 = !{!23, !7, i64 1808}
!113 = !{!23, !7, i64 1760}
!114 = !{!23, !7, i64 1752}
!115 = !{!23, !7, i64 1764}
!116 = !{!23, !7, i64 1756}
!117 = !{!23, !7, i64 1800}
!118 = !{!23, !7, i64 1804}
!119 = !{!23, !2, i64 1784}
!120 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20}
!121 = !{!122, !7, i64 0}
!122 = !{!"gs_int_rect_s", !26, i64 0, !26, i64 8}
!123 = !{!122, !7, i64 4}
!124 = !{!122, !7, i64 8}
!125 = !{!122, !7, i64 12}
!126 = !{!6, !2, i64 1448}
!127 = !{!61, !7, i64 16}
!128 = !{!61, !7, i64 20}
!129 = !{!46, !2, i64 40}
!130 = !{!6, !2, i64 1336}
