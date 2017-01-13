; ModuleID = './gdevpdfr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_dir_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
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
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.pdf_page_dsc_info_s = type { i32, i32, %struct.gs_rect_s }
%struct.pdf_temp_file_s = type { [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, %struct.stream_s* }
%struct.pdf_text_data_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.pdf_font_resource_s = type opaque
%struct.gs_point_s = type { double, double }
%struct.gx_path_s = type opaque
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.pdf_text_state_s = type opaque
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.stream_PSSD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"pdf_create_named\00", align 1
@cos_generic_procs = external constant %struct.cos_object_procs_s, align 8
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"{Page%d}\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"{ThisPage}\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"{NextPage}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"{PrevPage}\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"pdf_push_namespace(local_named_objects)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"pdf_push_namespace(NI_stack)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"pdf_pop_namespace(local_named_objects)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"pdf_pop_namespace(NI_stack)\00", align 1
@scan_char_array = external constant [260 x i8], align 16
@s_PSSD_template = external constant %struct.stream_template_s, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c" %ld 0 R \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pdf_replace_names\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_objname_is_valid(i8* %data, i32 %size) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp uge i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 123
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv3 = zext i32 %4 to i64
  %call = call i8* @memchr(i8* %3, i32 125, i64 %conv3) #5
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp5 = icmp eq i8* %call, %add.ptr4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_find_named(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_object_s** %ppco) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %pvalue = alloca %struct.cos_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !8
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !10
  %call = call i32 @pdf_objname_is_valid(i8* %2, i32 %4) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 182
  %6 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !11
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %data1, align 8, !tbaa !8
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i32 0, i32 1
  %10 = load i32, i32* %size2, align 4, !tbaa !10
  %call3 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %6, i8* %8, i32 %10) #6
  store %struct.cos_value_s* %call3, %struct.cos_value_s** %pvalue, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_value_s* %call3, null
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %global_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 181
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %global_named_objects, align 8, !tbaa !53
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %data4, align 8, !tbaa !8
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 1
  %16 = load i32, i32* %size5, align 4, !tbaa !10
  %call6 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %12, i8* %14, i32 %16) #6
  store %struct.cos_value_s* %call6, %struct.cos_value_s** %pvalue, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.cos_value_s* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %19 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %18, %struct.cos_object_s** %19, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %20 = bitcast %struct.cos_value_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_create_named(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_object_procs_s* %cotype, %struct.cos_object_s** %ppco, i64 %id) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %cotype.addr = alloca %struct.cos_object_procs_s*, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %id.addr = alloca i64, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_object_procs_s* %cotype, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !54
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_object_s* @cos_object_alloc(%struct.gx_device_pdf_s* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #6
  store %struct.cos_object_s* %call, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %3 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %call, %struct.cos_object_s** %3, align 8, !tbaa !1
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_object_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %id.addr, align 8, !tbaa !54
  %cmp1 = icmp eq i64 %5, -1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.6

cond.false:                                       ; preds = %if.end
  %6 = load i64, i64* %id.addr, align 8, !tbaa !54
  %cmp2 = icmp eq i64 %6, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.false
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %7) #6
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %8 = load i64, i64* %id.addr, align 8, !tbaa !54
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.3
  %cond = phi i64 [ %call4, %cond.true.3 ], [ %8, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id8 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 1
  store i64 %cond7, i64* %id8, align 8, !tbaa !55
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_param_string_s* %10, null
  br i1 %tobool, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %cond.end.6
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 182
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !11
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !8
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !10
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %call10 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %18) #6
  %call11 = call i32 @cos_dict_put(%struct.cos_dict_s* %13, i8* %15, i32 %17, %struct.cos_value_s* %call10) #6
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %cond.end.6
  %22 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.cos_object_procs_s* %22, @cos_generic_procs
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %24 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %call18 = call i32 @cos_become(%struct.cos_object_s* %23, %struct.cos_object_procs_s* %24) #6
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %25 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %26 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %25, %struct.cos_object_s** %26, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

cleanup.20:                                       ; preds = %if.end.19, %cleanup, %if.then
  %27 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #2
  %28 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct.cos_object_s* @cos_object_alloc(%struct.gx_device_pdf_s*, i8*) #3

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #3

declare i32 @cos_dict_put(%struct.cos_dict_s*, i8*, i32, %struct.cos_value_s*) #3

declare %struct.cos_value_s* @cos_object_value(%struct.cos_value_s*, %struct.cos_object_s*) #3

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_create_named_dict(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_dict_s** %ppcd, i64 %id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %ppcd.addr = alloca %struct.cos_dict_s**, align 8
  %id.addr = alloca i64, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_dict_s** %ppcd, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !54
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %4 = load i64, i64* %id.addr, align 8, !tbaa !54
  %call = call i32 @pdf_create_named(%struct.gx_device_pdf_s* %2, %struct.gs_param_string_s* %3, %struct.cos_object_procs_s* @cos_dict_procs, %struct.cos_object_s** %pco, i64 %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %6 = bitcast %struct.cos_object_s* %5 to %struct.cos_dict_s*
  %7 = load %struct.cos_dict_s**, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %6, %struct.cos_dict_s** %7, align 8, !tbaa !1
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @pdf_refer_named(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname_orig, %struct.cos_object_s** %ppco) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname_orig.addr = alloca %struct.gs_param_string_s*, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %pname = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %page_name_chars = alloca [18 x i8], align 16
  %pnstr = alloca %struct.gs_param_string_s, align 8
  %page_number = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname_orig, %struct.gs_param_string_s** %pname_orig.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname_orig.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %1, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %5 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call = call i32 @pdf_find_named(%struct.gx_device_pdf_s* %3, %struct.gs_param_string_s* %4, %struct.cos_object_s** %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast [18 x i8]* %page_name_chars to i8*
  call void @llvm.lifetime.start(i64 18, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %pnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %9, -21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !10
  %cmp1 = icmp uge i32 %12, 7
  br i1 %cmp1, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 1
  %14 = load i32, i32* %size2, align 4, !tbaa !10
  %conv = zext i32 %14 to i64
  %cmp3 = icmp ult i64 %conv, 18
  br i1 %cmp3, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %page_name_chars, i32 0, i32 0
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !8
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i32 0, i32 1
  %18 = load i32, i32* %size6, align 4, !tbaa !10
  %conv7 = zext i32 %18 to i64
  %call8 = call i8* @memcpy(i8* %arraydecay, i8* %16, i64 %conv7) #7
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %19, i32 0, i32 1
  %20 = load i32, i32* %size9, align 4, !tbaa !10
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %page_name_chars, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %arraydecay10 = getelementptr inbounds [18 x i8], [18 x i8]* %page_name_chars, i32 0, i32 0
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32* %page_number) #7
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.5
  br label %cpage

if.end.15:                                        ; preds = %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %if.end
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %call17 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 153
  %23 = load i32, i32* %next_page, align 4, !tbaa !58
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %page_number, align 4, !tbaa !5
  br label %if.end.35

if.else:                                          ; preds = %if.end.16
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %call19 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 153
  %26 = load i32, i32* %next_page22, align 4, !tbaa !58
  %add23 = add nsw i32 %26, 2
  store i32 %add23, i32* %page_number, align 4, !tbaa !5
  br label %if.end.34

if.else.24:                                       ; preds = %if.else
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %call25 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.24
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 153
  %29 = load i32, i32* %next_page28, align 4, !tbaa !58
  store i32 %29, i32* %page_number, align 4, !tbaa !5
  br label %if.end.33

if.else.29:                                       ; preds = %if.else.24
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %31 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %32 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call30 = call i32 @pdf_create_named(%struct.gx_device_pdf_s* %30, %struct.gs_param_string_s* %31, %struct.cos_object_procs_s* @cos_generic_procs, %struct.cos_object_s** %32, i64 0) #6
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %33, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.29
  %34 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.else.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.18
  %35 = load i32, i32* %page_number, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.35
  %arraydecay40 = getelementptr inbounds [18 x i8], [18 x i8]* %page_name_chars, i32 0, i32 0
  %37 = load i32, i32* %page_number, align 4, !tbaa !5
  %call41 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %37) #6
  %arraydecay42 = getelementptr inbounds [18 x i8], [18 x i8]* %page_name_chars, i32 0, i32 0
  %data43 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pnstr, i32 0, i32 0
  store i8* %arraydecay42, i8** %data43, align 8, !tbaa !8
  %data44 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pnstr, i32 0, i32 0
  %38 = load i8*, i8** %data44, align 8, !tbaa !8
  %call45 = call i64 @strlen(i8* %38) #5
  %conv46 = trunc i64 %call45 to i32
  %size47 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pnstr, i32 0, i32 1
  store i32 %conv46, i32* %size47, align 4, !tbaa !10
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pnstr, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !59
  store %struct.gs_param_string_s* %pnstr, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname, align 8, !tbaa !1
  %41 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call48 = call i32 @pdf_find_named(%struct.gx_device_pdf_s* %39, %struct.gs_param_string_s* %40, %struct.cos_object_s** %41) #6
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp ne i32 %42, -21
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.39
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.39
  br label %cpage

cpage:                                            ; preds = %if.end.52, %if.then.14
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %45 = load i32, i32* %page_number, align 4, !tbaa !5
  %call53 = call i64 @pdf_page_id(%struct.gx_device_pdf_s* %44, i32 %45) #6
  %cmp54 = icmp sle i64 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %cpage
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %cpage
  %46 = load i32, i32* %page_number, align 4, !tbaa !5
  %sub = sub nsw i32 %46, 1
  %idxprom58 = sext i32 %sub to i64
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 162
  %48 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages, align 8, !tbaa !60
  %arrayidx59 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %48, i64 %idxprom58
  %Page = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %arrayidx59, i32 0, i32 0
  %49 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page, align 8, !tbaa !61
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %49, i32 0, i32 0
  %50 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %51 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %50, %struct.cos_object_s** %51, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.56, %if.then.51, %if.then.38, %cond.end, %if.then
  %52 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.gs_param_string_s* %pnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #2
  %54 = bitcast [18 x i8]* %page_name_chars to i8*
  call void @llvm.lifetime.end(i64 18, i8* %54) #2
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gs_param_string_s** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i32 @pdf_key_eq(%struct.gs_param_string_s*, i8*) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i64 @pdf_page_id(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_make_named(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_object_procs_s* %cotype, %struct.cos_object_s** %ppco, i32 %assign_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %cotype.addr = alloca %struct.cos_object_procs_s*, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %assign_id.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pco = alloca %struct.cos_object_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code13 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_object_procs_s* %cotype, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store i32 %assign_id, i32* %assign_id.addr, align 4, !tbaa !5
  %0 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_param_string_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %4 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call = call i32 @pdf_refer_named(%struct.gx_device_pdf_s* %2, %struct.gs_param_string_s* %3, %struct.cos_object_s** %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %6, align 8, !tbaa !1
  store %struct.cos_object_s* %7, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 0
  %11 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !63
  %cmp2 = icmp ne %struct.cos_object_procs_s* %11, @cos_generic_procs
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load i32, i32* %assign_id.addr, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.4
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %13, i32 0, i32 1
  %14 = load i64, i64* %id, align 8, !tbaa !55
  %cmp6 = icmp eq i64 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %15) #6
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id9 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %16, i32 0, i32 1
  store i64 %call8, i64* %id9, align 8, !tbaa !55
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %land.lhs.true, %if.end.4
  %17 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %18 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %call11 = call i32 @cos_become(%struct.cos_object_s* %17, %struct.cos_object_procs_s* %18) #6
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.3, %if.then.1
  %20 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  br label %return

if.else:                                          ; preds = %entry
  %22 = bitcast i32* %code13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %25 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %26 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %27 = load i32, i32* %assign_id.addr, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %27, 0
  %cond = select i1 %tobool14, i64 0, i64 -1
  %call15 = call i32 @pdf_create_named(%struct.gx_device_pdf_s* %23, %struct.gs_param_string_s* %24, %struct.cos_object_procs_s* %25, %struct.cos_object_s** %26, i64 %cond) #6
  store i32 %call15, i32* %code13, align 4, !tbaa !5
  %28 = load i32, i32* %code13, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %28, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %29 = load i32, i32* %code13, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i32 [ %29, %cond.true ], [ 1, %cond.false ]
  store i32 %cond17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %30 = bitcast i32* %code13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  br label %return

return:                                           ; preds = %cond.end, %cleanup
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @pdf_make_named_dict(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_dict_s** %ppcd, i32 %assign_id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %ppcd.addr = alloca %struct.cos_dict_s**, align 8
  %assign_id.addr = alloca i32, align 4
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_dict_s** %ppcd, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  store i32 %assign_id, i32* %assign_id.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %4 = load i32, i32* %assign_id.addr, align 4, !tbaa !5
  %call = call i32 @pdf_make_named(%struct.gx_device_pdf_s* %2, %struct.gs_param_string_s* %3, %struct.cos_object_procs_s* @cos_dict_procs, %struct.cos_object_s** %pco, i32 %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %6 = bitcast %struct.cos_object_s* %5 to %struct.cos_dict_s*
  %7 = load %struct.cos_dict_s**, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %6, %struct.cos_dict_s** %7, align 8, !tbaa !1
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @pdf_get_named(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pname, %struct.cos_object_procs_s* %cotype, %struct.cos_object_s** %ppco) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pname.addr = alloca %struct.gs_param_string_s*, align 8
  %cotype.addr = alloca %struct.cos_object_procs_s*, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pname, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  store %struct.cos_object_procs_s* %cotype, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pname.addr, align 8, !tbaa !1
  %3 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call = call i32 @pdf_refer_named(%struct.gx_device_pdf_s* %1, %struct.gs_param_string_s* %2, %struct.cos_object_s** %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %6, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %7, i32 0, i32 0
  %8 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !63
  %9 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cos_object_procs_s* %8, %9
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @pdf_push_namespace(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %pcd = alloca %struct.cos_dict_s*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Namespace_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 184
  %2 = load %struct.cos_array_s*, %struct.cos_array_s** %Namespace_stack, align 8, !tbaa !64
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 182
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !11
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %4, i32 0, i32 0
  %5 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call i32 @cos_array_add_object(%struct.cos_array_s* %2, %struct.cos_object_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call1, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %8 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #6
  store %struct.cos_array_s* %call2, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Namespace_stack3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 184
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %Namespace_stack3, align 8, !tbaa !64
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 183
  %14 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !65
  %cos_procs4 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %14, i32 0, i32 0
  %15 = bitcast %struct.cos_object_procs_s** %cos_procs4 to %struct.cos_object_s*
  %call5 = call i32 @cos_array_add_object(%struct.cos_array_s* %12, %struct.cos_object_s* %15) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.cos_dict_s* %17, null
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end
  %18 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.cos_array_s* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.8, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false.8
  %19 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 182
  store %struct.cos_dict_s* %19, %struct.cos_dict_s** %local_named_objects12, align 8, !tbaa !11
  %21 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 183
  store %struct.cos_array_s* %21, %struct.cos_array_s** %NI_stack13, align 8, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %23 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @cos_array_add_object(%struct.cos_array_s*, %struct.cos_object_s*) #3

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #3

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_pop_namespace(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %nis_value = alloca %struct.cos_value_s, align 8
  %lno_value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %nis_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %lno_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Namespace_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 184
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %Namespace_stack, align 8, !tbaa !64
  %call = call i32 @cos_array_unadd(%struct.cos_array_s* %4, %struct.cos_value_s* %nis_value) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Namespace_stack1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 184
  %7 = load %struct.cos_array_s*, %struct.cos_array_s** %Namespace_stack1, align 8, !tbaa !64
  %call2 = call i32 @cos_array_unadd(%struct.cos_array_s* %7, %struct.cos_value_s* %lno_value) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 182
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !11
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %10, i32 0, i32 0
  %11 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #6
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %lno_value, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %13 = bitcast %struct.cos_object_s* %12 to %struct.cos_dict_s*
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 182
  store %struct.cos_dict_s* %13, %struct.cos_dict_s** %local_named_objects4, align 8, !tbaa !11
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 183
  %16 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !65
  %cos_procs5 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %16, i32 0, i32 0
  %17 = bitcast %struct.cos_object_procs_s** %cos_procs5 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #6
  %contents6 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %nis_value, i32 0, i32 1
  %object7 = bitcast %union.vc_* %contents6 to %struct.cos_object_s**
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !1
  %19 = bitcast %struct.cos_object_s* %18 to %struct.cos_array_s*
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack8 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 183
  store %struct.cos_array_s* %19, %struct.cos_array_s** %NI_stack8, align 8, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.cos_value_s* %lno_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #2
  %23 = bitcast %struct.cos_value_s* %nis_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @cos_array_unadd(%struct.cos_array_s*, %struct.cos_value_s*) #3

declare void @cos_free(%struct.cos_object_s*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_scan_token(i8** %pscan, i8* %end, i8** %ptoken) #0 {
entry:
  %retval = alloca i32, align 4
  %pscan.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ptoken.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %buf = alloca [50 x i8], align 16
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %ss = alloca %struct.stream_PSSD_state_s, align 8
  %status = alloca i32, align 4
  store i8** %pscan, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i8** %ptoken, i8*** %ptoken.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end.77

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp7 = icmp ult i8* %add.ptr, %13
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp11 = icmp ult i8* %add.ptr10, %15
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.22
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8**, i8*** %ptoken.addr, align 8, !tbaa !1
  store i8* %add.ptr27, i8** %23, align 8, !tbaa !1
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end, %if.then
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %conv29 = zext i8 %25 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.28
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %27 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.28
  %28 = phi i1 [ true, %while.cond.28 ], [ %cmp34, %lor.rhs ]
  br i1 %28, label %while.body.36, label %while.end

while.body.36:                                    ; preds = %lor.end
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  %30 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp38 = icmp uge i8* %incdec.ptr37, %30
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.36
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp41 = icmp uge i8* %add.ptr40, %32
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %lor.lhs.false, %while.body.36
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond.28

while.end:                                        ; preds = %lor.end
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %add.ptr44, i8** %34, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.22, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %while.body
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %35, i64 -1
  %36 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %36 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.75

land.lhs.true.49:                                 ; preds = %if.else
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp51 = icmp ult i8* %add.ptr50, %38
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.75

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %conv54 = zext i8 %40 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.75

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %42 to i32
  %cmp60 = icmp eq i32 %conv59, 47
  br i1 %cmp60, label %if.then.62, label %if.end.75

if.then.62:                                       ; preds = %land.lhs.true.57
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr63, i8** %p, align 8, !tbaa !1
  %44 = load i8**, i8*** %ptoken.addr, align 8, !tbaa !1
  store i8* %incdec.ptr63, i8** %44, align 8, !tbaa !1
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.73, %if.then.62
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv65 = zext i8 %46 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %while.body.68, label %while.end.74

while.body.68:                                    ; preds = %while.cond.64
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8, !tbaa !1
  %48 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp70 = icmp uge i8* %incdec.ptr69, %48
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.body.68
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %while.body.68
  br label %while.cond.64

while.end.74:                                     ; preds = %while.cond.64
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %50 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %49, i8** %50, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %land.lhs.true.57, %land.lhs.true.53, %land.lhs.true.49, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  br label %while.cond

while.end.77:                                     ; preds = %land.end
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i8**, i8*** %ptoken.addr, align 8, !tbaa !1
  store i8* %51, i8** %52, align 8, !tbaa !1
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp78 = icmp uge i8* %53, %54
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %while.end.77
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %55, i8** %56, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %while.end.77
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !7
  %conv82 = zext i8 %58 to i32
  switch i32 %conv82, label %sw.default [
    i32 37, label %sw.bb
    i32 41, label %sw.bb
    i32 40, label %sw.bb.83
    i32 60, label %sw.bb.97
    i32 62, label %sw.bb.117
    i32 91, label %sw.bb.131
    i32 93, label %sw.bb.131
    i32 123, label %sw.bb.131
    i32 125, label %sw.bb.131
    i32 47, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %if.end.81, %if.end.81
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.83:                                         ; preds = %if.end.81
  %59 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %59) #2
  %60 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %60) #2
  %61 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %61) #2
  %62 = bitcast %struct.stream_PSSD_state_s* %ss to i8*
  call void @llvm.lifetime.start(i64 120, i8* %62) #2
  %63 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast %struct.stream_PSSD_state_s* %ss to %struct.stream_state_s*
  %call = call i32 @s_PSSD_init(%struct.stream_state_s* %64) #6
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %65, i8** %ptr, align 8, !tbaa !66
  %66 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %add.ptr84 = getelementptr inbounds i8, i8* %66, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr84, i8** %limit, align 8, !tbaa !68
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %add.ptr85 = getelementptr inbounds i8, i8* %arraydecay, i64 50
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr85, i64 -1
  %limit87 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr86, i8** %limit87, align 8, !tbaa !69
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.83
  %arraydecay88 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %ptr89 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %arraydecay88, i8** %ptr89, align 8, !tbaa !71
  %ptr90 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %67 = load i8*, i8** %ptr90, align 8, !tbaa !71
  %incdec.ptr91 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr91, i8** %ptr90, align 8, !tbaa !71
  %68 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_PSSD_template, i32 0, i32 2), align 8, !tbaa !72
  %69 = bitcast %struct.stream_PSSD_state_s* %ss to %struct.stream_state_s*
  %call92 = call i32 %68(%struct.stream_state_s* %69, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #6
  store i32 %call92, i32* %status, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %70 = load i32, i32* %status, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %70, 1
  br i1 %cmp93, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %ptr95 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %71 = load i8*, i8** %ptr95, align 8, !tbaa !66
  %add.ptr96 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %add.ptr96, i8** %72, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %73 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.stream_PSSD_state_s* %ss to i8*
  call void @llvm.lifetime.end(i64 120, i8* %74) #2
  %75 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %75) #2
  %76 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %76) #2
  %77 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %77) #2
  br label %cleanup

sw.bb.97:                                         ; preds = %if.end.81
  %78 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp98 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %sw.bb.97
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %sw.bb.97
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx102, align 1, !tbaa !7
  %conv103 = zext i8 %81 to i32
  %cmp104 = icmp ne i32 %conv103, 60
  br i1 %cmp104, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %if.end.101
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast108 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast109 = ptrtoint i8* %84 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %sub = sub nsw i64 %sub.ptr.sub110, 1
  %call111 = call i8* @memchr(i8* %add.ptr107, i32 62, i64 %sub) #5
  store i8* %call111, i8** %p, align 8, !tbaa !1
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp112 = icmp eq i8* %85, null
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.106
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.then.106
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.101
  br label %m2

sw.bb.117:                                        ; preds = %if.end.81
  %86 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast118 = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast119 = ptrtoint i8* %87 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %cmp121 = icmp slt i64 %sub.ptr.sub120, 2
  br i1 %cmp121, label %if.then.128, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %sw.bb.117
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx124, align 1, !tbaa !7
  %conv125 = zext i8 %89 to i32
  %cmp126 = icmp ne i32 %conv125, 62
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %lor.lhs.false.123, %sw.bb.117
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.129:                                       ; preds = %lor.lhs.false.123
  br label %m2

m2:                                               ; preds = %if.end.129, %if.end.116
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %add.ptr130, i8** %91, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.131:                                        ; preds = %if.end.81, %if.end.81, %if.end.81, %if.end.81
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %add.ptr132, i8** %93, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.133:                                        ; preds = %if.end.81
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr134, i8** %p, align 8, !tbaa !1
  br label %sw.default

sw.default:                                       ; preds = %if.end.81, %sw.bb.133
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.145, %sw.epilog
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %96 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp136 = icmp ult i8* %95, %96
  br i1 %cmp136, label %land.rhs.138, label %land.end.144

land.rhs.138:                                     ; preds = %while.cond.135
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !7
  %idxprom139 = zext i8 %98 to i64
  %arrayidx140 = getelementptr inbounds i8, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i64 %idxprom139
  %99 = load i8, i8* %arrayidx140, align 1, !tbaa !7
  %conv141 = zext i8 %99 to i32
  %cmp142 = icmp sle i32 %conv141, 100
  br label %land.end.144

land.end.144:                                     ; preds = %land.rhs.138, %while.cond.135
  %100 = phi i1 [ false, %while.cond.135 ], [ %cmp142, %land.rhs.138 ]
  br i1 %100, label %while.body.145, label %while.end.147

while.body.145:                                   ; preds = %land.end.144
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr146, i8** %p, align 8, !tbaa !1
  br label %while.cond.135

while.end.147:                                    ; preds = %land.end.144
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %103 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %102, i8** %103, align 8, !tbaa !1
  %104 = load i8*, i8** %p, align 8, !tbaa !1
  %105 = load i8**, i8*** %ptoken.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %105, align 8, !tbaa !1
  %cmp148 = icmp eq i8* %104, %106
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %while.end.147
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %while.end.147
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.151, %if.then.150, %sw.bb.131, %m2, %if.then.128, %if.then.114, %if.then.100, %do.end, %sw.bb, %if.then.80, %while.end.74, %if.then.72, %while.end, %if.then.43
  %107 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = load i32, i32* %retval
  ret i32 %108
}

declare i32 @s_PSSD_init(%struct.stream_state_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_scan_token_composite(i8** %pscan, i8* %end, i8** %ptoken_orig) #0 {
entry:
  %retval = alloca i32, align 4
  %pscan.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ptoken_orig.addr = alloca i8**, align 8
  %level = alloca i32, align 4
  %ignore_token = alloca i8*, align 8
  %ptoken = alloca i8**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8** %pscan, i8*** %pscan.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i8** %ptoken_orig, i8*** %ptoken_orig.addr, align 8, !tbaa !1
  %0 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %level, align 4, !tbaa !5
  %1 = bitcast i8** %ignore_token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8*** %ptoken to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8**, i8*** %ptoken_orig.addr, align 8, !tbaa !1
  store i8** %3, i8*** %ptoken, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i8**, i8*** %pscan.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %ptoken, align 8, !tbaa !1
  %call = call i32 @pdf_scan_token(i8** %5, i8* %6, i8** %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sle i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %level, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %12 = load i8**, i8*** %ptoken, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  switch i32 %conv, label %sw.epilog [
    i32 60, label %sw.bb
    i32 91, label %sw.bb
    i32 123, label %sw.bb
    i32 62, label %sw.bb.3
    i32 93, label %sw.bb.3
    i32 125, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %15 = load i32, i32* %level, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %level, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end, %if.end, %if.end
  %16 = load i32, i32* %level, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb.3
  %17 = load i32, i32* %level, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %level, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.7, %sw.bb
  store i8** %ignore_token, i8*** %ptoken, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %18 = load i32, i32* %level, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %cond.end
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i8*** %ptoken to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast i8** %ignore_token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @pdf_replace_names(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %from, %struct.gs_param_string_s* %to) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %from.addr = alloca %struct.gs_param_string_s*, align 8
  %to.addr = alloca %struct.gs_param_string_s*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %scan = alloca i8*, align 8
  %size1 = alloca i32, align 4
  %pco = alloca %struct.cos_object_s*, align 8
  %any = alloca i32, align 4
  %sto = alloca i8*, align 8
  %ref = alloca [17 x i8], align 16
  %sname = alloca i8*, align 8
  %next = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %sname28 = alloca i8*, align 8
  %next29 = alloca i8*, align 8
  %copy = alloca i32, align 4
  %rlen = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %from, %struct.gs_param_string_s** %from.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %to, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %0 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %from.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !8
  store i8* %2, i8** %start, align 8, !tbaa !1
  %3 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %start, align 8, !tbaa !1
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %from.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !10
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  %7 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %size1, align 4, !tbaa !5
  %9 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %any to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %any, align 4, !tbaa !5
  %11 = bitcast i8** %sto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast [17 x i8]* %ref to i8*
  call void @llvm.lifetime.start(i64 17, i8* %12) #2
  %13 = load i8*, i8** %start, align 8, !tbaa !1
  store i8* %13, i8** %scan, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %14 = load i8*, i8** %scan, align 8, !tbaa !1
  %15 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp = icmp ult i8* %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load i8*, i8** %scan, align 8, !tbaa !1
  %19 = load i8*, i8** %end, align 8, !tbaa !1
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i8* @pdfmark_next_object(i8* %18, i8* %19, i8** %sname, %struct.cos_object_s** %pco, %struct.gx_device_pdf_s* %20) #6
  store i8* %call, i8** %next, align 8, !tbaa !1
  %21 = load i8*, i8** %sname, align 8, !tbaa !1
  %22 = load i8*, i8** %scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = load i32, i32* %size1, align 4, !tbaa !5
  %conv = zext i32 %23 to i64
  %add = add nsw i64 %conv, %sub.ptr.sub
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %size1, align 4, !tbaa !5
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_object_s* %24, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %ref, i32 0, i32 0
  %25 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %25, i32 0, i32 1
  %26 = load i64, i64* %id, align 8, !tbaa !55
  %call3 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 %26) #6
  %arraydecay4 = getelementptr inbounds [17 x i8], [17 x i8]* %ref, i32 0, i32 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #5
  %27 = load i32, i32* %size1, align 4, !tbaa !5
  %conv6 = zext i32 %27 to i64
  %add7 = add i64 %conv6, %call5
  %conv8 = trunc i64 %add7 to i32
  store i32 %conv8, i32* %size1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %28, i8** %scan, align 8, !tbaa !1
  %29 = load i8*, i8** %next, align 8, !tbaa !1
  %30 = load i8*, i8** %sname, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %29, %30
  %conv10 = zext i1 %cmp9 to i32
  %31 = load i32, i32* %any, align 4, !tbaa !5
  %or = or i32 %31, %conv10
  store i32 %or, i32* %any, align 4, !tbaa !5
  %32 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %34, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !59
  %35 = load i32, i32* %any, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %35, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %36 = load i8*, i8** %start, align 8, !tbaa !1
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %37, i32 0, i32 0
  store i8* %36, i8** %data13, align 8, !tbaa !8
  %38 = load i32, i32* %size1, align 4, !tbaa !5
  %39 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %39, i32 0, i32 1
  store i32 %38, i32* %size14, align 4, !tbaa !10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.end
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 43
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %42 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !75
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 43
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory16, align 8, !tbaa !74
  %45 = load i32, i32* %size1, align 4, !tbaa !5
  %call17 = call i8* %42(%struct.gs_memory_s* %44, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #6
  store i8* %call17, i8** %sto, align 8, !tbaa !1
  %46 = load i8*, i8** %sto, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %46, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %47 = load i8*, i8** %sto, align 8, !tbaa !1
  %48 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %48, i32 0, i32 0
  store i8* %47, i8** %data22, align 8, !tbaa !8
  %49 = load i32, i32* %size1, align 4, !tbaa !5
  %50 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %to.addr, align 8, !tbaa !1
  %size23 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %50, i32 0, i32 1
  store i32 %49, i32* %size23, align 4, !tbaa !10
  %51 = load i8*, i8** %start, align 8, !tbaa !1
  store i8* %51, i8** %scan, align 8, !tbaa !1
  br label %for.cond.24

for.cond.24:                                      ; preds = %if.end.52, %if.end.21
  %52 = load i8*, i8** %scan, align 8, !tbaa !1
  %53 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp25 = icmp ult i8* %52, %53
  br i1 %cmp25, label %for.body.27, label %for.end.53

for.body.27:                                      ; preds = %for.cond.24
  %54 = bitcast i8** %sname28 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = bitcast i8** %next29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load i8*, i8** %scan, align 8, !tbaa !1
  %57 = load i8*, i8** %end, align 8, !tbaa !1
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call30 = call i8* @pdfmark_next_object(i8* %56, i8* %57, i8** %sname28, %struct.cos_object_s** %pco, %struct.gx_device_pdf_s* %58) #6
  store i8* %call30, i8** %next29, align 8, !tbaa !1
  %59 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = load i8*, i8** %sname28, align 8, !tbaa !1
  %61 = load i8*, i8** %scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast31 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast32 = ptrtoint i8* %61 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %conv34 = trunc i64 %sub.ptr.sub33 to i32
  store i32 %conv34, i32* %copy, align 4, !tbaa !5
  %62 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = load i8*, i8** %sto, align 8, !tbaa !1
  %64 = load i8*, i8** %scan, align 8, !tbaa !1
  %65 = load i32, i32* %copy, align 4, !tbaa !5
  %conv35 = zext i32 %65 to i64
  %call36 = call i8* @memcpy(i8* %63, i8* %64, i64 %conv35) #7
  %66 = load i32, i32* %copy, align 4, !tbaa !5
  %67 = load i8*, i8** %sto, align 8, !tbaa !1
  %idx.ext37 = zext i32 %66 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %67, i64 %idx.ext37
  store i8* %add.ptr38, i8** %sto, align 8, !tbaa !1
  %68 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %tobool39 = icmp ne %struct.cos_object_s* %68, null
  br i1 %tobool39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %for.body.27
  %arraydecay41 = getelementptr inbounds [17 x i8], [17 x i8]* %ref, i32 0, i32 0
  %69 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id42 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %69, i32 0, i32 1
  %70 = load i64, i64* %id42, align 8, !tbaa !55
  %call43 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 %70) #6
  %arraydecay44 = getelementptr inbounds [17 x i8], [17 x i8]* %ref, i32 0, i32 0
  %call45 = call i64 @strlen(i8* %arraydecay44) #5
  %conv46 = trunc i64 %call45 to i32
  store i32 %conv46, i32* %rlen, align 4, !tbaa !5
  %71 = load i8*, i8** %sto, align 8, !tbaa !1
  %arraydecay47 = getelementptr inbounds [17 x i8], [17 x i8]* %ref, i32 0, i32 0
  %72 = load i32, i32* %rlen, align 4, !tbaa !5
  %conv48 = sext i32 %72 to i64
  %call49 = call i8* @memcpy(i8* %71, i8* %arraydecay47, i64 %conv48) #7
  %73 = load i32, i32* %rlen, align 4, !tbaa !5
  %74 = load i8*, i8** %sto, align 8, !tbaa !1
  %idx.ext50 = sext i32 %73 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %74, i64 %idx.ext50
  store i8* %add.ptr51, i8** %sto, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.40, %for.body.27
  %75 = load i8*, i8** %next29, align 8, !tbaa !1
  store i8* %75, i8** %scan, align 8, !tbaa !1
  %76 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i8** %next29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i8** %sname28 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  br label %for.cond.24

for.end.53:                                       ; preds = %for.cond.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.53, %if.then.20, %if.then.12
  %80 = bitcast [17 x i8]* %ref to i8*
  call void @llvm.lifetime.end(i64 17, i8* %80) #2
  %81 = bitcast i8** %sto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i32* %any to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i32* %size1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal i8* @pdfmark_next_object(i8* %scan, i8* %end, i8** %pname, %struct.cos_object_s** %ppco, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i8*, align 8
  %scan.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %pname.addr = alloca i8**, align 8
  %ppco.addr = alloca %struct.cos_object_s**, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %sname = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %scan, i8** %scan.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i8** %pname, i8*** %pname.addr, align 8, !tbaa !1
  store %struct.cos_object_s** %ppco, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %1 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  %call = call i32 @pdf_scan_token(i8** %scan.addr, i8* %1, i8** %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.gs_param_string_s* %sname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %scan.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %scan.addr, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %6 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv = zext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, 123
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  store i8* %10, i8** %scan.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %12 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  %call6 = call i32 @pdf_scan_token_composite(i8** %scan.addr, i8* %11, i8** %12) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %14 = load i8*, i8** %scan.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr10, i8** %scan.addr, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %15 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sname, i32 0, i32 0
  store i8* %16, i8** %data, align 8, !tbaa !8
  %17 = load i8*, i8** %scan.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sname, i32 0, i32 0
  %18 = load i8*, i8** %data12, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sname, i32 0, i32 1
  store i32 %conv13, i32* %size, align 4, !tbaa !10
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  %call14 = call i32 @pdf_refer_named(%struct.gx_device_pdf_s* %19, %struct.gs_param_string_s* %sname, %struct.cos_object_s** %20) #6
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %21, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.11
  %22 = load i8*, i8** %scan.addr, align 8, !tbaa !1
  store i8* %22, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.9, %if.then.4, %if.then
  %23 = bitcast %struct.gs_param_string_s* %sname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 2, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %24 = load %struct.cos_object_s**, %struct.cos_object_s*** %ppco.addr, align 8, !tbaa !1
  store %struct.cos_object_s* null, %struct.cos_object_s** %24, align 8, !tbaa !1
  %25 = load i8*, i8** %end.addr, align 8, !tbaa !1
  store i8* %25, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %while.end, %cleanup
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i8*, i8** %retval
  ret i8* %27
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!10 = !{!9, !6, i64 8}
!11 = !{!12, !2, i64 28760}
!12 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !24, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !37, i64 7512, !37, i64 8144, !14, i64 8776, !14, i64 8784, !3, i64 8792, !3, i64 8796, !30, i64 8800, !6, i64 8816, !2, i64 8824, !14, i64 8832, !14, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !31, i64 8872, !42, i64 8880, !6, i64 9360, !31, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !46, i64 9424, !46, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !14, i64 9472, !6, i64 9480, !6, i64 9484, !9, i64 9488, !9, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !14, i64 9576, !14, i64 9584, !14, i64 9592, !47, i64 9600, !9, i64 9616, !9, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !9, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !48, i64 9784, !49, i64 9816, !49, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !14, i64 9920, !3, i64 9928, !6, i64 9960, !14, i64 9968, !14, i64 9976, !3, i64 9984, !3, i64 9988, !50, i64 9992, !50, i64 14120, !50, i64 18248, !50, i64 22376, !14, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !14, i64 26536, !6, i64 26544, !6, i64 26548, !14, i64 26552, !3, i64 26560, !14, i64 26568, !14, i64 26576, !3, i64 26584, !2, i64 26592, !51, i64 26600, !2, i64 26648, !6, i64 26656, !14, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !14, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !30, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !52, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !27, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !29, i64 30488, !6, i64 30524, !48, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !14, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !27, i64 30612, !31, i64 30640, !2, i64 30648, !43, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!13 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"long", !3, i64 0}
!15 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !21, i64 16, !6, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !25, i64 24, !6, i64 128, !29, i64 132, !6, i64 168, !30, i64 176, !30, i64 192, !6, i64 208, !6, i64 212, !16, i64 216, !3, i64 220, !32, i64 224, !32, i64 228, !33, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !26, i64 296, !34, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !26, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !35, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !36, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !36, i64 1336}
!25 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !6, i64 36, !27, i64 40, !28, i64 64}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!28 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !26, i64 12, !6, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !26, i64 32}
!29 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !3, i64 0}
!32 = !{!"gs_transparency_source_s", !26, i64 0}
!33 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!34 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!35 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!36 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!37 = !{!"gx_hl_saved_color_s", !14, i64 0, !14, i64 8, !6, i64 16, !38, i64 24, !40, i64 288}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !41, i64 336}
!41 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!42 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !43, i64 64, !43, i64 80, !43, i64 96, !43, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !44, i64 152, !6, i64 232, !6, i64 236, !44, i64 240, !44, i64 320, !45, i64 400, !45, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !9, i64 448, !45, i64 464}
!43 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!44 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !26, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!45 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!"gs_rect_s", !30, i64 0, !30, i64 16}
!49 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !48, i64 8}
!50 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!51 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!52 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !26, i64 40, !26, i64 44, !3, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !6, i64 80, !26, i64 84, !26, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !37, i64 120, !37, i64 752, !25, i64 1384, !2, i64 1488, !6, i64 1496, !14, i64 1504}
!53 = !{!12, !2, i64 28752}
!54 = !{!14, !14, i64 0}
!55 = !{!56, !14, i64 8}
!56 = !{!"cos_object_s", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !14, i64 56, !2, i64 64, !57, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!57 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!58 = !{!12, !6, i64 26544}
!59 = !{!9, !6, i64 12}
!60 = !{!12, !2, i64 26648}
!61 = !{!62, !2, i64 0}
!62 = !{!"pdf_page_s", !2, i64 0, !30, i64 8, !3, i64 24, !14, i64 32, !3, i64 40, !14, i64 96, !2, i64 104, !51, i64 112, !49, i64 160, !6, i64 200, !6, i64 204}
!63 = !{!56, !2, i64 0}
!64 = !{!12, !2, i64 28776}
!65 = !{!12, !2, i64 28768}
!66 = !{!67, !2, i64 0}
!67 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!68 = !{!67, !2, i64 8}
!69 = !{!70, !2, i64 16}
!70 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!71 = !{!70, !2, i64 8}
!72 = !{!73, !2, i64 16}
!73 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!74 = !{!12, !2, i64 1728}
!75 = !{!76, !2, i64 64}
!76 = !{!"gs_memory_s", !2, i64 0, !77, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!77 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
