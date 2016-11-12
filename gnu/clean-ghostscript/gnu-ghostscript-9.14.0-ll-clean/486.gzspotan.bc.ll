; ModuleID = './gzspotan.bc'
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
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32)*, {}*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_fixed_point_s = type { i32, i32 }
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
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
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
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_san_trap_contact_s = type { %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s* }
%struct.gx_san_trap_s = type { %struct.gx_san_trap_s*, i32, i32, i32, i32, i32, i32, %struct.gx_san_trap_contact_s*, %struct.segment_s*, %struct.segment_s*, i32, i32, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 }
%struct.gx_device_spot_analyzer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 }
%struct.gx_san_sect_s = type { i32, i32, i32, i32, %struct.segment_s*, %struct.segment_s*, i32 }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [24 x i8] c"gx_device_spot_analyzer\00", align 1
@device_spot_analyzer_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_device, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @device_spot_analyzer_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_spot_analyzer = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1824, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_spot_analyzer_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gx_san__obtain\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Extra call to gx_san__release.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Wrong lock to gx_san__release.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"gx_san__release\00", align 1
@st_device = external constant %struct.gs_memory_struct_type_s, align 8
@device_spot_analyzer_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1736 }, %struct.gc_ptr_element_s { i16 0, i16 1744 }, %struct.gc_ptr_element_s { i16 0, i16 1760 }, %struct.gc_ptr_element_s { i16 0, i16 1768 }], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"spot analyzer\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gx_spot_analyzer_device = internal constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 } { i32 1824, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @san_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* @san_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @san_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, i32 0, %struct.gx_san_trap_s* null, %struct.gx_san_trap_s* null, %struct.gx_san_trap_s* null, %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s* null, i32 0, i32 0, %struct.gx_san_trap_s* null, %struct.gx_san_trap_s* null, %struct.gx_san_trap_s* null, i32 0, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"free_trap_list\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"free_cont_list\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"trap_reserve\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gx_san_trap\00", align 1
@san_trap_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @san_trap_enum_ptrs, i32 0, i32 0) }, align 8
@st_san_trap = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @san_trap_reloc_ptrs to i8*) }, align 8
@san_trap_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.11 = private unnamed_addr constant [13 x i8] c"cont_reserve\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"gx_san_trap_contact\00", align 1
@san_trap_contact_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @san_trap_contact_enum_ptrs, i32 0, i32 0) }, align 8
@st_san_trap_contact = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @san_trap_contact_reloc_ptrs to i8*) }, align 8
@san_trap_contact_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @san_open(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %padev = alloca %struct.gx_device_spot_analyzer_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_spot_analyzer_s*
  store %struct.gx_device_spot_analyzer_s* %2, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %3, i32 0, i32 45
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %trap_buffer_last, align 8, !tbaa !5
  %4 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %4, i32 0, i32 44
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %trap_buffer, align 8, !tbaa !19
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 48
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %cont_buffer_last, align 8, !tbaa !20
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 47
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %cont_buffer, align 8, !tbaa !21
  %7 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_buffer_count = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %7, i32 0, i32 50
  store i32 0, i32* %trap_buffer_count, align 4, !tbaa !22
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_buffer_count = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %8, i32 0, i32 51
  store i32 0, i32* %cont_buffer_count, align 4, !tbaa !23
  %9 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %9, i32 0, i32 55
  store i32 0, i32* %xmin, align 4, !tbaa !24
  %10 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %10, i32 0, i32 56
  store i32 -1, i32* %xmax, align 4, !tbaa !25
  %11 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gx_san__obtain(%struct.gs_memory_s* %mem, %struct.gx_device_spot_analyzer_s** %ppadev) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppadev.addr = alloca %struct.gx_device_spot_analyzer_s**, align 8
  %padev = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_spot_analyzer_s** %ppadev, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_spot_analyzer_s**, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %2, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_spot_analyzer_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_spot_analyzer_s**, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %4, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 43
  %6 = load i32, i32* %lock, align 4, !tbaa !26
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %lock, align 4, !tbaa !26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !27
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %8(%struct.gs_memory_s* %9, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_spot_analyzer to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.gx_device_spot_analyzer_s*
  store %struct.gx_device_spot_analyzer_s* %10, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %11 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_spot_analyzer_s* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %12 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_spot_analyzer_s* %12 to %struct.gx_device_s*
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %13, %struct.gx_device_s* bitcast ({ i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 }* @gx_spot_analyzer_device to %struct.gx_device_s*), %struct.gs_memory_s* %14, i32 0) #5
  %15 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_spot_analyzer_s* %15 to %struct.gx_device_s*
  %call4 = call i32 @gs_opendevice(%struct.gx_device_s* %16) #5
  store i32 %call4, i32* %code, align 4, !tbaa !30
  %17 = load i32, i32* %code, align 4, !tbaa !30
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_spot_analyzer_s* %21 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %23 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %24 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %lock9 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %24, i32 0, i32 43
  store i32 1, i32* %lock9, align 4, !tbaa !26
  %25 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %26 = load %struct.gx_device_spot_analyzer_s**, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  store %struct.gx_device_spot_analyzer_s* %25, %struct.gx_device_spot_analyzer_s** %26, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #0

declare i32 @gs_opendevice(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define void @gx_san__release(%struct.gx_device_spot_analyzer_s** %ppadev) #1 {
entry:
  %ppadev.addr = alloca %struct.gx_device_spot_analyzer_s**, align 8
  %padev = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s** %ppadev, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_spot_analyzer_s**, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %1, align 8, !tbaa !1
  store %struct.gx_device_spot_analyzer_s* %2, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_spot_analyzer_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gs_program_name() #5
  %call1 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call, i64 %call1) #5
  %call2 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %4, i32 0, i32 43
  %5 = load i32, i32* %lock, align 4, !tbaa !26
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %lock, align 4, !tbaa !26
  %cmp3 = icmp slt i32 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %call5 = call i8* @gs_program_name() #5
  %call6 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %7, i8* %call5, i64 %call6) #5
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !32
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %10 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %lock10 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %10, i32 0, i32 43
  %11 = load i32, i32* %lock10, align 4, !tbaa !26
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %if.end.9
  %12 = load %struct.gx_device_spot_analyzer_s**, %struct.gx_device_spot_analyzer_s*** %ppadev.addr, align 8, !tbaa !1
  store %struct.gx_device_spot_analyzer_s* null, %struct.gx_device_spot_analyzer_s** %12, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %13 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_spot_analyzer_s* %13, null
  br i1 %tobool, label %if.then.13, label %if.end.35

if.then.13:                                       ; preds = %do.body
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  br label %do.cond

do.cond:                                          ; preds = %do.body.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %14, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %15 = load i64, i64* %ref_count, align 8, !tbaa !33
  %add = add nsw i64 %15, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !33
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %16 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %rc18 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %16, i32 0, i32 7
  %ref_count19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 0
  %17 = load i64, i64* %ref_count19, align 8, !tbaa !33
  %tobool20 = icmp ne i64 %17, 0
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %do.end.17
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.body.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %18 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %rc26 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %18, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !34
  %20 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %rc27 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %20, i32 0, i32 7
  %memory28 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !35
  %22 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_spot_analyzer_s* %22 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end.25
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  store %struct.gx_device_spot_analyzer_s* null, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  br label %if.end.34

if.else:                                          ; preds = %do.end.17
  br label %do.body.31

do.body.31:                                       ; preds = %if.else
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %do.end.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %if.end.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.4, %if.then
  %24 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
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

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define void @gx_san_begin(%struct.gx_device_spot_analyzer_s* %padev) #1 {
entry:
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %0, i32 0, i32 52
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %bot_band, align 8, !tbaa !36
  %1 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %1, i32 0, i32 53
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %top_band, align 8, !tbaa !37
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %2, i32 0, i32 54
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %bot_current, align 8, !tbaa !38
  %3 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %3, i32 0, i32 44
  %4 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer, align 8, !tbaa !19
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 46
  store %struct.gx_san_trap_s* %4, %struct.gx_san_trap_s** %trap_free, align 8, !tbaa !39
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 47
  %7 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont_buffer, align 8, !tbaa !21
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %8, i32 0, i32 49
  store %struct.gx_san_trap_contact_s* %7, %struct.gx_san_trap_contact_s** %cont_free, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_san_trap_store(%struct.gx_device_spot_analyzer_s* %padev, i32 %ybot, i32 %ytop, i32 %xlbot, i32 %xrbot, i32 %xltop, i32 %xrtop, %struct.segment_s* %l, %struct.segment_s* %r, i32 %dir_l, i32 %dir_r) #1 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %xlbot.addr = alloca i32, align 4
  %xrbot.addr = alloca i32, align 4
  %xltop.addr = alloca i32, align 4
  %xrtop.addr = alloca i32, align 4
  %l.addr = alloca %struct.segment_s*, align 8
  %r.addr = alloca %struct.segment_s*, align 8
  %dir_l.addr = alloca i32, align 4
  %dir_r.addr = alloca i32, align 4
  %last = alloca %struct.gx_san_trap_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %t = alloca %struct.gx_san_trap_s*, align 8
  %bot_last = alloca %struct.gx_san_trap_s*, align 8
  %cont = alloca %struct.gx_san_trap_contact_s*, align 8
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !30
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !30
  store i32 %xlbot, i32* %xlbot.addr, align 4, !tbaa !30
  store i32 %xrbot, i32* %xrbot.addr, align 4, !tbaa !30
  store i32 %xltop, i32* %xltop.addr, align 4, !tbaa !30
  store i32 %xrtop, i32* %xrtop.addr, align 4, !tbaa !30
  store %struct.segment_s* %l, %struct.segment_s** %l.addr, align 8, !tbaa !1
  store %struct.segment_s* %r, %struct.segment_s** %r.addr, align 8, !tbaa !1
  store i32 %dir_l, i32* %dir_l.addr, align 4, !tbaa !30
  store i32 %dir_r, i32* %dir_r.addr, align 4, !tbaa !30
  %0 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %2, i32 0, i32 53
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band, align 8, !tbaa !37
  %cmp = icmp ne %struct.gx_san_trap_s* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %4, i32 0, i32 53
  %5 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band1, align 8, !tbaa !37
  %ytop2 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %5, i32 0, i32 2
  %6 = load i32, i32* %ytop2, align 4, !tbaa !41
  %7 = load i32, i32* %ytop.addr, align 4, !tbaa !30
  %cmp3 = icmp ne i32 %6, %7
  br i1 %cmp3, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %call = call i32 @try_unite_last_trap(%struct.gx_device_spot_analyzer_s* %8, i32 2147483647) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %9 = load i32, i32* %code, align 4, !tbaa !30
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end:                                           ; preds = %if.then
  %11 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band6 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %11, i32 0, i32 53
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band6, align 8, !tbaa !37
  %13 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %13, i32 0, i32 54
  store %struct.gx_san_trap_s* %12, %struct.gx_san_trap_s** %bot_current, align 8, !tbaa !38
  %14 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %14, i32 0, i32 52
  store %struct.gx_san_trap_s* %12, %struct.gx_san_trap_s** %bot_band, align 8, !tbaa !36
  %15 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band7 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %15, i32 0, i32 53
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %top_band7, align 8, !tbaa !37
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %16 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band9 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %16, i32 0, i32 52
  %17 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band9, align 8, !tbaa !36
  %cmp10 = icmp ne %struct.gx_san_trap_s* %17, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.17

land.lhs.true.11:                                 ; preds = %if.end.8
  %18 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band12 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %18, i32 0, i32 52
  %19 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band12, align 8, !tbaa !36
  %ytop13 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %19, i32 0, i32 2
  %20 = load i32, i32* %ytop13, align 4, !tbaa !41
  %21 = load i32, i32* %ybot.addr, align 4, !tbaa !30
  %cmp14 = icmp ne i32 %20, %21
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.11
  %22 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band16 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %22, i32 0, i32 53
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %top_band16, align 8, !tbaa !37
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.11, %if.end.8
  %23 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band18 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %23, i32 0, i32 53
  %24 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band18, align 8, !tbaa !37
  %cmp19 = icmp ne %struct.gx_san_trap_s* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.17
  %25 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %call21 = call i32 @try_unite_last_trap(%struct.gx_device_spot_analyzer_s* %25, i32 %26) #5
  store i32 %call21, i32* %code, align 4, !tbaa !30
  %27 = load i32, i32* %code, align 4, !tbaa !30
  %cmp22 = icmp slt i32 %27, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  %28 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.24:                                        ; preds = %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.17
  %29 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band26 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %29, i32 0, i32 52
  %30 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band26, align 8, !tbaa !36
  %call27 = call i32 @check_band_list(%struct.gx_san_trap_s* %30) #5
  store i32 %call27, i32* %code, align 4, !tbaa !30
  %31 = load i32, i32* %code, align 4, !tbaa !30
  %cmp28 = icmp slt i32 %31, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %32 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.30:                                        ; preds = %if.end.25
  %33 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band31 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %33, i32 0, i32 53
  %34 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band31, align 8, !tbaa !37
  %call32 = call i32 @check_band_list(%struct.gx_san_trap_s* %34) #5
  store i32 %call32, i32* %code, align 4, !tbaa !30
  %35 = load i32, i32* %code, align 4, !tbaa !30
  %cmp33 = icmp slt i32 %35, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  %36 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.35:                                        ; preds = %if.end.30
  %37 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %call36 = call %struct.gx_san_trap_s* @trap_reserve(%struct.gx_device_spot_analyzer_s* %37) #5
  store %struct.gx_san_trap_s* %call36, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %38 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.gx_san_trap_s* %38, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.39:                                        ; preds = %if.end.35
  %39 = load i32, i32* %ybot.addr, align 4, !tbaa !30
  %40 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %ybot40 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %40, i32 0, i32 1
  store i32 %39, i32* %ybot40, align 4, !tbaa !43
  %41 = load i32, i32* %ytop.addr, align 4, !tbaa !30
  %42 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %ytop41 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %42, i32 0, i32 2
  store i32 %41, i32* %ytop41, align 4, !tbaa !41
  %43 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %44 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xlbot42 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %44, i32 0, i32 3
  store i32 %43, i32* %xlbot42, align 4, !tbaa !44
  %45 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  %46 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xrbot43 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %46, i32 0, i32 4
  store i32 %45, i32* %xrbot43, align 4, !tbaa !45
  %47 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  %48 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xltop44 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %48, i32 0, i32 5
  store i32 %47, i32* %xltop44, align 4, !tbaa !46
  %49 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  %50 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xrtop45 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %50, i32 0, i32 6
  store i32 %49, i32* %xrtop45, align 4, !tbaa !47
  %51 = load %struct.segment_s*, %struct.segment_s** %l.addr, align 8, !tbaa !1
  %52 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %l46 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %52, i32 0, i32 8
  store %struct.segment_s* %51, %struct.segment_s** %l46, align 8, !tbaa !48
  %53 = load %struct.segment_s*, %struct.segment_s** %r.addr, align 8, !tbaa !1
  %54 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %r47 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %54, i32 0, i32 9
  store %struct.segment_s* %53, %struct.segment_s** %r47, align 8, !tbaa !49
  %55 = load i32, i32* %dir_l.addr, align 4, !tbaa !30
  %56 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %dir_l48 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %56, i32 0, i32 10
  store i32 %55, i32* %dir_l48, align 4, !tbaa !50
  %57 = load i32, i32* %dir_r.addr, align 4, !tbaa !30
  %58 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %dir_r49 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %58, i32 0, i32 11
  store i32 %57, i32* %dir_r49, align 4, !tbaa !51
  %59 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %upper = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %59, i32 0, i32 7
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %upper, align 8, !tbaa !52
  %60 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %fork = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %60, i32 0, i32 17
  store i32 0, i32* %fork, align 4, !tbaa !53
  %61 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %visited = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %61, i32 0, i32 16
  store i32 0, i32* %visited, align 4, !tbaa !54
  %62 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %rightmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %62, i32 0, i32 13
  store i32 1, i32* %rightmost, align 4, !tbaa !55
  %63 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %leftmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %63, i32 0, i32 12
  store i32 1, i32* %leftmost, align 4, !tbaa !56
  br label %do.body

do.body:                                          ; preds = %if.end.39
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %64 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band50 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %64, i32 0, i32 53
  %65 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band50, align 8, !tbaa !37
  %cmp51 = icmp ne %struct.gx_san_trap_s* %65, null
  br i1 %cmp51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %do.end
  %66 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band53 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %66, i32 0, i32 53
  %67 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band53, align 8, !tbaa !37
  %rightmost54 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %67, i32 0, i32 13
  store i32 0, i32* %rightmost54, align 4, !tbaa !55
  %68 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %leftmost55 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %68, i32 0, i32 12
  store i32 0, i32* %leftmost55, align 4, !tbaa !56
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %do.end
  %69 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band57 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %69, i32 0, i32 53
  %70 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  call void @band_list_insert_last(%struct.gx_san_trap_s** %top_band57, %struct.gx_san_trap_s* %70) #5
  %71 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band58 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %71, i32 0, i32 53
  %72 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band58, align 8, !tbaa !37
  %call59 = call i32 @check_band_list(%struct.gx_san_trap_s* %72) #5
  store i32 %call59, i32* %code, align 4, !tbaa !30
  %73 = load i32, i32* %code, align 4, !tbaa !30
  %cmp60 = icmp slt i32 %73, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.56
  %74 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.62:                                        ; preds = %if.end.56
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.62
  %75 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current63 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %75, i32 0, i32 54
  %76 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current63, align 8, !tbaa !38
  %cmp64 = icmp ne %struct.gx_san_trap_s* %76, null
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current65 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %77, i32 0, i32 54
  %78 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current65, align 8, !tbaa !38
  %xrtop66 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %78, i32 0, i32 6
  %79 = load i32, i32* %xrtop66, align 4, !tbaa !47
  %80 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %cmp67 = icmp slt i32 %79, %80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %81 = phi i1 [ false, %while.cond ], [ %cmp67, %land.rhs ]
  br i1 %81, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %82 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band68 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %82, i32 0, i32 52
  %83 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band68, align 8, !tbaa !36
  %84 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current69 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %84, i32 0, i32 54
  %85 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current69, align 8, !tbaa !38
  %call70 = call i32 @trap_is_last(%struct.gx_san_trap_s* %83, %struct.gx_san_trap_s* %85) #5
  %tobool = icmp ne i32 %call70, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %86 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current71 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %86, i32 0, i32 54
  %87 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current71, align 8, !tbaa !38
  %next = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %87, i32 0, i32 14
  %88 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next, align 8, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_san_trap_s* [ null, %cond.true ], [ %88, %cond.false ]
  %89 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current72 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %89, i32 0, i32 54
  store %struct.gx_san_trap_s* %cond, %struct.gx_san_trap_s** %bot_current72, align 8, !tbaa !38
  br label %while.cond

while.end:                                        ; preds = %land.end
  %90 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current73 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %90, i32 0, i32 54
  %91 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current73, align 8, !tbaa !38
  %cmp74 = icmp ne %struct.gx_san_trap_s* %91, null
  br i1 %cmp74, label %if.then.75, label %if.end.102

if.then.75:                                       ; preds = %while.end
  %92 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current76 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %93, i32 0, i32 54
  %94 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current76, align 8, !tbaa !38
  store %struct.gx_san_trap_s* %94, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %95 = bitcast %struct.gx_san_trap_s** %bot_last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #2
  %96 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band77 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %96, i32 0, i32 52
  %97 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band77, align 8, !tbaa !36
  %call78 = call %struct.gx_san_trap_s* @band_list_last(%struct.gx_san_trap_s* %97) #5
  store %struct.gx_san_trap_s* %call78, %struct.gx_san_trap_s** %bot_last, align 8, !tbaa !1
  br label %while.cond.79

while.cond.79:                                    ; preds = %cleanup.cont, %if.then.75
  %98 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xltop80 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %98, i32 0, i32 5
  %99 = load i32, i32* %xltop80, align 4, !tbaa !46
  %100 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  %cmp81 = icmp sle i32 %99, %100
  br i1 %cmp81, label %while.body.82, label %while.end.97

while.body.82:                                    ; preds = %while.cond.79
  %101 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %call83 = call %struct.gx_san_trap_contact_s* @cont_reserve(%struct.gx_device_spot_analyzer_s* %102) #5
  store %struct.gx_san_trap_contact_s* %call83, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %103 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.gx_san_trap_contact_s* %103, null
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %while.body.82
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %while.body.82
  %104 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %105 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %lower = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %105, i32 0, i32 4
  store %struct.gx_san_trap_s* %104, %struct.gx_san_trap_s** %lower, align 8, !tbaa !58
  %106 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %107 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %upper87 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %107, i32 0, i32 3
  store %struct.gx_san_trap_s* %106, %struct.gx_san_trap_s** %upper87, align 8, !tbaa !60
  br label %do.body.88

do.body.88:                                       ; preds = %if.end.86
  br label %do.cond.89

do.cond.89:                                       ; preds = %do.body.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  %108 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper91 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %108, i32 0, i32 7
  %109 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  call void @cont_list_insert_last(%struct.gx_san_trap_contact_s** %upper91, %struct.gx_san_trap_contact_s* %109) #5
  %110 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %fork92 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %110, i32 0, i32 17
  %111 = load i32, i32* %fork92, align 4, !tbaa !53
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %fork92, align 4, !tbaa !53
  %112 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %113 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_last, align 8, !tbaa !1
  %cmp93 = icmp eq %struct.gx_san_trap_s* %112, %113
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %do.end.90
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %do.end.90
  %114 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %next96 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %114, i32 0, i32 14
  %115 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next96, align 8, !tbaa !57
  store %struct.gx_san_trap_s* %115, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.95, %if.then.94, %if.then.85
  %116 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.98 [
    i32 0, label %cleanup.cont
    i32 7, label %while.end.97
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.79

while.end.97:                                     ; preds = %cleanup, %while.cond.79
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %while.end.97, %cleanup
  %117 = bitcast %struct.gx_san_trap_s** %bot_last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %cleanup.dest.100 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.100, label %cleanup.154 [
    i32 0, label %cleanup.cont.101
  ]

cleanup.cont.101:                                 ; preds = %cleanup.98
  br label %if.end.102

if.end.102:                                       ; preds = %cleanup.cont.101, %while.end
  %119 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %119, i32 0, i32 55
  %120 = load i32, i32* %xmin, align 4, !tbaa !24
  %121 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %121, i32 0, i32 56
  %122 = load i32, i32* %xmax, align 4, !tbaa !25
  %cmp103 = icmp sgt i32 %120, %122
  br i1 %cmp103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.end.102
  %123 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %124 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  %cmp105 = icmp slt i32 %123, %124
  br i1 %cmp105, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %if.then.104
  %125 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  br label %cond.end.108

cond.false.107:                                   ; preds = %if.then.104
  %126 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i32 [ %125, %cond.true.106 ], [ %126, %cond.false.107 ]
  %127 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin110 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %127, i32 0, i32 55
  store i32 %cond109, i32* %xmin110, align 4, !tbaa !24
  %128 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  %129 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  %cmp111 = icmp sgt i32 %128, %129
  br i1 %cmp111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.end.108
  %130 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  br label %cond.end.114

cond.false.113:                                   ; preds = %cond.end.108
  %131 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.112
  %cond115 = phi i32 [ %130, %cond.true.112 ], [ %131, %cond.false.113 ]
  %132 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax116 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %132, i32 0, i32 56
  store i32 %cond115, i32* %xmax116, align 4, !tbaa !25
  br label %if.end.153

if.else:                                          ; preds = %if.end.102
  %133 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin117 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %133, i32 0, i32 55
  %134 = load i32, i32* %xmin117, align 4, !tbaa !24
  %135 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %136 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  %cmp118 = icmp slt i32 %135, %136
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %if.else
  %137 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  br label %cond.end.121

cond.false.120:                                   ; preds = %if.else
  %138 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.119
  %cond122 = phi i32 [ %137, %cond.true.119 ], [ %138, %cond.false.120 ]
  %cmp123 = icmp slt i32 %134, %cond122
  br i1 %cmp123, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %cond.end.121
  %139 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin125 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %139, i32 0, i32 55
  %140 = load i32, i32* %xmin125, align 4, !tbaa !24
  br label %cond.end.132

cond.false.126:                                   ; preds = %cond.end.121
  %141 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %142 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  %cmp127 = icmp slt i32 %141, %142
  br i1 %cmp127, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.false.126
  %143 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  br label %cond.end.130

cond.false.129:                                   ; preds = %cond.false.126
  %144 = load i32, i32* %xltop.addr, align 4, !tbaa !30
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.128
  %cond131 = phi i32 [ %143, %cond.true.128 ], [ %144, %cond.false.129 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.124
  %cond133 = phi i32 [ %140, %cond.true.124 ], [ %cond131, %cond.end.130 ]
  %145 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin134 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %145, i32 0, i32 55
  store i32 %cond133, i32* %xmin134, align 4, !tbaa !24
  %146 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax135 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %146, i32 0, i32 56
  %147 = load i32, i32* %xmax135, align 4, !tbaa !25
  %148 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  %149 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  %cmp136 = icmp sgt i32 %148, %149
  br i1 %cmp136, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %cond.end.132
  %150 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end.132
  %151 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i32 [ %150, %cond.true.137 ], [ %151, %cond.false.138 ]
  %cmp141 = icmp sgt i32 %147, %cond140
  br i1 %cmp141, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %cond.end.139
  %152 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax143 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %152, i32 0, i32 56
  %153 = load i32, i32* %xmax143, align 4, !tbaa !25
  br label %cond.end.150

cond.false.144:                                   ; preds = %cond.end.139
  %154 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  %155 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  %cmp145 = icmp sgt i32 %154, %155
  br i1 %cmp145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %cond.false.144
  %156 = load i32, i32* %xrbot.addr, align 4, !tbaa !30
  br label %cond.end.148

cond.false.147:                                   ; preds = %cond.false.144
  %157 = load i32, i32* %xrtop.addr, align 4, !tbaa !30
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.146
  %cond149 = phi i32 [ %156, %cond.true.146 ], [ %157, %cond.false.147 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.142
  %cond151 = phi i32 [ %153, %cond.true.142 ], [ %cond149, %cond.end.148 ]
  %158 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax152 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %158, i32 0, i32 56
  store i32 %cond151, i32* %xmax152, align 4, !tbaa !25
  br label %if.end.153

if.end.153:                                       ; preds = %cond.end.150, %cond.end.114
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

cleanup.154:                                      ; preds = %if.end.153, %cleanup.98, %if.then.61, %if.then.38, %if.then.34, %if.then.29, %if.then.23, %if.then.5
  %159 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = load i32, i32* %retval
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal i32 @try_unite_last_trap(%struct.gx_device_spot_analyzer_s* %padev, i32 %xlbot) #1 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %xlbot.addr = alloca i32, align 4
  %last = alloca %struct.gx_san_trap_s*, align 8
  %t = alloca %struct.gx_san_trap_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store i32 %xlbot, i32* %xlbot.addr, align 4, !tbaa !30
  %0 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %0, i32 0, i32 52
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band, align 8, !tbaa !36
  %cmp = icmp ne %struct.gx_san_trap_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %2, i32 0, i32 53
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band, align 8, !tbaa !37
  %cmp1 = icmp ne %struct.gx_san_trap_s* %3, null
  br i1 %cmp1, label %if.then, label %if.end.71

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band2 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 53
  %6 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %top_band2, align 8, !tbaa !37
  %call = call %struct.gx_san_trap_s* @band_list_last(%struct.gx_san_trap_s* %6) #5
  store %struct.gx_san_trap_s* %call, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %7 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %8, i32 0, i32 54
  %9 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current, align 8, !tbaa !38
  store %struct.gx_san_trap_s* %9, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %10 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gx_san_trap_s* %10, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.66

land.lhs.true.4:                                  ; preds = %if.then
  %11 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %11, i32 0, i32 7
  %12 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper, align 8, !tbaa !52
  %cmp5 = icmp ne %struct.gx_san_trap_contact_s* %12, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.66

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %13 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %13, i32 0, i32 4
  %14 = load i32, i32* %xrbot, align 4, !tbaa !45
  %15 = load i32, i32* %xlbot.addr, align 4, !tbaa !30
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.66

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 15
  %17 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %prev, align 8, !tbaa !61
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gx_san_trap_s* %17, %18
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %19 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %prev10 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %19, i32 0, i32 15
  %20 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %prev10, align 8, !tbaa !61
  %xrbot11 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %20, i32 0, i32 4
  %21 = load i32, i32* %xrbot11, align 4, !tbaa !45
  %22 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xlbot12 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %22, i32 0, i32 3
  %23 = load i32, i32* %xlbot12, align 4, !tbaa !44
  %cmp13 = icmp slt i32 %21, %23
  br i1 %cmp13, label %if.then.14, label %if.end.66

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %24 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %24, i32 0, i32 14
  %25 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next, align 8, !tbaa !57
  %cmp15 = icmp eq %struct.gx_san_trap_s* %25, null
  br i1 %cmp15, label %land.lhs.true.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.14
  %26 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %26, i32 0, i32 6
  %27 = load i32, i32* %xrtop, align 4, !tbaa !47
  %28 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %next17 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %28, i32 0, i32 14
  %29 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next17, align 8, !tbaa !57
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %29, i32 0, i32 5
  %30 = load i32, i32* %xltop, align 4, !tbaa !46
  %cmp18 = icmp slt i32 %27, %30
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.65

land.lhs.true.19:                                 ; preds = %lor.lhs.false.16, %if.then.14
  %31 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper20 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %31, i32 0, i32 7
  %32 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper20, align 8, !tbaa !52
  %next21 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %32, i32 0, i32 1
  %33 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %next21, align 8, !tbaa !62
  %34 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper22 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %34, i32 0, i32 7
  %35 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper22, align 8, !tbaa !52
  %cmp23 = icmp eq %struct.gx_san_trap_contact_s* %33, %35
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.65

land.lhs.true.24:                                 ; preds = %land.lhs.true.19
  %36 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %l = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %36, i32 0, i32 8
  %37 = load %struct.segment_s*, %struct.segment_s** %l, align 8, !tbaa !48
  %38 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %l25 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %38, i32 0, i32 8
  %39 = load %struct.segment_s*, %struct.segment_s** %l25, align 8, !tbaa !48
  %cmp26 = icmp eq %struct.segment_s* %37, %39
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.65

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %40 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %r = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %40, i32 0, i32 9
  %41 = load %struct.segment_s*, %struct.segment_s** %r, align 8, !tbaa !49
  %42 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %r28 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %42, i32 0, i32 9
  %43 = load %struct.segment_s*, %struct.segment_s** %r28, align 8, !tbaa !49
  %cmp29 = icmp eq %struct.segment_s* %41, %43
  br i1 %cmp29, label %if.then.30, label %if.end.65

if.then.30:                                       ; preds = %land.lhs.true.27
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current31 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %45, i32 0, i32 54
  %46 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_current31, align 8, !tbaa !38
  %47 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %cmp32 = icmp eq %struct.gx_san_trap_s* %46, %47
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.30
  %48 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %49 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band34 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %49, i32 0, i32 52
  %50 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %bot_band34, align 8, !tbaa !36
  %call35 = call %struct.gx_san_trap_s* @band_list_last(%struct.gx_san_trap_s* %50) #5
  %cmp36 = icmp eq %struct.gx_san_trap_s* %48, %call35
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  br label %cond.end

cond.false:                                       ; preds = %if.then.33
  %51 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %51, i32 0, i32 14
  %52 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next37, align 8, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_san_trap_s* [ null, %cond.true ], [ %52, %cond.false ]
  %53 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_current38 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %53, i32 0, i32 54
  store %struct.gx_san_trap_s* %cond, %struct.gx_san_trap_s** %bot_current38, align 8, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.30
  %54 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper39 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %54, i32 0, i32 7
  %55 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper39, align 8, !tbaa !52
  %upper40 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %55, i32 0, i32 3
  %56 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper40, align 8, !tbaa !60
  %57 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %cmp41 = icmp ne %struct.gx_san_trap_s* %56, %57
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end
  %58 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band44 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %58, i32 0, i32 53
  %59 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  call void @band_list_remove(%struct.gx_san_trap_s** %top_band44, %struct.gx_san_trap_s* %59) #5
  %60 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %bot_band45 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %60, i32 0, i32 52
  %61 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  call void @band_list_remove(%struct.gx_san_trap_s** %bot_band45, %struct.gx_san_trap_s* %61) #5
  %62 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %top_band46 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %62, i32 0, i32 53
  %63 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  call void @band_list_insert_last(%struct.gx_san_trap_s** %top_band46, %struct.gx_san_trap_s* %63) #5
  %64 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %ytop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %64, i32 0, i32 2
  %65 = load i32, i32* %ytop, align 4, !tbaa !41
  %66 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %ytop47 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %66, i32 0, i32 2
  store i32 %65, i32* %ytop47, align 4, !tbaa !41
  %67 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xltop48 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %67, i32 0, i32 5
  %68 = load i32, i32* %xltop48, align 4, !tbaa !46
  %69 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xltop49 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %69, i32 0, i32 5
  store i32 %68, i32* %xltop49, align 4, !tbaa !46
  %70 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %xrtop50 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %70, i32 0, i32 6
  %71 = load i32, i32* %xrtop50, align 4, !tbaa !47
  %72 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xrtop51 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %72, i32 0, i32 6
  store i32 %71, i32* %xrtop51, align 4, !tbaa !47
  %73 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %rightmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %73, i32 0, i32 13
  %74 = load i32, i32* %rightmost, align 4, !tbaa !55
  %75 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %rightmost52 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %75, i32 0, i32 13
  %76 = load i32, i32* %rightmost52, align 4, !tbaa !55
  %and = and i32 %76, %74
  store i32 %and, i32* %rightmost52, align 4, !tbaa !55
  %77 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %leftmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %77, i32 0, i32 12
  %78 = load i32, i32* %leftmost, align 4, !tbaa !56
  %79 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %leftmost53 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %79, i32 0, i32 12
  %80 = load i32, i32* %leftmost53, align 4, !tbaa !56
  %and54 = and i32 %80, %78
  store i32 %and54, i32* %leftmost53, align 4, !tbaa !56
  br label %do.body

do.body:                                          ; preds = %if.end.43
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %81 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %82 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %call55 = call i32 @trap_unreserve(%struct.gx_device_spot_analyzer_s* %81, %struct.gx_san_trap_s* %82) #5
  store i32 %call55, i32* %code, align 4, !tbaa !30
  %83 = load i32, i32* %code, align 4, !tbaa !30
  %cmp56 = icmp slt i32 %83, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end
  %84 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %do.end
  %85 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %86 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper59 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %86, i32 0, i32 7
  %87 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper59, align 8, !tbaa !52
  %call60 = call i32 @cont_unreserve(%struct.gx_device_spot_analyzer_s* %85, %struct.gx_san_trap_contact_s* %87) #5
  store i32 %call60, i32* %code, align 4, !tbaa !30
  %88 = load i32, i32* %code, align 4, !tbaa !30
  %cmp61 = icmp slt i32 %88, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  %89 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.58
  %90 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper64 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %90, i32 0, i32 7
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %upper64, align 8, !tbaa !52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.62, %if.then.57, %if.then.42
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.65

if.end.65:                                        ; preds = %cleanup.cont, %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true.19, %lor.lhs.false.16
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %lor.lhs.false, %land.lhs.true.6, %land.lhs.true.4, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %cleanup
  %92 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %cleanup.dest.69 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.69, label %unreachable [
    i32 0, label %cleanup.cont.70
    i32 1, label %return
  ]

cleanup.cont.70:                                  ; preds = %cleanup.67
  br label %if.end.71

if.end.71:                                        ; preds = %cleanup.cont.70, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %cleanup.67
  %94 = load i32, i32* %retval
  ret i32 %94

unreachable:                                      ; preds = %cleanup.67
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @check_band_list(%struct.gx_san_trap_s* %list) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s* %list, %struct.gx_san_trap_s** %list.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gx_san_trap_s* @trap_reserve(%struct.gx_device_spot_analyzer_s* %padev) #3 {
entry:
  %retval = alloca %struct.gx_san_trap_s*, align 8
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %t = alloca %struct.gx_san_trap_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %1, i32 0, i32 46
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_free, align 8, !tbaa !39
  store %struct.gx_san_trap_s* %2, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_san_trap_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %4, i32 0, i32 0
  %5 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link, align 8, !tbaa !63
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 46
  store %struct.gx_san_trap_s* %5, %struct.gx_san_trap_s** %trap_free1, align 8, !tbaa !39
  br label %if.end.17

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer_count = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %7, i32 0, i32 50
  %8 = load i32, i32* %trap_buffer_count, align 4, !tbaa !22
  %cmp2 = icmp sgt i32 %8, 10000
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %9 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !27
  %12 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !32
  %call = call i8* %11(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_san_trap to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)) #5
  %14 = bitcast i8* %call to %struct.gx_san_trap_s*
  store %struct.gx_san_trap_s* %14, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %15 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_san_trap_s* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %link8 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 0
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %link8, align 8, !tbaa !63
  %17 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %17, i32 0, i32 45
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer_last, align 8, !tbaa !5
  %cmp9 = icmp eq %struct.gx_san_trap_s* %18, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.7
  %19 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %20 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %20, i32 0, i32 44
  store %struct.gx_san_trap_s* %19, %struct.gx_san_trap_s** %trap_buffer, align 8, !tbaa !19
  br label %if.end.14

if.else.11:                                       ; preds = %if.end.7
  %21 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %22 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer_last12 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %22, i32 0, i32 45
  %23 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer_last12, align 8, !tbaa !5
  %link13 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %23, i32 0, i32 0
  store %struct.gx_san_trap_s* %21, %struct.gx_san_trap_s** %link13, align 8, !tbaa !63
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.10
  %24 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %25 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer_last15 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %25, i32 0, i32 45
  store %struct.gx_san_trap_s* %24, %struct.gx_san_trap_s** %trap_buffer_last15, align 8, !tbaa !5
  %26 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer_count16 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %26, i32 0, i32 50
  %27 = load i32, i32* %trap_buffer_count16, align 4, !tbaa !22
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %trap_buffer_count16, align 4, !tbaa !22
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.then
  %28 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %28, %struct.gx_san_trap_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.6, %if.then.3
  %29 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %retval
  ret %struct.gx_san_trap_s* %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @band_list_insert_last(%struct.gx_san_trap_s** %list, %struct.gx_san_trap_s* %t) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_s**, align 8
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  %last = alloca %struct.gx_san_trap_s*, align 8
  %first = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s** %list, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %0, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_san_trap_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %3, i32 0, i32 15
  store %struct.gx_san_trap_s* %2, %struct.gx_san_trap_s** %prev, align 8, !tbaa !61
  %4 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %4, i32 0, i32 14
  store %struct.gx_san_trap_s* %2, %struct.gx_san_trap_s** %next, align 8, !tbaa !57
  %5 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %2, %struct.gx_san_trap_s** %5, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %7, align 8, !tbaa !1
  %call = call %struct.gx_san_trap_s* @band_list_last(%struct.gx_san_trap_s* %8) #5
  store %struct.gx_san_trap_s* %call, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %9 = bitcast %struct.gx_san_trap_s** %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %11 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %10, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %11, %struct.gx_san_trap_s** %first, align 8, !tbaa !1
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %first, align 8, !tbaa !1
  %13 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %13, i32 0, i32 14
  store %struct.gx_san_trap_s* %12, %struct.gx_san_trap_s** %next1, align 8, !tbaa !57
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %15 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %prev2 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %15, i32 0, i32 15
  store %struct.gx_san_trap_s* %14, %struct.gx_san_trap_s** %prev2, align 8, !tbaa !61
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %17 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %first, align 8, !tbaa !1
  %prev3 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %17, i32 0, i32 15
  store %struct.gx_san_trap_s* %16, %struct.gx_san_trap_s** %prev3, align 8, !tbaa !61
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %last, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %18, i32 0, i32 14
  store %struct.gx_san_trap_s* %16, %struct.gx_san_trap_s** %next4, align 8, !tbaa !57
  %19 = bitcast %struct.gx_san_trap_s** %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_san_trap_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @trap_is_last(%struct.gx_san_trap_s* %list, %struct.gx_san_trap_s* %t) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_s*, align 8
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s* %list, %struct.gx_san_trap_s** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %0, i32 0, i32 14
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next, align 8, !tbaa !57
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %list.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_san_trap_s* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gx_san_trap_s* @band_list_last(%struct.gx_san_trap_s* %list) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s* %list, %struct.gx_san_trap_s** %list.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %list.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %0, i32 0, i32 15
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %prev, align 8, !tbaa !61
  ret %struct.gx_san_trap_s* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gx_san_trap_contact_s* @cont_reserve(%struct.gx_device_spot_analyzer_s* %padev) #3 {
entry:
  %retval = alloca %struct.gx_san_trap_contact_s*, align 8
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %t = alloca %struct.gx_san_trap_contact_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_contact_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %1, i32 0, i32 49
  %2 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont_free, align 8, !tbaa !40
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %3 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_san_trap_contact_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %4, i32 0, i32 0
  %5 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %link, align 8, !tbaa !64
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_free1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 49
  store %struct.gx_san_trap_contact_s* %5, %struct.gx_san_trap_contact_s** %cont_free1, align 8, !tbaa !40
  br label %if.end.17

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer_count = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %7, i32 0, i32 51
  %8 = load i32, i32* %cont_buffer_count, align 4, !tbaa !23
  %cmp2 = icmp sgt i32 %8, 10000
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %9 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !27
  %12 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !32
  %call = call i8* %11(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_san_trap_contact to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #5
  %14 = bitcast i8* %call to %struct.gx_san_trap_contact_s*
  store %struct.gx_san_trap_contact_s* %14, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %15 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_san_trap_contact_s* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %16 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %link8 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %16, i32 0, i32 0
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %link8, align 8, !tbaa !64
  %17 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %17, i32 0, i32 48
  %18 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont_buffer_last, align 8, !tbaa !20
  %cmp9 = icmp eq %struct.gx_san_trap_contact_s* %18, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.7
  %19 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %20 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %20, i32 0, i32 47
  store %struct.gx_san_trap_contact_s* %19, %struct.gx_san_trap_contact_s** %cont_buffer, align 8, !tbaa !21
  br label %if.end.14

if.else.11:                                       ; preds = %if.end.7
  %21 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %22 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer_last12 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %22, i32 0, i32 48
  %23 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont_buffer_last12, align 8, !tbaa !20
  %link13 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %23, i32 0, i32 0
  store %struct.gx_san_trap_contact_s* %21, %struct.gx_san_trap_contact_s** %link13, align 8, !tbaa !64
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.10
  %24 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %25 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer_last15 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %25, i32 0, i32 48
  store %struct.gx_san_trap_contact_s* %24, %struct.gx_san_trap_contact_s** %cont_buffer_last15, align 8, !tbaa !20
  %26 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_buffer_count16 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %26, i32 0, i32 51
  %27 = load i32, i32* %cont_buffer_count16, align 4, !tbaa !23
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %cont_buffer_count16, align 4, !tbaa !23
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.then
  %28 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %28, %struct.gx_san_trap_contact_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.6, %if.then.3
  %29 = bitcast %struct.gx_san_trap_contact_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %retval
  ret %struct.gx_san_trap_contact_s* %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_list_insert_last(%struct.gx_san_trap_contact_s** %list, %struct.gx_san_trap_contact_s* %t) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_contact_s**, align 8
  %t.addr = alloca %struct.gx_san_trap_contact_s*, align 8
  %last = alloca %struct.gx_san_trap_contact_s*, align 8
  %first = alloca %struct.gx_san_trap_contact_s*, align 8
  store %struct.gx_san_trap_contact_s** %list, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %t, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %1 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %0, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_san_trap_contact_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %3 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %3, i32 0, i32 2
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %prev, align 8, !tbaa !65
  %4 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %4, i32 0, i32 1
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %next, align 8, !tbaa !62
  %5 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %5, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = bitcast %struct.gx_san_trap_contact_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %8 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %7, align 8, !tbaa !1
  %call = call %struct.gx_san_trap_contact_s* @cont_list_last(%struct.gx_san_trap_contact_s* %8) #5
  store %struct.gx_san_trap_contact_s* %call, %struct.gx_san_trap_contact_s** %last, align 8, !tbaa !1
  %9 = bitcast %struct.gx_san_trap_contact_s** %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %11 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %10, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %11, %struct.gx_san_trap_contact_s** %first, align 8, !tbaa !1
  %12 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %first, align 8, !tbaa !1
  %13 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %13, i32 0, i32 1
  store %struct.gx_san_trap_contact_s* %12, %struct.gx_san_trap_contact_s** %next1, align 8, !tbaa !62
  %14 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %last, align 8, !tbaa !1
  %15 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %prev2 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %15, i32 0, i32 2
  store %struct.gx_san_trap_contact_s* %14, %struct.gx_san_trap_contact_s** %prev2, align 8, !tbaa !65
  %16 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %17 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %first, align 8, !tbaa !1
  %prev3 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %17, i32 0, i32 2
  store %struct.gx_san_trap_contact_s* %16, %struct.gx_san_trap_contact_s** %prev3, align 8, !tbaa !65
  %18 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %last, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %18, i32 0, i32 1
  store %struct.gx_san_trap_contact_s* %16, %struct.gx_san_trap_contact_s** %next4, align 8, !tbaa !62
  %19 = bitcast %struct.gx_san_trap_contact_s** %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_san_trap_contact_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_san_end(%struct.gx_device_spot_analyzer_s* %padev) #1 {
entry:
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_san_generate_stems(%struct.gx_device_spot_analyzer_s* %padev, i32 %overall_hints, i8* %client_data, i32 (i8*, %struct.gx_san_sect_s*)* %handler) #1 {
entry:
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %overall_hints.addr = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %handler.addr = alloca i32 (i8*, %struct.gx_san_sect_s*)*, align 8
  %code = alloca i32, align 4
  %got_dc = alloca i32, align 4
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store i32 %overall_hints, i32* %overall_hints.addr, align 4, !tbaa !30
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store i32 (i8*, %struct.gx_san_sect_s*)* %handler, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %got_dc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %got_dc, align 4, !tbaa !30
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %3 = load i32, i32* %overall_hints.addr, align 4, !tbaa !30
  %4 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %5 = load i32 (i8*, %struct.gx_san_sect_s*)*, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %call = call i32 @gx_san_generate_stems_aux(%struct.gx_device_spot_analyzer_s* %2, i32 %3, i8* %4, i32 (i8*, %struct.gx_san_sect_s*)* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %6 = load i32, i32* %got_dc, align 4, !tbaa !30
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.3
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.body.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6, %do.end.3
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %7 = load i32, i32* %code, align 4, !tbaa !30
  %8 = bitcast i32* %got_dc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_san_generate_stems_aux(%struct.gx_device_spot_analyzer_s* %padev, i32 %overall_hints, i8* %client_data, i32 (i8*, %struct.gx_san_sect_s*)* %handler) #1 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %overall_hints.addr = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %handler.addr = alloca i32 (i8*, %struct.gx_san_sect_s*)*, align 8
  %t0 = alloca %struct.gx_san_trap_s*, align 8
  %by_trap = alloca i32, align 4
  %k = alloca i32, align 4
  %t1 = alloca %struct.gx_san_trap_s*, align 8
  %tt = alloca %struct.gx_san_trap_s*, align 8
  %t = alloca %struct.gx_san_trap_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cont = alloca %struct.gx_san_trap_contact_s*, align 8
  %t180 = alloca %struct.gx_san_trap_s*, align 8
  %t81 = alloca %struct.gx_san_trap_s*, align 8
  %area = alloca double, align 8
  %length = alloca double, align 8
  %ave_width = alloca double, align 8
  %t88 = alloca %struct.gx_san_trap_s*, align 8
  %code126 = alloca i32, align 4
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store i32 %overall_hints, i32* %overall_hints.addr, align 4, !tbaa !30
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store i32 (i8*, %struct.gx_san_sect_s*)* %handler, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_s** %t0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %by_trap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %by_trap, align 4, !tbaa !30
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %k, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %entry
  %3 = load i32, i32* %overall_hints.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4, !tbaa !30
  %cmp = icmp slt i32 %4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end.67

for.body:                                         ; preds = %land.end
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 44
  %7 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer, align 8, !tbaa !19
  store %struct.gx_san_trap_s* %7, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %9 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %9, i32 0, i32 46
  %10 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_free, align 8, !tbaa !39
  %cmp2 = icmp ne %struct.gx_san_trap_s* %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %visited = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %11, i32 0, i32 16
  %12 = load i32, i32* %visited, align 4, !tbaa !54
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.end.56, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.3
  %13 = load i32, i32* %k, align 4, !tbaa !30
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %leftmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %14, i32 0, i32 12
  %15 = load i32, i32* %leftmost, align 4, !tbaa !56
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then, label %if.end.56

cond.false:                                       ; preds = %land.lhs.true
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %rightmost = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 13
  %17 = load i32, i32* %rightmost, align 4, !tbaa !55
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.then, label %if.end.56

if.then:                                          ; preds = %cond.false, %cond.true
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %19 = load i32, i32* %k, align 4, !tbaa !30
  %shl = shl i32 1, %19
  %call = call i32 @is_stem_boundaries(%struct.gx_san_trap_s* %18, i32 %shl) #5
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end.55

if.then.9:                                        ; preds = %if.then
  %20 = bitcast %struct.gx_san_trap_s** %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %21, %struct.gx_san_trap_s** %t1, align 8, !tbaa !1
  %22 = bitcast %struct.gx_san_trap_s** %tt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %23, %struct.gx_san_trap_s** %tt, align 8, !tbaa !1
  %24 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %25, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.then.9
  %27 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %upper = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %27, i32 0, i32 7
  %28 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper, align 8, !tbaa !52
  %cmp10 = icmp ne %struct.gx_san_trap_contact_s* %28, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %tt, align 8, !tbaa !1
  %30 = load i32, i32* %k, align 4, !tbaa !30
  %call11 = call %struct.gx_san_trap_s* @upper_neighbour(%struct.gx_san_trap_s* %29, i32 %30) #5
  store %struct.gx_san_trap_s* %call11, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %31 = load i32, i32* %k, align 4, !tbaa !30
  %tobool12 = icmp ne i32 %31, 0
  br i1 %tobool12, label %cond.false.16, label %cond.true.13

cond.true.13:                                     ; preds = %while.body
  %32 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %leftmost14 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %32, i32 0, i32 12
  %33 = load i32, i32* %leftmost14, align 4, !tbaa !56
  %tobool15 = icmp ne i32 %33, 0
  br i1 %tobool15, label %if.end, label %if.then.19

cond.false.16:                                    ; preds = %while.body
  %34 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %rightmost17 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %34, i32 0, i32 13
  %35 = load i32, i32* %rightmost17, align 4, !tbaa !55
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %cond.false.16, %cond.true.13
  br label %while.end

if.end:                                           ; preds = %cond.false.16, %cond.true.13
  %36 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %37 = load i32, i32* %k, align 4, !tbaa !30
  %shl20 = shl i32 1, %37
  %call21 = call i32 @is_stem_boundaries(%struct.gx_san_trap_s* %36, i32 %shl20) #5
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end
  %38 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %visited24 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %38, i32 0, i32 16
  store i32 1, i32* %visited24, align 4, !tbaa !54
  br label %while.end

if.end.25:                                        ; preds = %if.end
  %39 = load i32, i32* %k, align 4, !tbaa !30
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %cond.false.28, label %cond.true.27

cond.true.27:                                     ; preds = %if.end.25
  %40 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %tt, align 8, !tbaa !1
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %40, i32 0, i32 5
  %41 = load i32, i32* %xltop, align 4, !tbaa !46
  br label %cond.end

cond.false.28:                                    ; preds = %if.end.25
  %42 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %tt, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %42, i32 0, i32 6
  %43 = load i32, i32* %xrtop, align 4, !tbaa !47
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi i32 [ %41, %cond.true.27 ], [ %43, %cond.false.28 ]
  %44 = load i32, i32* %k, align 4, !tbaa !30
  %tobool29 = icmp ne i32 %44, 0
  br i1 %tobool29, label %cond.false.31, label %cond.true.30

cond.true.30:                                     ; preds = %cond.end
  %45 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xlbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %45, i32 0, i32 3
  %46 = load i32, i32* %xlbot, align 4, !tbaa !44
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  %47 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %47, i32 0, i32 4
  %48 = load i32, i32* %xrbot, align 4, !tbaa !45
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %46, %cond.true.30 ], [ %48, %cond.false.31 ]
  %cmp34 = icmp ne i32 %cond, %cond33
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end.32
  br label %while.end

if.end.36:                                        ; preds = %cond.end.32
  %49 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %visited37 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %49, i32 0, i32 16
  store i32 1, i32* %visited37, align 4, !tbaa !54
  %50 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %50, %struct.gx_san_trap_s** %tt, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.35, %if.then.23, %if.then.19, %while.cond
  %51 = load i32, i32* %k, align 4, !tbaa !30
  %tobool38 = icmp ne i32 %51, 0
  br i1 %tobool38, label %cond.false.42, label %cond.true.39

cond.true.39:                                     ; preds = %while.end
  %52 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %leftmost40 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %52, i32 0, i32 12
  %53 = load i32, i32* %leftmost40, align 4, !tbaa !56
  %tobool41 = icmp ne i32 %53, 0
  br i1 %tobool41, label %if.end.46, label %if.then.45

cond.false.42:                                    ; preds = %while.end
  %54 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %rightmost43 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %54, i32 0, i32 13
  %55 = load i32, i32* %rightmost43, align 4, !tbaa !55
  %tobool44 = icmp ne i32 %55, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %cond.false.42, %cond.true.39
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %cond.false.42, %cond.true.39
  %56 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %56, %struct.gx_san_trap_s** %t1, align 8, !tbaa !1
  %57 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %58 = load i32, i32* %k, align 4, !tbaa !30
  %shl47 = shl i32 1, %58
  %59 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %60 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %61 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t1, align 8, !tbaa !1
  %62 = load i32 (i8*, %struct.gx_san_sect_s*)*, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %call48 = call i32 @hint_by_tangent(%struct.gx_device_spot_analyzer_s* %57, i32 %shl47, i8* %59, %struct.gx_san_trap_s* %60, %struct.gx_san_trap_s* %61, double 0.000000e+00, i32 (i8*, %struct.gx_san_sect_s*)* %62) #5
  store i32 %call48, i32* %code, align 4, !tbaa !30
  %63 = load i32, i32* %code, align 4, !tbaa !30
  %cmp49 = icmp slt i32 %63, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  %64 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.50, %if.then.45
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gx_san_trap_s** %tt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.gx_san_trap_s** %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.149 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont, %if.then
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %cond.false, %cond.true, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.56, %cleanup
  %69 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %69, i32 0, i32 0
  %70 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link, align 8, !tbaa !63
  store %struct.gx_san_trap_s* %70, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %71 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer57 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %71, i32 0, i32 44
  %72 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer57, align 8, !tbaa !19
  store %struct.gx_san_trap_s* %72, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.63, %for.end
  %73 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %74 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free59 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %74, i32 0, i32 46
  %75 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_free59, align 8, !tbaa !39
  %cmp60 = icmp ne %struct.gx_san_trap_s* %73, %75
  br i1 %cmp60, label %for.body.61, label %for.end.65

for.body.61:                                      ; preds = %for.cond.58
  %76 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %visited62 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %76, i32 0, i32 16
  store i32 0, i32* %visited62, align 4, !tbaa !54
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.61
  %77 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %link64 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %77, i32 0, i32 0
  %78 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link64, align 8, !tbaa !63
  store %struct.gx_san_trap_s* %78, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.58

for.end.65:                                       ; preds = %for.cond.58
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %79 = load i32, i32* %k, align 4, !tbaa !30
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %k, align 4, !tbaa !30
  br label %for.cond

for.end.67:                                       ; preds = %land.end
  %80 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_buffer68 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %80, i32 0, i32 44
  %81 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_buffer68, align 8, !tbaa !19
  store %struct.gx_san_trap_s* %81, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.146, %for.end.67
  %82 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %83 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free70 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %83, i32 0, i32 46
  %84 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_free70, align 8, !tbaa !39
  %cmp71 = icmp ne %struct.gx_san_trap_s* %82, %84
  br i1 %cmp71, label %for.body.72, label %for.end.148

for.body.72:                                      ; preds = %for.cond.69
  %85 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %visited73 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %85, i32 0, i32 16
  %86 = load i32, i32* %visited73, align 4, !tbaa !54
  %tobool74 = icmp ne i32 %86, 0
  br i1 %tobool74, label %if.end.144, label %if.then.75

if.then.75:                                       ; preds = %for.body.72
  %87 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %call76 = call i32 @is_stem_boundaries(%struct.gx_san_trap_s* %87, i32 3) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.143

if.then.78:                                       ; preds = %if.then.75
  %88 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #2
  %89 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %upper79 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %89, i32 0, i32 7
  %90 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper79, align 8, !tbaa !52
  store %struct.gx_san_trap_contact_s* %90, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %91 = bitcast %struct.gx_san_trap_s** %t180 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  %92 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %92, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %93 = bitcast %struct.gx_san_trap_s** %t81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  %94 = bitcast double* %area to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #2
  store double 0.000000e+00, double* %area, align 8, !tbaa !66
  %95 = bitcast double* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #2
  store double 0.000000e+00, double* %length, align 8, !tbaa !66
  %96 = bitcast double* %ave_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #2
  br label %while.cond.82

while.cond.82:                                    ; preds = %cleanup.cont.110, %if.then.78
  %97 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %cmp83 = icmp ne %struct.gx_san_trap_contact_s* %97, null
  br i1 %cmp83, label %land.rhs.84, label %land.end.86

land.rhs.84:                                      ; preds = %while.cond.82
  %98 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %98, i32 0, i32 1
  %99 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %next, align 8, !tbaa !62
  %100 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %cmp85 = icmp eq %struct.gx_san_trap_contact_s* %99, %100
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.84, %while.cond.82
  %101 = phi i1 [ false, %while.cond.82 ], [ %cmp85, %land.rhs.84 ]
  br i1 %101, label %while.body.87, label %while.end.111

while.body.87:                                    ; preds = %land.end.86
  %102 = bitcast %struct.gx_san_trap_s** %t88 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %upper89 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %103, i32 0, i32 3
  %104 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper89, align 8, !tbaa !60
  store %struct.gx_san_trap_s* %104, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %105 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %call90 = call i32 @is_stem_boundaries(%struct.gx_san_trap_s* %105, i32 3) #5
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.94, label %if.then.92

if.then.92:                                       ; preds = %while.body.87
  %106 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %visited93 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %106, i32 0, i32 16
  store i32 1, i32* %visited93, align 4, !tbaa !54
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.94:                                        ; preds = %while.body.87
  %107 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %fork = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %107, i32 0, i32 17
  %108 = load i32, i32* %fork, align 4, !tbaa !53
  %cmp95 = icmp sgt i32 %108, 1
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.94
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.97:                                        ; preds = %if.end.94
  %109 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %xltop98 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %109, i32 0, i32 5
  %110 = load i32, i32* %xltop98, align 4, !tbaa !46
  %111 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %xlbot99 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %111, i32 0, i32 3
  %112 = load i32, i32* %xlbot99, align 4, !tbaa !44
  %cmp100 = icmp ne i32 %110, %112
  br i1 %cmp100, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.97
  %113 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %xrtop101 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %113, i32 0, i32 6
  %114 = load i32, i32* %xrtop101, align 4, !tbaa !47
  %115 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  %xrbot102 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %115, i32 0, i32 4
  %116 = load i32, i32* %xrbot102, align 4, !tbaa !45
  %cmp103 = icmp ne i32 %114, %116
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false, %if.end.97
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.105:                                       ; preds = %lor.lhs.false
  %117 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t88, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %117, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %118 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %upper106 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %118, i32 0, i32 7
  %119 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper106, align 8, !tbaa !52
  store %struct.gx_san_trap_contact_s* %119, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %120 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %visited107 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %120, i32 0, i32 16
  store i32 1, i32* %visited107, align 4, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.105, %if.then.104, %if.then.96, %if.then.92
  %121 = bitcast %struct.gx_san_trap_s** %t88 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %cleanup.dest.109 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.109, label %unreachable [
    i32 0, label %cleanup.cont.110
    i32 17, label %while.end.111
  ]

cleanup.cont.110:                                 ; preds = %cleanup.108
  br label %while.cond.82

while.end.111:                                    ; preds = %cleanup.108, %land.end.86
  br label %do.body

do.body:                                          ; preds = %while.end.111
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %122 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %122, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.119, %do.end
  %123 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  %call113 = call double @trap_axis_length(%struct.gx_san_trap_s* %123) #5
  %124 = load double, double* %length, align 8, !tbaa !66
  %add = fadd double %124, %call113
  store double %add, double* %length, align 8, !tbaa !66
  %125 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  %call114 = call double @trap_area(%struct.gx_san_trap_s* %125) #5
  %126 = load double, double* %area, align 8, !tbaa !66
  %add115 = fadd double %126, %call114
  store double %add115, double* %area, align 8, !tbaa !66
  %127 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  %128 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %cmp116 = icmp eq %struct.gx_san_trap_s* %127, %128
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.cond.112
  br label %for.end.122

if.end.118:                                       ; preds = %for.cond.112
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %129 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  %upper120 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %129, i32 0, i32 7
  %130 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper120, align 8, !tbaa !52
  %upper121 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %130, i32 0, i32 3
  %131 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper121, align 8, !tbaa !60
  store %struct.gx_san_trap_s* %131, %struct.gx_san_trap_s** %t81, align 8, !tbaa !1
  br label %for.cond.112

for.end.122:                                      ; preds = %if.then.117
  %132 = load double, double* %area, align 8, !tbaa !66
  %133 = load double, double* %length, align 8, !tbaa !66
  %div = fdiv double %132, %133
  store double %div, double* %ave_width, align 8, !tbaa !66
  %134 = load double, double* %length, align 8, !tbaa !66
  %135 = load double, double* %ave_width, align 8, !tbaa !66
  %div123 = fdiv double %135, 2.000000e+00
  %cmp124 = fcmp ogt double %134, %div123
  br i1 %cmp124, label %if.then.125, label %if.end.134

if.then.125:                                      ; preds = %for.end.122
  %136 = bitcast i32* %code126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #2
  %137 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %138 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %139 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %140 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t180, align 8, !tbaa !1
  %141 = load double, double* %ave_width, align 8, !tbaa !66
  %142 = load i32 (i8*, %struct.gx_san_sect_s*)*, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %call127 = call i32 @hint_by_tangent(%struct.gx_device_spot_analyzer_s* %137, i32 3, i8* %138, %struct.gx_san_trap_s* %139, %struct.gx_san_trap_s* %140, double %141, i32 (i8*, %struct.gx_san_sect_s*)* %142) #5
  store i32 %call127, i32* %code126, align 4, !tbaa !30
  %143 = load i32, i32* %code126, align 4, !tbaa !30
  %cmp128 = icmp slt i32 %143, 0
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.125
  %144 = load i32, i32* %code126, align 4, !tbaa !30
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.130:                                       ; preds = %if.then.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.131

cleanup.131:                                      ; preds = %if.end.130, %if.then.129
  %145 = bitcast i32* %code126 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %cleanup.dest.132 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.132, label %cleanup.135 [
    i32 0, label %cleanup.cont.133
  ]

cleanup.cont.133:                                 ; preds = %cleanup.131
  br label %if.end.134

if.end.134:                                       ; preds = %cleanup.cont.133, %for.end.122
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.134, %cleanup.131
  %146 = bitcast double* %ave_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast double* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast double* %area to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast %struct.gx_san_trap_s** %t81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast %struct.gx_san_trap_s** %t180 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %cleanup.149 [
    i32 0, label %cleanup.cont.142
  ]

cleanup.cont.142:                                 ; preds = %cleanup.135
  br label %if.end.143

if.end.143:                                       ; preds = %cleanup.cont.142, %if.then.75
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %for.body.72
  %152 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %visited145 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %152, i32 0, i32 16
  store i32 1, i32* %visited145, align 4, !tbaa !54
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.144
  %153 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  %link147 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %153, i32 0, i32 0
  %154 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link147, align 8, !tbaa !63
  store %struct.gx_san_trap_s* %154, %struct.gx_san_trap_s** %t0, align 8, !tbaa !1
  br label %for.cond.69

for.end.148:                                      ; preds = %for.cond.69
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %for.end.148, %cleanup.135, %cleanup
  %155 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %by_trap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast %struct.gx_san_trap_s** %t0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = load i32, i32* %retval
  ret i32 %158

unreachable:                                      ; preds = %cleanup.108
  unreachable
}

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @san_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %padev = alloca %struct.gx_device_spot_analyzer_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_spot_analyzer_s*
  store %struct.gx_device_spot_analyzer_s* %2, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %3 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 44
  call void @free_trap_list(%struct.gs_memory_s* %4, %struct.gx_san_trap_s** %trap_buffer) #5
  %6 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !32
  %8 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_buffer = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %8, i32 0, i32 47
  call void @free_cont_list(%struct.gs_memory_s* %7, %struct.gx_san_trap_contact_s** %cont_buffer) #5
  %9 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %9, i32 0, i32 45
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %trap_buffer_last, align 8, !tbaa !5
  %10 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_buffer_last = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %10, i32 0, i32 48
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %cont_buffer_last, align 8, !tbaa !20
  %11 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %trap_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %11, i32 0, i32 46
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %trap_free, align 8, !tbaa !39
  %12 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %cont_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %12, i32 0, i32 49
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %cont_free, align 8, !tbaa !40
  %13 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %top_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %13, i32 0, i32 53
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %top_band, align 8, !tbaa !37
  %14 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %bot_band = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %14, i32 0, i32 52
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %bot_band, align 8, !tbaa !36
  %15 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev, align 8, !tbaa !1
  %bot_current = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %15, i32 0, i32 54
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %bot_current, align 8, !tbaa !38
  %16 = bitcast %struct.gx_device_spot_analyzer_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 0
}

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define internal void @san_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 -2147483648, i32* %x, align 4, !tbaa !68
  %1 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  store i32 -2147483648, i32* %y, align 4, !tbaa !71
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %2, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 2147483647, i32* %x2, align 4, !tbaa !72
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 1
  store i32 2147483647, i32* %y4, align 4, !tbaa !73
  ret void
}

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_trap_list(%struct.gs_memory_s* %mem, %struct.gx_san_trap_s** %list) #3 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %list.addr = alloca %struct.gx_san_trap_s**, align 8
  %t = alloca %struct.gx_san_trap_s*, align 8
  %t1 = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s** %list, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %1, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %2, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %3 = bitcast %struct.gx_san_trap_s** %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %5 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %4, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %5, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_san_trap_s* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %7, i32 0, i32 0
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link, align 8, !tbaa !63
  store %struct.gx_san_trap_s* %8, %struct.gx_san_trap_s** %t1, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %13 = bitcast %struct.gx_san_trap_s* %12 to i8*
  call void %10(%struct.gs_memory_s* %11, i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t1, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %14, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %15, align 8, !tbaa !1
  %16 = bitcast %struct.gx_san_trap_s** %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_cont_list(%struct.gs_memory_s* %mem, %struct.gx_san_trap_contact_s** %list) #3 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %list.addr = alloca %struct.gx_san_trap_contact_s**, align 8
  %t = alloca %struct.gx_san_trap_contact_s*, align 8
  %t1 = alloca %struct.gx_san_trap_contact_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s** %list, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_contact_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %2 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %1, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %3 = bitcast %struct.gx_san_trap_contact_s** %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  %5 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %4, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %5, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_san_trap_contact_s* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %7, i32 0, i32 0
  %8 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %link, align 8, !tbaa !64
  store %struct.gx_san_trap_contact_s* %8, %struct.gx_san_trap_contact_s** %t1, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  %13 = bitcast %struct.gx_san_trap_contact_s* %12 to i8*
  call void %10(%struct.gs_memory_s* %11, i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t1, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %14, %struct.gx_san_trap_contact_s** %t, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.gx_san_trap_contact_s**, %struct.gx_san_trap_contact_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* null, %struct.gx_san_trap_contact_s** %15, align 8, !tbaa !1
  %16 = bitcast %struct.gx_san_trap_contact_s** %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_san_trap_contact_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @band_list_remove(%struct.gx_san_trap_s** %list, %struct.gx_san_trap_s* %t) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_s**, align 8
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s** %list, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %0, i32 0, i32 14
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next, align 8, !tbaa !57
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_san_trap_s* %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %3, align 8, !tbaa !1
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  %5 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %4, align 8, !tbaa !1
  %6 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_san_trap_s* %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %7 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %7, i32 0, i32 14
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next3, align 8, !tbaa !57
  %9 = load %struct.gx_san_trap_s**, %struct.gx_san_trap_s*** %list.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %8, %struct.gx_san_trap_s** %9, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %10 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %10, i32 0, i32 15
  %11 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %prev, align 8, !tbaa !61
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %12, i32 0, i32 14
  %13 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next4, align 8, !tbaa !57
  %prev5 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %13, i32 0, i32 15
  store %struct.gx_san_trap_s* %11, %struct.gx_san_trap_s** %prev5, align 8, !tbaa !61
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %14, i32 0, i32 14
  %15 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %next6, align 8, !tbaa !57
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %prev7 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 15
  %17 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %prev7, align 8, !tbaa !61
  %next8 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %17, i32 0, i32 14
  store %struct.gx_san_trap_s* %15, %struct.gx_san_trap_s** %next8, align 8, !tbaa !57
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %prev10 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %18, i32 0, i32 15
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %prev10, align 8, !tbaa !61
  %19 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %next11 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %19, i32 0, i32 14
  store %struct.gx_san_trap_s* null, %struct.gx_san_trap_s** %next11, align 8, !tbaa !57
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @trap_unreserve(%struct.gx_device_spot_analyzer_s* %padev, %struct.gx_san_trap_s* %t) #3 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %0, i32 0, i32 0
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %link, align 8, !tbaa !63
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %2, i32 0, i32 46
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %trap_free, align 8, !tbaa !39
  %cmp = icmp ne %struct.gx_san_trap_s* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %trap_free1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 46
  store %struct.gx_san_trap_s* %4, %struct.gx_san_trap_s** %trap_free1, align 8, !tbaa !39
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_unreserve(%struct.gx_device_spot_analyzer_s* %padev, %struct.gx_san_trap_contact_s* %t) #3 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %t.addr = alloca %struct.gx_san_trap_contact_s*, align 8
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %t, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %0, i32 0, i32 0
  %1 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %link, align 8, !tbaa !64
  %2 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_free = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %2, i32 0, i32 49
  %3 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont_free, align 8, !tbaa !40
  %cmp = icmp ne %struct.gx_san_trap_contact_s* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %t.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %cont_free1 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %5, i32 0, i32 49
  store %struct.gx_san_trap_contact_s* %4, %struct.gx_san_trap_contact_s** %cont_free1, align 8, !tbaa !40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.gx_san_trap_contact_s* @cont_list_last(%struct.gx_san_trap_contact_s* %list) #3 {
entry:
  %list.addr = alloca %struct.gx_san_trap_contact_s*, align 8
  store %struct.gx_san_trap_contact_s* %list, %struct.gx_san_trap_contact_s** %list.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %list.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %0, i32 0, i32 2
  %1 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %prev, align 8, !tbaa !65
  ret %struct.gx_san_trap_contact_s* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_stem_boundaries(%struct.gx_san_trap_s* %t, i32 %side_mask) #3 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  %side_mask.addr = alloca i32, align 4
  %dx = alloca double, align 8
  %norm = alloca double, align 8
  %cosine = alloca double, align 8
  %cosine_threshold = alloca double, align 8
  %dy = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  store i32 %side_mask, i32* %side_mask.addr, align 4, !tbaa !30
  %0 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %norm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %cosine to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %cosine_threshold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store double 9.000000e-01, double* %cosine_threshold, align 8, !tbaa !66
  %4 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ytop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %5, i32 0, i32 2
  %6 = load i32, i32* %ytop, align 4, !tbaa !41
  %7 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ybot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %7, i32 0, i32 1
  %8 = load i32, i32* %ybot, align 4, !tbaa !43
  %sub = sub nsw i32 %6, %8
  %conv = sitofp i32 %sub to double
  store double %conv, double* %dy, align 8, !tbaa !66
  %9 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %10 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %10, i32 0, i32 5
  %11 = load i32, i32* %xltop, align 4, !tbaa !46
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xlbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %12, i32 0, i32 3
  %13 = load i32, i32* %xlbot, align 4, !tbaa !44
  %sub1 = sub nsw i32 %11, %13
  %conv2 = sitofp i32 %sub1 to double
  store double %conv2, double* %dx, align 8, !tbaa !66
  %14 = load double, double* %dx, align 8, !tbaa !66
  %15 = load double, double* %dx, align 8, !tbaa !66
  %mul = fmul double %14, %15
  %16 = load double, double* %dy, align 8, !tbaa !66
  %17 = load double, double* %dy, align 8, !tbaa !66
  %mul3 = fmul double %16, %17
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #6
  store double %call, double* %norm, align 8, !tbaa !66
  %18 = load double, double* %dx, align 8, !tbaa !66
  %19 = load double, double* %norm, align 8, !tbaa !66
  %div = fdiv double %18, %19
  store double %div, double* %cosine, align 8, !tbaa !66
  %20 = load double, double* %cosine, align 8, !tbaa !66
  %cmp = fcmp olt double %20, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load double, double* %cosine, align 8, !tbaa !66
  %sub5 = fsub double -0.000000e+00, %21
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %22 = load double, double* %cosine, align 8, !tbaa !66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub5, %cond.true ], [ %22, %cond.false ]
  %cmp6 = fcmp ogt double %cond, 9.000000e-01
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %23 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and10 = and i32 %23, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %if.end.9
  %24 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %24, i32 0, i32 6
  %25 = load i32, i32* %xrtop, align 4, !tbaa !47
  %26 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %26, i32 0, i32 4
  %27 = load i32, i32* %xrbot, align 4, !tbaa !45
  %sub13 = sub nsw i32 %25, %27
  %conv14 = sitofp i32 %sub13 to double
  store double %conv14, double* %dx, align 8, !tbaa !66
  %28 = load double, double* %dx, align 8, !tbaa !66
  %29 = load double, double* %dx, align 8, !tbaa !66
  %mul15 = fmul double %28, %29
  %30 = load double, double* %dy, align 8, !tbaa !66
  %31 = load double, double* %dy, align 8, !tbaa !66
  %mul16 = fmul double %30, %31
  %add17 = fadd double %mul15, %mul16
  %call18 = call double @sqrt(double %add17) #6
  store double %call18, double* %norm, align 8, !tbaa !66
  %32 = load double, double* %dx, align 8, !tbaa !66
  %33 = load double, double* %norm, align 8, !tbaa !66
  %div19 = fdiv double %32, %33
  store double %div19, double* %cosine, align 8, !tbaa !66
  %34 = load double, double* %cosine, align 8, !tbaa !66
  %cmp20 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp20, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.then.12
  %35 = load double, double* %cosine, align 8, !tbaa !66
  %sub23 = fsub double -0.000000e+00, %35
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.12
  %36 = load double, double* %cosine, align 8, !tbaa !66
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi double [ %sub23, %cond.true.22 ], [ %36, %cond.false.24 ]
  %cmp27 = fcmp ogt double %cond26, 9.000000e-01
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %cond.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %cond.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.29, %if.then.8
  %37 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast double* %cosine_threshold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast double* %cosine to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast double* %norm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_san_trap_s* @upper_neighbour(%struct.gx_san_trap_s* %t0, i32 %left_right) #1 {
entry:
  %t0.addr = alloca %struct.gx_san_trap_s*, align 8
  %left_right.addr = alloca i32, align 4
  %cont = alloca %struct.gx_san_trap_contact_s*, align 8
  %c0 = alloca %struct.gx_san_trap_contact_s*, align 8
  %c = alloca %struct.gx_san_trap_contact_s*, align 8
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  store %struct.gx_san_trap_s* %t0, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  store i32 %left_right, i32* %left_right.addr, align 4, !tbaa !30
  %0 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  %upper = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %1, i32 0, i32 7
  %2 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %upper, align 8, !tbaa !52
  store %struct.gx_san_trap_contact_s* %2, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %3 = bitcast %struct.gx_san_trap_contact_s** %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %4, %struct.gx_san_trap_contact_s** %c0, align 8, !tbaa !1
  %5 = bitcast %struct.gx_san_trap_contact_s** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %left_right.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %upper1 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %8, i32 0, i32 3
  %9 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper1, align 8, !tbaa !60
  %xlbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %9, i32 0, i32 3
  %10 = load i32, i32* %xlbot, align 4, !tbaa !44
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %upper2 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %11, i32 0, i32 3
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper2, align 8, !tbaa !60
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %12, i32 0, i32 4
  %13 = load i32, i32* %xrbot, align 4, !tbaa !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %x, align 4, !tbaa !30
  %14 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c0, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %14, i32 0, i32 1
  %15 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %next, align 8, !tbaa !62
  store %struct.gx_san_trap_contact_s* %15, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  %17 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c0, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_san_trap_contact_s* %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %left_right.addr, align 4, !tbaa !30
  %tobool3 = icmp ne i32 %19, 0
  br i1 %tobool3, label %cond.false.7, label %cond.true.4

cond.true.4:                                      ; preds = %for.body
  %20 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  %upper5 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %20, i32 0, i32 3
  %21 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper5, align 8, !tbaa !60
  %xlbot6 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %21, i32 0, i32 3
  %22 = load i32, i32* %xlbot6, align 4, !tbaa !44
  br label %cond.end.10

cond.false.7:                                     ; preds = %for.body
  %23 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  %upper8 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %23, i32 0, i32 3
  %24 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper8, align 8, !tbaa !60
  %xrbot9 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %24, i32 0, i32 4
  %25 = load i32, i32* %xrbot9, align 4, !tbaa !45
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.4
  %cond11 = phi i32 [ %22, %cond.true.4 ], [ %25, %cond.false.7 ]
  store i32 %cond11, i32* %xx, align 4, !tbaa !30
  %26 = load i32, i32* %xx, align 4, !tbaa !30
  %27 = load i32, i32* %x, align 4, !tbaa !30
  %sub = sub nsw i32 %26, %27
  %28 = load i32, i32* %left_right.addr, align 4, !tbaa !30
  %mul = mul nsw i32 %28, 2
  %sub12 = sub nsw i32 %mul, 1
  %mul13 = mul nsw i32 %sub, %sub12
  %cmp14 = icmp sgt i32 %mul13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %29 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  store %struct.gx_san_trap_contact_s* %29, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %30 = load i32, i32* %xx, align 4, !tbaa !30
  store i32 %30, i32* %x, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.10
  %31 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %32, i32 0, i32 1
  %33 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %next15, align 8, !tbaa !62
  store %struct.gx_san_trap_contact_s* %33, %struct.gx_san_trap_contact_s** %c, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s** %cont, align 8, !tbaa !1
  %upper16 = getelementptr inbounds %struct.gx_san_trap_contact_s, %struct.gx_san_trap_contact_s* %34, i32 0, i32 3
  %35 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %upper16, align 8, !tbaa !60
  %36 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gx_san_trap_contact_s** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %struct.gx_san_trap_contact_s** %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gx_san_trap_contact_s** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret %struct.gx_san_trap_s* %35
}

; Function Attrs: nounwind uwtable
define internal i32 @hint_by_tangent(%struct.gx_device_spot_analyzer_s* %padev, i32 %side_mask, i8* %client_data, %struct.gx_san_trap_s* %t0, %struct.gx_san_trap_s* %t1, double %ave_width, i32 (i8*, %struct.gx_san_sect_s*)* %handler) #1 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %side_mask.addr = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %t0.addr = alloca %struct.gx_san_trap_s*, align 8
  %t1.addr = alloca %struct.gx_san_trap_s*, align 8
  %ave_width.addr = alloca double, align 8
  %handler.addr = alloca i32 (i8*, %struct.gx_san_sect_s*)*, align 8
  %t = alloca %struct.gx_san_trap_s*, align 8
  %sect = alloca %struct.gx_san_sect_s, align 8
  %slope0 = alloca double, align 8
  %slope1 = alloca double, align 8
  %len0 = alloca double, align 8
  %len1 = alloca double, align 8
  %s = alloca %struct.segment_s*, align 8
  %p = alloca %struct.segment_s*, align 8
  %left_right = alloca i32, align 4
  %code = alloca i32, align 4
  %w = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store i32 %side_mask, i32* %side_mask.addr, align 4, !tbaa !30
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t0, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %t1, %struct.gx_san_trap_s** %t1.addr, align 8, !tbaa !1
  store double %ave_width, double* %ave_width.addr, align 8, !tbaa !66
  store i32 (i8*, %struct.gx_san_sect_s*)* %handler, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_san_sect_s* %sect to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #2
  %2 = bitcast double* %slope0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store double 2.000000e-01, double* %slope0, align 8, !tbaa !66
  %3 = bitcast double* %slope1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load double, double* %slope0, align 8, !tbaa !66
  store double %4, double* %slope1, align 8, !tbaa !66
  %5 = bitcast double* %len0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store double 0.000000e+00, double* %len0, align 8, !tbaa !66
  %6 = bitcast double* %len1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store double 0.000000e+00, double* %len1, align 8, !tbaa !66
  %7 = bitcast %struct.segment_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.segment_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %left_right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %left_right, align 4, !tbaa !30
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %r = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 5
  store %struct.segment_s* null, %struct.segment_s** %r, align 8, !tbaa !74
  %l = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 4
  store %struct.segment_s* null, %struct.segment_s** %l, align 8, !tbaa !76
  %12 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %12, i32 0, i32 5
  %13 = load i32, i32* %xltop, align 4, !tbaa !46
  %xl = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 0
  store i32 %13, i32* %xl, align 4, !tbaa !77
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %14, i32 0, i32 6
  %15 = load i32, i32* %xrtop, align 4, !tbaa !47
  %xr = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 2
  store i32 %15, i32* %xr, align 4, !tbaa !78
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  %ytop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 2
  %17 = load i32, i32* %ytop, align 4, !tbaa !41
  %yr = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 3
  store i32 %17, i32* %yr, align 4, !tbaa !79
  %yl = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 1
  store i32 %17, i32* %yl, align 4, !tbaa !80
  %18 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %side_mask1 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 6
  store i32 %18, i32* %side_mask1, align 4, !tbaa !81
  %19 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t0.addr, align 8, !tbaa !1
  store %struct.gx_san_trap_s* %19, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and2 = and i32 %20, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.cond
  %21 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %l4 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %21, i32 0, i32 8
  %22 = load %struct.segment_s*, %struct.segment_s** %l4, align 8, !tbaa !48
  store %struct.segment_s* %22, %struct.segment_s** %s, align 8, !tbaa !1
  %23 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %dir_l = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %23, i32 0, i32 10
  %24 = load i32, i32* %dir_l, align 4, !tbaa !50
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %25 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 2
  %26 = load i16, i16* %type, align 2, !tbaa !82
  %conv = zext i16 %26 to i32
  %cmp6 = icmp eq i32 %conv, 2
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %27 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %28 = bitcast %struct.segment_s* %27 to %struct.line_close_segment*
  %sub = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %28, i32 0, i32 5
  %29 = load %struct.subpath_s*, %struct.subpath_s** %sub, align 8, !tbaa !84
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %29, i32 0, i32 1
  %30 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !86
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %31 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 1
  %32 = load %struct.segment_s*, %struct.segment_s** %next8, align 8, !tbaa !88
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi %struct.segment_s* [ %30, %cond.true ], [ %32, %cond.false ]
  store %struct.segment_s* %cond9, %struct.segment_s** %s, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %33 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 2
  %34 = load i16, i16* %type10, align 2, !tbaa !82
  %conv11 = zext i16 %34 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end
  %35 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %36 = bitcast %struct.segment_s* %35 to %struct.subpath_s*
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %36, i32 0, i32 5
  %37 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !89
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 0
  %38 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !90
  br label %cond.end.17

cond.false.15:                                    ; preds = %if.end
  %39 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %prev16 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %39, i32 0, i32 0
  %40 = load %struct.segment_s*, %struct.segment_s** %prev16, align 8, !tbaa !90
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond18 = phi %struct.segment_s* [ %38, %cond.true.14 ], [ %40, %cond.false.15 ]
  store %struct.segment_s* %cond18, %struct.segment_s** %p, align 8, !tbaa !1
  %41 = load %struct.segment_s*, %struct.segment_s** %p, align 8, !tbaa !1
  %42 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %l19 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 4
  %xl20 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 0
  %yl21 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 1
  %43 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %ybot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %43, i32 0, i32 1
  %44 = load i32, i32* %ybot, align 4, !tbaa !43
  %45 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %ytop22 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %45, i32 0, i32 2
  %46 = load i32, i32* %ytop22, align 4, !tbaa !41
  call void @choose_by_tangent(%struct.segment_s* %41, %struct.segment_s* %42, double* %slope0, double* %len0, %struct.segment_s** %l19, i32* %xl20, i32* %yl21, i32 %44, i32 %46) #5
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end.17, %for.cond
  %47 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and24 = and i32 %47, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.59

if.then.26:                                       ; preds = %if.end.23
  %48 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %r27 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %48, i32 0, i32 9
  %49 = load %struct.segment_s*, %struct.segment_s** %r27, align 8, !tbaa !49
  store %struct.segment_s* %49, %struct.segment_s** %s, align 8, !tbaa !1
  %50 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %dir_r = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %50, i32 0, i32 11
  %51 = load i32, i32* %dir_r, align 4, !tbaa !51
  %cmp28 = icmp slt i32 %51, 0
  br i1 %cmp28, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %if.then.26
  %52 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %type31 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %52, i32 0, i32 2
  %53 = load i16, i16* %type31, align 2, !tbaa !82
  %conv32 = zext i16 %53 to i32
  %cmp33 = icmp eq i32 %conv32, 2
  br i1 %cmp33, label %cond.true.35, label %cond.false.38

cond.true.35:                                     ; preds = %if.then.30
  %54 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %55 = bitcast %struct.segment_s* %54 to %struct.line_close_segment*
  %sub36 = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %55, i32 0, i32 5
  %56 = load %struct.subpath_s*, %struct.subpath_s** %sub36, align 8, !tbaa !84
  %next37 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %56, i32 0, i32 1
  %57 = load %struct.segment_s*, %struct.segment_s** %next37, align 8, !tbaa !86
  br label %cond.end.40

cond.false.38:                                    ; preds = %if.then.30
  %58 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %next39 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %58, i32 0, i32 1
  %59 = load %struct.segment_s*, %struct.segment_s** %next39, align 8, !tbaa !88
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.35
  %cond41 = phi %struct.segment_s* [ %57, %cond.true.35 ], [ %59, %cond.false.38 ]
  store %struct.segment_s* %cond41, %struct.segment_s** %s, align 8, !tbaa !1
  br label %if.end.42

if.end.42:                                        ; preds = %cond.end.40, %if.then.26
  %60 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %type43 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %60, i32 0, i32 2
  %61 = load i16, i16* %type43, align 2, !tbaa !82
  %conv44 = zext i16 %61 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %if.end.42
  %62 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %63 = bitcast %struct.segment_s* %62 to %struct.subpath_s*
  %last48 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %63, i32 0, i32 5
  %64 = load %struct.segment_s*, %struct.segment_s** %last48, align 8, !tbaa !89
  %prev49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 0
  %65 = load %struct.segment_s*, %struct.segment_s** %prev49, align 8, !tbaa !90
  br label %cond.end.52

cond.false.50:                                    ; preds = %if.end.42
  %66 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %prev51 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %66, i32 0, i32 0
  %67 = load %struct.segment_s*, %struct.segment_s** %prev51, align 8, !tbaa !90
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.47
  %cond53 = phi %struct.segment_s* [ %65, %cond.true.47 ], [ %67, %cond.false.50 ]
  store %struct.segment_s* %cond53, %struct.segment_s** %p, align 8, !tbaa !1
  %68 = load %struct.segment_s*, %struct.segment_s** %p, align 8, !tbaa !1
  %69 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %r54 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 5
  %xr55 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 2
  %yr56 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 3
  %70 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %ybot57 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %70, i32 0, i32 1
  %71 = load i32, i32* %ybot57, align 4, !tbaa !43
  %72 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %ytop58 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %72, i32 0, i32 2
  %73 = load i32, i32* %ytop58, align 4, !tbaa !41
  call void @choose_by_tangent(%struct.segment_s* %68, %struct.segment_s* %69, double* %slope1, double* %len1, %struct.segment_s** %r54, i32* %xr55, i32* %yr56, i32 %71, i32 %73) #5
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.52, %if.end.23
  %74 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %75 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t1.addr, align 8, !tbaa !1
  %cmp60 = icmp eq %struct.gx_san_trap_s* %74, %75
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  br label %for.end

if.end.63:                                        ; preds = %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %76 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  %77 = load i32, i32* %left_right, align 4, !tbaa !30
  %call = call %struct.gx_san_trap_s* @upper_neighbour(%struct.gx_san_trap_s* %76, i32 %77) #5
  store %struct.gx_san_trap_s* %call, %struct.gx_san_trap_s** %t, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.62
  %l64 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 4
  %78 = load %struct.segment_s*, %struct.segment_s** %l64, align 8, !tbaa !76
  %cmp65 = icmp ne %struct.segment_s* %78, null
  br i1 %cmp65, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %79 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and67 = and i32 %79, 1
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.end.110, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.end
  %r69 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 5
  %80 = load %struct.segment_s*, %struct.segment_s** %r69, align 8, !tbaa !74
  %cmp70 = icmp ne %struct.segment_s* %80, null
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true
  %81 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and73 = and i32 %81, 2
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.end.110, label %if.then.75

if.then.75:                                       ; preds = %lor.lhs.false.72, %land.lhs.true
  %82 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  store i32 3, i32* %w, align 4, !tbaa !30
  %83 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and76 = and i32 %83, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end.87, label %if.then.78

if.then.78:                                       ; preds = %if.then.75
  %xr79 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 2
  %84 = load i32, i32* %xr79, align 4, !tbaa !78
  %85 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %85, i32 0, i32 55
  %86 = load i32, i32* %xmin, align 4, !tbaa !24
  %mul = mul nsw i32 %86, 3
  %87 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %87, i32 0, i32 56
  %88 = load i32, i32* %xmax, align 4, !tbaa !25
  %add = add nsw i32 %mul, %88
  %div = sdiv i32 %add, 4
  %cmp80 = icmp slt i32 %84, %div
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.then.78
  %89 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin84 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %89, i32 0, i32 55
  %90 = load i32, i32* %xmin84, align 4, !tbaa !24
  %sub85 = sub nsw i32 %90, 1000
  %xl86 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 0
  store i32 %sub85, i32* %xl86, align 4, !tbaa !77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.83, %if.then.75
  %91 = load i32, i32* %side_mask.addr, align 4, !tbaa !30
  %and88 = and i32 %91, 2
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.end.104, label %if.then.90

if.then.90:                                       ; preds = %if.end.87
  %xl91 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 0
  %92 = load i32, i32* %xl91, align 4, !tbaa !77
  %93 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax92 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %93, i32 0, i32 56
  %94 = load i32, i32* %xmax92, align 4, !tbaa !25
  %mul93 = mul nsw i32 %94, 3
  %95 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin94 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %95, i32 0, i32 55
  %96 = load i32, i32* %xmin94, align 4, !tbaa !24
  %add95 = add nsw i32 %mul93, %96
  %div96 = sdiv i32 %add95, 4
  %cmp97 = icmp sgt i32 %92, %div96
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.90
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.100:                                       ; preds = %if.then.90
  %97 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax101 = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %97, i32 0, i32 56
  %98 = load i32, i32* %xmax101, align 4, !tbaa !25
  %add102 = add nsw i32 %98, 1000
  %xr103 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %sect, i32 0, i32 2
  store i32 %add102, i32* %xr103, align 4, !tbaa !78
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.100, %if.end.87
  br label %do.body

do.body:                                          ; preds = %if.end.104
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %99 = load i32 (i8*, %struct.gx_san_sect_s*)*, i32 (i8*, %struct.gx_san_sect_s*)** %handler.addr, align 8, !tbaa !1
  %100 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %call105 = call i32 %99(i8* %100, %struct.gx_san_sect_s* %sect) #5
  store i32 %call105, i32* %code, align 4, !tbaa !30
  %101 = load i32, i32* %code, align 4, !tbaa !30
  %cmp106 = icmp slt i32 %101, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %do.end
  %102 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.then.108, %if.then.99, %if.then.82
  %103 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.111 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.110

if.end.110:                                       ; preds = %cleanup.cont, %lor.lhs.false.72, %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

cleanup.111:                                      ; preds = %if.end.110, %cleanup
  %104 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %left_right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast %struct.segment_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.segment_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast double* %len1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast double* %len0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast double* %slope1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast double* %slope0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast %struct.gx_san_sect_s* %sect to i8*
  call void @llvm.lifetime.end(i64 40, i8* %112) #2
  %113 = bitcast %struct.gx_san_trap_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @trap_axis_length(%struct.gx_san_trap_s* %t) #3 {
entry:
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  %xbot = alloca double, align 8
  %xtop = alloca double, align 8
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = bitcast double* %xbot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xlbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %1, i32 0, i32 3
  %2 = load i32, i32* %xlbot, align 4, !tbaa !44
  %3 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %3, i32 0, i32 4
  %4 = load i32, i32* %xrbot, align 4, !tbaa !45
  %add = add nsw i32 %2, %4
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %xbot, align 8, !tbaa !66
  %5 = bitcast double* %xtop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %6, i32 0, i32 5
  %7 = load i32, i32* %xltop, align 4, !tbaa !46
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %8, i32 0, i32 6
  %9 = load i32, i32* %xrtop, align 4, !tbaa !47
  %add1 = add nsw i32 %7, %9
  %conv2 = sitofp i32 %add1 to double
  %div3 = fdiv double %conv2, 2.000000e+00
  store double %div3, double* %xtop, align 8, !tbaa !66
  %10 = load double, double* %xtop, align 8, !tbaa !66
  %11 = load double, double* %xbot, align 8, !tbaa !66
  %sub = fsub double %10, %11
  %12 = load double, double* %xtop, align 8, !tbaa !66
  %13 = load double, double* %xbot, align 8, !tbaa !66
  %sub4 = fsub double %12, %13
  %mul = fmul double %sub, %sub4
  %14 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ytop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %14, i32 0, i32 2
  %15 = load i32, i32* %ytop, align 4, !tbaa !41
  %conv5 = sitofp i32 %15 to double
  %16 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ybot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %16, i32 0, i32 1
  %17 = load i32, i32* %ybot, align 4, !tbaa !43
  %conv6 = sitofp i32 %17 to double
  %sub7 = fsub double %conv5, %conv6
  %18 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ytop8 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %18, i32 0, i32 2
  %19 = load i32, i32* %ytop8, align 4, !tbaa !41
  %conv9 = sitofp i32 %19 to double
  %20 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ybot10 = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %20, i32 0, i32 1
  %21 = load i32, i32* %ybot10, align 4, !tbaa !43
  %conv11 = sitofp i32 %21 to double
  %sub12 = fsub double %conv9, %conv11
  %mul13 = fmul double %sub7, %sub12
  %add14 = fadd double %mul, %mul13
  %call = call double @sqrt(double %add14) #6
  %22 = bitcast double* %xtop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast double* %xbot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret double %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @trap_area(%struct.gx_san_trap_s* %t) #3 {
entry:
  %t.addr = alloca %struct.gx_san_trap_s*, align 8
  store %struct.gx_san_trap_s* %t, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %0 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %0, i32 0, i32 4
  %1 = load i32, i32* %xrbot, align 4, !tbaa !45
  %2 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xlbot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %2, i32 0, i32 3
  %3 = load i32, i32* %xlbot, align 4, !tbaa !44
  %sub = sub nsw i32 %1, %3
  %4 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xrtop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %4, i32 0, i32 6
  %5 = load i32, i32* %xrtop, align 4, !tbaa !47
  %add = add nsw i32 %sub, %5
  %6 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %xltop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %6, i32 0, i32 5
  %7 = load i32, i32* %xltop, align 4, !tbaa !46
  %sub1 = sub nsw i32 %add, %7
  %conv = sitofp i32 %sub1 to double
  %8 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ytop = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %8, i32 0, i32 2
  %9 = load i32, i32* %ytop, align 4, !tbaa !41
  %10 = load %struct.gx_san_trap_s*, %struct.gx_san_trap_s** %t.addr, align 8, !tbaa !1
  %ybot = getelementptr inbounds %struct.gx_san_trap_s, %struct.gx_san_trap_s* %10, i32 0, i32 1
  %11 = load i32, i32* %ybot, align 4, !tbaa !43
  %sub2 = sub nsw i32 %9, %11
  %conv3 = sitofp i32 %sub2 to double
  %mul = fmul double %conv, %conv3
  %div = fdiv double %mul, 2.000000e+00
  ret double %div
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @choose_by_tangent(%struct.segment_s* %p, %struct.segment_s* %s, double* %slope, double* %len, %struct.segment_s** %store_segm, i32* %store_x, i32* %store_y, i32 %ybot, i32 %ytop) #3 {
entry:
  %p.addr = alloca %struct.segment_s*, align 8
  %s.addr = alloca %struct.segment_s*, align 8
  %slope.addr = alloca double*, align 8
  %len.addr = alloca double*, align 8
  %store_segm.addr = alloca %struct.segment_s**, align 8
  %store_x.addr = alloca i32*, align 8
  %store_y.addr = alloca i32*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %c = alloca %struct.curve_segment*, align 8
  store %struct.segment_s* %p, %struct.segment_s** %p.addr, align 8, !tbaa !1
  store %struct.segment_s* %s, %struct.segment_s** %s.addr, align 8, !tbaa !1
  store double* %slope, double** %slope.addr, align 8, !tbaa !1
  store double* %len, double** %len.addr, align 8, !tbaa !1
  store %struct.segment_s** %store_segm, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  store i32* %store_x, i32** %store_x.addr, align 8, !tbaa !1
  store i32* %store_y, i32** %store_y.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !30
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !30
  %0 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %0, i32 0, i32 2
  %1 = load i16, i16* %type, align 2, !tbaa !82
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.curve_segment** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %4 = bitcast %struct.segment_s* %3 to %struct.curve_segment*
  store %struct.curve_segment* %4, %struct.curve_segment** %c, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %ybot.addr, align 4, !tbaa !30
  %6 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %6, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !91
  %cmp2 = icmp sle i32 %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 4
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 1
  %9 = load i32, i32* %y5, align 4, !tbaa !91
  %10 = load i32, i32* %ytop.addr, align 4, !tbaa !30
  %cmp6 = icmp sle i32 %9, %10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %11 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %11, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !92
  %13 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p19 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %13, i32 0, i32 5
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 1
  %14 = load i32, i32* %y10, align 4, !tbaa !94
  %15 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt11 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %15, i32 0, i32 4
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt11, i32 0, i32 0
  %16 = load i32, i32* %x12, align 4, !tbaa !95
  %17 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt13 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 4
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt13, i32 0, i32 1
  %18 = load i32, i32* %y14, align 4, !tbaa !91
  %19 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %20 = load double*, double** %slope.addr, align 8, !tbaa !1
  %21 = load double*, double** %len.addr, align 8, !tbaa !1
  %22 = load %struct.segment_s**, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %store_x.addr, align 8, !tbaa !1
  %24 = load i32*, i32** %store_y.addr, align 8, !tbaa !1
  call void @choose_by_vector(i32 %12, i32 %14, i32 %16, i32 %18, %struct.segment_s* %19, double* %20, double* %21, %struct.segment_s** %22, i32* %23, i32* %24) #5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %do.end
  %25 = load i32, i32* %ybot.addr, align 4, !tbaa !30
  %26 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt15 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %26, i32 0, i32 4
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt15, i32 0, i32 1
  %27 = load i32, i32* %y16, align 4, !tbaa !91
  %cmp17 = icmp sle i32 %25, %27
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.32

land.lhs.true.19:                                 ; preds = %if.end
  %28 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt20 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i32 0, i32 4
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt20, i32 0, i32 1
  %29 = load i32, i32* %y21, align 4, !tbaa !91
  %30 = load i32, i32* %ytop.addr, align 4, !tbaa !30
  %cmp22 = icmp sle i32 %29, %30
  br i1 %cmp22, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %land.lhs.true.19
  %31 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %31, i32 0, i32 6
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %32 = load i32, i32* %x25, align 4, !tbaa !96
  %33 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p226 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %33, i32 0, i32 6
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p226, i32 0, i32 1
  %34 = load i32, i32* %y27, align 4, !tbaa !97
  %35 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 4
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt28, i32 0, i32 0
  %36 = load i32, i32* %x29, align 4, !tbaa !95
  %37 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt30 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 4
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt30, i32 0, i32 1
  %38 = load i32, i32* %y31, align 4, !tbaa !91
  %39 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %40 = load double*, double** %slope.addr, align 8, !tbaa !1
  %41 = load double*, double** %len.addr, align 8, !tbaa !1
  %42 = load %struct.segment_s**, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  %43 = load i32*, i32** %store_x.addr, align 8, !tbaa !1
  %44 = load i32*, i32** %store_y.addr, align 8, !tbaa !1
  call void @choose_by_vector(i32 %32, i32 %34, i32 %36, i32 %38, %struct.segment_s* %39, double* %40, double* %41, %struct.segment_s** %42, i32* %43, i32* %44) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.24, %land.lhs.true.19, %if.end
  %45 = bitcast %struct.curve_segment** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  br label %if.end.44

if.else:                                          ; preds = %entry
  br label %do.body.33

do.body.33:                                       ; preds = %if.else
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.33
  %46 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %46, i32 0, i32 4
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt36, i32 0, i32 0
  %47 = load i32, i32* %x37, align 4, !tbaa !95
  %48 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %pt38 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %48, i32 0, i32 4
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt38, i32 0, i32 1
  %49 = load i32, i32* %y39, align 4, !tbaa !91
  %50 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt40 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %50, i32 0, i32 4
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt40, i32 0, i32 0
  %51 = load i32, i32* %x41, align 4, !tbaa !95
  %52 = load %struct.segment_s*, %struct.segment_s** %p.addr, align 8, !tbaa !1
  %pt42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %52, i32 0, i32 4
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt42, i32 0, i32 1
  %53 = load i32, i32* %y43, align 4, !tbaa !91
  %54 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %55 = load double*, double** %slope.addr, align 8, !tbaa !1
  %56 = load double*, double** %len.addr, align 8, !tbaa !1
  %57 = load %struct.segment_s**, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  %58 = load i32*, i32** %store_x.addr, align 8, !tbaa !1
  %59 = load i32*, i32** %store_y.addr, align 8, !tbaa !1
  call void @choose_by_vector(i32 %47, i32 %49, i32 %51, i32 %53, %struct.segment_s* %54, double* %55, double* %56, %struct.segment_s** %57, i32* %58, i32* %59) #5
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.35, %if.end.32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @choose_by_vector(i32 %x0, i32 %y0, i32 %x1, i32 %y1, %struct.segment_s* %s, double* %slope, double* %len, %struct.segment_s** %store_segm, i32* %store_x, i32* %store_y) #3 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %s.addr = alloca %struct.segment_s*, align 8
  %slope.addr = alloca double*, align 8
  %len.addr = alloca double*, align 8
  %store_segm.addr = alloca %struct.segment_s**, align 8
  %store_x.addr = alloca i32*, align 8
  %store_y.addr = alloca i32*, align 8
  %t = alloca double, align 8
  %l = alloca double, align 8
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !30
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !30
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !30
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !30
  store %struct.segment_s* %s, %struct.segment_s** %s.addr, align 8, !tbaa !1
  store double* %slope, double** %slope.addr, align 8, !tbaa !1
  store double* %len, double** %len.addr, align 8, !tbaa !1
  store %struct.segment_s** %store_segm, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  store i32* %store_x, i32** %store_x.addr, align 8, !tbaa !1
  store i32* %store_y, i32** %store_y.addr, align 8, !tbaa !1
  %0 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %1 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %2 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %x1.addr, align 4, !tbaa !30
  %4 = load i32, i32* %x0.addr, align 4, !tbaa !30
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i32, i32* %x1.addr, align 4, !tbaa !30
  %6 = load i32, i32* %x0.addr, align 4, !tbaa !30
  %sub2 = sub nsw i32 %5, %6
  %sub3 = sub nsw i32 0, %sub2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* %x1.addr, align 4, !tbaa !30
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !30
  %sub4 = sub nsw i32 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub3, %cond.true ], [ %sub4, %cond.false ]
  %conv = sitofp i32 %cond to double
  %9 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %10 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub5 = sub nsw i32 %9, %10
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %11 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %12 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub9 = sub nsw i32 %11, %12
  %sub10 = sub nsw i32 0, %sub9
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %13 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %14 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub12 = sub nsw i32 %13, %14
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.8
  %cond14 = phi i32 [ %sub10, %cond.true.8 ], [ %sub12, %cond.false.11 ]
  %conv15 = sitofp i32 %cond14 to double
  %div = fdiv double %conv, %conv15
  store double %div, double* %t, align 8, !tbaa !66
  %15 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %17 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub16 = sub nsw i32 %16, %17
  %cmp17 = icmp slt i32 %sub16, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.13
  %18 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %19 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub20 = sub nsw i32 %18, %19
  %sub21 = sub nsw i32 0, %sub20
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.13
  %20 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %21 = load i32, i32* %y0.addr, align 4, !tbaa !30
  %sub23 = sub nsw i32 %20, %21
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.19
  %cond25 = phi i32 [ %sub21, %cond.true.19 ], [ %sub23, %cond.false.22 ]
  %conv26 = sitofp i32 %cond25 to double
  store double %conv26, double* %l, align 8, !tbaa !66
  %22 = load double*, double** %slope.addr, align 8, !tbaa !1
  %23 = load double, double* %22, align 8, !tbaa !66
  %24 = load double, double* %t, align 8, !tbaa !66
  %cmp27 = fcmp ogt double %23, %24
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.24
  %25 = load double*, double** %slope.addr, align 8, !tbaa !1
  %26 = load double, double* %25, align 8, !tbaa !66
  %27 = load double, double* %t, align 8, !tbaa !66
  %cmp29 = fcmp oeq double %26, %27
  br i1 %cmp29, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %28 = load double, double* %l, align 8, !tbaa !66
  %29 = load double*, double** %len.addr, align 8, !tbaa !1
  %30 = load double, double* %29, align 8, !tbaa !66
  %cmp31 = fcmp ogt double %28, %30
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true, %cond.end.24
  %31 = load double, double* %t, align 8, !tbaa !66
  %32 = load double*, double** %slope.addr, align 8, !tbaa !1
  store double %31, double* %32, align 8, !tbaa !66
  %33 = load double, double* %l, align 8, !tbaa !66
  %34 = load double*, double** %len.addr, align 8, !tbaa !1
  store double %33, double* %34, align 8, !tbaa !66
  %35 = load %struct.segment_s*, %struct.segment_s** %s.addr, align 8, !tbaa !1
  %36 = load %struct.segment_s**, %struct.segment_s*** %store_segm.addr, align 8, !tbaa !1
  store %struct.segment_s* %35, %struct.segment_s** %36, align 8, !tbaa !1
  %37 = load i32, i32* %x1.addr, align 4, !tbaa !30
  %38 = load i32*, i32** %store_x.addr, align 8, !tbaa !1
  store i32 %37, i32* %38, align 4, !tbaa !30
  %39 = load i32, i32* %y1.addr, align 4, !tbaa !30
  %40 = load i32*, i32** %store_y.addr, align 8, !tbaa !1
  store i32 %39, i32* %40, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true, %lor.lhs.false
  %41 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %entry
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 1744}
!6 = !{!"gx_device_spot_analyzer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !7, i64 1728, !2, i64 1736, !2, i64 1744, !2, i64 1752, !2, i64 1760, !2, i64 1768, !2, i64 1776, !7, i64 1784, !7, i64 1788, !2, i64 1792, !2, i64 1800, !2, i64 1808, !7, i64 1816, !7, i64 1820}
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
!19 = !{!6, !2, i64 1736}
!20 = !{!6, !2, i64 1768}
!21 = !{!6, !2, i64 1760}
!22 = !{!6, !7, i64 1784}
!23 = !{!6, !7, i64 1788}
!24 = !{!6, !7, i64 1816}
!25 = !{!6, !7, i64 1820}
!26 = !{!6, !7, i64 1728}
!27 = !{!28, !2, i64 72}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!7, !7, i64 0}
!31 = !{!28, !2, i64 24}
!32 = !{!6, !2, i64 24}
!33 = !{!6, !9, i64 56}
!34 = !{!6, !2, i64 72}
!35 = !{!6, !2, i64 64}
!36 = !{!6, !2, i64 1792}
!37 = !{!6, !2, i64 1800}
!38 = !{!6, !2, i64 1808}
!39 = !{!6, !2, i64 1752}
!40 = !{!6, !2, i64 1776}
!41 = !{!42, !7, i64 12}
!42 = !{!"gx_san_trap_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !2, i64 72, !2, i64 80, !7, i64 88, !7, i64 92}
!43 = !{!42, !7, i64 8}
!44 = !{!42, !7, i64 16}
!45 = !{!42, !7, i64 20}
!46 = !{!42, !7, i64 24}
!47 = !{!42, !7, i64 28}
!48 = !{!42, !2, i64 40}
!49 = !{!42, !2, i64 48}
!50 = !{!42, !7, i64 56}
!51 = !{!42, !7, i64 60}
!52 = !{!42, !2, i64 32}
!53 = !{!42, !7, i64 92}
!54 = !{!42, !7, i64 88}
!55 = !{!42, !7, i64 68}
!56 = !{!42, !7, i64 64}
!57 = !{!42, !2, i64 72}
!58 = !{!59, !2, i64 32}
!59 = !{!"gx_san_trap_contact_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!60 = !{!59, !2, i64 24}
!61 = !{!42, !2, i64 80}
!62 = !{!59, !2, i64 8}
!63 = !{!42, !2, i64 0}
!64 = !{!59, !2, i64 0}
!65 = !{!59, !2, i64 16}
!66 = !{!67, !67, i64 0}
!67 = !{!"double", !3, i64 0}
!68 = !{!69, !7, i64 0}
!69 = !{!"gs_fixed_rect_s", !70, i64 0, !70, i64 8}
!70 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!71 = !{!69, !7, i64 4}
!72 = !{!69, !7, i64 8}
!73 = !{!69, !7, i64 12}
!74 = !{!75, !2, i64 24}
!75 = !{!"gx_san_sect_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !7, i64 32}
!76 = !{!75, !2, i64 16}
!77 = !{!75, !7, i64 0}
!78 = !{!75, !7, i64 8}
!79 = !{!75, !7, i64 12}
!80 = !{!75, !7, i64 4}
!81 = !{!75, !7, i64 32}
!82 = !{!83, !11, i64 16}
!83 = !{!"segment_s", !2, i64 0, !2, i64 8, !11, i64 16, !11, i64 18, !70, i64 20}
!84 = !{!85, !2, i64 32}
!85 = !{!"", !2, i64 0, !2, i64 8, !11, i64 16, !11, i64 18, !70, i64 20, !2, i64 32}
!86 = !{!87, !2, i64 8}
!87 = !{!"subpath_s", !2, i64 0, !2, i64 8, !11, i64 16, !11, i64 18, !70, i64 20, !2, i64 32, !7, i64 40, !85, i64 48, !3, i64 88}
!88 = !{!83, !2, i64 8}
!89 = !{!87, !2, i64 32}
!90 = !{!83, !2, i64 0}
!91 = !{!83, !7, i64 24}
!92 = !{!93, !7, i64 28}
!93 = !{!"", !2, i64 0, !2, i64 8, !11, i64 16, !11, i64 18, !70, i64 20, !70, i64 28, !70, i64 36}
!94 = !{!93, !7, i64 32}
!95 = !{!83, !7, i64 20}
!96 = !{!93, !7, i64 36}
!97 = !{!93, !7, i64 40}
