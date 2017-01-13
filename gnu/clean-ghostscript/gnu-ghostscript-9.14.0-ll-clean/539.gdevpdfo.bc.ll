; ModuleID = './gdevpdfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type { %struct.cos_element_s* }
%struct.cos_stream_piece_s = type { %struct.cos_stream_piece_s*, i64, i32 }
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
%struct.cos_array_element_s = type { %struct.cos_array_element_s*, i64, %struct.cos_value_s }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.gs_string_s = type { i8*, i32 }
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
%struct.cos_dict_element_s = type { %struct.cos_dict_element_s*, %struct.gs_string_s, i32, %struct.cos_value_s }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.param_printer_params_s = type { i8*, i8*, i8*, i8*, i32 }
%struct.cos_param_list_writer_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.cos_dict_s*, i32 }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.stream_arcfour_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, [256 x i8] }
%struct.cos_write_stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.cos_stream_s*, %struct.gx_device_pdf_s*, %struct.stream_s*, %struct.stream_s* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.printer_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.stream_s*, %struct.param_printer_params_s, i32 }

@cos_generic_procs = constant %struct.cos_object_procs_s { void (%struct.cos_object_s*, i8*)* @cos_generic_release, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)* @cos_generic_write, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)* @cos_generic_equal, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* @cos_generic_hash }, align 8
@cos_reference_procs = constant %struct.cos_object_procs_s { void (%struct.cos_object_s*, i8*)* @cos_reference_release, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)* @cos_generic_write, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)* @cos_generic_equal, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* @cos_generic_hash }, align 8
@st_cos_object = internal constant %struct.gs_memory_struct_type_s { i32 200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cos_object_reloc_ptrs to i8*) }, align 8
@cos_array_procs = constant %struct.cos_object_procs_s { void (%struct.cos_object_s*, i8*)* @cos_array_release, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)* @cos_array_write, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)* @cos_array_equal, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* @cos_array_hash }, align 8
@.str = private unnamed_addr constant [25 x i8] c"cos_array_put(old value)\00", align 1
@st_cos_array_element = internal constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_array_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_array_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"cos_array_put(element)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cos_array_unadd\00", align 1
@cos_dict_procs = constant %struct.cos_object_procs_s { void (%struct.cos_object_s*, i8*)* @cos_dict_release, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)* @cos_dict_write, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)* @cos_dict_equal, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* @cos_dict_hash }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"<<>>\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"<<\0A/Limits [\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\0A]\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/Names [\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"]\0A>>\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"cos_dict_put_c_key_floats\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"cos_dict_move_all_from\00", align 1
@cos_param_list_writer_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @cos_param_put_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* null, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* null, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* null, i32 (%struct.gs_param_list_s*, i8*)* @gs_param_request_default, i32 (%struct.gs_param_list_s*, i8*)* @gs_param_requested_default, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*, i32)* null, i32 (%struct.gs_param_list_s*)* null }, align 8
@cos_stream_procs = constant %struct.cos_object_procs_s { void (%struct.cos_object_s*, i8*)* @cos_stream_release, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)* @cos_stream_write, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)* @cos_stream_equal, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* @cos_stream_hash }, align 8
@st_cos_stream_piece = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cos_element_reloc_ptrs to i8*) }, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"cos_stream_add\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"cos_stream_release_pieces\00", align 1
@st_cos_write_stream_state = internal constant %struct.gs_memory_struct_type_s { i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cos_ws_state_reloc_ptrs to i8*) }, align 8
@cos_write_stream_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_cos_write_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @cos_write_stream_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@cos_s_procs = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_std_write_flush, i32 (%struct.stream_s*)* @cos_write_stream_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @cos_write_stream_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"/R%ld\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"cos_object_t\00", align 1
@cos_object_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 5, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([5 x %struct.gc_ptr_element_s], [5 x %struct.gc_ptr_element_s]* @cos_object_enum_ptrs, i32 0, i32 0) }, align 8
@cos_object_enum_ptrs = internal constant [5 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 40 }, %struct.gc_ptr_element_s { i16 0, i16 64 }], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [79 x i8] c"Too many entries in array,\0A max 8191 in PDF/A, reverting to normal PDF output\0A\00", align 1
@.str.22 = private unnamed_addr constant [107 x i8] c"Too many entries in array,\0A max 8191 in PDF/A. Cannot simply elide dictionary, reverting to normal output\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"Too many entries in array,\0A max 8191 in PDF/A. aborting conversion\0A\00", align 1
@.str.24 = private unnamed_addr constant [116 x i8] c"Too many entries in array,\0A max 8191 in PDF/A. Unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"null\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"cos_copy_element_value\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"cos_uncopy_element_value\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"cos_array_element_t\00", align 1
@st_cos_element = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cos_element_reloc_ptrs to i8*) }, align 8
@st_cos_value = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_value_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_value_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"cos_element_t\00", align 1
@cos_element_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cos_element_enum_ptrs, i32 0, i32 0) }, align 8
@cos_element_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.31 = private unnamed_addr constant [12 x i8] c"cos_value_t\00", align 1
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"cos_dict_delete\00", align 1
@.str.33 = private unnamed_addr constant [84 x i8] c"Too many entries in dictionary,\0A max 4095 in PDF/A, reverting to normal PDF output\0A\00", align 1
@.str.34 = private unnamed_addr constant [112 x i8] c"Too many entries in dictionary,\0A max 4095 in PDF/A. Cannot simply elide dictionary, reverting to normal output\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"Too many entries in dictionary,\0A max 4095 in PDF/A. aborting conversion\0A\00", align 1
@.str.36 = private unnamed_addr constant [121 x i8] c"Too many entries in dictionary,\0A max 4095 in PDF/A. Unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"cos_dict_put(new key)\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"cos_dict_put(old value)\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"cos_dict_put(key)\00", align 1
@st_cos_dict_element = internal constant %struct.gs_memory_struct_type_s { i32 56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_dict_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cos_dict_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.42 = private unnamed_addr constant [22 x i8] c"cos_dict_put(element)\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"cos_dict_element_t\00", align 1
@param_printer_params_default = external constant %struct.param_printer_params_s, align 8
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"cos_param_put(string)\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"cos_param_put(array)\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"hash_cos_stream\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"/Length %ld>>stream\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"\0Aendstream\0A\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"cos_stream_piece_t\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"cos_write_stream_state_t\00", align 1
@cos_ws_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_stream_state, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @cos_ws_state_enum_ptrs, i32 0, i32 0) }, align 8
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@cos_ws_state_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }, %struct.gc_ptr_element_s { i16 0, i16 120 }, %struct.gc_ptr_element_s { i16 0, i16 128 }, %struct.gc_ptr_element_s { i16 0, i16 136 }], align 16

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %pco) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %0, i32 0, i32 4
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !5
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  ret %struct.gs_memory_s* %2
}

; Function Attrs: nounwind uwtable
define i32 @cos_become(%struct.cos_object_s* %pco, %struct.cos_object_procs_s* %cotype) #0 {
entry:
  %retval = alloca i32, align 4
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cotype.addr = alloca %struct.cos_object_procs_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.cos_object_procs_s* %cotype, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %0, i32 0, i32 0
  %1 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %cmp = icmp ne %struct.cos_object_procs_s* %1, @cos_generic_procs
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype.addr, align 8, !tbaa !1
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs1 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %3, i32 0, i32 0
  store %struct.cos_object_procs_s* %2, %struct.cos_object_procs_s** %cos_procs1, align 8, !tbaa !52
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cos_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %0, i32 0, i32 0
  %1 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %release = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %1, i32 0, i32 0
  %2 = load void (%struct.cos_object_s*, i8*)*, void (%struct.cos_object_s*, i8*)** %release, align 8, !tbaa !53
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %2(%struct.cos_object_s* %3, i8* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @cos_free(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_release(%struct.cos_object_s* %0, i8* %1) #5
  %2 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %4) #5
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %6 = bitcast %struct.cos_object_s* %5 to i8*
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %3(%struct.gs_memory_s* %call1, i8* %6, i8* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cos_write(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i64 %object_id) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %object_id.addr = alloca i64, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %0, i32 0, i32 0
  %1 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %write = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)** %write, align 8, !tbaa !59
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call = call i32 %2(%struct.cos_object_s* %3, %struct.gx_device_pdf_s* %4, i64 %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cos_write_object(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !60
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %1, i32 0, i32 1
  %2 = load i64, i64* %id, align 8, !tbaa !61
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %3, i32 0, i32 8
  %4 = load i8, i8* %written, align 1, !tbaa !62
  %conv = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 1
  %7 = load i64, i64* %id1, align 8, !tbaa !61
  %8 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %5, i64 %7, i32 %8) #5
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id2 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %11, i32 0, i32 1
  %12 = load i64, i64* %id2, align 8, !tbaa !61
  %call3 = call i32 @cos_write(%struct.cos_object_s* %9, %struct.gx_device_pdf_s* %10, i64 %12) #5
  store i32 %call3, i32* %code, align 4, !tbaa !63
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call4 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %13, i32 %14) #5
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %written5 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 8
  store i8 1, i8* %written5, align 1, !tbaa !62
  %16 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #2

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %pcv, i8* %data, i32 %size) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %1, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data1 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  store i8* %0, i8** %data1, align 8, !tbaa !64
  %2 = load i32, i32* %size.addr, align 4, !tbaa !63
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %3, i32 0, i32 1
  %chars3 = bitcast %union.vc_* %contents2 to %struct.gs_string_s*
  %size4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars3, i32 0, i32 1
  store i32 %2, i32* %size4, align 4, !tbaa !66
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %4, i32 0, i32 0
  store i32 0, i32* %value_type, align 4, !tbaa !67
  %5 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  ret %struct.cos_value_s* %5
}

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %pcv, i8* %str) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %1, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  store i8* %0, i8** %data, align 8, !tbaa !64
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents1 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %3, i32 0, i32 1
  %chars2 = bitcast %union.vc_* %contents1 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars2, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !66
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %4, i32 0, i32 0
  store i32 1, i32* %value_type, align 4, !tbaa !67
  %5 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  ret %struct.cos_value_s* %5
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %pcv, %struct.cos_object_s* %pco) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %pco.addr = alloca %struct.cos_object_s*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %1, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  store %struct.cos_object_s* %0, %struct.cos_object_s** %object, align 8, !tbaa !1
  %2 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %2, i32 0, i32 0
  store i32 2, i32* %value_type, align 4, !tbaa !67
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  ret %struct.cos_value_s* %3
}

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %pcv, %struct.cos_object_s* %pco) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %pco.addr = alloca %struct.cos_object_s*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %1, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  store %struct.cos_object_s* %0, %struct.cos_object_s** %object, align 8, !tbaa !1
  %2 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %2, i32 0, i32 0
  store i32 3, i32* %value_type, align 4, !tbaa !67
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  ret %struct.cos_value_s* %3
}

; Function Attrs: nounwind uwtable
define void @cos_value_free(%struct.cos_value_s* %pcv, %struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %0, i32 0, i32 0
  %1 = load i32, i32* %value_type, align 4, !tbaa !67
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb.4
    i32 3, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %3 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !69
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %4) #5
  %5 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %5, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !64
  %7 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %7, i32 0, i32 1
  %chars3 = bitcast %union.vc_* %contents2 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars3, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !66
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %3(%struct.gs_memory_s* %call1, i8* %6, i32 %8, i8* %9) #5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %10, i32 0, i32 1
  %object = bitcast %union.vc_* %contents5 to %struct.cos_object_s**
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_object_s* %11, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %sw.bb.4
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents6 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 1
  %object7 = bitcast %union.vc_* %contents6 to %struct.cos_object_s**
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %13, i32 0, i32 1
  %14 = load i64, i64* %id, align 8, !tbaa !61
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %15 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents9 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %15, i32 0, i32 1
  %object10 = bitcast %union.vc_* %contents9 to %struct.cos_object_s**
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %object10, align 8, !tbaa !1
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_free(%struct.cos_object_s* %16, i8* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %sw.bb.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.11, %entry, %sw.bb, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cos_value_write(%struct.cos_value_s* %pcv, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_value_write_spaced(%struct.cos_value_s* %0, %struct.gx_device_pdf_s* %1, i32 0, i64 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_value_write_spaced(%struct.cos_value_s* %pcv, %struct.gx_device_pdf_s* %pdev, i32 %do_space, i64 %object_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %do_space.addr = alloca i32, align 4
  %object_id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pco = alloca %struct.cos_object_s*, align 8
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %do_space, i32* %do_space.addr, align 4, !tbaa !63
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %3, i32 0, i32 0
  %4 = load i32, i32* %value_type, align 4, !tbaa !67
  switch i32 %4, label %sw.default.39 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.8
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = load i32, i32* %do_space.addr, align 4, !tbaa !63
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %6, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 47, label %sw.bb.1
    i32 40, label %sw.bb.1
    i32 60, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %if.then, %if.then, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext 32) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %sw.bb
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %11, i32 0, i32 1
  %chars3 = bitcast %union.vc_* %contents2 to %struct.gs_string_s*
  %data4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars3, i32 0, i32 0
  %12 = load i8*, i8** %data4, align 8, !tbaa !64
  %13 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %13, i32 0, i32 1
  %chars6 = bitcast %union.vc_* %contents5 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars6, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !66
  %15 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call7 = call i32 @pdf_write_value(%struct.gx_device_pdf_s* %10, i8* %12, i32 %14, i64 %15) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.8:                                          ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents9 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %object = bitcast %union.vc_* %contents9 to %struct.cos_object_s**
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %18, i32 0, i32 1
  %19 = load i64, i64* %id, align 8, !tbaa !61
  %call10 = call i8* @pprintld1(%struct.stream_s* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i64 %19) #5
  br label %sw.epilog.40

sw.bb.11:                                         ; preds = %entry
  %20 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents12 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %21, i32 0, i32 1
  %object13 = bitcast %union.vc_* %contents12 to %struct.cos_object_s**
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object13, align 8, !tbaa !1
  store %struct.cos_object_s* %22, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id14 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %23, i32 0, i32 1
  %24 = load i64, i64* %id14, align 8, !tbaa !61
  %tobool15 = icmp ne i64 %24, 0
  br i1 %tobool15, label %if.end.26, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.11
  %25 = load i32, i32* %do_space.addr, align 4, !tbaa !63
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.then.16
  %26 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %26, i32 0, i32 0
  %27 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %cmp = icmp eq %struct.cos_object_procs_s* %27, @cos_array_procs
  br i1 %cmp, label %if.end.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs19 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %28, i32 0, i32 0
  %29 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs19, align 8, !tbaa !52
  %cmp20 = icmp eq %struct.cos_object_procs_s* %29, @cos_dict_procs
  br i1 %cmp20, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call23 = call i32 @spputc(%struct.stream_s* %30, i8 zeroext 32) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false, %land.lhs.true, %if.then.16
  %31 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call25 = call i32 @cos_write(%struct.cos_object_s* %31, %struct.gx_device_pdf_s* %32, i64 %33) #5
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %sw.bb.11
  %34 = load i32, i32* %do_space.addr, align 4, !tbaa !63
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @spputc(%struct.stream_s* %35, i8 zeroext 32) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %37 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id31 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %37, i32 0, i32 1
  %38 = load i64, i64* %id31, align 8, !tbaa !61
  %call32 = call i8* @pprintld1(%struct.stream_s* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64 %38) #5
  %39 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs33 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %39, i32 0, i32 0
  %40 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs33, align 8, !tbaa !52
  %cmp34 = icmp eq %struct.cos_object_procs_s* %40, @cos_reference_procs
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.30
  %41 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id37 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %41, i32 0, i32 1
  store i64 0, i64* %id37, align 8, !tbaa !61
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.30
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.end.24
  %42 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 2, label %sw.epilog.40
  ]

sw.default.39:                                    ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.epilog.40:                                     ; preds = %cleanup, %sw.bb.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %sw.epilog.40, %sw.default.39, %cleanup, %if.end
  %43 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal void @cos_generic_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_generic_write(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i64 %object_id) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %object_id.addr = alloca i64, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_generic_equal(%struct.cos_object_s* %pco0, %struct.cos_object_s* %pco1, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %pco1.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco1, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_generic_hash(%struct.cos_object_s* %pco0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define internal void @cos_reference_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cos_object_s* @cos_object_alloc(%struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_cos_object, i8* %7) #5
  %8 = bitcast i8* %call to %struct.cos_object_s*
  store %struct.cos_object_s* %8, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @cos_object_init(%struct.cos_object_s* %9, %struct.gx_device_pdf_s* %10, %struct.cos_object_procs_s* @cos_generic_procs) #5
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %12 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret %struct.cos_object_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @cos_object_init(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, %struct.cos_object_procs_s* %procs) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %procs.addr = alloca %struct.cos_object_procs_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_object_procs_s* %procs, %struct.cos_object_procs_s** %procs.addr, align 8, !tbaa !1
  %0 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_object_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %procs.addr, align 8, !tbaa !1
  %2 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %2, i32 0, i32 0
  store %struct.cos_object_procs_s* %1, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %3, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !61
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %4, i32 0, i32 2
  store %struct.cos_element_s* null, %struct.cos_element_s** %elements, align 8, !tbaa !72
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %5, i32 0, i32 3
  store %struct.cos_stream_piece_s* null, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !73
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %7, i32 0, i32 4
  store %struct.gx_device_pdf_s* %6, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !5
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %8, i32 0, i32 5
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !74
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 6
  store i8 1, i8* %is_open, align 1, !tbaa !75
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %is_graphics = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 7
  store i8 0, i8* %is_graphics, align 1, !tbaa !76
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %11, i32 0, i32 8
  store i8 0, i8* %written, align 1, !tbaa !62
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %12, i32 0, i32 9
  store i64 0, i64* %length, align 8, !tbaa !77
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %input_strm = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %13, i32 0, i32 10
  store %struct.stream_s* null, %struct.stream_s** %input_strm, align 8, !tbaa !78
  %14 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %14, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !79
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %stream_md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 14
  store i32 0, i32* %stream_md5_valid, align 4, !tbaa !80
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %16, i32 0, i32 13
  %17 = bitcast [16 x i8]* %hash to i8*
  %call = call i8* @memset(i8* %17, i32 0, i64 16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cos_object_s* @cos_reference_alloc(%struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_cos_object, i8* %7) #5
  %8 = bitcast i8* %call to %struct.cos_object_s*
  store %struct.cos_object_s* %8, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @cos_object_init(%struct.cos_object_s* %9, %struct.gx_device_pdf_s* %10, %struct.cos_object_procs_s* @cos_reference_procs) #5
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %12 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret %struct.cos_object_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @cos_array_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %cur = alloca %struct.cos_array_element_s*, align 8
  %next = alloca %struct.cos_array_element_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %1) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %2 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %4 = bitcast %struct.cos_object_s* %3 to %struct.cos_array_s*
  store %struct.cos_array_s* %4, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %5 = bitcast %struct.cos_array_element_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %7, i32 0, i32 2
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  store %struct.cos_array_element_s* %8, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_array_element_s* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %10, i32 0, i32 0
  %11 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next1, align 8, !tbaa !83
  store %struct.cos_array_element_s* %11, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %12 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %12, i32 0, i32 2
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_value_free(%struct.cos_value_s* %value, %struct.cos_object_s* %13, i8* %14) #5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  %19 = bitcast %struct.cos_array_element_s* %18 to i8*
  %20 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* %20) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  store %struct.cos_array_element_s* %21, %struct.cos_array_element_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %elements2 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %22, i32 0, i32 2
  store %struct.cos_array_element_s* null, %struct.cos_array_element_s** %elements2, align 8, !tbaa !81
  %23 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cos_array_element_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_array_write(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i64 %object_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %object_id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %first = alloca %struct.cos_array_element_s*, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  %last_index = alloca i32, align 4
  %Element_Count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cos_object_s* %4 to %struct.cos_array_s*
  store %struct.cos_array_s* %5, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %6 = bitcast %struct.cos_array_element_s** %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call = call %struct.cos_array_element_s* @cos_array_reorder(%struct.cos_array_s* %7, %struct.cos_array_element_s* null) #5
  store %struct.cos_array_element_s* %call, %struct.cos_array_element_s** %first, align 8, !tbaa !1
  %8 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %last_index, align 4, !tbaa !63
  %10 = bitcast i32* %Element_Count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %Element_Count, align 4, !tbaa !63
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #5
  %12 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first, align 8, !tbaa !1
  store %struct.cos_array_element_s* %12, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %13 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_array_element_s* %13, null
  br i1 %tobool, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %Element_Count, align 4, !tbaa !63
  %inc = add i32 %14, 1
  store i32 %inc, i32* %Element_Count, align 4, !tbaa !63
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 109
  %16 = load i32, i32* %PDFA, align 4, !tbaa !85
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %Element_Count, align 4, !tbaa !63
  %cmp2 = icmp ugt i32 %17, 8191
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 239
  %19 = load i32, i32* %PDFACompatibilityPolicy, align 4, !tbaa !86
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %call3 = call i8* @gs_program_name() #5
  %call4 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %21, i8* %call3, i64 %call4) #5
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !87
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %23, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.21, i32 0, i32 0)) #5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX, align 4, !tbaa !88
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 109
  store i32 0, i32* %PDFA7, align 4, !tbaa !85
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !87
  %call10 = call i8* @gs_program_name() #5
  %call11 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %27, i8* %call10, i64 %call11) #5
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !87
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %29, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i32 0, i32 0)) #5
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX14, align 4, !tbaa !88
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 109
  store i32 0, i32* %PDFA15, align 4, !tbaa !85
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !87
  %call18 = call i8* @gs_program_name() #5
  %call19 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %33, i8* %call18, i64 %call19) #5
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !87
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %35, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i32 0, i32 0)) #5
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !87
  %call23 = call i8* @gs_program_name() #5
  %call24 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %37, i8* %call23, i64 %call24) #5
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !87
  %call26 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %39, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.24, i32 0, i32 0)) #5
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX27, align 4, !tbaa !88
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 109
  store i32 0, i32* %PDFA28, align 4, !tbaa !85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %for.body
  %42 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %43 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.cos_array_element_s* %42, %43
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %44, i8 zeroext 10) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %45 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %45, i32 0, i32 1
  %46 = load i64, i64* %index, align 8, !tbaa !89
  %47 = load i32, i32* %last_index, align 4, !tbaa !63
  %conv = zext i32 %47 to i64
  %cmp34 = icmp sgt i64 %46, %conv
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call37 = call i32 @stream_puts(%struct.stream_s* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %49 = load i32, i32* %last_index, align 4, !tbaa !63
  %inc38 = add i32 %49, 1
  store i32 %inc38, i32* %last_index, align 4, !tbaa !63
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %50 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %50, i32 0, i32 2
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call39 = call i32 @cos_value_write_spaced(%struct.cos_value_s* %value, %struct.gx_device_pdf_s* %51, i32 0, i64 %52) #5
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %53 = load i32, i32* %last_index, align 4, !tbaa !63
  %inc41 = add i32 %53, 1
  store i32 %inc41, i32* %last_index, align 4, !tbaa !63
  %54 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %54, i32 0, i32 0
  %55 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !83
  store %struct.cos_array_element_s* %55, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %56 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %57 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first, align 8, !tbaa !1
  %call43 = call %struct.cos_array_element_s* @cos_array_reorder(%struct.cos_array_s* %56, %struct.cos_array_element_s* %57) #5
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call44 = call i32 @stream_puts(%struct.stream_s* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #5
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 109
  %60 = load i32, i32* %PDFA45, align 4, !tbaa !85
  %cmp46 = icmp ne i32 %60, 0
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %for.end.42
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call49 = call i32 @stream_puts(%struct.stream_s* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %for.end.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %sw.bb.16
  %62 = bitcast i32* %Element_Count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.cos_array_element_s** %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_array_equal(%struct.cos_object_s* %pco0, %struct.cos_object_s* %pco1, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %pco1.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca0 = alloca %struct.cos_array_s*, align 8
  %pca1 = alloca %struct.cos_array_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco1, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_s** %pca0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_array_s*
  store %struct.cos_array_s* %2, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cos_object_s* %4 to %struct.cos_array_s*
  store %struct.cos_array_s* %5, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %7, i32 0, i32 12
  %8 = load i32, i32* %md5_valid, align 4, !tbaa !90
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %md5 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %9, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %11 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %md51 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %11, i32 0, i32 11
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %12, i32 0, i32 13
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_array_hash(%struct.cos_object_s* %10, %struct.gs_md5_state_s* %md51, i8* %arraydecay, %struct.gx_device_pdf_s* %13) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %14 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %md53 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %16, i32 0, i32 11
  %17 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %hash4 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %17, i32 0, i32 13
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %hash4, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md53, i8* %arraydecay5) #5
  %18 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %19 = bitcast %struct.cos_array_s* %18 to %struct.cos_object_s*
  %md5_valid6 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %19, i32 0, i32 12
  store i32 1, i32* %md5_valid6, align 4, !tbaa !79
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %20 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %md5_valid8 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %20, i32 0, i32 12
  %21 = load i32, i32* %md5_valid8, align 4, !tbaa !90
  %tobool9 = icmp ne i32 %21, 0
  br i1 %tobool9, label %if.end.23, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %22 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %md511 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %22, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md511) #5
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %24 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %md512 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %24, i32 0, i32 11
  %25 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %hash13 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %25, i32 0, i32 13
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %hash13, i32 0, i32 0
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call15 = call i32 @cos_array_hash(%struct.cos_object_s* %23, %struct.gs_md5_state_s* %md512, i8* %arraydecay14, %struct.gx_device_pdf_s* %26) #5
  store i32 %call15, i32* %code, align 4, !tbaa !63
  %27 = load i32, i32* %code, align 4, !tbaa !63
  %cmp16 = icmp slt i32 %27, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.10
  %28 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.10
  %29 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %md519 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %29, i32 0, i32 11
  %30 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %hash20 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %30, i32 0, i32 13
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %hash20, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md519, i8* %arraydecay21) #5
  %31 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %32 = bitcast %struct.cos_array_s* %31 to %struct.cos_object_s*
  %md5_valid22 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %32, i32 0, i32 12
  store i32 1, i32* %md5_valid22, align 4, !tbaa !79
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.18, %if.end.7
  %33 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %hash24 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %33, i32 0, i32 13
  %34 = bitcast [16 x i8]* %hash24 to i8*
  %35 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %hash25 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %35, i32 0, i32 13
  %36 = bitcast [16 x i8]* %hash25 to i8*
  %call26 = call i32 @memcmp(i8* %34, i8* %36, i64 16) #6
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.23
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.17, %if.then.2
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.cos_array_s** %pca0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_array_hash(%struct.cos_object_s* %pco0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca0 = alloca %struct.cos_array_s*, align 8
  %first0 = alloca %struct.cos_array_element_s*, align 8
  %pcae0 = alloca %struct.cos_array_element_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_s** %pca0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_array_s*
  store %struct.cos_array_s* %2, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_element_s** %first0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca0, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %4, i32 0, i32 2
  %5 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  store %struct.cos_array_element_s* %5, %struct.cos_array_element_s** %first0, align 8, !tbaa !1
  %6 = bitcast %struct.cos_array_element_s** %pcae0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first0, align 8, !tbaa !1
  store %struct.cos_array_element_s* %8, %struct.cos_array_element_s** %pcae0, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae0, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_array_element_s* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae0, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %10, i32 0, i32 2
  %11 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %hash.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_value_hash(%struct.cos_value_s* %value, %struct.gs_md5_state_s* %11, i8* %12, %struct.gx_device_pdf_s* %13) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %14 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae0, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %16, i32 0, i32 0
  %17 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !83
  store %struct.cos_array_element_s* %17, %struct.cos_array_element_s** %pcae0, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.cos_array_element_s** %pcae0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.cos_array_element_s** %first0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.cos_array_s** %pca0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_cos_object, i8* %7) #5
  %8 = bitcast i8* %call to %struct.cos_array_s*
  store %struct.cos_array_s* %8, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %10 = bitcast %struct.cos_array_s* %9 to %struct.cos_object_s*
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @cos_object_init(%struct.cos_object_s* %10, %struct.gx_device_pdf_s* %11, %struct.cos_object_procs_s* @cos_array_procs) #5
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %13 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.cos_array_s* %12
}

; Function Attrs: nounwind uwtable
define %struct.cos_array_s* @cos_array_from_floats(%struct.gx_device_pdf_s* %pdev, float* %pf, i32 %size, i8* %cname) #0 {
entry:
  %retval = alloca %struct.cos_array_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pf.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store float* %pf, float** %pf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %1, i8* %2) #5
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cos_array_s* null, %struct.cos_array_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !63
  %6 = load i32, i32* %size.addr, align 4, !tbaa !63
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !63
  %idxprom = zext i32 %9 to i64
  %10 = load float*, float** %pf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4, !tbaa !91
  %conv = fpext float %11 to double
  %call2 = call i32 @cos_array_add_real(%struct.cos_array_s* %8, double %conv) #5
  store i32 %call2, i32* %code, align 4, !tbaa !63
  %12 = load i32, i32* %code, align 4, !tbaa !63
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %13 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %13, i32 0, i32 0
  %14 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %15 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_free(%struct.cos_object_s* %14, i8* %15) #5
  store %struct.cos_array_s* null, %struct.cos_array_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, i32* %i, align 4, !tbaa !63
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !63
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  store %struct.cos_array_s* %18, %struct.cos_array_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %for.end, %cleanup, %if.then
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.cos_array_s*, %struct.cos_array_s** %retval
  ret %struct.cos_array_s* %21
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_add_real(%struct.cos_array_s* %pca, double %r) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %r.addr = alloca double, align 8
  %str = alloca [50 x i8], align 16
  %s = alloca %struct.stream_s, align 8
  %v = alloca %struct.cos_value_s, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store double %r, double* %r.addr, align 8, !tbaa !92
  %0 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 50, i8* %0) #1
  %1 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #1
  %2 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #5
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay, i32 50) #5
  %3 = load double, double* %r.addr, align 8, !tbaa !92
  %call = call i8* @pprintg1(%struct.stream_s* %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %3) #5
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  %call2 = call i64 @stell(%struct.stream_s* %s) #5
  %conv = trunc i64 %call2 to i32
  %call3 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %v, i8* %arraydecay1, i32 %conv) #5
  %call4 = call i32 @cos_array_add(%struct.cos_array_s* %4, %struct.cos_value_s* %call3) #5
  %5 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #1
  %6 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %6) #1
  %7 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 50, i8* %7) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_put(%struct.cos_array_s* %pca, i64 %index, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %index.addr = alloca i64, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i64 %index, i64* %index.addr, align 8, !tbaa !58
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %1, i32 0, i32 0
  %2 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_copy_element_value(%struct.cos_value_s* %value, %struct.gs_memory_s* %5, %struct.cos_value_s* %6, i32 1) #5
  store i32 %call1, i32* %code, align 4, !tbaa !63
  %7 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %9 = load i64, i64* %index.addr, align 8, !tbaa !58
  %call2 = call i32 @cos_array_put_no_copy(%struct.cos_array_s* %8, i64 %9, %struct.cos_value_s* %value) #5
  store i32 %call2, i32* %code, align 4, !tbaa !63
  %10 = load i32, i32* %code, align 4, !tbaa !63
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @cos_uncopy_element_value(%struct.cos_value_s* %value, %struct.gs_memory_s* %11, i32 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %12, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !90
  %13 = load i32, i32* %code, align 4, !tbaa !63
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %15) #1
  %16 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_copy_element_value(%struct.cos_value_s* %pcv, %struct.gs_memory_s* %mem, %struct.cos_value_s* %pvalue, i32 %copy) #0 {
entry:
  %retval = alloca i32, align 4
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %copy.addr = alloca i32, align 4
  %value_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %copy, i32* %copy.addr, align 4, !tbaa !63
  %0 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_value_s* %0 to i8*
  %3 = bitcast %struct.cos_value_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false), !tbaa.struct !93
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %4, i32 0, i32 0
  %5 = load i32, i32* %value_type, align 4, !tbaa !67
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %copy.addr, align 4, !tbaa !63
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast i8** %value_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !94
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %11, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !66
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0)) #5
  store i8* %call, i8** %value_data, align 8, !tbaa !1
  %13 = load i8*, i8** %value_data, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load i8*, i8** %value_data, align 8, !tbaa !1
  %15 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents3 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %15, i32 0, i32 1
  %chars4 = bitcast %union.vc_* %contents3 to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars4, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !64
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %chars6 = bitcast %union.vc_* %contents5 to %struct.gs_string_s*
  %size7 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars6, i32 0, i32 1
  %18 = load i32, i32* %size7, align 4, !tbaa !66
  %conv = zext i32 %18 to i64
  %call8 = call i8* @memcpy(i8* %14, i8* %16, i64 %conv) #7
  %19 = load i8*, i8** %value_data, align 8, !tbaa !1
  %20 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents9 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %20, i32 0, i32 1
  %chars10 = bitcast %union.vc_* %contents9 to %struct.gs_string_s*
  %data11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars10, i32 0, i32 0
  store i8* %19, i8** %data11, align 8, !tbaa !64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %21 = bitcast i8** %value_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %cleanup
  %22 = load i32, i32* %retval
  ret i32 %22

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_put_no_copy(%struct.cos_array_s* %pca, i64 %index, %struct.cos_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %index.addr = alloca i64, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %ppcae = alloca %struct.cos_array_element_s**, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  %next = alloca %struct.cos_array_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i64 %index, i64* %index.addr, align 8, !tbaa !58
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %1, i32 0, i32 0
  %2 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_element_s*** %ppcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %4, i32 0, i32 2
  store %struct.cos_array_element_s** %elements, %struct.cos_array_element_s*** %ppcae, align 8, !tbaa !1
  %5 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.cos_array_element_s**, %struct.cos_array_element_s*** %ppcae, align 8, !tbaa !1
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %7, align 8, !tbaa !1
  store %struct.cos_array_element_s* %8, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_array_element_s* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %9, i32 0, i32 1
  %10 = load i64, i64* %index1, align 8, !tbaa !89
  %11 = load i64, i64* %index.addr, align 8, !tbaa !58
  %cmp2 = icmp sgt i64 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %13, i32 0, i32 0
  store %struct.cos_array_element_s** %next3, %struct.cos_array_element_s*** %ppcae, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_array_element_s* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %15 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %index4 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %15, i32 0, i32 1
  %16 = load i64, i64* %index4, align 8, !tbaa !89
  %17 = load i64, i64* %index.addr, align 8, !tbaa !58
  %cmp5 = icmp eq i64 %16, %17
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %18, i32 0, i32 2
  %19 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %cos_procs6 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %19, i32 0, i32 0
  %20 = bitcast %struct.cos_object_procs_s** %cos_procs6 to %struct.cos_object_s*
  call void @cos_value_free(%struct.cos_value_s* %value, %struct.cos_object_s* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #5
  %21 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  store %struct.cos_array_element_s* %21, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %while.end
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %23 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call7 = call i8* %23(%struct.gs_memory_s* %24, %struct.gs_memory_struct_type_s* @st_cos_array_element, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #5
  %25 = bitcast i8* %call7 to %struct.cos_array_element_s*
  store %struct.cos_array_element_s* %25, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %26 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.cos_array_element_s* %26, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %27 = load i64, i64* %index.addr, align 8, !tbaa !58
  %28 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %index10 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %28, i32 0, i32 1
  store i64 %27, i64* %index10, align 8, !tbaa !89
  %29 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %30 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next11 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %30, i32 0, i32 0
  store %struct.cos_array_element_s* %29, %struct.cos_array_element_s** %next11, align 8, !tbaa !83
  %31 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %32 = load %struct.cos_array_element_s**, %struct.cos_array_element_s*** %ppcae, align 8, !tbaa !1
  store %struct.cos_array_element_s* %31, %struct.cos_array_element_s** %32, align 8, !tbaa !1
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %33 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %33, i32 0, i32 2
  %34 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %35 = bitcast %struct.cos_value_s* %value13 to i8*
  %36 = bitcast %struct.cos_value_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 24, i32 8, i1 false), !tbaa.struct !93
  %37 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %37, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !90
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.9
  %38 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.cos_array_element_s*** %ppcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @cos_uncopy_element_value(%struct.cos_value_s* %pcv, %struct.gs_memory_s* %mem, i32 %copy) #0 {
entry:
  %pcv.addr = alloca %struct.cos_value_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %copy.addr = alloca i32, align 4
  store %struct.cos_value_s* %pcv, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %copy, i32* %copy.addr, align 4, !tbaa !63
  %0 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %0, i32 0, i32 0
  %1 = load i32, i32* %value_type, align 4, !tbaa !67
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %copy.addr, align 4, !tbaa !63
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %4 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !69
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %6, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !64
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv.addr, align 8, !tbaa !1
  %contents1 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %8, i32 0, i32 1
  %chars2 = bitcast %union.vc_* %contents1 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars2, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !66
  call void %4(%struct.gs_memory_s* %5, i8* %7, i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @cos_array_add(%struct.cos_array_s* %pca, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %0, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !90
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call = call i64 @cos_array_next_index(%struct.cos_array_s* %2) #5
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_array_put(%struct.cos_array_s* %1, i64 %call, %struct.cos_value_s* %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @cos_array_next_index(%struct.cos_array_s* %pca) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %0 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %0, i32 0, i32 2
  %1 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  %tobool = icmp ne %struct.cos_array_element_s* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements1 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %2, i32 0, i32 2
  %3 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements1, align 8, !tbaa !81
  %index = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %3, i32 0, i32 1
  %4 = load i64, i64* %index, align 8, !tbaa !89
  %add = add nsw i64 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_add_no_copy(%struct.cos_array_s* %pca, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %0, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !90
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call = call i64 @cos_array_next_index(%struct.cos_array_s* %2) #5
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_array_put_no_copy(%struct.cos_array_s* %1, i64 %call, %struct.cos_value_s* %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_add_c_string(%struct.cos_array_s* %pca, i8* %str) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %str.addr = alloca i8*, align 8
  %value = alloca %struct.cos_value_s, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %value, i8* %2) #5
  %call1 = call i32 @cos_array_add(%struct.cos_array_s* %1, %struct.cos_value_s* %call) #5
  %3 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %3) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_add_int(%struct.cos_array_s* %pca, i32 %i) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %i.addr = alloca i32, align 4
  %str = alloca [13 x i8], align 1
  %v = alloca %struct.cos_value_s, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !63
  %0 = bitcast [13 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 13, i8* %0) #1
  %1 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %2 = load i32, i32* %i.addr, align 4, !tbaa !63
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %2) #5
  %3 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  %call4 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %v, i8* %arraydecay1, i32 %conv) #5
  %call5 = call i32 @cos_array_add(%struct.cos_array_s* %3, %struct.cos_value_s* %call4) #5
  %4 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #1
  %5 = bitcast [13 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 13, i8* %5) #1
  ret i32 %call5
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_string(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

declare i64 @stell(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cos_array_add_object(%struct.cos_array_s* %pca, %struct.cos_object_s* %pco) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !66
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %2) #5
  %call1 = call i32 @cos_array_add(%struct.cos_array_s* %1, %struct.cos_value_s* %call) #5
  %3 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %3) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_array_unadd(%struct.cos_array_s* %pca, %struct.cos_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %1, i32 0, i32 2
  %2 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  store %struct.cos_array_element_s* %2, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %3 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_element_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %4, i32 0, i32 1
  %5 = load i64, i64* %index, align 8, !tbaa !89
  %6 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %6, i32 0, i32 0
  %7 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !83
  %cmp1 = icmp eq %struct.cos_array_element_s* %7, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %8, i32 0, i32 0
  %9 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next2, align 8, !tbaa !83
  %index3 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %9, i32 0, i32 1
  %10 = load i64, i64* %index3, align 8, !tbaa !89
  %add = add nsw i64 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ]
  %cmp4 = icmp ne i64 %5, %cond
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %11 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %12 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %12, i32 0, i32 2
  %13 = bitcast %struct.cos_value_s* %11 to i8*
  %14 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 8, i1 false), !tbaa.struct !93
  %15 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %15, i32 0, i32 0
  %16 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next5, align 8, !tbaa !83
  %17 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements6 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %17, i32 0, i32 2
  store %struct.cos_array_element_s* %16, %struct.cos_array_element_s** %elements6, align 8, !tbaa !81
  %18 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %18, i32 0, i32 0
  %19 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %19) #5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %21 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %cos_procs7 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %21, i32 0, i32 0
  %22 = bitcast %struct.cos_object_procs_s** %cos_procs7 to %struct.cos_object_s*
  %call8 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %22) #5
  %23 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %24 = bitcast %struct.cos_array_element_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %call8, i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  %25 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %25, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !90
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define %struct.cos_array_element_s* @cos_array_element_first(%struct.cos_array_s* %pca) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %0 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %0, i32 0, i32 2
  %1 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  ret %struct.cos_array_element_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.cos_array_element_s* @cos_array_element_next(%struct.cos_array_element_s* %pca, i64* %pindex, %struct.cos_value_s** %ppvalue) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_element_s*, align 8
  %pindex.addr = alloca i64*, align 8
  %ppvalue.addr = alloca %struct.cos_value_s**, align 8
  store %struct.cos_array_element_s* %pca, %struct.cos_array_element_s** %pca.addr, align 8, !tbaa !1
  store i64* %pindex, i64** %pindex.addr, align 8, !tbaa !1
  store %struct.cos_value_s** %ppvalue, %struct.cos_value_s*** %ppvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pca.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %0, i32 0, i32 1
  %1 = load i64, i64* %index, align 8, !tbaa !89
  %2 = load i64*, i64** %pindex.addr, align 8, !tbaa !1
  store i64 %1, i64* %2, align 8, !tbaa !58
  %3 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pca.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %3, i32 0, i32 2
  %4 = load %struct.cos_value_s**, %struct.cos_value_s*** %ppvalue.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %value, %struct.cos_value_s** %4, align 8, !tbaa !1
  %5 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pca.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %5, i32 0, i32 0
  %6 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !83
  ret %struct.cos_array_element_s* %6
}

; Function Attrs: nounwind uwtable
define internal void @cos_dict_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %cur = alloca %struct.cos_dict_element_s*, align 8
  %next = alloca %struct.cos_dict_element_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %2, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %5, i32 0, i32 2
  %6 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %6, %struct.cos_dict_element_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %cur, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %cur, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %8, i32 0, i32 0
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next1, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %9, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %cur, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_dict_element_free(%struct.cos_dict_s* %10, %struct.cos_dict_element_s* %11, i8* %12) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %13, %struct.cos_dict_element_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %elements2 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %14, i32 0, i32 2
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %elements2, align 8, !tbaa !95
  %15 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.cos_dict_element_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_write(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i64 %object_id) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %object_id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #5
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %6 = bitcast %struct.cos_object_s* %5 to %struct.cos_dict_s*
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %6, i32 0, i32 2
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call1 = call i32 @cos_elements_write(%struct.stream_s* %4, %struct.cos_dict_element_s* %7, %struct.gx_device_pdf_s* %8, i32 0, i64 %9) #5
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)) #5
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 109
  %12 = load i32, i32* %PDFA, align 4, !tbaa !85
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_equal(%struct.cos_object_s* %pco0, %struct.cos_object_s* %pco1, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %pco1.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco1, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !63
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %1, i32 0, i32 12
  %2 = load i32, i32* %md5_valid, align 4, !tbaa !79
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md5 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %3, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md51 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %5, i32 0, i32 11
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 13
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_dict_hash(%struct.cos_object_s* %4, %struct.gs_md5_state_s* %md51, i8* %arraydecay, %struct.gx_device_pdf_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %8 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md53 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 11
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash4 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %11, i32 0, i32 13
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %hash4, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md53, i8* %arraydecay5) #5
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md5_valid6 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %12, i32 0, i32 12
  store i32 1, i32* %md5_valid6, align 4, !tbaa !79
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %md5_valid8 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %13, i32 0, i32 12
  %14 = load i32, i32* %md5_valid8, align 4, !tbaa !79
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end.23, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %md511 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md511) #5
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %17 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %md512 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %17, i32 0, i32 11
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %hash13 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %18, i32 0, i32 13
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %hash13, i32 0, i32 0
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call15 = call i32 @cos_dict_hash(%struct.cos_object_s* %16, %struct.gs_md5_state_s* %md512, i8* %arraydecay14, %struct.gx_device_pdf_s* %19) #5
  store i32 %call15, i32* %code, align 4, !tbaa !63
  %20 = load i32, i32* %code, align 4, !tbaa !63
  %cmp16 = icmp slt i32 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.10
  %21 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.10
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %md519 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %22, i32 0, i32 11
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %hash20 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %23, i32 0, i32 13
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %hash20, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md519, i8* %arraydecay21) #5
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %md5_valid22 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %24, i32 0, i32 12
  store i32 1, i32* %md5_valid22, align 4, !tbaa !79
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.18, %if.end.7
  %25 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash24 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %25, i32 0, i32 13
  %26 = bitcast [16 x i8]* %hash24 to i8*
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %hash25 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %27, i32 0, i32 13
  %28 = bitcast [16 x i8]* %hash25 to i8*
  %call26 = call i32 @memcmp(i8* %26, i8* %28, i64 16) #6
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.23
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.17, %if.then.2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_hash(%struct.cos_object_s* %pco0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %dict = alloca %struct.cos_dict_s*, align 8
  %pcde0 = alloca %struct.cos_dict_element_s*, align 8
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %2, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %pcde0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %4, i32 0, i32 2
  %5 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %5, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %8 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %8, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !99
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  %key1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %10, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key1, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !100
  call void @gs_md5_append(%struct.gs_md5_state_s* %7, i8* %9, i32 %11) #5
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 3
  %13 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %hash.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_value_hash(%struct.cos_value_s* %value, %struct.gs_md5_state_s* %13, i8* %14, %struct.gx_device_pdf_s* %15) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %16, i32 0, i32 0
  %17 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %17, %struct.cos_dict_element_s** %pcde0, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast %struct.cos_dict_element_s** %pcde0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.cos_dict_s** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_cos_object, i8* %7) #5
  %8 = bitcast i8* %call to %struct.cos_dict_s*
  store %struct.cos_dict_s* %8, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %9 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %10 = bitcast %struct.cos_dict_s* %9 to %struct.cos_object_s*
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @cos_object_init(%struct.cos_object_s* %10, %struct.gx_device_pdf_s* %11, %struct.cos_object_procs_s* @cos_dict_procs) #5
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %13 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.cos_dict_s* %12
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_delete_c_key(%struct.cos_dict_s* %pcd, i8* %key) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %call1 = call i32 @cos_dict_delete(%struct.cos_dict_s* %0, i8* %1, i32 %conv) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_delete(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %prev = alloca %struct.cos_dict_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %prev, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !99
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %9, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key1, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !100
  %call = call i32 @bytes_compare(i8* %5, i32 %6, i8* %8, i32 %10) #5
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.7, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %prev, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_dict_element_s* %11, null
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 0
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  %14 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %prev, align 8, !tbaa !1
  %next4 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %14, i32 0, i32 0
  store %struct.cos_dict_element_s* %13, %struct.cos_dict_element_s** %next4, align 8, !tbaa !97
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 0
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next5, align 8, !tbaa !97
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements6 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %17, i32 0, i32 2
  store %struct.cos_dict_element_s* %16, %struct.cos_dict_element_s** %elements6, align 8, !tbaa !95
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %18 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %19 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  call void @cos_dict_element_free(%struct.cos_dict_s* %18, %struct.cos_dict_element_s* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.body
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %20, %struct.cos_dict_element_s** %prev, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %21 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %21, i32 0, i32 0
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next8, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %22, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %23 = bitcast %struct.cos_dict_element_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_elements_write(%struct.cos_dict_s* %pcd, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 47
  %1 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %2, i32 0, i32 2
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %5, i32 0, i32 1
  %6 = load i64, i64* %id, align 8, !tbaa !101
  %call = call i32 @cos_elements_write(%struct.stream_s* %1, %struct.cos_dict_element_s* %3, %struct.gx_device_pdf_s* %4, i32 1, i64 %6) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_elements_write(%struct.stream_s* %s, %struct.cos_dict_element_s* %pcde, %struct.gx_device_pdf_s* %pdev, i32 %do_space, i64 %object_id) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pcde.addr = alloca %struct.cos_dict_element_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %do_space.addr = alloca i32, align 4
  %object_id.addr = alloca i64, align 8
  %Element_Count = alloca i32, align 4
  %save = alloca %struct.stream_s*, align 8
  %object_id1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %pcde, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %do_space, i32* %do_space.addr, align 4, !tbaa !63
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = bitcast i32* %Element_Count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %Element_Count, align 4, !tbaa !63
  %1 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.stream_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 47
  %4 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %4, %struct.stream_s** %save, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 47
  store %struct.stream_s* %5, %struct.stream_s** %strm1, align 8, !tbaa !70
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.then
  %7 = bitcast i64* %object_id1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NoEncrypt = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 120
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %NoEncrypt, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !102
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NoEncrypt2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 120
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %NoEncrypt2, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !103
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NoEncrypt3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 120
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %NoEncrypt3, i32 0, i32 1
  %13 = load i32, i32* %size4, align 4, !tbaa !102
  %14 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %14, i32 0, i32 1
  %data5 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %15 = load i8*, i8** %data5, align 8, !tbaa !99
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key6 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %16, i32 0, i32 1
  %size7 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key6, i32 0, i32 1
  %17 = load i32, i32* %size7, align 4, !tbaa !100
  %call = call i32 @bytes_compare(i8* %11, i32 %13, i8* %15, i32 %17) #5
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.cond
  %18 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %object_id1, align 8, !tbaa !58
  %19 = load i32, i32* %Element_Count, align 4, !tbaa !63
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %Element_Count, align 4, !tbaa !63
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 109
  %21 = load i32, i32* %PDFA, align 4, !tbaa !85
  %cmp9 = icmp ne i32 %21, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %22 = load i32, i32* %Element_Count, align 4, !tbaa !63
  %cmp10 = icmp sgt i32 %22, 4095
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 239
  %24 = load i32, i32* %PDFACompatibilityPolicy, align 4, !tbaa !86
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then.11
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %call12 = call i8* @gs_program_name() #5
  %call13 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %26, i8* %call12, i64 %call13) #5
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !87
  %call15 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.33, i32 0, i32 0)) #5
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX, align 4, !tbaa !88
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 109
  store i32 0, i32* %PDFA16, align 4, !tbaa !85
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.11
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !87
  %call19 = call i8* @gs_program_name() #5
  %call20 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %32, i8* %call19, i64 %call20) #5
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !87
  %call22 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %34, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.34, i32 0, i32 0)) #5
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX23, align 4, !tbaa !88
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 109
  store i32 0, i32* %PDFA24, align 4, !tbaa !85
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.11
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !87
  %call27 = call i8* @gs_program_name() #5
  %call28 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %38, i8* %call27, i64 %call28) #5
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !87
  %call30 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %40, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.35, i32 0, i32 0)) #5
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then.11
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !87
  %call32 = call i8* @gs_program_name() #5
  %call33 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %42, i8* %call32, i64 %call33) #5
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !87
  %call35 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %44, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.36, i32 0, i32 0)) #5
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX36, align 4, !tbaa !88
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 109
  store i32 0, i32* %PDFA37, align 4, !tbaa !85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %cond.end
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key38 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %48, i32 0, i32 1
  %data39 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key38, i32 0, i32 0
  %49 = load i8*, i8** %data39, align 8, !tbaa !99
  %50 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key40 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %50, i32 0, i32 1
  %size41 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key40, i32 0, i32 1
  %51 = load i32, i32* %size41, align 4, !tbaa !100
  %52 = load i64, i64* %object_id1, align 8, !tbaa !58
  %call42 = call i32 @pdf_write_value(%struct.gx_device_pdf_s* %47, i8* %49, i32 %51, i64 %52) #5
  %53 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %53, i32 0, i32 3
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %55 = load i64, i64* %object_id1, align 8, !tbaa !58
  %call43 = call i32 @cos_value_write_spaced(%struct.cos_value_s* %value, %struct.gx_device_pdf_s* %54, i32 1, i64 %55) #5
  %56 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %56, i32 0, i32 0
  %57 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %57, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %58 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.cos_dict_element_s* %58, null
  br i1 %tobool44, label %if.then.47, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end
  %59 = load i32, i32* %do_space.addr, align 4, !tbaa !63
  %tobool46 = icmp ne i32 %59, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false.45, %if.end
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call48 = call i32 @spputc(%struct.stream_s* %60, i8 zeroext 10) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %lor.lhs.false.45
  %61 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %tobool50 = icmp ne %struct.cos_dict_element_s* %61, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.51, %sw.bb.25
  %62 = bitcast i64* %object_id1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %63 = load %struct.stream_s*, %struct.stream_s** %save, align 8, !tbaa !1
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm53 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 47
  store %struct.stream_s* %63, %struct.stream_s** %strm53, align 8, !tbaa !70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %for.end, %cleanup
  %65 = bitcast %struct.stream_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.58 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.54
  br label %if.end.57

if.end.57:                                        ; preds = %cleanup.cont.56, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.57, %cleanup.54
  %66 = bitcast i32* %Element_Count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @cos_write_dict_as_ordered_array(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %d = alloca %struct.cos_dict_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %First = alloca %struct.cos_dict_element_s*, align 8
  %Last = alloca %struct.cos_dict_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !60
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cos_dict_s** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_dict_element_s** %First to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.cos_dict_element_s** %Last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 0
  %7 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %cmp = icmp ne %struct.cos_object_procs_s* %7, @cos_dict_procs
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %9 = bitcast %struct.cos_object_s* %8 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %9, %struct.cos_dict_s** %d, align 8, !tbaa !1
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 1
  %11 = load i64, i64* %id, align 8, !tbaa !61
  %cmp1 = icmp eq i64 %11, 0
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %12, i32 0, i32 8
  %13 = load i8, i8* %written, align 1, !tbaa !62
  %conv = zext i8 %13 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %lor.lhs.false
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %id4 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 1
  %16 = load i64, i64* %id4, align 8, !tbaa !61
  %17 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %14, i64 %16, i32 %17) #5
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 47
  %19 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %19, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %20, i32 0, i32 2
  %21 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %21, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool5 = icmp ne %struct.cos_dict_element_s* %22, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call7 = call i32 @stream_puts(%struct.stream_s* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call8 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %24, i32 %25) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.3
  %26 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d, align 8, !tbaa !1
  %call10 = call i32 @find_first_dict_entry(%struct.cos_dict_s* %26, %struct.cos_dict_element_s** %First) #5
  store i32 %call10, i32* %code, align 4, !tbaa !63
  %27 = load i32, i32* %code, align 4, !tbaa !63
  %cmp11 = icmp slt i32 %27, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call14 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %28, i32 %29) #5
  %30 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  %31 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d, align 8, !tbaa !1
  %call16 = call i32 @find_last_dict_entry(%struct.cos_dict_s* %31, %struct.cos_dict_element_s** %Last) #5
  store i32 %call16, i32* %code, align 4, !tbaa !63
  %32 = load i32, i32* %code, align 4, !tbaa !63
  %cmp17 = icmp slt i32 %32, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %34 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call20 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %33, i32 %34) #5
  %35 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call22 = call i32 @stream_puts(%struct.stream_s* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #5
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %call23 = call i32 @write_key_as_string(%struct.stream_s* %37, %struct.cos_dict_element_s* %38) #5
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call24 = call i32 @stream_puts(%struct.stream_s* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %call25 = call i32 @write_key_as_string(%struct.stream_s* %40, %struct.cos_dict_element_s* %41) #5
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call26 = call i32 @stream_puts(%struct.stream_s* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call27 = call i32 @stream_puts(%struct.stream_s* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.21
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @stream_puts(%struct.stream_s* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %call29 = call i32 @write_key_as_string(%struct.stream_s* %45, %struct.cos_dict_element_s* %46) #5
  %47 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %47, i32 0, i32 3
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call30 = call i32 @cos_value_write_spaced(%struct.cos_value_s* %value, %struct.gx_device_pdf_s* %48, i32 1, i64 -1) #5
  %49 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d, align 8, !tbaa !1
  %call31 = call i32 @find_next_dict_entry(%struct.cos_dict_s* %49, %struct.cos_dict_element_s** %First) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %50 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %tobool32 = icmp ne %struct.cos_dict_element_s* %50, null
  br i1 %tobool32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call33 = call i32 @stream_puts(%struct.stream_s* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #5
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %53 = load i32, i32* %type.addr, align 4, !tbaa !60
  %call34 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %52, i32 %53) #5
  %54 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %written35 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %54, i32 0, i32 8
  store i8 1, i8* %written35, align 1, !tbaa !62
  %55 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.19, %if.then.13, %if.then.6, %if.then.2, %if.then
  %56 = bitcast %struct.cos_dict_element_s** %Last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct.cos_dict_element_s** %First to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.cos_dict_s** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @find_first_dict_entry(%struct.cos_dict_s* %d, %struct.cos_dict_element_s** %element) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.cos_dict_s*, align 8
  %element.addr = alloca %struct.cos_dict_element_s**, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %First = alloca %struct.cos_dict_element_s*, align 8
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %length1 = alloca i32, align 4
  %length2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %d, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s** %element, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %First to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %8, align 8, !tbaa !1
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %9, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %10, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key2, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !100
  %sub = sub i32 %14, 1
  store i32 %sub, i32* %length1, align 4, !tbaa !63
  br label %if.end.14

if.else:                                          ; preds = %entry
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key3 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 1
  %data4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key3, i32 0, i32 0
  %16 = load i8*, i8** %data4, align 8, !tbaa !99
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx5, align 1, !tbaa !60
  %conv6 = zext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv6, 40
  br i1 %cmp7, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %18 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %key10 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %18, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key10, i32 0, i32 1
  %19 = load i32, i32* %size11, align 4, !tbaa !100
  %sub12 = sub i32 %19, 2
  store i32 %sub12, i32* %length1, align 4, !tbaa !63
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %20, i32 0, i32 0
  %21 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %21, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end.14
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %22, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key15 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %23, i32 0, i32 1
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key15, i32 0, i32 0
  %24 = load i8*, i8** %data16, align 8, !tbaa !99
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx17, align 1, !tbaa !60
  %conv18 = zext i8 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %while.body
  %26 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key22 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %26, i32 0, i32 1
  %size23 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key22, i32 0, i32 1
  %27 = load i32, i32* %size23, align 4, !tbaa !100
  %sub24 = sub i32 %27, 1
  store i32 %sub24, i32* %length2, align 4, !tbaa !63
  br label %if.end.38

if.else.25:                                       ; preds = %while.body
  %28 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key26 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %28, i32 0, i32 1
  %data27 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key26, i32 0, i32 0
  %29 = load i8*, i8** %data27, align 8, !tbaa !99
  %arrayidx28 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx28, align 1, !tbaa !60
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 40
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.else.25
  %31 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key33 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %31, i32 0, i32 1
  %size34 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key33, i32 0, i32 1
  %32 = load i32, i32* %size34, align 4, !tbaa !100
  %sub35 = sub i32 %32, 2
  store i32 %sub35, i32* %length2, align 4, !tbaa !63
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.25
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.21
  %33 = load i32, i32* %length2, align 4, !tbaa !63
  %34 = load i32, i32* %length1, align 4, !tbaa !63
  %cmp39 = icmp slt i32 %33, %34
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  %35 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %35, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  %36 = load i32, i32* %length1, align 4, !tbaa !63
  store i32 %36, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %37 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key44 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %37, i32 0, i32 1
  %data45 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key44, i32 0, i32 0
  %38 = load i8*, i8** %data45, align 8, !tbaa !99
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %key47 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %39, i32 0, i32 1
  %data48 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key47, i32 0, i32 0
  %40 = load i8*, i8** %data48, align 8, !tbaa !99
  %arrayidx49 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i32, i32* %length, align 4, !tbaa !63
  %conv50 = sext i32 %41 to i64
  %call = call i32 @strncmp(i8* %arrayidx46, i8* %arrayidx49, i64 %conv50) #6
  store i32 %call, i32* %code, align 4, !tbaa !63
  %42 = load i32, i32* %code, align 4, !tbaa !63
  %cmp51 = icmp eq i32 %42, 0
  br i1 %cmp51, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %if.end.43
  %43 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key54 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %43, i32 0, i32 1
  %size55 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key54, i32 0, i32 1
  %44 = load i32, i32* %size55, align 4, !tbaa !100
  %45 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %key56 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %45, i32 0, i32 1
  %size57 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key56, i32 0, i32 1
  %46 = load i32, i32* %size57, align 4, !tbaa !100
  %cmp58 = icmp ult i32 %44, %46
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.53
  %47 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %47, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %48 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %48, i32* %length1, align 4, !tbaa !63
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.53
  br label %if.end.67

if.else.62:                                       ; preds = %if.end.43
  %49 = load i32, i32* %code, align 4, !tbaa !63
  %cmp63 = icmp slt i32 %49, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else.62
  %50 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %50, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %51 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %51, i32* %length1, align 4, !tbaa !63
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.else.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.61
  %52 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next68 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %52, i32 0, i32 0
  %53 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next68, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %53, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %First, align 8, !tbaa !1
  %55 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %54, %struct.cos_dict_element_s** %55, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.36, %if.else.13
  %56 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.cos_dict_element_s** %First to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @find_last_dict_entry(%struct.cos_dict_s* %d, %struct.cos_dict_element_s** %element) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.cos_dict_s*, align 8
  %element.addr = alloca %struct.cos_dict_element_s**, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %Last = alloca %struct.cos_dict_element_s*, align 8
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %length1 = alloca i32, align 4
  %length2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %d, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s** %element, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %Last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %8, align 8, !tbaa !1
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %9, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %10, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key2, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !100
  %sub = sub i32 %14, 1
  store i32 %sub, i32* %length1, align 4, !tbaa !63
  br label %if.end.14

if.else:                                          ; preds = %entry
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key3 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 1
  %data4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key3, i32 0, i32 0
  %16 = load i8*, i8** %data4, align 8, !tbaa !99
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx5, align 1, !tbaa !60
  %conv6 = zext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv6, 40
  br i1 %cmp7, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %18 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %key10 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %18, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key10, i32 0, i32 1
  %19 = load i32, i32* %size11, align 4, !tbaa !100
  %sub12 = sub i32 %19, 2
  store i32 %sub12, i32* %length1, align 4, !tbaa !63
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %20, i32 0, i32 0
  %21 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %21, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end.14
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %22, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key15 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %23, i32 0, i32 1
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key15, i32 0, i32 0
  %24 = load i8*, i8** %data16, align 8, !tbaa !99
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx17, align 1, !tbaa !60
  %conv18 = zext i8 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %while.body
  %26 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key22 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %26, i32 0, i32 1
  %size23 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key22, i32 0, i32 1
  %27 = load i32, i32* %size23, align 4, !tbaa !100
  %sub24 = sub i32 %27, 1
  store i32 %sub24, i32* %length2, align 4, !tbaa !63
  br label %if.end.38

if.else.25:                                       ; preds = %while.body
  %28 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key26 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %28, i32 0, i32 1
  %data27 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key26, i32 0, i32 0
  %29 = load i8*, i8** %data27, align 8, !tbaa !99
  %arrayidx28 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx28, align 1, !tbaa !60
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 40
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.else.25
  %31 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key33 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %31, i32 0, i32 1
  %size34 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key33, i32 0, i32 1
  %32 = load i32, i32* %size34, align 4, !tbaa !100
  %sub35 = sub i32 %32, 2
  store i32 %sub35, i32* %length2, align 4, !tbaa !63
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.25
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.21
  %33 = load i32, i32* %length2, align 4, !tbaa !63
  %34 = load i32, i32* %length1, align 4, !tbaa !63
  %cmp39 = icmp slt i32 %33, %34
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  %35 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %35, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  %36 = load i32, i32* %length1, align 4, !tbaa !63
  store i32 %36, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %37 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key44 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %37, i32 0, i32 1
  %data45 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key44, i32 0, i32 0
  %38 = load i8*, i8** %data45, align 8, !tbaa !99
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %key47 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %39, i32 0, i32 1
  %data48 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key47, i32 0, i32 0
  %40 = load i8*, i8** %data48, align 8, !tbaa !99
  %arrayidx49 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i32, i32* %length, align 4, !tbaa !63
  %conv50 = sext i32 %41 to i64
  %call = call i32 @strncmp(i8* %arrayidx46, i8* %arrayidx49, i64 %conv50) #6
  store i32 %call, i32* %code, align 4, !tbaa !63
  %42 = load i32, i32* %code, align 4, !tbaa !63
  %cmp51 = icmp eq i32 %42, 0
  br i1 %cmp51, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %if.end.43
  %43 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key54 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %43, i32 0, i32 1
  %size55 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key54, i32 0, i32 1
  %44 = load i32, i32* %size55, align 4, !tbaa !100
  %45 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %key56 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %45, i32 0, i32 1
  %size57 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key56, i32 0, i32 1
  %46 = load i32, i32* %size57, align 4, !tbaa !100
  %cmp58 = icmp ugt i32 %44, %46
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.53
  %47 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %47, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %48 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %48, i32* %length1, align 4, !tbaa !63
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.53
  br label %if.end.67

if.else.62:                                       ; preds = %if.end.43
  %49 = load i32, i32* %code, align 4, !tbaa !63
  %cmp63 = icmp sgt i32 %49, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else.62
  %50 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %50, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %51 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %51, i32* %length1, align 4, !tbaa !63
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.else.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.61
  %52 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next68 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %52, i32 0, i32 0
  %53 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next68, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %53, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Last, align 8, !tbaa !1
  %55 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %54, %struct.cos_dict_element_s** %55, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.36, %if.else.13
  %56 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.cos_dict_element_s** %Last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @write_key_as_string(%struct.stream_s* %s, %struct.cos_dict_element_s* %element) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %element.addr = alloca %struct.cos_dict_element_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %element, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %0, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %3, i8 zeroext 40) #5
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %5, i32 0, i32 1
  %data3 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key2, i32 0, i32 0
  %6 = load i8*, i8** %data3, align 8, !tbaa !99
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %key5 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key5, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !100
  %sub = sub i32 %8, 1
  %call6 = call i32 @stream_write(%struct.stream_s* %4, i8* %arrayidx4, i32 %sub) #5
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @spputc(%struct.stream_s* %9, i8 zeroext 41) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %key8 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %11, i32 0, i32 1
  %data9 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key8, i32 0, i32 0
  %12 = load i8*, i8** %data9, align 8, !tbaa !99
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %element.addr, align 8, !tbaa !1
  %key10 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key10, i32 0, i32 1
  %14 = load i32, i32* %size11, align 4, !tbaa !100
  %call12 = call i32 @stream_write(%struct.stream_s* %10, i8* %12, i32 %14) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @find_next_dict_entry(%struct.cos_dict_s* %d, %struct.cos_dict_element_s** %element) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.cos_dict_s*, align 8
  %element.addr = alloca %struct.cos_dict_element_s**, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %Current = alloca %struct.cos_dict_element_s*, align 8
  %Next = alloca %struct.cos_dict_element_s*, align 8
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %length1 = alloca i32, align 4
  %length2 = alloca i32, align 4
  %length3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %d, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s** %element, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %d.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %Current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  %5 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %4, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %5, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %6 = bitcast %struct.cos_dict_element_s** %Next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %length3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !99
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv = zext i8 %14 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key2, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !100
  %sub = sub i32 %16, 1
  store i32 %sub, i32* %length1, align 4, !tbaa !63
  br label %if.end.14

if.else:                                          ; preds = %entry
  %17 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %key3 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %17, i32 0, i32 1
  %data4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key3, i32 0, i32 0
  %18 = load i8*, i8** %data4, align 8, !tbaa !99
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx5, align 1, !tbaa !60
  %conv6 = zext i8 %19 to i32
  %cmp7 = icmp eq i32 %conv6, 40
  br i1 %cmp7, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %key10 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %20, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key10, i32 0, i32 1
  %21 = load i32, i32* %size11, align 4, !tbaa !100
  %sub12 = sub i32 %21, 2
  store i32 %sub12, i32* %length1, align 4, !tbaa !63
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.133, %if.end.14
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %22, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key15 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %23, i32 0, i32 1
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key15, i32 0, i32 0
  %24 = load i8*, i8** %data16, align 8, !tbaa !99
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx17, align 1, !tbaa !60
  %conv18 = zext i8 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %while.body
  %26 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key22 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %26, i32 0, i32 1
  %size23 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key22, i32 0, i32 1
  %27 = load i32, i32* %size23, align 4, !tbaa !100
  %sub24 = sub i32 %27, 1
  store i32 %sub24, i32* %length2, align 4, !tbaa !63
  br label %if.end.38

if.else.25:                                       ; preds = %while.body
  %28 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key26 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %28, i32 0, i32 1
  %data27 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key26, i32 0, i32 0
  %29 = load i8*, i8** %data27, align 8, !tbaa !99
  %arrayidx28 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx28, align 1, !tbaa !60
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 40
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.else.25
  %31 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key33 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %31, i32 0, i32 1
  %size34 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key33, i32 0, i32 1
  %32 = load i32, i32* %size34, align 4, !tbaa !100
  %sub35 = sub i32 %32, 2
  store i32 %sub35, i32* %length2, align 4, !tbaa !63
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.25
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.21
  %33 = load i32, i32* %length2, align 4, !tbaa !63
  %34 = load i32, i32* %length1, align 4, !tbaa !63
  %cmp39 = icmp slt i32 %33, %34
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  %35 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %35, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  %36 = load i32, i32* %length1, align 4, !tbaa !63
  store i32 %36, i32* %length, align 4, !tbaa !63
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %37 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key44 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %37, i32 0, i32 1
  %data45 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key44, i32 0, i32 0
  %38 = load i8*, i8** %data45, align 8, !tbaa !99
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Current, align 8, !tbaa !1
  %key47 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %39, i32 0, i32 1
  %data48 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key47, i32 0, i32 0
  %40 = load i8*, i8** %data48, align 8, !tbaa !99
  %arrayidx49 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i32, i32* %length, align 4, !tbaa !63
  %conv50 = sext i32 %41 to i64
  %call = call i32 @strncmp(i8* %arrayidx46, i8* %arrayidx49, i64 %conv50) #6
  store i32 %call, i32* %code, align 4, !tbaa !63
  %42 = load i32, i32* %code, align 4, !tbaa !63
  %cmp51 = icmp sgt i32 %42, 0
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %43 = load i32, i32* %code, align 4, !tbaa !63
  %cmp53 = icmp eq i32 %43, 0
  br i1 %cmp53, label %land.lhs.true, label %if.end.133

land.lhs.true:                                    ; preds = %lor.lhs.false
  %44 = load i32, i32* %length2, align 4, !tbaa !63
  %45 = load i32, i32* %length1, align 4, !tbaa !63
  %cmp55 = icmp sgt i32 %44, %45
  br i1 %cmp55, label %if.then.57, label %if.end.133

if.then.57:                                       ; preds = %land.lhs.true, %if.end.43
  %46 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %tobool58 = icmp ne %struct.cos_dict_element_s* %46, null
  br i1 %tobool58, label %if.then.59, label %if.else.107

if.then.59:                                       ; preds = %if.then.57
  %47 = load i32, i32* %length3, align 4, !tbaa !63
  %48 = load i32, i32* %length2, align 4, !tbaa !63
  %cmp60 = icmp slt i32 %47, %48
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.59
  %49 = load i32, i32* %length3, align 4, !tbaa !63
  store i32 %49, i32* %length, align 4, !tbaa !63
  br label %if.end.64

if.else.63:                                       ; preds = %if.then.59
  %50 = load i32, i32* %length2, align 4, !tbaa !63
  store i32 %50, i32* %length, align 4, !tbaa !63
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  %51 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key65 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %51, i32 0, i32 1
  %data66 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key65, i32 0, i32 0
  %52 = load i8*, i8** %data66, align 8, !tbaa !99
  %arrayidx67 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %key68 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %53, i32 0, i32 1
  %data69 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key68, i32 0, i32 0
  %54 = load i8*, i8** %data69, align 8, !tbaa !99
  %arrayidx70 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i32, i32* %length, align 4, !tbaa !63
  %conv71 = sext i32 %55 to i64
  %call72 = call i32 @strncmp(i8* %arrayidx67, i8* %arrayidx70, i64 %conv71) #6
  store i32 %call72, i32* %code, align 4, !tbaa !63
  %56 = load i32, i32* %code, align 4, !tbaa !63
  %cmp73 = icmp slt i32 %56, 0
  br i1 %cmp73, label %if.then.81, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.end.64
  %57 = load i32, i32* %code, align 4, !tbaa !63
  %cmp76 = icmp eq i32 %57, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.106

land.lhs.true.78:                                 ; preds = %lor.lhs.false.75
  %58 = load i32, i32* %length3, align 4, !tbaa !63
  %59 = load i32, i32* %length2, align 4, !tbaa !63
  %cmp79 = icmp sgt i32 %58, %59
  br i1 %cmp79, label %if.then.81, label %if.end.106

if.then.81:                                       ; preds = %land.lhs.true.78, %if.end.64
  %60 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %60, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %61 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %key82 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %61, i32 0, i32 1
  %data83 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key82, i32 0, i32 0
  %62 = load i8*, i8** %data83, align 8, !tbaa !99
  %arrayidx84 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx84, align 1, !tbaa !60
  %conv85 = zext i8 %63 to i32
  %cmp86 = icmp eq i32 %conv85, 47
  br i1 %cmp86, label %if.then.88, label %if.else.92

if.then.88:                                       ; preds = %if.then.81
  %64 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key89 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %64, i32 0, i32 1
  %size90 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key89, i32 0, i32 1
  %65 = load i32, i32* %size90, align 4, !tbaa !100
  %sub91 = sub i32 %65, 1
  store i32 %sub91, i32* %length3, align 4, !tbaa !63
  br label %if.end.105

if.else.92:                                       ; preds = %if.then.81
  %66 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %key93 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %66, i32 0, i32 1
  %data94 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key93, i32 0, i32 0
  %67 = load i8*, i8** %data94, align 8, !tbaa !99
  %arrayidx95 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx95, align 1, !tbaa !60
  %conv96 = zext i8 %68 to i32
  %cmp97 = icmp eq i32 %conv96, 40
  br i1 %cmp97, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %if.else.92
  %69 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key100 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %69, i32 0, i32 1
  %size101 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key100, i32 0, i32 1
  %70 = load i32, i32* %size101, align 4, !tbaa !100
  %sub102 = sub i32 %70, 2
  store i32 %sub102, i32* %length3, align 4, !tbaa !63
  br label %if.end.104

if.else.103:                                      ; preds = %if.else.92
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %if.then.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.88
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true.78, %lor.lhs.false.75
  br label %if.end.132

if.else.107:                                      ; preds = %if.then.57
  %71 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %71, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %72 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %key108 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %72, i32 0, i32 1
  %data109 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key108, i32 0, i32 0
  %73 = load i8*, i8** %data109, align 8, !tbaa !99
  %arrayidx110 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx110, align 1, !tbaa !60
  %conv111 = zext i8 %74 to i32
  %cmp112 = icmp eq i32 %conv111, 47
  br i1 %cmp112, label %if.then.114, label %if.else.118

if.then.114:                                      ; preds = %if.else.107
  %75 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key115 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %75, i32 0, i32 1
  %size116 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key115, i32 0, i32 1
  %76 = load i32, i32* %size116, align 4, !tbaa !100
  %sub117 = sub i32 %76, 1
  store i32 %sub117, i32* %length3, align 4, !tbaa !63
  br label %if.end.131

if.else.118:                                      ; preds = %if.else.107
  %77 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %key119 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %77, i32 0, i32 1
  %data120 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key119, i32 0, i32 0
  %78 = load i8*, i8** %data120, align 8, !tbaa !99
  %arrayidx121 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx121, align 1, !tbaa !60
  %conv122 = zext i8 %79 to i32
  %cmp123 = icmp eq i32 %conv122, 40
  br i1 %cmp123, label %if.then.125, label %if.else.129

if.then.125:                                      ; preds = %if.else.118
  %80 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key126 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %80, i32 0, i32 1
  %size127 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key126, i32 0, i32 1
  %81 = load i32, i32* %size127, align 4, !tbaa !100
  %sub128 = sub i32 %81, 2
  store i32 %sub128, i32* %length3, align 4, !tbaa !63
  br label %if.end.130

if.else.129:                                      ; preds = %if.else.118
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.130:                                       ; preds = %if.then.125
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.114
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.106
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %land.lhs.true, %lor.lhs.false
  %82 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %82, i32 0, i32 0
  %83 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %83, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %84 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %Next, align 8, !tbaa !1
  %85 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %element.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %84, %struct.cos_dict_element_s** %85, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.129, %if.else.103, %if.else.36, %if.else.13
  %86 = bitcast i32* %length3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %length2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %length1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.cos_dict_element_s** %Next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.cos_dict_element_s** %Current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_objects_write(%struct.cos_dict_s* %pcd, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %4, i32 0, i32 3
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value, i32 0, i32 0
  %5 = load i32, i32* %value_type, align 4, !tbaa !67
  %cmp = icmp uge i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %6, i32 0, i32 3
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value1, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %7, i32 0, i32 1
  %8 = load i64, i64* %id, align 8, !tbaa !61
  %tobool2 = icmp ne i64 %8, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %9, i32 0, i32 3
  %contents5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value4, i32 0, i32 1
  %object6 = bitcast %union.vc_* %contents5 to %struct.cos_object_s**
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %object6, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 8
  %11 = load i8, i8* %written, align 1, !tbaa !62
  %tobool7 = icmp ne i8 %11, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 3
  %contents9 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value8, i32 0, i32 1
  %object10 = bitcast %union.vc_* %contents9 to %struct.cos_object_s**
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object10, align 8, !tbaa !1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_write_object(%struct.cos_object_s* %13, %struct.gx_device_pdf_s* %14, i32 5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 0
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %16, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_objects_delete(%struct.cos_dict_s* %pcd) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %pcde1 = alloca %struct.cos_dict_element_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %3, null
  br i1 %tobool, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %4, i32 0, i32 3
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.cos_object_s* %5, null
  br i1 %tobool1, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.body
  %6 = bitcast %struct.cos_dict_element_s** %pcde1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 0
  %8 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %8, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.cos_dict_element_s* %9, null
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %10, i32 0, i32 3
  %contents6 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value5, i32 0, i32 1
  %object7 = bitcast %union.vc_* %contents6 to %struct.cos_object_s**
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !1
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 3
  %contents9 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value8, i32 0, i32 1
  %object10 = bitcast %union.vc_* %contents9 to %struct.cos_object_s**
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object10, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_object_s* %11, %13
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.4
  %14 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %14, i32 0, i32 3
  %contents13 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value12, i32 0, i32 1
  %object14 = bitcast %union.vc_* %contents13 to %struct.cos_object_s**
  store %struct.cos_object_s* null, %struct.cos_object_s** %object14, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 0
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next15, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %16, %struct.cos_dict_element_s** %pcde1, align 8, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %17 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %17, i32 0, i32 3
  %contents17 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value16, i32 0, i32 1
  %object18 = bitcast %union.vc_* %contents17 to %struct.cos_object_s**
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object18, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %18, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !61
  %19 = bitcast %struct.cos_dict_element_s** %pcde1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %for.body
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %20, i32 0, i32 0
  %21 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next21, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %21, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %22 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call = call i32 @cos_dict_put_copy(%struct.cos_dict_s* %0, i8* %1, i32 %2, %struct.cos_value_s* %3, i32 7) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_put_copy(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size, %struct.cos_value_s* %pvalue, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %flags.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %ppcde = alloca %struct.cos_dict_element_s**, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %next = alloca %struct.cos_dict_element_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copied_key_data = alloca i8*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !63
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 0
  %2 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s*** %ppcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %4, i32 0, i32 2
  store %struct.cos_dict_element_s** %elements, %struct.cos_dict_element_s*** %ppcde, align 8, !tbaa !1
  %5 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %ppcde, align 8, !tbaa !1
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %9, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %10, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_dict_element_s* %10, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %11, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !99
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %key1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key1, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !100
  %15 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %call2 = call i32 @bytes_compare(i8* %12, i32 %14, i8* %15, i32 %16) #5
  %tobool = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %18, i32 0, i32 0
  store %struct.cos_dict_element_s** %next3, %struct.cos_dict_element_s*** %ppcde, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.cos_dict_element_s* %19, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %20 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %20, i32 0, i32 0
  %21 = load i32, i32* %value_type, align 4, !tbaa !67
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %22 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type6 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %22, i32 0, i32 0
  %23 = load i32, i32* %value_type6, align 4, !tbaa !67
  %cmp7 = icmp eq i32 %23, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %24 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type8 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %24, i32 0, i32 0
  %25 = load i32, i32* %value_type8, align 4, !tbaa !67
  %26 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %26, i32 0, i32 3
  %value_type10 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value9, i32 0, i32 0
  %27 = load i32, i32* %value_type10, align 4, !tbaa !104
  %cmp11 = icmp eq i32 %25, %27
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %28 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %28, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data13 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %29 = load i8*, i8** %data13, align 8, !tbaa !64
  %30 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents14 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %30, i32 0, i32 1
  %chars15 = bitcast %union.vc_* %contents14 to %struct.gs_string_s*
  %size16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars15, i32 0, i32 1
  %31 = load i32, i32* %size16, align 4, !tbaa !66
  %32 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %32, i32 0, i32 3
  %contents18 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value17, i32 0, i32 1
  %chars19 = bitcast %union.vc_* %contents18 to %struct.gs_string_s*
  %data20 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars19, i32 0, i32 0
  %33 = load i8*, i8** %data20, align 8, !tbaa !64
  %34 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %34, i32 0, i32 3
  %contents22 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value21, i32 0, i32 1
  %chars23 = bitcast %union.vc_* %contents22 to %struct.gs_string_s*
  %size24 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars23, i32 0, i32 1
  %35 = load i32, i32* %size24, align 4, !tbaa !66
  %call25 = call i32 @bytes_compare(i8* %29, i32 %31, i8* %33, i32 %35) #5
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true, %lor.lhs.false
  %36 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type28 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %36, i32 0, i32 0
  %37 = load i32, i32* %value_type28, align 4, !tbaa !67
  %cmp29 = icmp eq i32 %37, 2
  br i1 %cmp29, label %land.lhs.true.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end
  %38 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type31 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %38, i32 0, i32 0
  %39 = load i32, i32* %value_type31, align 4, !tbaa !67
  %cmp32 = icmp eq i32 %39, 3
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.45

land.lhs.true.33:                                 ; preds = %lor.lhs.false.30, %if.end
  %40 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %value_type34 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %40, i32 0, i32 0
  %41 = load i32, i32* %value_type34, align 4, !tbaa !67
  %42 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %42, i32 0, i32 3
  %value_type36 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value35, i32 0, i32 0
  %43 = load i32, i32* %value_type36, align 4, !tbaa !104
  %cmp37 = icmp eq i32 %41, %43
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.45

land.lhs.true.38:                                 ; preds = %land.lhs.true.33
  %44 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %contents39 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %44, i32 0, i32 1
  %object = bitcast %union.vc_* %contents39 to %struct.cos_object_s**
  %45 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %46 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %46, i32 0, i32 3
  %contents41 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value40, i32 0, i32 1
  %object42 = bitcast %union.vc_* %contents41 to %struct.cos_object_s**
  %47 = load %struct.cos_object_s*, %struct.cos_object_s** %object42, align 8, !tbaa !1
  %cmp43 = icmp eq %struct.cos_object_s* %45, %47
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.45:                                        ; preds = %land.lhs.true.38, %land.lhs.true.33, %lor.lhs.false.30
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %49 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %50 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and = and i32 %50, 2
  %cmp46 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp46 to i32
  %call47 = call i32 @cos_copy_element_value(%struct.cos_value_s* %value, %struct.gs_memory_s* %48, %struct.cos_value_s* %49, i32 %conv) #5
  store i32 %call47, i32* %code, align 4, !tbaa !63
  %51 = load i32, i32* %code, align 4, !tbaa !63
  %cmp48 = icmp slt i32 %51, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.45
  %52 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.51:                                        ; preds = %if.end.45
  %53 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and52 = and i32 %53, 4
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %55 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %56 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  call void @gs_free_const_string(%struct.gs_memory_s* %54, i8* %55, i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0)) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %57 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %value56 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %57, i32 0, i32 3
  %58 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs57 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %58, i32 0, i32 0
  %59 = bitcast %struct.cos_object_procs_s** %cos_procs57 to %struct.cos_object_s*
  call void @cos_value_free(%struct.cos_value_s* %value56, %struct.cos_object_s* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0)) #5
  %60 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %60, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %if.end.106

if.else:                                          ; preds = %while.end
  %61 = bitcast i8** %copied_key_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and58 = and i32 %62, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.68

if.then.60:                                       ; preds = %if.else
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %64 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !94
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %66 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %call61 = call i8* %64(%struct.gs_memory_s* %65, i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0)) #5
  store i8* %call61, i8** %copied_key_data, align 8, !tbaa !1
  %67 = load i8*, i8** %copied_key_data, align 8, !tbaa !1
  %cmp62 = icmp eq i8* %67, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.60
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.then.60
  %68 = load i8*, i8** %copied_key_data, align 8, !tbaa !1
  %69 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %70 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %conv66 = zext i32 %70 to i64
  %call67 = call i8* @memcpy(i8* %68, i8* %69, i64 %conv66) #7
  br label %if.end.69

if.else.68:                                       ; preds = %if.else
  %71 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  store i8* %71, i8** %copied_key_data, align 8, !tbaa !1
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.65
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 8
  %73 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call71 = call i8* %73(%struct.gs_memory_s* %74, %struct.gs_memory_struct_type_s* @st_cos_dict_element, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0)) #5
  %75 = bitcast i8* %call71 to %struct.cos_dict_element_s*
  store %struct.cos_dict_element_s* %75, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %77 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %78 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and72 = and i32 %78, 2
  %cmp73 = icmp ne i32 %and72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @cos_copy_element_value(%struct.cos_value_s* %value, %struct.gs_memory_s* %76, %struct.cos_value_s* %77, i32 %conv74) #5
  store i32 %call75, i32* %code, align 4, !tbaa !63
  %79 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %cmp76 = icmp eq %struct.cos_dict_element_s* %79, null
  br i1 %cmp76, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.69
  %80 = load i32, i32* %code, align 4, !tbaa !63
  %cmp79 = icmp slt i32 %80, 0
  br i1 %cmp79, label %if.then.81, label %if.end.97

if.then.81:                                       ; preds = %lor.lhs.false.78, %if.end.69
  %81 = load i32, i32* %code, align 4, !tbaa !63
  %cmp82 = icmp sge i32 %81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.then.81
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %83 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and85 = and i32 %83, 2
  %cmp86 = icmp ne i32 %and85, 0
  %conv87 = zext i1 %cmp86 to i32
  call void @cos_uncopy_element_value(%struct.cos_value_s* %value, %struct.gs_memory_s* %82, i32 %conv87) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.then.81
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs89, i32 0, i32 2
  %85 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %87 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %88 = bitcast %struct.cos_dict_element_s* %87 to i8*
  call void %85(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0)) #5
  %89 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and90 = and i32 %89, 1
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.88
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 19
  %91 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !69
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %93 = load i8*, i8** %copied_key_data, align 8, !tbaa !1
  %94 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  call void %91(%struct.gs_memory_s* %92, i8* %93, i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0)) #5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.88
  %95 = load i32, i32* %code, align 4, !tbaa !63
  %cmp95 = icmp slt i32 %95, 0
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.94
  %96 = load i32, i32* %code, align 4, !tbaa !63
  br label %cond.end

cond.false:                                       ; preds = %if.end.94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %96, %cond.true ], [ -25, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %lor.lhs.false.78
  %97 = load i8*, i8** %copied_key_data, align 8, !tbaa !1
  %98 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key98 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %98, i32 0, i32 1
  %data99 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key98, i32 0, i32 0
  store i8* %97, i8** %data99, align 8, !tbaa !99
  %99 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %100 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key100 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %100, i32 0, i32 1
  %size101 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key100, i32 0, i32 1
  store i32 %99, i32* %size101, align 4, !tbaa !100
  %101 = load i32, i32* %flags.addr, align 4, !tbaa !63
  %and102 = and i32 %101, 4
  %cmp103 = icmp ne i32 %and102, 0
  %conv104 = zext i1 %cmp103 to i32
  %102 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %owns_key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %102, i32 0, i32 2
  store i32 %conv104, i32* %owns_key, align 4, !tbaa !105
  %103 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %104 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next105 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %104, i32 0, i32 0
  store %struct.cos_dict_element_s* %103, %struct.cos_dict_element_s** %next105, align 8, !tbaa !97
  %105 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %106 = load %struct.cos_dict_element_s**, %struct.cos_dict_element_s*** %ppcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %105, %struct.cos_dict_element_s** %106, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.97, %cond.end, %if.then.64
  %107 = bitcast i8** %copied_key_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.108 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.106

if.end.106:                                       ; preds = %cleanup.cont, %if.end.55
  %108 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value107 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %108, i32 0, i32 3
  %109 = bitcast %struct.cos_value_s* %value107 to i8*
  %110 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 24, i32 8, i1 false), !tbaa.struct !93
  %111 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %111, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !106
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.106, %cleanup, %if.then.50, %if.then.44, %if.then.27
  %112 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %113) #1
  %114 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.cos_dict_element_s*** %ppcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_no_copy(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call = call i32 @cos_dict_put_copy(%struct.cos_dict_s* %0, i8* %1, i32 %2, %struct.cos_value_s* %3, i32 5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key(%struct.cos_dict_s* %pcd, i8* %key, %struct.cos_value_s* %pvalue) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_dict_put_copy(%struct.cos_dict_s* %0, i8* %1, i32 %conv, %struct.cos_value_s* %3, i32 2) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %pcd, i8* %key, i8* %data, i32 %size) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %value = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !63
  %call = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %1, i32 %2) #5
  %3 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %3, i8* %4, %struct.cos_value_s* %value) #5
  %5 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %pcd, i8* %key, i32 %value) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %str = alloca [13 x i8], align 1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !63
  %0 = bitcast [13 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 13, i8* %0) #1
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %1 = load i32, i32* %value.addr, align 4, !tbaa !63
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %1) #5
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [13 x i8], [13 x i8]* %str, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %2, i8* %3, i8* %arraydecay1, i32 %conv) #5
  %4 = bitcast [13 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 13, i8* %4) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %pcd, i8* %key, i32 %value) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !63
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i32, i32* %value.addr, align 4, !tbaa !63
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)
  %3 = load i32, i32* %value.addr, align 4, !tbaa !63
  %tobool1 = icmp ne i32 %3, 0
  %cond2 = select i1 %tobool1, i32 4, i32 5
  %call = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %0, i8* %1, i8* %cond, i32 %cond2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %pcd, i8* %key, double %value) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca double, align 8
  %str = alloca [50 x i8], align 16
  %s = alloca %struct.stream_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store double %value, double* %value.addr, align 8, !tbaa !92
  %0 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 50, i8* %0) #1
  %1 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #5
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay, i32 50) #5
  %2 = load double, double* %value.addr, align 8, !tbaa !92
  %call = call i8* @pprintg1(%struct.stream_s* %s, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %2) #5
  %3 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  %call2 = call i64 @stell(%struct.stream_s* %s) #5
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %3, i8* %4, i8* %arraydecay1, i32 %conv) #5
  %5 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %5) #1
  %6 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 50, i8* %6) #1
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %pcd, i8* %key, float* %pf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pf.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store float* %pf, float** %pf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !107
  %3 = load float*, float** %pf.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !63
  %call = call %struct.cos_array_s* @cos_array_from_floats(%struct.gx_device_pdf_s* %2, float* %3, i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #5
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %9, i32 0, i32 0
  %10 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call1 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %7, i8* %8, %struct.cos_object_s* %10) #5
  store i32 %call1, i32* %code, align 4, !tbaa !63
  %11 = load i32, i32* %code, align 4, !tbaa !63
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs4 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %12, i32 0, i32 0
  %13 = bitcast %struct.cos_object_procs_s** %cos_procs4 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %pcd, i8* %key, %struct.cos_object_s* %pco) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %3) #5
  %call1 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %1, i8* %2, %struct.cos_value_s* %call) #5
  %4 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_string(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size, i8* %value_data, i32 %value_size) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %value_data.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %cvalue = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  store i8* %value_data, i8** %value_data.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.cos_value_s* %cvalue to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %4 = load i8*, i8** %value_data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %value_size.addr, align 4, !tbaa !63
  %call = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %cvalue, i8* %4, i32 %5) #5
  %call1 = call i32 @cos_dict_put(%struct.cos_dict_s* %1, i8* %2, i32 %3, %struct.cos_value_s* %call) #5
  %6 = bitcast %struct.cos_value_s* %cvalue to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %pcd, i8* %key, i8* %value) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #6
  %conv = trunc i64 %call to i32
  %call1 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %0, i8* %1, i8* %2, i32 %conv) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %pcd, i8* %key, i8* %value) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %cvalue = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %cvalue to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %cvalue, i8* %3) #5
  %call1 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %1, i8* %2, %struct.cos_value_s* %call) #5
  %4 = bitcast %struct.cos_value_s* %cvalue to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_move_all(%struct.cos_dict_s* %pcdto, %struct.cos_dict_s* %pcdfrom) #0 {
entry:
  %pcdto.addr = alloca %struct.cos_dict_s*, align 8
  %pcdfrom.addr = alloca %struct.cos_dict_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %head = alloca %struct.cos_dict_element_s*, align 8
  %next = alloca %struct.cos_dict_element_s*, align 8
  store %struct.cos_dict_s* %pcdto, %struct.cos_dict_s** %pcdto.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcdfrom, %struct.cos_dict_s** %pcdfrom.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdfrom.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_element_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdto.addr, align 8, !tbaa !1
  %elements1 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %4, i32 0, i32 2
  %5 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements1, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %5, %struct.cos_dict_element_s** %head, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %8, i32 0, i32 0
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next2, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %9, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdto.addr, align 8, !tbaa !1
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %11, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !99
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key3 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key3, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !100
  %call = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %10, i8* %12, i32 %14) #5
  %tobool4 = icmp ne %struct.cos_value_s* %call, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %15 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdfrom.addr, align 8, !tbaa !1
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  call void @cos_dict_element_free(%struct.cos_dict_s* %15, %struct.cos_dict_element_s* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %if.end

if.else:                                          ; preds = %while.body
  %17 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %head, align 8, !tbaa !1
  %18 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %18, i32 0, i32 0
  store %struct.cos_dict_element_s* %17, %struct.cos_dict_element_s** %next5, align 8, !tbaa !97
  %19 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %19, %struct.cos_dict_element_s** %head, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %20, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %21 = bitcast %struct.cos_dict_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %head, align 8, !tbaa !1
  %23 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdto.addr, align 8, !tbaa !1
  %elements6 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %23, i32 0, i32 2
  store %struct.cos_dict_element_s* %22, %struct.cos_dict_element_s** %elements6, align 8, !tbaa !95
  %24 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdfrom.addr, align 8, !tbaa !1
  %elements7 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %24, i32 0, i32 2
  store %struct.cos_dict_element_s* null, %struct.cos_dict_element_s** %elements7, align 8, !tbaa !95
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcdto.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %25, i32 0, i32 12
  store i32 0, i32* %md5_valid, align 4, !tbaa !106
  %26 = bitcast %struct.cos_dict_element_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %pcd, i8* %key_data, i32 %key_size) #0 {
entry:
  %retval = alloca %struct.cos_value_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %key_size.addr, align 4, !tbaa !63
  %6 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %6, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !99
  %8 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %8, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key1, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !100
  %call = call i32 @bytes_compare(i8* %4, i32 %5, i8* %7, i32 %9) #5
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %10, i32 0, i32 3
  store %struct.cos_value_s* %value, %struct.cos_value_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %11, i32 0, i32 0
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %12, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.cos_value_s* null, %struct.cos_value_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load %struct.cos_value_s*, %struct.cos_value_s** %retval
  ret %struct.cos_value_s* %14
}

; Function Attrs: nounwind uwtable
define internal void @cos_dict_element_free(%struct.cos_dict_s* %pcd, %struct.cos_dict_element_s* %pcde, i8* %cname) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pcde.addr = alloca %struct.cos_dict_element_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.cos_dict_element_s* %pcde, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 0
  %2 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %2) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %3, i32 0, i32 3
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs1 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %4, i32 0, i32 0
  %5 = bitcast %struct.cos_object_procs_s** %cos_procs1 to %struct.cos_object_s*
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_value_free(%struct.cos_value_s* %value, %struct.cos_object_s* %5, i8* %6) #5
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %owns_key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 2
  %8 = load i32, i32* %owns_key, align 4, !tbaa !105
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %10 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !69
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %12, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !99
  %14 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %key2 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %14, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key2, i32 0, i32 1
  %15 = load i32, i32* %size, align 4, !tbaa !100
  %16 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %10(%struct.gs_memory_s* %11, i8* %13, i32 %15, i8* %16) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde.addr, align 8, !tbaa !1
  %21 = bitcast %struct.cos_dict_element_s* %20 to i8*
  %22 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* %22) #5
  %23 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %pcd, i8* %key) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %call1 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %0, i8* %1, i32 %conv) #5
  ret %struct.cos_value_s* %call1
}

; Function Attrs: nounwind uwtable
define i32 @cos_dict_forall(%struct.cos_dict_s* %pcd, i8* %client_data, i32 (i8*, i8*, i32, %struct.cos_value_s*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %client_data.addr = alloca i8*, align 8
  %proc.addr = alloca i32 (i8*, i8*, i32, %struct.cos_value_s*)*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32, %struct.cos_value_s*)* %proc, i32 (i8*, i8*, i32, %struct.cos_value_s*)** %proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 2
  %2 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !95
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_element_s* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32 (i8*, i8*, i32, %struct.cos_value_s*)*, i32 (i8*, i8*, i32, %struct.cos_value_s*)** %proc.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !99
  %9 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key1 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %9, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key1, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !100
  %11 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %11, i32 0, i32 3
  %call = call i32 %5(i8* %6, i8* %8, i32 %10, %struct.cos_value_s* %value) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %12 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 0
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %next, align 8, !tbaa !97
  store %struct.cos_dict_element_s* %16, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2

cleanup.2:                                        ; preds = %for.end, %cleanup
  %17 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @cos_param_list_writer_init(%struct.cos_param_list_writer_s* %pclist, %struct.cos_dict_s* %pcd, i32 %print_ok) #0 {
entry:
  %pclist.addr = alloca %struct.cos_param_list_writer_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %print_ok.addr = alloca i32, align 4
  store %struct.cos_param_list_writer_s* %pclist, %struct.cos_param_list_writer_s** %pclist.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i32 %print_ok, i32* %print_ok.addr, align 4, !tbaa !63
  %0 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist.addr, align 8, !tbaa !1
  %1 = bitcast %struct.cos_param_list_writer_s* %0 to %struct.gs_param_list_s*
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %2, i32 0, i32 0
  %3 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %3) #5
  call void @gs_param_list_init(%struct.gs_param_list_s* %1, %struct.gs_param_list_procs_s* @cos_param_list_writer_procs, %struct.gs_memory_s* %call) #5
  %4 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %5 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist.addr, align 8, !tbaa !1
  %pcd1 = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %5, i32 0, i32 3
  store %struct.cos_dict_s* %4, %struct.cos_dict_s** %pcd1, align 8, !tbaa !108
  %6 = load i32, i32* %print_ok.addr, align 4, !tbaa !63
  %7 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist.addr, align 8, !tbaa !1
  %print_ok2 = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %7, i32 0, i32 4
  store i32 %6, i32* %print_ok2, align 4, !tbaa !110
  ret i32 0
}

declare void @gs_param_list_init(%struct.gs_param_list_s*, %struct.gs_param_list_procs_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cos_stream_release(%struct.cos_object_s* %pco, i8* %cname) #0 {
entry:
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %cur = alloca %struct.cos_stream_piece_s*, align 8
  %next = alloca %struct.cos_stream_piece_s*, align 8
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %1) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %2 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %4 = bitcast %struct.cos_object_s* %3 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %4, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %5 = bitcast %struct.cos_stream_piece_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_stream_piece_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %7, i32 0, i32 3
  %8 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !111
  store %struct.cos_stream_piece_s* %8, %struct.cos_stream_piece_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %cur, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_stream_piece_s* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %cur, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %10, i32 0, i32 0
  %11 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next1, align 8, !tbaa !113
  store %struct.cos_stream_piece_s* %11, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %cur, align 8, !tbaa !1
  %16 = bitcast %struct.cos_stream_piece_s* %15 to i8*
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* %17) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %18, %struct.cos_stream_piece_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pieces2 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %19, i32 0, i32 3
  store %struct.cos_stream_piece_s* null, %struct.cos_stream_piece_s** %pieces2, align 8, !tbaa !111
  %20 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @cos_dict_release(%struct.cos_object_s* %20, i8* %21) #5
  %22 = bitcast %struct.cos_stream_piece_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.cos_stream_piece_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_stream_write(%struct.cos_object_s* %pco, %struct.gx_device_pdf_s* %pdev, i64 %object_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pco.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %object_id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %s1 = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cos_object_s* %4 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %5, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %input_strm = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %7, i32 0, i32 10
  %8 = load %struct.stream_s*, %struct.stream_s** %input_strm, align 8, !tbaa !115
  %cmp = icmp ne %struct.stream_s* %8, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.stream_s** %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %input_strm2 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 10
  %11 = load %struct.stream_s*, %struct.stream_s** %input_strm2, align 8, !tbaa !78
  store %struct.stream_s* %11, %struct.stream_s** %s1, align 8, !tbaa !1
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %call = call i32 @s_close_filters(%struct.stream_s** %s1, %struct.stream_s* null) #5
  store i32 %call, i32* %status, align 4, !tbaa !63
  %13 = load i32, i32* %status, align 4, !tbaa !63
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.cos_object_s*, %struct.cos_object_s** %pco.addr, align 8, !tbaa !1
  %input_strm5 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %14, i32 0, i32 10
  store %struct.stream_s* null, %struct.stream_s** %input_strm5, align 8, !tbaa !78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.stream_s** %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call8 = call i32 @stream_puts(%struct.stream_s* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #5
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %19, i32 0, i32 2
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !116
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = load i64, i64* %object_id.addr, align 8, !tbaa !58
  %call9 = call i32 @cos_elements_write(%struct.stream_s* %18, %struct.cos_dict_element_s* %20, %struct.gx_device_pdf_s* %21, i32 0, i64 %22) #5
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %24 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call10 = call i64 @cos_stream_length(%struct.cos_stream_s* %24) #5
  %call11 = call i8* @pprintld1(%struct.stream_s* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), i64 %call10) #5
  %25 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call12 = call i32 @cos_stream_contents_write(%struct.cos_stream_s* %25, %struct.gx_device_pdf_s* %26) #5
  store i32 %call12, i32* %code, align 4, !tbaa !63
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call13 = call i32 @stream_puts(%struct.stream_s* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0)) #5
  %28 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

cleanup.14:                                       ; preds = %if.end.7, %cleanup
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_stream_equal(%struct.cos_object_s* %pco0, %struct.cos_object_s* %pco1, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %pco1.addr = alloca %struct.cos_object_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs0 = alloca %struct.cos_stream_s*, align 8
  %pcs1 = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %md5 = alloca %struct.gs_md5_state_s, align 4
  %hash = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.cos_object_s* %pco1, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_stream_s** %pcs0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %2, %struct.cos_stream_s** %pcs0, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %pcs1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cos_object_s* %4 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %5, %struct.cos_stream_s** %pcs1, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %7) #1
  %8 = bitcast [16 x i8]* %hash to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %stream_md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 14
  %10 = load i32, i32* %stream_md5_valid, align 4, !tbaa !80
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.2, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_stream_hash(%struct.cos_object_s* %11, %struct.gs_md5_state_s* %md5, i8* %arraydecay, %struct.gx_device_pdf_s* %12) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %13 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %14 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %stream_md5_valid3 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %14, i32 0, i32 14
  %15 = load i32, i32* %stream_md5_valid3, align 4, !tbaa !80
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.end.11, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call7 = call i32 @cos_stream_hash(%struct.cos_object_s* %16, %struct.gs_md5_state_s* %md5, i8* %arraydecay6, %struct.gx_device_pdf_s* %17) #5
  store i32 %call7, i32* %code, align 4, !tbaa !63
  %18 = load i32, i32* %code, align 4, !tbaa !63
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.2
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs0, align 8, !tbaa !1
  %stream_hash = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %19, i32 0, i32 15
  %20 = bitcast [16 x i8]* %stream_hash to i8*
  %21 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs1, align 8, !tbaa !1
  %stream_hash12 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %21, i32 0, i32 15
  %22 = bitcast [16 x i8]* %stream_hash12 to i8*
  %call13 = call i32 @memcmp(i8* %20, i8* %22, i64 16) #6
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call17 = call i32 @cos_dict_equal(%struct.cos_object_s* %23, %struct.cos_object_s* %24, %struct.gx_device_pdf_s* %25) #5
  store i32 %call17, i32* %code, align 4, !tbaa !63
  %26 = load i32, i32* %code, align 4, !tbaa !63
  %cmp18 = icmp slt i32 %26, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %27 = load i32, i32* %code, align 4, !tbaa !63
  %tobool21 = icmp ne i32 %27, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.19, %if.then.15, %if.then.9, %if.then.1
  %28 = bitcast [16 x i8]* %hash to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %29 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.cos_stream_s** %pcs1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.cos_stream_s** %pcs0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_stream_hash(%struct.cos_object_s* %pco0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs0 = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_stream_s** %pcs0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %2, %struct.cos_stream_s** %pcs0, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !63
  %4 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %stream_md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %4, i32 0, i32 14
  %5 = load i32, i32* %stream_md5_valid, align 4, !tbaa !80
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md51 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %7, i32 0, i32 11
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %stream_hash = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %8, i32 0, i32 15
  %9 = bitcast [16 x i8]* %stream_hash to i8*
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @hash_cos_stream(%struct.cos_object_s* %6, %struct.gs_md5_state_s* %md51, i8* %9, %struct.gx_device_pdf_s* %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %11 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs0, align 8, !tbaa !1
  %stream_md5_valid3 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %13, i32 0, i32 14
  store i32 1, i32* %stream_md5_valid3, align 4, !tbaa !117
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %14 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %stream_hash5 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 15
  %16 = bitcast [16 x i8]* %stream_hash5 to i8*
  call void @gs_md5_append(%struct.gs_md5_state_s* %14, i8* %16, i32 16) #5
  %17 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md5_valid = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %17, i32 0, i32 12
  %18 = load i32, i32* %md5_valid, align 4, !tbaa !79
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.end.19, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %19 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md58 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %19, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md58) #5
  %20 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %21 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md59 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %21, i32 0, i32 11
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash10 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %22, i32 0, i32 13
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash10, i32 0, i32 0
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call11 = call i32 @cos_dict_hash(%struct.cos_object_s* %20, %struct.gs_md5_state_s* %md59, i8* %arraydecay, %struct.gx_device_pdf_s* %23) #5
  store i32 %call11, i32* %code, align 4, !tbaa !63
  %24 = load i32, i32* %code, align 4, !tbaa !63
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  %25 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.7
  %26 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %md515 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %26, i32 0, i32 11
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash16 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %27, i32 0, i32 13
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %hash16, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md515, i8* %arraydecay17) #5
  %28 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs0, align 8, !tbaa !1
  %md5_valid18 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %28, i32 0, i32 12
  store i32 1, i32* %md5_valid18, align 4, !tbaa !118
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %if.end.4
  %29 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %30 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %hash20 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %30, i32 0, i32 13
  %31 = bitcast [16 x i8]* %hash20 to i8*
  call void @gs_md5_append(%struct.gs_md5_state_s* %29, i8* %31, i32 16) #5
  %32 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.13, %if.then.2
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.cos_stream_s** %pcs0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_cos_object, i8* %7) #5
  %8 = bitcast i8* %call to %struct.cos_stream_s*
  store %struct.cos_stream_s* %8, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %9 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %10 = bitcast %struct.cos_stream_s* %9 to %struct.cos_object_s*
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @cos_object_init(%struct.cos_object_s* %10, %struct.gx_device_pdf_s* %11, %struct.cos_object_procs_s* @cos_stream_procs) #5
  %12 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %13 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.cos_stream_s* %12
}

; Function Attrs: nounwind uwtable
define i64 @cos_stream_length(%struct.cos_stream_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %0, i32 0, i32 9
  %1 = load i64, i64* %length, align 8, !tbaa !119
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i32 @cos_stream_elements_write(%struct.cos_stream_s* %pcs, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 47
  %1 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  %2 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %2, i32 0, i32 2
  %3 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !116
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %5, i32 0, i32 1
  %6 = load i64, i64* %id, align 8, !tbaa !120
  %call = call i32 @cos_elements_write(%struct.stream_s* %1, %struct.cos_dict_element_s* %3, %struct.gx_device_pdf_s* %4, i32 1, i64 %6) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cos_stream_contents_write(%struct.cos_stream_s* %pcs, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pcsp = alloca %struct.cos_stream_piece_s*, align 8
  %last = alloca %struct.cos_stream_piece_s*, align 8
  %next = alloca %struct.cos_stream_piece_s*, align 8
  %sfile = alloca %struct._IO_FILE*, align 8
  %end_pos = alloca i64, align 8
  %same_file = alloca i32, align 4
  %code = alloca i32, align 4
  %sarc4 = alloca %struct.stream_arcfour_state_s, align 8
  %ss = alloca %struct.stream_arcfour_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_stream_piece_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.cos_stream_piece_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 146
  %file = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !121
  store %struct._IO_FILE* %8, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %9 = bitcast i64* %end_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %same_file to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 199
  %12 = load i32, i32* %sbstack_depth, align 4, !tbaa !122
  %cmp = icmp sgt i32 %12, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %same_file, align 4, !tbaa !63
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.stream_arcfour_state_s* %sarc4 to i8*
  call void @llvm.lifetime.start(i64 376, i8* %14) #1
  %15 = bitcast %struct.stream_arcfour_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.stream_arcfour_state_s* null, %struct.stream_arcfour_state_s** %ss, align 8, !tbaa !1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %KeyLength = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 117
  %17 = load i32, i32* %KeyLength, align 4, !tbaa !123
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %19, i32 0, i32 1
  %20 = load i64, i64* %id, align 8, !tbaa !120
  %call = call i32 @pdf_encrypt_init(%struct.gx_device_pdf_s* %18, i64 %20, %struct.stream_arcfour_state_s* %sarc4) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %21 = load i32, i32* %code, align 4, !tbaa !63
  %cmp1 = icmp slt i32 %21, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store %struct.stream_arcfour_state_s* %sarc4, %struct.stream_arcfour_state_s** %ss, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %24 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !124
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call5 = call i32 %24(%struct.stream_s* %25) #5
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 146
  %strm7 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams6, i32 0, i32 2
  %27 = load %struct.stream_s*, %struct.stream_s** %strm7, align 8, !tbaa !127
  %procs8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 14
  %flush9 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs8, i32 0, i32 3
  %28 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush9, align 8, !tbaa !124
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 146
  %strm11 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams10, i32 0, i32 2
  %30 = load %struct.stream_s*, %struct.stream_s** %strm11, align 8, !tbaa !127
  %call12 = call i32 %28(%struct.stream_s* %30) #5
  %31 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %31, i32 0, i32 3
  %32 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !111
  store %struct.cos_stream_piece_s* %32, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* null, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %33 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %tobool13 = icmp ne %struct.cos_stream_piece_s* %33, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next14 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %34, i32 0, i32 0
  %35 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next14, align 8, !tbaa !113
  store %struct.cos_stream_piece_s* %35, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  %36 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  %37 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %37, i32 0, i32 0
  store %struct.cos_stream_piece_s* %36, %struct.cos_stream_piece_s** %next15, align 8, !tbaa !113
  %38 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %38, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %39, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %40, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  store i32 0, i32* %code, align 4, !tbaa !63
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.31, %for.end
  %41 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %tobool17 = icmp ne %struct.cos_stream_piece_s* %41, null
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.16
  %42 = load i32, i32* %code, align 4, !tbaa !63
  %cmp18 = icmp sge i32 %42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.16
  %43 = phi i1 [ false, %for.cond.16 ], [ %cmp18, %land.rhs ]
  br i1 %43, label %for.body.20, label %for.end.33

for.body.20:                                      ; preds = %land.end
  %44 = load i32, i32* %same_file, align 4, !tbaa !63
  %tobool21 = icmp ne i32 %44, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.body.20
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %47 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %47, i32 0, i32 1
  %48 = load i64, i64* %position, align 8, !tbaa !128
  %49 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %49, i32 0, i32 2
  %50 = load i32, i32* %size, align 4, !tbaa !129
  %conv23 = zext i32 %50 to i64
  call void @pdf_copy_data_safe(%struct.stream_s* %45, %struct._IO_FILE* %46, i64 %48, i64 %conv23) #5
  br label %if.end.30

if.else:                                          ; preds = %for.body.20
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %call24 = call i64 @gp_ftell_64(%struct._IO_FILE* %51) #5
  store i64 %call24, i64* %end_pos, align 8, !tbaa !58
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %53 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %position25 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %53, i32 0, i32 1
  %54 = load i64, i64* %position25, align 8, !tbaa !128
  %call26 = call i32 @gp_fseek_64(%struct._IO_FILE* %52, i64 %54, i32 0) #5
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %57 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size27 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %57, i32 0, i32 2
  %58 = load i32, i32* %size27, align 4, !tbaa !129
  %conv28 = zext i32 %58 to i64
  %59 = load %struct.stream_arcfour_state_s*, %struct.stream_arcfour_state_s** %ss, align 8, !tbaa !1
  call void @pdf_copy_data(%struct.stream_s* %55, %struct._IO_FILE* %56, i64 %conv28, %struct.stream_arcfour_state_s* %59) #5
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %61 = load i64, i64* %end_pos, align 8, !tbaa !58
  %call29 = call i32 @gp_fseek_64(%struct._IO_FILE* %60, i64 %61, i32 0) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.22
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %62 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next32 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %62, i32 0, i32 0
  %63 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next32, align 8, !tbaa !113
  store %struct.cos_stream_piece_s* %63, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  br label %for.cond.16

for.end.33:                                       ; preds = %land.end
  %64 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %64, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* null, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.39, %for.end.33
  %65 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.cos_stream_piece_s* %65, null
  br i1 %tobool35, label %for.body.36, label %for.end.40

for.body.36:                                      ; preds = %for.cond.34
  %66 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %66, i32 0, i32 0
  %67 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next37, align 8, !tbaa !113
  store %struct.cos_stream_piece_s* %67, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  %68 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  %69 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next38 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %69, i32 0, i32 0
  store %struct.cos_stream_piece_s* %68, %struct.cos_stream_piece_s** %next38, align 8, !tbaa !113
  %70 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %70, %struct.cos_stream_piece_s** %last, align 8, !tbaa !1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %71 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next, align 8, !tbaa !1
  store %struct.cos_stream_piece_s* %71, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  br label %for.cond.34

for.end.40:                                       ; preds = %for.cond.34
  %72 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.40, %if.then.3
  %73 = bitcast %struct.stream_arcfour_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.stream_arcfour_state_s* %sarc4 to i8*
  call void @llvm.lifetime.end(i64 376, i8* %74) #1
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %same_file to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i64* %end_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.cos_stream_piece_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.cos_stream_piece_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @pdf_encrypt_init(%struct.gx_device_pdf_s*, i64, %struct.stream_arcfour_state_s*) #2

declare void @pdf_copy_data_safe(%struct.stream_s*, %struct._IO_FILE*, i64, i64) #2

declare i64 @gp_ftell_64(%struct._IO_FILE*) #2

declare i32 @gp_fseek_64(%struct._IO_FILE*, i64, i32) #2

declare void @pdf_copy_data(%struct.stream_s*, %struct._IO_FILE*, i64, %struct.stream_arcfour_state_s*) #2

; Function Attrs: nounwind uwtable
define %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.cos_stream_s* %0 to %struct.cos_dict_s*
  ret %struct.cos_dict_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @cos_stream_add(%struct.cos_stream_s* %pcs, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %size.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %position = alloca i64, align 8
  %prev = alloca %struct.cos_stream_piece_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pcsp = alloca %struct.cos_stream_piece_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !130
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i64* %position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %7) #5
  store i64 %call, i64* %position, align 8, !tbaa !58
  %8 = bitcast %struct.cos_stream_piece_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %9, i32 0, i32 3
  %10 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !111
  store %struct.cos_stream_piece_s* %10, %struct.cos_stream_piece_s** %prev, align 8, !tbaa !1
  %11 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %prev, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_stream_piece_s* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %prev, align 8, !tbaa !1
  %position2 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %12, i32 0, i32 1
  %13 = load i64, i64* %position2, align 8, !tbaa !128
  %14 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %prev, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %14, i32 0, i32 2
  %15 = load i32, i32* %size3, align 4, !tbaa !129
  %conv = zext i32 %15 to i64
  %add = add nsw i64 %13, %conv
  %16 = load i32, i32* %size.addr, align 4, !tbaa !63
  %conv4 = zext i32 %16 to i64
  %add5 = add nsw i64 %add, %conv4
  %17 = load i64, i64* %position, align 8, !tbaa !58
  %cmp6 = icmp eq i64 %add5, %17
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, i32* %size.addr, align 4, !tbaa !63
  %19 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %prev, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %19, i32 0, i32 2
  %20 = load i32, i32* %size8, align 4, !tbaa !129
  %add9 = add i32 %20, %18
  store i32 %add9, i32* %size8, align 4, !tbaa !129
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %entry
  %21 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 43
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %24 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %26 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !71
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call10 = call i8* %26(%struct.gs_memory_s* %27, %struct.gs_memory_struct_type_s* @st_cos_stream_piece, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #5
  %28 = bitcast i8* %call10 to %struct.cos_stream_piece_s*
  store %struct.cos_stream_piece_s* %28, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %29 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.cos_stream_piece_s* %29, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %30 = load i64, i64* %position, align 8, !tbaa !58
  %31 = load i32, i32* %size.addr, align 4, !tbaa !63
  %conv14 = zext i32 %31 to i64
  %sub = sub nsw i64 %30, %conv14
  %32 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %position15 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %32, i32 0, i32 1
  store i64 %sub, i64* %position15, align 8, !tbaa !128
  %33 = load i32, i32* %size.addr, align 4, !tbaa !63
  %34 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size16 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %34, i32 0, i32 2
  store i32 %33, i32* %size16, align 4, !tbaa !129
  %35 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces17 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %35, i32 0, i32 3
  %36 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces17, align 8, !tbaa !111
  %37 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %37, i32 0, i32 0
  store %struct.cos_stream_piece_s* %36, %struct.cos_stream_piece_s** %next, align 8, !tbaa !113
  %38 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %39 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces18 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %39, i32 0, i32 3
  store %struct.cos_stream_piece_s* %38, %struct.cos_stream_piece_s** %pieces18, align 8, !tbaa !111
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.13
  %40 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont, %if.then
  %42 = load i32, i32* %size.addr, align 4, !tbaa !63
  %conv21 = zext i32 %42 to i64
  %43 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %43, i32 0, i32 9
  %44 = load i64, i64* %length, align 8, !tbaa !119
  %add22 = add nsw i64 %44, %conv21
  store i64 %add22, i64* %length, align 8, !tbaa !119
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.20, %cleanup
  %45 = bitcast %struct.cos_stream_piece_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i64* %position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @cos_stream_add_bytes(%struct.cos_stream_s* %pcs, i8* %data, i32 %size) #0 {
entry:
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  %0 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %0, i32 0, i32 4
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !130
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !63
  %call = call i32 @stream_write(%struct.stream_s* %2, i8* %3, i32 %4) #5
  %5 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !63
  %call1 = call i32 @cos_stream_add(%struct.cos_stream_s* %5, i32 %6) #5
  ret i32 %call1
}

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cos_stream_add_stream_contents(%struct.cos_stream_s* %pcs, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %sbuff = alloca [200 x i8], align 16
  %cnt = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !63
  %1 = bitcast [200 x i8]* %sbuff to i8*
  call void @llvm.lifetime.start(i64 200, i8* %1) #1
  %2 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spseek(%struct.stream_s* %4, i64 0) #5
  store i32 %call, i32* %status, align 4, !tbaa !63
  %5 = load i32, i32* %status, align 4, !tbaa !63
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %sbuff, i32 0, i32 0
  %call1 = call i32 @sgets(%struct.stream_s* %6, i8* %arraydecay, i32 200, i32* %cnt) #5
  store i32 %call1, i32* %status, align 4, !tbaa !63
  %7 = load i32, i32* %cnt, align 4, !tbaa !63
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %do.body
  %8 = load i32, i32* %status, align 4, !tbaa !63
  %cmp4 = icmp eq i32 %8, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %do.end

if.end.6:                                         ; preds = %if.then.3
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %9 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay8 = getelementptr inbounds [200 x i8], [200 x i8]* %sbuff, i32 0, i32 0
  %10 = load i32, i32* %cnt, align 4, !tbaa !63
  %call9 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %9, i8* %arraydecay8, i32 %10) #5
  store i32 %call9, i32* %code, align 4, !tbaa !63
  %cmp10 = icmp sge i32 %call9, 0
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.5
  %11 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.6, %if.then
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast [200 x i8]* %sbuff to i8*
  call void @llvm.lifetime.end(i64 200, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @spseek(%struct.stream_s*, i64) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @cos_stream_release_pieces(%struct.cos_stream_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %position = alloca i64, align 8
  %position0 = alloca i64, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %p = alloca %struct.cos_stream_piece_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !130
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i64* %position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %7) #5
  store i64 %call, i64* %position, align 8, !tbaa !58
  %8 = bitcast i64* %position0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i64, i64* %position, align 8, !tbaa !58
  store i64 %9, i64* %position0, align 8, !tbaa !58
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %12 = bitcast %struct.cos_stream_s* %11 to %struct.cos_object_s*
  %call2 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %12) #5
  store %struct.gs_memory_s* %call2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %13, i32 0, i32 3
  %14 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !111
  %cmp = icmp ne %struct.cos_stream_piece_s* %14, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i64, i64* %position, align 8, !tbaa !58
  %16 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces3 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %16, i32 0, i32 3
  %17 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces3, align 8, !tbaa !111
  %position4 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %17, i32 0, i32 1
  %18 = load i64, i64* %position4, align 8, !tbaa !128
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces5 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %19, i32 0, i32 3
  %20 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces5, align 8, !tbaa !111
  %size = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %20, i32 0, i32 2
  %21 = load i32, i32* %size, align 4, !tbaa !129
  %conv = zext i32 %21 to i64
  %add = add nsw i64 %18, %conv
  %cmp6 = icmp eq i64 %15, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = bitcast %struct.cos_stream_piece_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces8 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %24, i32 0, i32 3
  %25 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces8, align 8, !tbaa !111
  store %struct.cos_stream_piece_s* %25, %struct.cos_stream_piece_s** %p, align 8, !tbaa !1
  %26 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %p, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %26, i32 0, i32 2
  %27 = load i32, i32* %size9, align 4, !tbaa !129
  %conv10 = zext i32 %27 to i64
  %28 = load i64, i64* %position, align 8, !tbaa !58
  %sub = sub nsw i64 %28, %conv10
  store i64 %sub, i64* %position, align 8, !tbaa !58
  %29 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %p, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %29, i32 0, i32 0
  %30 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next, align 8, !tbaa !113
  %31 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %pieces11 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %31, i32 0, i32 3
  store %struct.cos_stream_piece_s* %30, %struct.cos_stream_piece_s** %pieces11, align 8, !tbaa !111
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %35 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %p, align 8, !tbaa !1
  %36 = bitcast %struct.cos_stream_piece_s* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #5
  %37 = bitcast %struct.cos_stream_piece_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i64, i64* %position0, align 8, !tbaa !58
  %39 = load i64, i64* %position, align 8, !tbaa !58
  %cmp12 = icmp ne i64 %38, %39
  br i1 %cmp12, label %if.then, label %if.end.18

if.then:                                          ; preds = %while.end
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load i64, i64* %position, align 8, !tbaa !58
  %call14 = call i32 @spseek(%struct.stream_s* %40, i64 %41) #5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %42 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64* %position0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i64* %position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s* %pcs, %struct.gx_device_pdf_s* %pdev, i8* %cname) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.cos_write_stream_state_s*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %4, i8* %5) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_cos_write_stream_state, i8* %8) #5
  %9 = bitcast %struct.stream_state_s* %call1 to %struct.cos_write_stream_state_s*
  store %struct.cos_write_stream_state_s* %9, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %10 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !131
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %12(%struct.gs_memory_s* %13, i32 512, i8* %14) #5
  store i8* %call2, i8** %buf, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %15, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.cos_write_stream_state_s* %16, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %17 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %17, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  br label %fail

if.end:                                           ; preds = %lor.lhs.false.4
  %18 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %18, i32 0, i32 0
  store %struct.stream_template_s* @cos_write_stream_template, %struct.stream_template_s** %templat, align 8, !tbaa !132
  %19 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %20 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs6 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %20, i32 0, i32 5
  store %struct.cos_stream_s* %19, %struct.cos_stream_s** %pcs6, align 8, !tbaa !134
  %21 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs7 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %21, i32 0, i32 5
  %22 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs7, align 8, !tbaa !134
  %stream_md5_valid = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %22, i32 0, i32 14
  store i32 0, i32* %stream_md5_valid, align 4, !tbaa !117
  %23 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs8 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %23, i32 0, i32 5
  %24 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs8, align 8, !tbaa !134
  %md5 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %24, i32 0, i32 11
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %25 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs9 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %25, i32 0, i32 5
  %26 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs9, align 8, !tbaa !134
  %hash = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %26, i32 0, i32 13
  %27 = bitcast [16 x i8]* %hash to i8*
  %call10 = call i8* @memset(i8* %27, i32 0, i64 16) #7
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pdev11 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %29, i32 0, i32 6
  store %struct.gx_device_pdf_s* %28, %struct.gx_device_pdf_s** %pdev11, align 8, !tbaa !135
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %31 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %s12 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %31, i32 0, i32 7
  store %struct.stream_s* %30, %struct.stream_s** %s12, align 8, !tbaa !136
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %33 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  %34 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %34, i32 0, i32 8
  store %struct.stream_s* %33, %struct.stream_s** %target, align 8, !tbaa !137
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %36 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @s_std_init(%struct.stream_s* %35, i8* %36, i32 512, %struct.stream_procs* @cos_s_procs, i32 2) #5
  %37 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %38 = bitcast %struct.cos_write_stream_state_s* %37 to %struct.stream_state_s*
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 18
  store %struct.stream_state_s* %38, %struct.stream_state_s** %state, align 8, !tbaa !138
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %40, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %44 = load i8*, i8** %buf, align 8, !tbaa !1
  %45 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %42(%struct.gs_memory_s* %43, i8* %44, i8* %45) #5
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !55
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %49 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %50 = bitcast %struct.cos_write_stream_state_s* %49 to i8*
  %51 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %47(%struct.gs_memory_s* %48, i8* %50, i8* %51) #5
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %53 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !55
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %56 = bitcast %struct.stream_s* %55 to i8*
  %57 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %53(%struct.gs_memory_s* %54, i8* %56, i8* %57) #5
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end
  %58 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %62
}

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

declare void @gs_md5_init(%struct.gs_md5_state_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.cos_write_stream_state_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %2 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !139
  %3 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_procs, %struct.stream_procs* @cos_s_procs, i32 0, i32 5), align 8, !tbaa !140
  %cmp = icmp ne i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 15
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !141
  store %struct.stream_s* %5, %struct.stream_s** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 18
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !138
  %8 = bitcast %struct.stream_state_s* %7 to %struct.cos_write_stream_state_s*
  store %struct.cos_write_stream_state_s* %8, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %9 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %9, i32 0, i32 5
  %10 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !134
  %11 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.cos_stream_s* %10
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @cos_write_stream_from_pipeline(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %1 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !139
  %2 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_procs, %struct.stream_procs* @cos_s_procs, i32 0, i32 5), align 8, !tbaa !140
  %cmp = icmp ne i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 15
  %4 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !141
  store %struct.stream_s* %4, %struct.stream_s** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  ret %struct.stream_s* %5
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare i32 @pdf_write_value(%struct.gx_device_pdf_s*, i8*, i32, i64) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.cos_array_element_s* @cos_array_reorder(%struct.cos_array_s* %pca, %struct.cos_array_element_s* %first) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %first.addr = alloca %struct.cos_array_element_s*, align 8
  %last = alloca %struct.cos_array_element_s*, align 8
  %next = alloca %struct.cos_array_element_s*, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_array_element_s* %first, %struct.cos_array_element_s** %first.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_element_s** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_array_element_s* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %first.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %elements = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %5, i32 0, i32 2
  %6 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %elements, align 8, !tbaa !81
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cos_array_element_s* [ %4, %cond.true ], [ %6, %cond.false ]
  store %struct.cos_array_element_s* %cond, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  store %struct.cos_array_element_s* null, %struct.cos_array_element_s** %last, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.cos_array_element_s* %7, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %8, i32 0, i32 0
  %9 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next2, align 8, !tbaa !83
  store %struct.cos_array_element_s* %9, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  %10 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %last, align 8, !tbaa !1
  %11 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %11, i32 0, i32 0
  store %struct.cos_array_element_s* %10, %struct.cos_array_element_s** %next3, align 8, !tbaa !83
  %12 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  store %struct.cos_array_element_s* %12, %struct.cos_array_element_s** %last, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %next, align 8, !tbaa !1
  store %struct.cos_array_element_s* %13, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %last, align 8, !tbaa !1
  %15 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.cos_array_element_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.cos_array_element_s** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret %struct.cos_array_element_s* %14
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare void @gs_md5_finish(%struct.gs_md5_state_s*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @cos_value_hash(%struct.cos_value_s* %pcv0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcv0.addr = alloca %struct.cos_value_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_value_s* %pcv0, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %1, i32 0, i32 0
  %2 = load i32, i32* %value_type, align 4, !tbaa !67
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %4, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !64
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  %contents1 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %6, i32 0, i32 1
  %chars2 = bitcast %union.vc_* %contents1 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars2, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !66
  call void @gs_md5_append(%struct.gs_md5_state_s* %3, i8* %5, i32 %7) #5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  %contents4 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %8, i32 0, i32 1
  %object = bitcast %union.vc_* %contents4 to %struct.cos_object_s**
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 0
  %10 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !52
  %hash5 = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %10, i32 0, i32 3
  %11 = load i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)** %hash5, align 8, !tbaa !142
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv0.addr, align 8, !tbaa !1
  %contents6 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 1
  %object7 = bitcast %union.vc_* %contents6 to %struct.cos_object_s**
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !1
  %14 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %hash.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.cos_object_s* %13, %struct.gs_md5_state_s* %14, i8* %15, %struct.gx_device_pdf_s* %16) #5
  store i32 %call, i32* %code, align 4, !tbaa !63
  %17 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %18 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %entry, %if.end, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gs_md5_append(%struct.gs_md5_state_s*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cos_array_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store i32 %index, i32* %index.addr, align 4, !tbaa !63
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_array_element_s*
  store %struct.cos_array_element_s* %2, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !63
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !63
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_element, i32 0, i32 4), align 8, !tbaa !143
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !63
  %9 = load i32, i32* %index.addr, align 4, !tbaa !63
  %sub = sub nsw i32 %9, 0
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %7, i32 %8, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_cos_element, %struct.gc_state_s* %11) #5
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %12 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_value, i32 0, i32 4), align 8, !tbaa !143
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %14, i32 0, i32 2
  %15 = bitcast %struct.cos_value_s* %value to i8*
  %16 = load i32, i32* %index.addr, align 4, !tbaa !63
  %sub1 = sub nsw i32 %16, 1
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %12(%struct.gs_memory_s* %13, i8* %15, i32 24, i32 %sub1, %struct.enum_ptr_s* %17, %struct.gs_memory_struct_type_s* @st_cos_value, %struct.gc_state_s* %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ %call, %cond.true ], [ %call2, %cond.false ]
  %19 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret %struct.gs_ptr_procs_s* %cond
}

; Function Attrs: nounwind uwtable
define internal void @cos_array_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcae = alloca %struct.cos_array_element_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_array_element_s*
  store %struct.cos_array_element_s* %2, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_element, i32 0, i32 5), align 8, !tbaa !145
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !63
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_cos_element, %struct.gc_state_s* %6) #5
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_value, i32 0, i32 5), align 8, !tbaa !145
  %8 = load %struct.cos_array_element_s*, %struct.cos_array_element_s** %pcae, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_array_element_s, %struct.cos_array_element_s* %8, i32 0, i32 2
  %9 = bitcast %struct.cos_value_s* %value to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 24, %struct.gs_memory_struct_type_s* @st_cos_value, %struct.gc_state_s* %10) #5
  %11 = bitcast %struct.cos_array_element_s** %pcae to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cos_value_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcv = alloca %struct.cos_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store i32 %index, i32* %index.addr, align 4, !tbaa !63
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_value_s*
  store %struct.cos_value_s* %2, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !63
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %4, i32 0, i32 0
  %5 = load i32, i32* %value_type, align 4, !tbaa !67
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb.1
    i32 1, label %sw.epilog
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.6
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %6, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !64
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr, align 8, !tbaa !146
  %9 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %9, i32 0, i32 1
  %chars3 = bitcast %union.vc_* %contents2 to %struct.gs_string_s*
  %size4 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars3, i32 0, i32 1
  %10 = load i32, i32* %size4, align 4, !tbaa !66
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 1
  store i32 %10, i32* %size5, align 4, !tbaa !148
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %sw.bb, %sw.bb
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents7 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 1
  %object = bitcast %union.vc_* %contents7 to %struct.cos_object_s**
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %14 = bitcast %struct.cos_object_s* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr8, align 8, !tbaa !146
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %sw.bb
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.6, %sw.bb.1, %sw.default
  %16 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %17
}

; Function Attrs: nounwind uwtable
define internal void @cos_value_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcv = alloca %struct.cos_value_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_value_s*
  store %struct.cos_value_s* %2, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %3 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %3, i32 0, i32 0
  %4 = load i32, i32* %value_type, align 4, !tbaa !67
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 1
  %8 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !149
  %9 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %9, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %8(%struct.gs_string_s* %chars, %struct.gc_state_s* %10) #5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !151
  %15 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %15, i32 0, i32 1
  %object = bitcast %union.vc_* %contents2 to %struct.cos_object_s**
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %17 = bitcast %struct.cos_object_s* %16 to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %17, %struct.gc_state_s* %18) #5
  %19 = bitcast i8* %call to %struct.cos_object_s*
  %20 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents3 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %20, i32 0, i32 1
  %object4 = bitcast %union.vc_* %contents3 to %struct.cos_object_s**
  store %struct.cos_object_s* %19, %struct.cos_object_s** %object4, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb, %entry
  %21 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cos_dict_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store i32 %index, i32* %index.addr, align 4, !tbaa !63
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_dict_element_s*
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !63
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !63
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_element, i32 0, i32 4), align 8, !tbaa !143
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !63
  %9 = load i32, i32* %index.addr, align 4, !tbaa !63
  %sub = sub nsw i32 %9, 0
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %7, i32 %8, i32 %sub, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_cos_element, %struct.gc_state_s* %11) #5
  br label %cond.end.15

cond.false:                                       ; preds = %sw.default
  %12 = load i32, i32* %index.addr, align 4, !tbaa !63
  %sub1 = sub nsw i32 %12, 1
  store i32 %sub1, i32* %index.addr, align 4, !tbaa !63
  %cmp2 = icmp sgt i32 %sub1, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.false
  %13 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_value, i32 0, i32 4), align 8, !tbaa !143
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %15, i32 0, i32 3
  %16 = bitcast %struct.cos_value_s* %value to i8*
  %17 = load i32, i32* %index.addr, align 4, !tbaa !63
  %sub4 = sub nsw i32 %17, 1
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call5 = call %struct.gs_ptr_procs_s* %13(%struct.gs_memory_s* %14, i8* %16, i32 24, i32 %sub4, %struct.enum_ptr_s* %18, %struct.gs_memory_struct_type_s* @st_cos_value, %struct.gc_state_s* %19) #5
  br label %cond.end.13

cond.false.6:                                     ; preds = %cond.false
  %20 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %owns_key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %20, i32 0, i32 2
  %21 = load i32, i32* %owns_key, align 4, !tbaa !105
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.false.6
  %22 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %22, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !64
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr, align 8, !tbaa !146
  %25 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key8 = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %25, i32 0, i32 1
  %size9 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %key8, i32 0, i32 1
  %26 = load i32, i32* %size9, align 4, !tbaa !66
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 1
  store i32 %26, i32* %size10, align 4, !tbaa !148
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false.6
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* null, i8** %ptr12, align 8, !tbaa !146
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.7
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_string_procs, %cond.true.7 ], [ @ptr_struct_procs, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true.3
  %cond14 = phi %struct.gs_ptr_procs_s* [ %call5, %cond.true.3 ], [ %cond, %cond.end ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end.13, %cond.true
  %cond16 = phi %struct.gs_ptr_procs_s* [ %call, %cond.true ], [ %cond14, %cond.end.13 ]
  %29 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret %struct.gs_ptr_procs_s* %cond16
}

; Function Attrs: nounwind uwtable
define internal void @cos_dict_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcde = alloca %struct.cos_dict_element_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !63
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cos_dict_element_s*
  store %struct.cos_dict_element_s* %2, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_element, i32 0, i32 5), align 8, !tbaa !145
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !63
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_cos_element, %struct.gc_state_s* %6) #5
  %7 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %owns_key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %7, i32 0, i32 2
  %8 = load i32, i32* %owns_key, align 4, !tbaa !105
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gc_state_s* %9 to %struct.gc_procs_common_s**
  %11 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %10, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %11, i32 0, i32 1
  %12 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !149
  %13 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %13, i32 0, i32 1
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %12(%struct.gs_string_s* %key, %struct.gc_state_s* %14) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_cos_value, i32 0, i32 5), align 8, !tbaa !145
  %16 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %pcde, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.cos_dict_element_s, %struct.cos_dict_element_s* %16, i32 0, i32 3
  %17 = bitcast %struct.cos_value_s* %value to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %15(i8* %17, i32 24, %struct.gs_memory_struct_type_s* @st_cos_value, %struct.gc_state_s* %18) #5
  %19 = bitcast %struct.cos_dict_element_s** %pcde to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_param_put_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %pclist = alloca %struct.cos_param_list_writer_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %key_len = alloca i32, align 4
  %key_chars = alloca [100 x i8], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ppp = alloca %struct.param_printer_params_s, align 8
  %pplist = alloca %struct.printer_param_list_s, align 8
  %s = alloca %struct.stream_s, align 8
  %len = alloca i32, align 4
  %skip = alloca i32, align 4
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %i54 = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_param_list_writer_s** %pclist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.cos_param_list_writer_s*
  store %struct.cos_param_list_writer_s* %2, %struct.cos_param_list_writer_s** %pclist, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist, align 8, !tbaa !1
  %pcd = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %4, i32 0, i32 3
  %5 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !108
  %pdev1 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %5, i32 0, i32 4
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !107
  store %struct.gx_device_pdf_s* %6, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !152
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  %11 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %key_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %13) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %key_len, align 4, !tbaa !63
  %14 = bitcast [100 x i8]* %key_chars to i8*
  call void @llvm.lifetime.start(i64 100, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %key_len, align 4, !tbaa !63
  %conv2 = sext i32 %16 to i64
  %cmp = icmp ugt i64 %conv2, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %17, i32 0, i32 1
  %18 = load i32, i32* %type, align 4, !tbaa !153
  switch i32 %18, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.53
    i32 9, label %sw.bb.86
    i32 10, label %sw.bb.86
  ]

sw.default:                                       ; preds = %if.end
  %19 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %19) #1
  %20 = bitcast %struct.printer_param_list_s* %pplist to i8*
  call void @llvm.lifetime.start(i64 80, i8* %20) #1
  %21 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %21) #1
  %22 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #5
  %25 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.param_printer_params_s* @param_printer_params_default to i8*), i64 40, i32 8, i1 false), !tbaa.struct !155
  %item_suffix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 3
  store i8* null, i8** %item_suffix, align 8, !tbaa !156
  %item_prefix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 2
  store i8* null, i8** %item_prefix, align 8, !tbaa !158
  %suffix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 1
  store i8* null, i8** %suffix, align 8, !tbaa !159
  %prefix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 0
  store i8* null, i8** %prefix, align 8, !tbaa !160
  %26 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist, align 8, !tbaa !1
  %print_ok = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %26, i32 0, i32 4
  %27 = load i32, i32* %print_ok, align 4, !tbaa !110
  %print_ok4 = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 4
  store i32 %27, i32* %print_ok4, align 4, !tbaa !161
  %call5 = call i32 @s_init_param_printer(%struct.printer_param_list_s* %pplist, %struct.param_printer_params_s* %ppp, %struct.stream_s* %s) #5
  call void @swrite_position_only(%struct.stream_s* %s) #5
  %28 = bitcast %struct.printer_param_list_s* %pplist to %struct.gs_param_list_s*
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %28, i32 0, i32 0
  %29 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !162
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %29, i32 0, i32 0
  %30 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !164
  %31 = bitcast %struct.printer_param_list_s* %pplist to %struct.gs_param_list_s*
  %32 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %call6 = call i32 %30(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), %struct.gs_param_typed_value_s* %32) #5
  %call7 = call i64 @stell(%struct.stream_s* %s) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %len, align 4, !tbaa !63
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 16
  %34 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !94
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load i32, i32* %len, align 4, !tbaa !63
  %call10 = call i8* %34(%struct.gs_memory_s* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0)) #5
  store i8* %call10, i8** %str, align 8, !tbaa !1
  %37 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %37, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.default
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %sw.default
  %38 = load i8*, i8** %str, align 8, !tbaa !1
  %39 = load i32, i32* %len, align 4, !tbaa !63
  call void @swrite_string(%struct.stream_s* %s, i8* %38, i32 %39) #5
  %40 = bitcast %struct.printer_param_list_s* %pplist to %struct.gs_param_list_s*
  %procs15 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %40, i32 0, i32 0
  %41 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs15, align 8, !tbaa !162
  %xmit_typed16 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %41, i32 0, i32 0
  %42 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed16, align 8, !tbaa !164
  %43 = bitcast %struct.printer_param_list_s* %pplist to %struct.gs_param_list_s*
  %44 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %call17 = call i32 %42(%struct.gs_param_list_s* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), %struct.gs_param_typed_value_s* %44) #5
  %45 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx, align 1, !tbaa !60
  %conv18 = zext i8 %46 to i32
  %cmp19 = icmp eq i32 %conv18, 32
  %cond = select i1 %cmp19, i32 2, i32 1
  store i32 %cond, i32* %skip, align 4, !tbaa !63
  %47 = load i8*, i8** %str, align 8, !tbaa !1
  %48 = load i8*, i8** %str, align 8, !tbaa !1
  %49 = load i32, i32* %skip, align 4, !tbaa !63
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  %50 = load i32, i32* %len, align 4, !tbaa !63
  %51 = load i32, i32* %skip, align 4, !tbaa !63
  %sub = sub nsw i32 %50, %51
  %conv21 = sext i32 %sub to i64
  %call22 = call i8* @memmove(i8* %47, i8* %add.ptr, i64 %conv21) #7
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 18
  %53 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !166
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %55 = load i8*, i8** %str, align 8, !tbaa !1
  %56 = load i32, i32* %len, align 4, !tbaa !63
  %57 = load i32, i32* %len, align 4, !tbaa !63
  %58 = load i32, i32* %skip, align 4, !tbaa !63
  %sub24 = sub nsw i32 %57, %58
  %call25 = call i8* %53(%struct.gs_memory_s* %54, i8* %55, i32 %56, i32 %sub24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0)) #5
  store i8* %call25, i8** %str, align 8, !tbaa !1
  %59 = load i8*, i8** %str, align 8, !tbaa !1
  %60 = load i32, i32* %len, align 4, !tbaa !63
  %61 = load i32, i32* %skip, align 4, !tbaa !63
  %sub26 = sub nsw i32 %60, %61
  %call27 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %59, i32 %sub26) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %62 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %65) #1
  %66 = bitcast %struct.printer_param_list_s* %pplist to i8*
  call void @llvm.lifetime.end(i64 80, i8* %66) #1
  %67 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call33 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0)) #5
  store %struct.cos_array_s* %call33, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %70 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.cos_array_s* %70, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.37:                                        ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %71 = load i32, i32* %i, align 4, !tbaa !63
  %72 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %72, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value38 to %struct.gs_param_int_array_s*
  %size = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  %73 = load i32, i32* %size, align 4, !tbaa !167
  %cmp39 = icmp ult i32 %71, %73
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %74 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %75 = load i32, i32* %i, align 4, !tbaa !63
  %idxprom = zext i32 %75 to i64
  %76 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value41 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %76, i32 0, i32 0
  %ia42 = bitcast %union.gs_param_value_s* %value41 to %struct.gs_param_int_array_s*
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia42, i32 0, i32 0
  %77 = load i32*, i32** %data, align 8, !tbaa !168
  %arrayidx43 = getelementptr inbounds i32, i32* %77, i64 %idxprom
  %78 = load i32, i32* %arrayidx43, align 4, !tbaa !63
  %call44 = call i32 @cos_array_add_int(%struct.cos_array_s* %74, i32 %78) #5
  store i32 %call44, i32* %code, align 4, !tbaa !63
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body
  %79 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.48:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.48
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %80 = load i32, i32* %i, align 4, !tbaa !63
  %inc = add i32 %80, 1
  store i32 %inc, i32* %i, align 4, !tbaa !63
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %for.end, %if.then.47, %if.then.36
  %81 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest.50 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.50, label %cleanup.94 [
    i32 0, label %cleanup.cont.51
  ]

cleanup.cont.51:                                  ; preds = %cleanup.49
  br label %av

av:                                               ; preds = %cleanup.cont.85, %cleanup.cont.51
  %82 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %82, i32 0, i32 0
  %83 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call52 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %83) #5
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end
  %84 = bitcast i32* %i54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call55 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0)) #5
  store %struct.cos_array_s* %call55, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %86 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.cos_array_s* %86, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %sw.bb.53
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.59:                                        ; preds = %sw.bb.53
  store i32 0, i32* %i54, align 4, !tbaa !63
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.80, %if.end.59
  %87 = load i32, i32* %i54, align 4, !tbaa !63
  %88 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value61 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %88, i32 0, i32 0
  %ia62 = bitcast %union.gs_param_value_s* %value61 to %struct.gs_param_int_array_s*
  %size63 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia62, i32 0, i32 1
  %89 = load i32, i32* %size63, align 4, !tbaa !167
  %cmp64 = icmp ult i32 %87, %89
  br i1 %cmp64, label %for.body.66, label %for.end.82

for.body.66:                                      ; preds = %for.cond.60
  br label %do.body.67

do.body.67:                                       ; preds = %for.body.66
  %90 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %91 = load i32, i32* %i54, align 4, !tbaa !63
  %idxprom68 = zext i32 %91 to i64
  %92 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value69 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %92, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value69 to %struct.gs_param_float_array_s*
  %data70 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  %93 = load float*, float** %data70, align 8, !tbaa !169
  %arrayidx71 = getelementptr inbounds float, float* %93, i64 %idxprom68
  %94 = load float, float* %arrayidx71, align 4, !tbaa !91
  %conv72 = fpext float %94 to double
  %call73 = call i32 @cos_array_add_real(%struct.cos_array_s* %90, double %conv72) #5
  store i32 %call73, i32* %code, align 4, !tbaa !63
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %do.body.67
  %95 = load i32, i32* %code, align 4, !tbaa !63
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.77:                                        ; preds = %do.body.67
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %for.inc.80

for.inc.80:                                       ; preds = %do.end.79
  %96 = load i32, i32* %i54, align 4, !tbaa !63
  %inc81 = add i32 %96, 1
  store i32 %inc81, i32* %i54, align 4, !tbaa !63
  br label %for.cond.60

for.end.82:                                       ; preds = %for.cond.60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %for.end.82, %if.then.76, %if.then.58
  %97 = bitcast i32* %i54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.94 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.83
  br label %av

sw.bb.86:                                         ; preds = %if.end, %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

sw.epilog:                                        ; preds = %av, %cleanup.cont
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %key_chars, i32 0, i32 0
  %add.ptr87 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %98 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %99 = load i32, i32* %key_len, align 4, !tbaa !63
  %conv88 = sext i32 %99 to i64
  %call89 = call i8* @memcpy(i8* %add.ptr87, i8* %98, i64 %conv88) #7
  %arrayidx90 = getelementptr inbounds [100 x i8], [100 x i8]* %key_chars, i32 0, i64 0
  store i8 47, i8* %arrayidx90, align 1, !tbaa !60
  %100 = load %struct.cos_param_list_writer_s*, %struct.cos_param_list_writer_s** %pclist, align 8, !tbaa !1
  %pcd91 = getelementptr inbounds %struct.cos_param_list_writer_s, %struct.cos_param_list_writer_s* %100, i32 0, i32 3
  %101 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd91, align 8, !tbaa !108
  %arraydecay92 = getelementptr inbounds [100 x i8], [100 x i8]* %key_chars, i32 0, i32 0
  %102 = load i32, i32* %key_len, align 4, !tbaa !63
  %add = add nsw i32 %102, 1
  %call93 = call i32 @cos_dict_put_no_copy(%struct.cos_dict_s* %101, i8* %arraydecay92, i32 %add, %struct.cos_value_s* %value) #5
  store i32 %call93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %sw.epilog, %sw.bb.86, %cleanup.83, %cleanup.49, %cleanup, %if.then
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast [100 x i8]* %key_chars to i8*
  call void @llvm.lifetime.end(i64 100, i8* %104) #1
  %105 = bitcast i32* %key_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %107) #1
  %108 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.cos_param_list_writer_s** %pclist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = load i32, i32* %retval
  ret i32 %111
}

declare i32 @gs_param_request_default(%struct.gs_param_list_s*, i8*) #2

declare i32 @gs_param_requested_default(%struct.gs_param_list_s*, i8*) #2

declare i32 @s_init_param_printer(%struct.printer_param_list_s*, %struct.param_printer_params_s*, %struct.stream_s*) #2

declare void @swrite_position_only(%struct.stream_s*) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @hash_cos_stream(%struct.cos_object_s* %pco0, %struct.gs_md5_state_s* %md5, i8* %hash, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pco0.addr = alloca %struct.cos_object_s*, align 8
  %md5.addr = alloca %struct.gs_md5_state_s*, align 8
  %hash.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %pcsp = alloca %struct.cos_stream_piece_s*, align 8
  %sfile = alloca %struct._IO_FILE*, align 8
  %ptr = alloca i8*, align 8
  %position_save = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_object_s* %pco0, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  store %struct.gs_md5_state_s* %md5, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  store i8* %hash, i8** %hash.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %2, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pieces = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %4, i32 0, i32 3
  %5 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pieces, align 8, !tbaa !111
  store %struct.cos_stream_piece_s* %5, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %6 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 146
  %file = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !121
  store %struct._IO_FILE* %8, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %9 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %position_save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 47
  %13 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !70
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %14 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !124
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 47
  %16 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !70
  %call = call i32 %14(%struct.stream_s* %16) #5
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 146
  %strm3 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams2, i32 0, i32 2
  %18 = load %struct.stream_s*, %struct.stream_s** %strm3, align 8, !tbaa !127
  %procs4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 14
  %flush5 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs4, i32 0, i32 3
  %19 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush5, align 8, !tbaa !124
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 146
  %strm7 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams6, i32 0, i32 2
  %21 = load %struct.stream_s*, %struct.stream_s** %strm7, align 8, !tbaa !127
  %call8 = call i32 %19(%struct.stream_s* %21) #5
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %call9 = call i64 @gp_ftell_64(%struct._IO_FILE* %22) #5
  store i64 %call9, i64* %position_save, align 8, !tbaa !58
  %23 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_stream_piece_s* %23, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  call void @gs_md5_init(%struct.gs_md5_state_s* %24) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end
  %25 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %tobool10 = icmp ne %struct.cos_stream_piece_s* %25, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !170
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 10
  %29 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !171
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !87
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !170
  %33 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %33, i32 0, i32 2
  %34 = load i32, i32* %size, align 4, !tbaa !129
  %call14 = call i8* %29(%struct.gs_memory_s* %32, i32 1, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0)) #5
  store i8* %call14, i8** %ptr, align 8, !tbaa !1
  %35 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp eq i8* %35, null
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  store i32 -25, i32* %result, align 4, !tbaa !63
  %36 = load i32, i32* %result, align 4, !tbaa !63
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %while.body
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %38 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %38, i32 0, i32 1
  %39 = load i64, i64* %position, align 8, !tbaa !128
  %call17 = call i32 @gp_fseek_64(%struct._IO_FILE* %37, i64 %39, i32 0) #5
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  %41 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size18 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %41, i32 0, i32 2
  %42 = load i32, i32* %size18, align 4, !tbaa !129
  %conv = zext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %call19 = call i64 @fread(i8* %40, i64 1, i64 %conv, %struct._IO_FILE* %43) #5
  %44 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %44, i32 0, i32 2
  %45 = load i32, i32* %size20, align 4, !tbaa !129
  %conv21 = zext i32 %45 to i64
  %cmp22 = icmp ne i64 %call19, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.16
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !87
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !170
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %49 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory28, align 8, !tbaa !87
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !170
  %53 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void %49(%struct.gs_memory_s* %52, i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0)) #5
  store i32 -12, i32* %result, align 4, !tbaa !63
  %54 = load i32, i32* %result, align 4, !tbaa !63
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.16
  %55 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %ptr, align 8, !tbaa !1
  %57 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %size31 = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %57, i32 0, i32 2
  %58 = load i32, i32* %size31, align 4, !tbaa !129
  call void @gs_md5_append(%struct.gs_md5_state_s* %55, i8* %56, i32 %58) #5
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 3
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !87
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !170
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !55
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !87
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !170
  %66 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void %62(%struct.gs_memory_s* %65, i8* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0)) #5
  %67 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.cos_stream_piece_s, %struct.cos_stream_piece_s* %67, i32 0, i32 0
  %68 = load %struct.cos_stream_piece_s*, %struct.cos_stream_piece_s** %next, align 8, !tbaa !113
  store %struct.cos_stream_piece_s* %68, %struct.cos_stream_piece_s** %pcsp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8, !tbaa !1
  %70 = load i64, i64* %position_save, align 8, !tbaa !58
  %call38 = call i32 @gp_fseek_64(%struct._IO_FILE* %69, i64 %70, i32 0) #5
  %71 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %md5.addr, align 8, !tbaa !1
  %72 = load i8*, i8** %hash.addr, align 8, !tbaa !1
  call void @gs_md5_finish(%struct.gs_md5_state_s* %71, i8* %72) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.24, %if.then.15, %if.then
  %73 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i64* %position_save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct._IO_FILE** %sfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.cos_stream_piece_s** %pcsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cos_write_stream_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %ss = alloca %struct.cos_write_stream_state_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %target = alloca %struct.stream_s*, align 8
  %start_pos = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !63
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !172
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !174
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !63
  %5 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_state_s* %6 to %struct.cos_write_stream_state_s*
  store %struct.cos_write_stream_state_s* %7, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %9, i32 0, i32 6
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !135
  store %struct.gx_device_pdf_s* %10, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %11 = bitcast %struct.stream_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %12, i32 0, i32 8
  %13 = load %struct.stream_s*, %struct.stream_s** %target2, align 8, !tbaa !137
  store %struct.stream_s* %13, %struct.stream_s** %target, align 8, !tbaa !1
  %14 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %16 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  %call = call i64 @stell(%struct.stream_s* %16) #5
  store i64 %call, i64* %start_pos, align 8, !tbaa !58
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !1
  %19 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %19, i32 0, i32 0
  %20 = load i8*, i8** %ptr3, align 8, !tbaa !174
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i32, i32* %count, align 4, !tbaa !63
  %call4 = call i32 @stream_write(%struct.stream_s* %18, i8* %add.ptr, i32 %21) #5
  %22 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %22, i32 0, i32 5
  %23 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !134
  %md5 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %23, i32 0, i32 11
  %24 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %ptr5, align 8, !tbaa !174
  %add.ptr6 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i32, i32* %count, align 4, !tbaa !63
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %add.ptr6, i32 %26) #5
  %27 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %27, i32 0, i32 1
  %28 = load i8*, i8** %limit7, align 8, !tbaa !172
  %29 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr8, align 8, !tbaa !174
  %30 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %31 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !124
  %32 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !1
  %call9 = call i32 %31(%struct.stream_s* %32) #5
  %33 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs10 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %33, i32 0, i32 5
  %34 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs10, align 8, !tbaa !134
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %streams11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 146
  %strm12 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams11, i32 0, i32 2
  %36 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !127
  %call13 = call i64 @stell(%struct.stream_s* %36) #5
  %37 = load i64, i64* %start_pos, align 8, !tbaa !58
  %sub = sub nsw i64 %call13, %37
  %conv14 = trunc i64 %sub to i32
  %call15 = call i32 @cos_stream_add(%struct.cos_stream_s* %34, i32 %conv14) #5
  store i32 %call15, i32* %code, align 4, !tbaa !63
  %38 = load i32, i32* %code, align 4, !tbaa !63
  %cmp = icmp slt i32 %38, 0
  %cond = select i1 %cmp, i32 -2, i32 0
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.stream_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret i32 %cond
}

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #2

declare i32 @s_std_noseek(%struct.stream_s*, i64) #2

declare void @s_std_write_reset(%struct.stream_s*) #2

declare i32 @s_std_write_flush(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cos_write_stream_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.cos_write_stream_state_s*, align 8
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 18
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !138
  %3 = bitcast %struct.stream_state_s* %2 to %struct.cos_write_stream_state_s*
  store %struct.cos_write_stream_state_s* %3, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %6 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !124
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.stream_s* %7) #5
  %8 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %8, i32 0, i32 8
  %9 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %9, i32 0, i32 6
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !135
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 146
  %strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %11 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !127
  %call1 = call i32 @s_close_filters(%struct.stream_s** %target, %struct.stream_s* %11) #5
  store i32 %call1, i32* %status, align 4, !tbaa !63
  %12 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %12, i32 0, i32 5
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !134
  %md5 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %13, i32 0, i32 11
  %14 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs2 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %14, i32 0, i32 5
  %15 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs2, align 8, !tbaa !134
  %stream_hash = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %15, i32 0, i32 15
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %stream_hash, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md5, i8* %arraydecay) #5
  %16 = load %struct.cos_write_stream_state_s*, %struct.cos_write_stream_state_s** %ss, align 8, !tbaa !1
  %pcs3 = getelementptr inbounds %struct.cos_write_stream_state_s, %struct.cos_write_stream_state_s* %16, i32 0, i32 5
  %17 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs3, align 8, !tbaa !134
  %stream_md5_valid = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %17, i32 0, i32 14
  store i32 1, i32* %stream_md5_valid, align 4, !tbaa !117
  %18 = load i32, i32* %status, align 4, !tbaa !63
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %status, align 4, !tbaa !63
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call4 = call i32 @s_std_close(%struct.stream_s* %20) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %call4, %cond.false ]
  %21 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.cos_write_stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 %cond
}

declare i32 @s_std_close(%struct.stream_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 32}
!6 = !{!"cos_object_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !7, i64 56, !2, i64 64, !8, i64 72, !9, i64 160, !3, i64 164, !9, i64 180, !3, i64 184}
!7 = !{!"long", !3, i64 0}
!8 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !2, i64 1728}
!11 = !{!"gx_device_pdf_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !12, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !13, i64 96, !16, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !7, i64 968, !7, i64 976, !17, i64 984, !9, i64 1052, !9, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !9, i64 5864, !9, i64 5868, !22, i64 5872, !2, i64 7488, !9, i64 7496, !9, i64 7500, !9, i64 7504, !35, i64 7512, !35, i64 8144, !7, i64 8776, !7, i64 8784, !3, i64 8792, !3, i64 8796, !28, i64 8800, !9, i64 8816, !2, i64 8824, !7, i64 8832, !7, i64 8840, !3, i64 8848, !9, i64 8852, !9, i64 8856, !9, i64 8860, !9, i64 8864, !29, i64 8872, !40, i64 8880, !9, i64 9360, !29, i64 9368, !9, i64 9376, !9, i64 9380, !9, i64 9384, !9, i64 9388, !9, i64 9392, !9, i64 9396, !9, i64 9400, !9, i64 9404, !9, i64 9408, !9, i64 9412, !9, i64 9416, !9, i64 9420, !45, i64 9424, !45, i64 9440, !9, i64 9456, !9, i64 9460, !9, i64 9464, !7, i64 9472, !9, i64 9480, !9, i64 9484, !44, i64 9488, !44, i64 9504, !9, i64 9520, !9, i64 9524, !9, i64 9528, !9, i64 9532, !9, i64 9536, !9, i64 9540, !9, i64 9544, !9, i64 9548, !9, i64 9552, !9, i64 9556, !9, i64 9560, !9, i64 9564, !9, i64 9568, !7, i64 9576, !7, i64 9584, !7, i64 9592, !46, i64 9600, !44, i64 9616, !44, i64 9632, !9, i64 9648, !9, i64 9652, !9, i64 9656, !44, i64 9664, !9, i64 9680, !9, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !9, i64 9768, !9, i64 9772, !9, i64 9776, !47, i64 9784, !48, i64 9816, !48, i64 9856, !9, i64 9896, !9, i64 9900, !9, i64 9904, !9, i64 9908, !9, i64 9912, !7, i64 9920, !3, i64 9928, !9, i64 9960, !7, i64 9968, !7, i64 9976, !3, i64 9984, !3, i64 9988, !49, i64 9992, !49, i64 14120, !49, i64 18248, !49, i64 22376, !7, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !7, i64 26536, !9, i64 26544, !9, i64 26548, !7, i64 26552, !3, i64 26560, !7, i64 26568, !7, i64 26576, !3, i64 26584, !2, i64 26592, !50, i64 26600, !2, i64 26648, !9, i64 26656, !7, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !7, i64 28664, !2, i64 28672, !9, i64 28680, !9, i64 28684, !9, i64 28688, !9, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !28, i64 28792, !2, i64 28808, !2, i64 28816, !9, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !9, i64 28856, !9, i64 28860, !9, i64 28864, !51, i64 28872, !9, i64 30384, !9, i64 30388, !9, i64 30392, !2, i64 30400, !9, i64 30408, !9, i64 30412, !9, i64 30416, !25, i64 30420, !2, i64 30448, !3, i64 30456, !9, i64 30460, !9, i64 30464, !2, i64 30472, !2, i64 30480, !27, i64 30488, !9, i64 30524, !47, i64 30528, !9, i64 30560, !9, i64 30564, !9, i64 30568, !2, i64 30576, !9, i64 30584, !9, i64 30588, !7, i64 30592, !9, i64 30600, !9, i64 30604, !9, i64 30608, !25, i64 30612, !29, i64 30640, !2, i64 30648, !41, i64 30656, !9, i64 30672, !2, i64 30680, !9, i64 30688, !9, i64 30692, !9, i64 30696, !9, i64 30700, !9, i64 30704, !9, i64 30708, !9, i64 30712, !9, i64 30716, !9, i64 30720, !9, i64 30724, !9, i64 30728, !9, i64 30732, !9, i64 30736, !9, i64 30740, !9, i64 30744, !9, i64 30748, !9, i64 30752, !9, i64 30756, !9, i64 30760, !9, i64 30764, !9, i64 30768, !9, i64 30772, !2, i64 30776, !9, i64 30784, !9, i64 30788}
!12 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !7, i64 704, !9, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!16 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !19, i64 16, !9, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !7, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gs_imager_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !9, i64 128, !27, i64 132, !9, i64 168, !28, i64 176, !28, i64 192, !9, i64 208, !9, i64 212, !14, i64 216, !3, i64 220, !30, i64 224, !30, i64 228, !31, i64 232, !7, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !24, i64 296, !32, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !24, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !33, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !34, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !34, i64 1336}
!23 = !{!"gx_line_params_s", !24, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !9, i64 36, !25, i64 40, !26, i64 64}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!26 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !24, i64 12, !9, i64 16, !24, i64 20, !9, i64 24, !9, i64 28, !24, i64 32}
!27 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!28 = !{!"gs_point_s", !29, i64 0, !29, i64 8}
!29 = !{!"double", !3, i64 0}
!30 = !{!"gs_transparency_source_s", !24, i64 0}
!31 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!32 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!33 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!34 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !7, i64 16, !3, i64 24}
!35 = !{!"gx_hl_saved_color_s", !7, i64 0, !7, i64 8, !9, i64 16, !36, i64 24, !38, i64 288}
!36 = !{!"gs_client_color_s", !2, i64 0, !37, i64 8}
!37 = !{!"gs_paint_color_s", !3, i64 0}
!38 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !39, i64 336}
!39 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!40 = !{!"psdf_distiller_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !9, i64 12, !3, i64 16, !9, i64 20, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !41, i64 64, !41, i64 80, !41, i64 96, !41, i64 112, !3, i64 128, !9, i64 132, !9, i64 136, !3, i64 140, !3, i64 144, !42, i64 152, !9, i64 232, !9, i64 236, !42, i64 240, !42, i64 320, !43, i64 400, !43, i64 416, !3, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !44, i64 448, !43, i64 464}
!41 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!42 = !{!"psdf_image_params_s", !2, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !2, i64 24, !9, i64 32, !24, i64 36, !3, i64 40, !9, i64 44, !2, i64 48, !9, i64 56, !2, i64 64, !2, i64 72}
!43 = !{!"gs_param_string_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!44 = !{!"gs_param_string_s", !2, i64 0, !9, i64 8, !9, i64 12}
!45 = !{!"gs_param_float_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!46 = !{!"gs_param_int_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!47 = !{!"gs_rect_s", !28, i64 0, !28, i64 16}
!48 = !{!"pdf_page_dsc_info_s", !9, i64 0, !9, i64 4, !47, i64 8}
!49 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!50 = !{!"pdf_text_rotation_s", !3, i64 0, !9, i64 40}
!51 = !{!"pdf_viewer_state_s", !9, i64 0, !3, i64 8, !24, i64 40, !24, i64 44, !3, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !9, i64 80, !24, i64 84, !24, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !35, i64 120, !35, i64 752, !23, i64 1384, !2, i64 1488, !9, i64 1496, !7, i64 1504}
!52 = !{!6, !2, i64 0}
!53 = !{!54, !2, i64 0}
!54 = !{!"cos_object_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!55 = !{!56, !2, i64 24}
!56 = !{!"gs_memory_s", !2, i64 0, !57, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!57 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!58 = !{!7, !7, i64 0}
!59 = !{!54, !2, i64 8}
!60 = !{!3, !3, i64 0}
!61 = !{!6, !7, i64 8}
!62 = !{!6, !3, i64 50}
!63 = !{!9, !9, i64 0}
!64 = !{!65, !2, i64 0}
!65 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!66 = !{!65, !9, i64 8}
!67 = !{!68, !3, i64 0}
!68 = !{!"cos_value_s", !3, i64 0, !3, i64 8}
!69 = !{!56, !2, i64 160}
!70 = !{!11, !2, i64 5848}
!71 = !{!56, !2, i64 72}
!72 = !{!6, !2, i64 16}
!73 = !{!6, !2, i64 24}
!74 = !{!6, !2, i64 40}
!75 = !{!6, !3, i64 48}
!76 = !{!6, !3, i64 49}
!77 = !{!6, !7, i64 56}
!78 = !{!6, !2, i64 64}
!79 = !{!6, !9, i64 160}
!80 = !{!6, !9, i64 180}
!81 = !{!82, !2, i64 16}
!82 = !{!"cos_array_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !7, i64 56, !2, i64 64, !8, i64 72, !9, i64 160, !3, i64 164, !9, i64 180, !3, i64 184}
!83 = !{!84, !2, i64 0}
!84 = !{!"cos_array_element_s", !2, i64 0, !7, i64 8, !68, i64 16}
!85 = !{!11, !9, i64 9564}
!86 = !{!11, !9, i64 30724}
!87 = !{!11, !2, i64 24}
!88 = !{!11, !9, i64 9568}
!89 = !{!84, !7, i64 8}
!90 = !{!82, !9, i64 160}
!91 = !{!24, !24, i64 0}
!92 = !{!29, !29, i64 0}
!93 = !{i64 0, i64 4, !60, i64 8, i64 8, !1, i64 16, i64 4, !63, i64 8, i64 8, !1}
!94 = !{!56, !2, i64 136}
!95 = !{!96, !2, i64 16}
!96 = !{!"cos_dict_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !7, i64 56, !2, i64 64, !8, i64 72, !9, i64 160, !3, i64 164, !9, i64 180, !3, i64 184}
!97 = !{!98, !2, i64 0}
!98 = !{!"cos_dict_element_s", !2, i64 0, !65, i64 8, !9, i64 24, !68, i64 32}
!99 = !{!98, !2, i64 8}
!100 = !{!98, !9, i64 16}
!101 = !{!96, !7, i64 8}
!102 = !{!11, !9, i64 9672}
!103 = !{!11, !2, i64 9664}
!104 = !{!98, !3, i64 32}
!105 = !{!98, !9, i64 24}
!106 = !{!96, !9, i64 160}
!107 = !{!96, !2, i64 32}
!108 = !{!109, !2, i64 24}
!109 = !{!"cos_param_list_writer_s", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32}
!110 = !{!109, !9, i64 32}
!111 = !{!112, !2, i64 24}
!112 = !{!"cos_stream_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !7, i64 56, !2, i64 64, !8, i64 72, !9, i64 160, !3, i64 164, !9, i64 180, !3, i64 184}
!113 = !{!114, !2, i64 0}
!114 = !{!"cos_stream_piece_s", !2, i64 0, !7, i64 8, !9, i64 16}
!115 = !{!112, !2, i64 64}
!116 = !{!112, !2, i64 16}
!117 = !{!112, !9, i64 180}
!118 = !{!112, !9, i64 160}
!119 = !{!112, !7, i64 56}
!120 = !{!112, !7, i64 8}
!121 = !{!11, !2, i64 22344}
!122 = !{!11, !9, i64 30392}
!123 = !{!11, !9, i64 9648}
!124 = !{!125, !2, i64 208}
!125 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !14, i64 152, !3, i64 154, !3, i64 155, !65, i64 160, !7, i64 176, !126, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !14, i64 264, !14, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !41, i64 312, !9, i64 328, !7, i64 336, !7, i64 344}
!126 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!127 = !{!11, !2, i64 22352}
!128 = !{!114, !7, i64 8}
!129 = !{!114, !9, i64 16}
!130 = !{!112, !2, i64 32}
!131 = !{!56, !2, i64 64}
!132 = !{!133, !2, i64 0}
!133 = !{!"cos_write_stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136}
!134 = !{!133, !2, i64 112}
!135 = !{!133, !2, i64 120}
!136 = !{!133, !2, i64 128}
!137 = !{!133, !2, i64 136}
!138 = !{!125, !2, i64 256}
!139 = !{!125, !2, i64 224}
!140 = !{!126, !2, i64 40}
!141 = !{!125, !2, i64 240}
!142 = !{!54, !2, i64 24}
!143 = !{!144, !2, i64 32}
!144 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!145 = !{!144, !2, i64 40}
!146 = !{!147, !2, i64 0}
!147 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!148 = !{!147, !9, i64 8}
!149 = !{!150, !2, i64 8}
!150 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!151 = !{!150, !2, i64 0}
!152 = !{!109, !2, i64 8}
!153 = !{!154, !3, i64 16}
!154 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!155 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !63}
!156 = !{!157, !2, i64 24}
!157 = !{!"param_printer_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32}
!158 = !{!157, !2, i64 16}
!159 = !{!157, !2, i64 8}
!160 = !{!157, !2, i64 0}
!161 = !{!157, !9, i64 32}
!162 = !{!163, !2, i64 0}
!163 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16}
!164 = !{!165, !2, i64 0}
!165 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!166 = !{!56, !2, i64 152}
!167 = !{!46, !9, i64 8}
!168 = !{!46, !2, i64 0}
!169 = !{!45, !2, i64 0}
!170 = !{!56, !2, i64 200}
!171 = !{!56, !2, i64 88}
!172 = !{!173, !2, i64 8}
!173 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!174 = !{!173, !2, i64 0}
