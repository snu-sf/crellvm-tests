; ModuleID = './gximask.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_device_cpath_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gs_int_rect_s, %struct.gs_int_rect_s, %struct.gx_clip_list_s }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }

@st_device_cpath_accum = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [27 x i8] c"gx_image_fill_masked_start\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"s_image_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_image_fill_masked_start(%struct.gx_device_s* %dev, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_device_s** %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s**, align 8
  %pcdev = alloca %struct.gx_device_cpath_accum_s*, align 8
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %cdev, %struct.gx_device_s*** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s* %1) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else.14

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %3 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !5
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 %3(%struct.gx_device_s* %4, i32 0, i8* null, i32 0) #3
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %5 = bitcast %struct.gx_device_cpath_accum_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 8
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !19
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i8* %7(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_device_cpath_accum, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #3
  %9 = bitcast i8* %call7 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %9, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_cpath_accum_s* %11, null
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.5
  %12 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s* %12, %struct.gs_memory_s* %13) #3
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call9 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %14, %struct.gs_fixed_rect_s* %cbox) #3
  %15 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  call void @gx_cpath_accum_set_cbox(%struct.gx_device_cpath_accum_s* %15, %struct.gs_fixed_rect_s* %cbox) #3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %17, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4, !tbaa !28
  %20 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %width10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %20, i32 0, i32 13
  store i32 %19, i32* %width10, align 4, !tbaa !29
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height, align 4, !tbaa !30
  %23 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %height11 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %23, i32 0, i32 14
  store i32 %22, i32* %height11, align 4, !tbaa !31
  %24 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_cpath_accum_s* %24 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %25, i32 1) #3
  %26 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_cpath_accum_s* %26 to %struct.gx_device_s*
  %28 = load %struct.gx_device_s**, %struct.gx_device_s*** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %27, %struct.gx_device_s** %28, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %29 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = bitcast %struct.gx_device_cpath_accum_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_s**, %struct.gx_device_s*** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %31, %struct.gx_device_s** %32, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.15

if.else.14:                                       ; preds = %lor.lhs.false
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_s**, %struct.gx_device_s*** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %33, %struct.gx_device_s** %34, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %cleanup
  %35 = load i32, i32* %retval
  ret i32 %35

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s*) #1

declare i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s*, %struct.gs_memory_s*) #1

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #1

declare void @gx_cpath_accum_set_cbox(%struct.gx_device_cpath_accum_s*, %struct.gs_fixed_rect_s*) #1

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gx_image_fill_masked_end(%struct.gx_device_s* %dev, %struct.gx_device_s* %tdev, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcdev = alloca %struct.gx_device_cpath_accum_s*, align 8
  %cpath = alloca %struct.gx_clip_path_s, align 8
  %cpath_with_shading_bbox = alloca %struct.gx_clip_path_s, align 8
  %pcpath1 = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cpath_accum_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cpath_accum_s*
  store %struct.gx_device_cpath_accum_s* %2, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_clip_path_s* %cpath to i8*
  call void @llvm.lifetime.start(i64 304, i8* %3) #2
  %4 = bitcast %struct.gx_clip_path_s* %cpath_with_shading_bbox to i8*
  call void @llvm.lifetime.start(i64 304, i8* %4) #2
  %5 = bitcast %struct.gx_clip_path_s** %pcpath1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store %struct.gx_clip_path_s* %cpath, %struct.gx_clip_path_s** %pcpath1, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %call = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %cpath, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %10) #3
  %11 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %call1 = call i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s* %11, %struct.gx_clip_path_s* %cpath) #3
  store i32 %call1, i32* %code, align 4, !tbaa !33
  %12 = load i32, i32* %code, align 4, !tbaa !33
  %cmp = icmp sge i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_dc_pattern2_clip_with_bbox(%struct.gx_device_color_s* %13, %struct.gx_device_s* %14, %struct.gx_clip_path_s* %cpath_with_shading_bbox, %struct.gx_clip_path_s** %pcpath1) #3
  store i32 %call2, i32* %code, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath1, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %15, %struct.gx_device_s* %16) #3
  %17 = load i32, i32* %code, align 4, !tbaa !33
  %cmp3 = icmp sge i32 %17, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %18, i32 0, i32 45
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %19 = load i32, i32* %x, align 4, !tbaa !34
  %20 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox4 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %20, i32 0, i32 45
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox4, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %21 = load i32, i32* %x5, align 4, !tbaa !35
  %cmp6 = icmp slt i32 %19, %21
  br i1 %cmp6, label %if.then.7, label %if.end.30

if.then.7:                                        ; preds = %land.lhs.true
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 0
  %23 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !36
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %23, i32 0, i32 5
  %24 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !42
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox8 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %26, i32 0, i32 45
  %p9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox8, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p9, i32 0, i32 0
  %27 = load i32, i32* %x10, align 4, !tbaa !34
  %28 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %28, i32 0, i32 45
  %p12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox11, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p12, i32 0, i32 1
  %29 = load i32, i32* %y, align 4, !tbaa !44
  %30 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox13 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %30, i32 0, i32 45
  %q14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox13, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q14, i32 0, i32 0
  %31 = load i32, i32* %x15, align 4, !tbaa !35
  %32 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox16 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %32, i32 0, i32 45
  %p17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p17, i32 0, i32 0
  %33 = load i32, i32* %x18, align 4, !tbaa !34
  %sub = sub nsw i32 %31, %33
  %34 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox19 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %34, i32 0, i32 45
  %q20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox19, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q20, i32 0, i32 1
  %35 = load i32, i32* %y21, align 4, !tbaa !45
  %36 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %bbox22 = getelementptr inbounds %struct.gx_device_cpath_accum_s, %struct.gx_device_cpath_accum_s* %36, i32 0, i32 45
  %p23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox22, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p23, i32 0, i32 1
  %37 = load i32, i32* %y24, align 4, !tbaa !44
  %sub25 = sub nsw i32 %35, %37
  %38 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %call26 = call i32 %24(%struct.gx_device_color_s* %25, i32 %27, i32 %29, i32 %sub, i32 %sub25, %struct.gx_device_s* %38, i32 252, %struct.gx_rop_source_s* null) #3
  store i32 %call26, i32* %code1, align 4, !tbaa !33
  %39 = load i32, i32* %code, align 4, !tbaa !33
  %cmp27 = icmp eq i32 %39, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.7
  %40 = load i32, i32* %code1, align 4, !tbaa !33
  store i32 %40, i32* %code, align 4, !tbaa !33
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.7
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %if.end
  %41 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath1, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.gx_clip_path_s* %41, %cpath_with_shading_bbox
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  call void @gx_cpath_free(%struct.gx_clip_path_s* %cpath_with_shading_bbox, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %42 = load %struct.gx_device_cpath_accum_s*, %struct.gx_device_cpath_accum_s** %pcdev, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_cpath_accum_s* %42 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %43, i32 0) #3
  call void @gx_cpath_free(%struct.gx_clip_path_s* %cpath, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #3
  %44 = load i32, i32* %code, align 4, !tbaa !33
  %45 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %47) #2
  %48 = bitcast %struct.gx_clip_path_s** %pcpath1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_clip_path_s* %cpath_with_shading_bbox to i8*
  call void @llvm.lifetime.end(i64 304, i8* %49) #2
  %50 = bitcast %struct.gx_clip_path_s* %cpath to i8*
  call void @llvm.lifetime.end(i64 304, i8* %50) #2
  %51 = bitcast %struct.gx_device_cpath_accum_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  ret i32 %44
}

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #1

declare i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_dc_pattern2_clip_with_bbox(%struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gx_clip_path_s*, %struct.gx_clip_path_s**) #1

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #1

declare void @gx_cpath_free(%struct.gx_clip_path_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_image_fill_masked(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, %struct.gx_device_color_s* %pdc, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !33
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !33
  store i64 %id, i64* %id.addr, align 8, !tbaa !46
  store i32 %x, i32* %x.addr, align 4, !tbaa !33
  store i32 %y, i32* %y.addr, align 4, !tbaa !33
  store i32 %width, i32* %width.addr, align 4, !tbaa !33
  store i32 %height, i32* %height.addr, align 4, !tbaa !33
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !33
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !33
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %1, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  %call = call i32 @gx_image_fill_masked_start(%struct.gx_device_s* %3, %struct.gx_device_color_s* %4, %struct.gx_clip_path_s* %5, %struct.gs_memory_s* %7, %struct.gx_device_s** %cdev) #3
  store i32 %call, i32* %code, align 4, !tbaa !33
  %8 = load i32, i32* %code, align 4, !tbaa !33
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !48
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_x.addr, align 4, !tbaa !33
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !33
  %15 = load i64, i64* %id.addr, align 8, !tbaa !46
  %16 = load i32, i32* %x.addr, align 4, !tbaa !33
  %17 = load i32, i32* %y.addr, align 4, !tbaa !33
  %18 = load i32, i32* %width.addr, align 4, !tbaa !33
  %19 = load i32, i32* %height.addr, align 4, !tbaa !33
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %21 = load i32, i32* %depth.addr, align 4, !tbaa !33
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !33
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call i32 %10(%struct.gx_device_s* %11, i8* %12, i32 %13, i32 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, %struct.gx_device_color_s* %20, i32 %21, i32 %22, %struct.gx_clip_path_s* %23) #3
  store i32 %call1, i32* %code, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %code, align 4, !tbaa !33
  %cmp2 = icmp sge i32 %24, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gx_device_s* %25, %26
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_image_fill_masked_end(%struct.gx_device_s* %27, %struct.gx_device_s* %28, %struct.gx_device_color_s* %29) #3
  store i32 %call5, i32* %code, align 4, !tbaa !33
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %30 = load i32, i32* %code, align 4, !tbaa !33
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 %30
}

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
!5 = !{!6, !2, i64 1664}
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
!19 = !{!20, !2, i64 72}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!23, !2, i64 64}
!23 = !{!"gx_device_cpath_accum_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !24, i64 1736, !24, i64 1752, !26, i64 1768}
!24 = !{!"gs_int_rect_s", !25, i64 0, !25, i64 8}
!25 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!26 = !{!"gx_clip_list_s", !27, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !7, i64 68, !7, i64 72}
!27 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !3, i64 32}
!28 = !{!6, !7, i64 832}
!29 = !{!23, !7, i64 832}
!30 = !{!6, !7, i64 836}
!31 = !{!23, !7, i64 836}
!32 = !{!23, !2, i64 24}
!33 = !{!7, !7, i64 0}
!34 = !{!23, !7, i64 1752}
!35 = !{!23, !7, i64 1760}
!36 = !{!37, !2, i64 0}
!37 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !25, i64 352, !7, i64 360, !38, i64 368, !40, i64 632}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"_mask", !41, i64 0, !9, i64 8, !2, i64 16}
!41 = !{!"mp_", !7, i64 0, !7, i64 4}
!42 = !{!43, !2, i64 40}
!43 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!44 = !{!23, !7, i64 1756}
!45 = !{!23, !7, i64 1764}
!46 = !{!9, !9, i64 0}
!47 = !{!6, !2, i64 24}
!48 = !{!6, !2, i64 1352}
