; ModuleID = './gdevpdfk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_array_element_s = type opaque
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
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.8 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.7, %struct.anon.7, %struct.anon.7, %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.8 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
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
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.icc_a2b0_s = type { [52 x i8], %struct.gs_color_space_s*, i32, i32 }
%struct.profile_table_s = type { i8*, i8*, i32, i32, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)*, i8*, %struct.gs_range_s* }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.4 }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.anon.4 = type { i32, %struct.gx_cie_vector_cache3_s }

@.str = private unnamed_addr constant [5 x i8] c"/Lab\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pdf_cie_add_ranges\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/Range\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/ICCBased\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"pdf_make_iccbased(stream)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/N\00", align 1
@pdf_color_space_names = external constant %struct.pdf_color_space_names_s, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"/Alternate\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"pdf_make_iccbased(Range)\00", align 1
@pdf_convert_cie_to_iccbased.header_data = internal constant [68 x i8] c"\00\00\00\00\00\00\00\00\02 \00\00scnr\00\00\00\00XYZ \07\D2\00\01\00\01\00\00\00\00\00\00acsp\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", align 16
@pdf_convert_cie_to_iccbased.desc_data = internal constant [18 x i8] c"desc\00\00\00\00\00\00\00\06adhoc\00", align 16
@pdf_convert_cie_to_iccbased.cprt_data = internal constant [13 x i8] c"text\00\00\00\00none\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"pdf_convert_cie_to_iccbased\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"wtpt\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cprt\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"rTRC\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gTRC\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"bTRC\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"rXYZ\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"gXYZ\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"bXYZ\00", align 1
@pdf_convert_cie_to_iccbased.pad = internal constant [3 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"XYZ \00\00\00\00\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"curv\00\00\00\00\00", align 1
@add_a2b0.a2b0_data = internal constant [52 x i8] c"mft2\00\00\00\00\00\03\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\02", align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"A2B0\00", align 1
@write_a2b0.v01 = internal constant [16 x i8] c"\00\00\FF\FF\00\00\FF\FF\00\00\FF\FF\00\00\FF\FF", align 16

; Function Attrs: nounwind uwtable
define i32 @pdf_put_lab_color_space(%struct.cos_array_s* %pca, %struct.cos_dict_s* %pcd, %struct.gs_range_s* %ranges) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %v = alloca %struct.cos_value_s, align 8
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call i32 @cos_array_add(%struct.cos_array_s* %2, %struct.cos_value_s* %call) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i64 1
  %call2 = call i32 @pdf_cie_add_ranges(%struct.cos_dict_s* %3, %struct.gs_range_s* %add.ptr, i32 2, i32 0) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @cos_array_add(%struct.cos_array_s*, %struct.cos_value_s*) #2

declare %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_cie_add_ranges(%struct.cos_dict_s* %pcd, %struct.gs_range_s* %prange, i32 %n, i32 %clamp) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %n.addr = alloca i32, align 4
  %clamp.addr = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i32 %clamp, i32* %clamp.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !7
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #5
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %10, i64 %idxprom
  %rmin2 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %11 = load float, float* %rmin2, align 4, !tbaa !11
  %conv = fpext float %11 to double
  store double %conv, double* %rmin, align 8, !tbaa !14
  %12 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %14, i64 %idxprom3
  %rmax5 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx4, i32 0, i32 1
  %15 = load float, float* %rmax5, align 4, !tbaa !16
  %conv6 = fpext float %15 to double
  store double %conv6, double* %rmax, align 8, !tbaa !14
  %16 = load i32, i32* %clamp.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %for.body
  %17 = load double, double* %rmin, align 8, !tbaa !14
  %cmp8 = fcmp olt double %17, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store double 0.000000e+00, double* %rmin, align 8, !tbaa !14
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  %18 = load double, double* %rmax, align 8, !tbaa !14
  %cmp12 = fcmp ogt double %18, 1.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store double 1.000000e+00, double* %rmax, align 8, !tbaa !14
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %for.body
  %19 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %20 = load double, double* %rmin, align 8, !tbaa !14
  %call17 = call i32 @cos_array_add_real(%struct.cos_array_s* %19, double %20) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %21 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %22 = load double, double* %rmax, align 8, !tbaa !14
  %call20 = call i32 @cos_array_add_real(%struct.cos_array_s* %21, double %22) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23
  %23 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %26, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  %27 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %28 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %28, i32 0, i32 0
  %29 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call29 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.cos_object_s* %29) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.end
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.30
  %31 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs34 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %31, i32 0, i32 0
  %32 = bitcast %struct.cos_object_procs_s** %cos_procs34 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.30
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %if.then
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue, %struct.gs_color_space_s* %pcs, %struct.cos_array_s* %pca) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcstrm = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 6
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !17
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 0
  %6 = load i8, i8* %num_comps, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data1, align 8, !tbaa !17
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arraydecay = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 3
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %call = call i32 @pdf_make_iccbased(%struct.gx_device_pdf_s* %2, %struct.cos_array_s* %3, i32 %conv, %struct.gs_range_s* %arraydecay, %struct.gs_color_space_s* %10, %struct.cos_stream_s** %pcstrm, %struct.gs_range_s** null) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 6
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data3, align 8, !tbaa !17
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 14
  %16 = load i8*, i8** %buffer, align 8, !tbaa !25
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 6
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data4, align 8, !tbaa !17
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 11
  %19 = load i32, i32* %buffer_size, align 4, !tbaa !26
  %call5 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %13, i8* %16, i32 %19) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %20, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %21 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %call9 = call i32 @pdf_finish_iccbased(%struct.cos_stream_s* %21) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_iccbased(%struct.gx_device_pdf_s* %pdev, %struct.cos_array_s* %pca, i32 %ncomps, %struct.gs_range_s* %prange, %struct.gs_color_space_s* %pcs_alt, %struct.cos_stream_s** %ppcstrm, %struct.gs_range_s** %pprange) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %ncomps.addr = alloca i32, align 4
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %pcs_alt.addr = alloca %struct.gs_color_space_s*, align 8
  %ppcstrm.addr = alloca %struct.cos_stream_s**, align 8
  %pprange.addr = alloca %struct.gs_range_s**, align 8
  %v = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %pcstrm = alloca %struct.cos_stream_s*, align 8
  %prngca = alloca %struct.cos_array_s*, align 8
  %std_ranges = alloca i32, align 4
  %scale_inputs = alloca i32, align 4
  %i = alloca i32, align 4
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !5
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_alt, %struct.gs_color_space_s** %pcs_alt.addr, align 8, !tbaa !1
  store %struct.cos_stream_s** %ppcstrm, %struct.cos_stream_s*** %ppcstrm.addr, align 8, !tbaa !1
  store %struct.gs_range_s** %pprange, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.cos_stream_s* null, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %3 = bitcast %struct.cos_array_s** %prngca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.cos_array_s* null, %struct.cos_array_s** %prngca, align 8, !tbaa !1
  %4 = bitcast i32* %std_ranges to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %std_ranges, align 4, !tbaa !5
  %5 = bitcast i32* %scale_inputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %scale_inputs, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 248
  %8 = load i32, i32* %UseOldColor, align 4, !tbaa !27
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_range_s** %9, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  store %struct.gs_range_s* null, %struct.gs_range_s** %10, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %15, i64 %idxprom
  %rmin3 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %16 = load float, float* %rmin3, align 4, !tbaa !11
  %conv = fpext float %16 to double
  store double %conv, double* %rmin, align 8, !tbaa !14
  %17 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %18 to i64
  %19 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %19, i64 %idxprom4
  %rmax6 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx5, i32 0, i32 1
  %20 = load float, float* %rmax6, align 4, !tbaa !16
  %conv7 = fpext float %20 to double
  store double %conv7, double* %rmax, align 8, !tbaa !14
  %21 = load double, double* %rmin, align 8, !tbaa !14
  %cmp8 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %22 = load double, double* %rmax, align 8, !tbaa !14
  %cmp10 = fcmp ogt double %22, 1.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %for.body
  %23 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_range_s** %23, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %24 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %25 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %24, %struct.gs_range_s** %25, align 8, !tbaa !1
  store i32 1, i32* %scale_inputs, align 4, !tbaa !5
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  %26 = load double, double* %rmin, align 8, !tbaa !14
  %cmp17 = fcmp ogt double %26, 0.000000e+00
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.else
  %27 = load double, double* %rmax, align 8, !tbaa !14
  %cmp20 = fcmp olt double %27, 1.000000e+00
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.else
  store i32 0, i32* %std_ranges, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.15
  %28 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %entry
  %31 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #5
  %call27 = call i32 @cos_array_add(%struct.cos_array_s* %31, %struct.cos_value_s* %call) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.31:                                        ; preds = %if.end.26
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call32 = call %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #5
  store %struct.cos_stream_s* %call32, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.cos_stream_s* %call32, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.36:                                        ; preds = %if.end.31
  %34 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %call37 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %34) #5
  %35 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %call38 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %call37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %35) #5
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %36, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  br label %fail

if.end.42:                                        ; preds = %if.end.36
  %37 = load i32, i32* %std_ranges, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %if.end.52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.42
  %38 = load i32, i32* %scale_inputs, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.end.52, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true
  %39 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %call46 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %39) #5
  %40 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %41 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %call47 = call i32 @pdf_cie_add_ranges(%struct.cos_dict_s* %call46, %struct.gs_range_s* %40, i32 %41, i32 1) #5
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %42, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  br label %fail

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true, %if.end.42
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_alt.addr, align 8, !tbaa !1
  %cmp53 = icmp ne %struct.gs_color_space_s* %43, null
  br i1 %cmp53, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %if.end.52
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_alt.addr, align 8, !tbaa !1
  %call56 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %44) #5
  switch i32 %call56, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.55, %if.then.55, %if.then.55
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.55
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_alt.addr, align 8, !tbaa !1
  %call57 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %45, %struct.cos_value_s* %v, %struct.gs_range_s** null, %struct.gs_color_space_s* %46, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 1) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.65, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %sw.default
  %47 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %call61 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %47) #5
  %call62 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %call61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.cos_value_s* %v) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false.60, %sw.default
  br label %fail

if.end.66:                                        ; preds = %lor.lhs.false.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.66, %sw.bb
  br label %if.end.67

if.end.67:                                        ; preds = %sw.epilog, %if.end.52
  %48 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %49 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %49, i32 0, i32 0
  %50 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call68 = call i32 @cos_array_add_object(%struct.cos_array_s* %48, %struct.cos_object_s* %50) #5
  store i32 %call68, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  br label %fail

if.end.72:                                        ; preds = %if.end.67
  %51 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %52 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %ppcstrm.addr, align 8, !tbaa !1
  store %struct.cos_stream_s* %51, %struct.cos_stream_s** %52, align 8, !tbaa !1
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

fail:                                             ; preds = %if.then.71, %if.then.65, %if.then.50, %if.then.41, %if.then.35
  %54 = load %struct.cos_array_s*, %struct.cos_array_s** %prngca, align 8, !tbaa !1
  %tobool73 = icmp ne %struct.cos_array_s* %54, null
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %fail
  %55 = load %struct.cos_array_s*, %struct.cos_array_s** %prngca, align 8, !tbaa !1
  %cos_procs75 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %55, i32 0, i32 0
  %56 = bitcast %struct.cos_object_procs_s** %cos_procs75 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %fail
  %57 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.cos_stream_s* %57, null
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.76
  %58 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %cos_procs79 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %58, i32 0, i32 0
  %59 = bitcast %struct.cos_object_procs_s** %cos_procs79 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.76
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %if.end.80, %if.end.72, %if.then.30, %cleanup
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %scale_inputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %std_ranges to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.cos_array_s** %prngca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i32 @cos_stream_add_bytes(%struct.cos_stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_finish_iccbased(%struct.cos_stream_s* %pcstrm) #0 {
entry:
  %pcstrm.addr = alloca %struct.cos_stream_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.cos_stream_s* %pcstrm, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !66
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %3) #5
  %4 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %4, i32 0, i32 1
  store i64 %call, i64* %id, align 8, !tbaa !68
  %5 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %5, i32 0, i32 0
  %6 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call2 = call i32 @cos_write_object(%struct.cos_object_s* %6, %struct.gx_device_pdf_s* %7, i32 30) #5
  %8 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %pdev, %struct.cos_array_s* %pca, %struct.gs_color_space_s* %pcs, i8* %dcsname, %struct.gs_cie_common_s* %pciec, %struct.gs_range_s* %prange, i32 %one_step, %struct.gs_matrix3_s* %pmat, %struct.gs_range_s** %pprange) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %dcsname.addr = alloca i8*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %one_step.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix3_s*, align 8
  %pprange.addr = alloca %struct.gs_range_s**, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8* %dcsname, i8** %dcsname.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  store i32 %one_step, i32* %one_step.addr, align 4, !tbaa !69
  store %struct.gs_matrix3_s* %pmat, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_range_s** %pprange, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 75
  %1 = load double, double* %CompatibilityLevel, align 8, !tbaa !70
  %cmp = fcmp olt double %1, 1.300000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %6 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %call = call i32 @pdf_convert_cie_to_lab(%struct.gx_device_pdf_s* %2, %struct.cos_array_s* %3, %struct.gs_color_space_s* %4, %struct.gs_cie_common_s* %5, %struct.gs_range_s* %6) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %dcsname.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %12 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %13 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %15 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_convert_cie_to_iccbased(%struct.gx_device_pdf_s* %7, %struct.cos_array_s* %8, %struct.gs_color_space_s* %9, i8* %10, %struct.gs_cie_common_s* %11, %struct.gs_range_s* %12, i32 %13, %struct.gs_matrix3_s* %14, %struct.gs_range_s** %15) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_convert_cie_to_lab(%struct.gx_device_pdf_s* %pdev, %struct.cos_array_s* %pca, %struct.gs_color_space_s* %pcs, %struct.gs_cie_common_s* %pciec, %struct.gs_range_s* %prange) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %ranges = alloca [3 x %struct.gs_range_s], align 16
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [3 x %struct.gs_range_s]* %ranges to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  %4 = bitcast [3 x %struct.gs_range_s]* %ranges to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #1
  %5 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_convert_cie_to_iccbased(%struct.gx_device_pdf_s* %pdev, %struct.cos_array_s* %pca, %struct.gs_color_space_s* %pcs, i8* %dcsname, %struct.gs_cie_common_s* %pciec, %struct.gs_range_s* %prange, i32 %one_step, %struct.gs_matrix3_s* %pmat, %struct.gs_range_s** %pprange) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %dcsname.addr = alloca i8*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %one_step.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix3_s*, align 8
  %pprange.addr = alloca %struct.gs_range_s**, align 8
  %code = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %alt_space = alloca %struct.gs_color_space_s*, align 8
  %pcstrm = alloca %struct.cos_stream_s*, align 8
  %white_d50 = alloca %struct.gs_vector3_s, align 4
  %temp_xyz = alloca %struct.gs_vector3_s, align 4
  %header = alloca [128 x i8], align 16
  %desc = alloca [96 x i8], align 16
  %wtpt = alloca [20 x i8], align 16
  %a2b0 = alloca %struct.icc_a2b0_s, align 8
  %rTRC = alloca [12 x i8], align 1
  %gTRC = alloca [12 x i8], align 1
  %bTRC = alloca [12 x i8], align 1
  %rXYZ = alloca [20 x i8], align 16
  %gXYZ = alloca [20 x i8], align 16
  %bXYZ = alloca [20 x i8], align 16
  %tables = alloca [9 x %struct.profile_table_s], align 16
  %next_table = alloca %struct.profile_table_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tr = alloca %struct.profile_table_s*, align 8
  %tg = alloca %struct.profile_table_s*, align 8
  %tb = alloca %struct.profile_table_s*, align 8
  %pnt = alloca %struct.profile_table_s*, align 8
  %bytes = alloca [112 x i8], align 16
  %num_tables = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %table_size = alloca i32, align 4
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8* %dcsname, i8** %dcsname.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  store i32 %one_step, i32* %one_step.addr, align 4, !tbaa !69
  store %struct.gs_matrix3_s* %pmat, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_range_s** %pprange, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %2) #5
  store i32 %call, i32* %ncomps, align 4, !tbaa !5
  %3 = bitcast %struct.gs_color_space_s** %alt_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_vector3_s* %white_d50 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #1
  %6 = bitcast %struct.gs_vector3_s* %temp_xyz to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast [128 x i8]* %header to i8*
  call void @llvm.lifetime.start(i64 128, i8* %7) #1
  %8 = bitcast [96 x i8]* %desc to i8*
  call void @llvm.lifetime.start(i64 96, i8* %8) #1
  %9 = bitcast [20 x i8]* %wtpt to i8*
  call void @llvm.lifetime.start(i64 20, i8* %9) #1
  %10 = bitcast %struct.icc_a2b0_s* %a2b0 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %10) #1
  %11 = bitcast [12 x i8]* %rTRC to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11) #1
  %12 = bitcast [12 x i8]* %gTRC to i8*
  call void @llvm.lifetime.start(i64 12, i8* %12) #1
  %13 = bitcast [12 x i8]* %bTRC to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #1
  %14 = bitcast [20 x i8]* %rXYZ to i8*
  call void @llvm.lifetime.start(i64 20, i8* %14) #1
  %15 = bitcast [20 x i8]* %gXYZ to i8*
  call void @llvm.lifetime.start(i64 20, i8* %15) #1
  %16 = bitcast [20 x i8]* %bXYZ to i8*
  call void @llvm.lifetime.start(i64 20, i8* %16) #1
  %17 = bitcast [9 x %struct.profile_table_s]* %tables to i8*
  call void @llvm.lifetime.start(i64 432, i8* %17) #1
  %18 = bitcast %struct.profile_table_s** %next_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %arraydecay = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i32 0
  store %struct.profile_table_s* %arraydecay, %struct.profile_table_s** %next_table, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %white_d50, i32 0, i32 0
  store float 0x3FEEDABA00000000, float* %u, align 4, !tbaa !71
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %white_d50, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !73
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %white_d50, i32 0, i32 2
  store float 0x3FEA6594A0000000, float* %w, align 4, !tbaa !74
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  %21 = load i32, i32* %ncomps, align 4, !tbaa !5
  %call1 = call i32 @pdf_cspace_init_Device(%struct.gs_memory_s* %20, %struct.gs_color_space_s** %alt_space, i32 %21) #5
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %24 = load i32, i32* %ncomps, align 4, !tbaa !5
  %25 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %alt_space, align 8, !tbaa !1
  %27 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_make_iccbased(%struct.gx_device_pdf_s* %22, %struct.cos_array_s* %23, i32 %24, %struct.gs_range_s* %25, %struct.gs_color_space_s* %26, %struct.cos_stream_s** %pcstrm, %struct.gs_range_s** %27) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %alt_space, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %call4 = call i8* @memset(i8* %arraydecay3, i32 0, i64 128) #6
  %arraydecay5 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %call6 = call i8* @memcpy(i8* %arraydecay5, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @pdf_convert_cie_to_iccbased.header_data, i32 0, i32 0), i64 68) #6
  %arraydecay7 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 16
  %31 = load i8*, i8** %dcsname.addr, align 8, !tbaa !1
  %call8 = call i8* @memcpy(i8* %add.ptr, i8* %31, i64 4) #6
  %arraydecay9 = getelementptr inbounds [96 x i8], [96 x i8]* %desc, i32 0, i32 0
  %call10 = call i8* @memset(i8* %arraydecay9, i32 0, i64 96) #6
  %arraydecay11 = getelementptr inbounds [96 x i8], [96 x i8]* %desc, i32 0, i32 0
  %call12 = call i8* @memcpy(i8* %arraydecay11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @pdf_convert_cie_to_iccbased.desc_data, i32 0, i32 0), i64 18) #6
  %arraydecay13 = getelementptr inbounds [96 x i8], [96 x i8]* %desc, i32 0, i32 0
  %call14 = call %struct.profile_table_s* @add_table(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay13, i32 96) #5
  %arraydecay15 = getelementptr inbounds [20 x i8], [20 x i8]* %wtpt, i32 0, i32 0
  call void @add_table_xyz3(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay15, %struct.gs_vector3_s* %white_d50) #5
  %arraydecay16 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 68
  %arraydecay18 = getelementptr inbounds [20 x i8], [20 x i8]* %wtpt, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 8
  %call20 = call i8* @memcpy(i8* %add.ptr17, i8* %add.ptr19, i64 12) #6
  %call21 = call %struct.profile_table_s* @add_table(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pdf_convert_cie_to_iccbased.cprt_data, i32 0, i32 0), i32 13) #5
  %32 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %cmp22 = icmp eq i32 %32, 2
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %33 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %cmp23 = icmp eq i32 %33, 1
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %34 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.gs_matrix3_s* %34, null
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true
  %35 = bitcast %struct.profile_table_s** %tr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %arraydecay26 = getelementptr inbounds [12 x i8], [12 x i8]* %rTRC, i32 0, i32 0
  %36 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %37 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %call27 = call %struct.profile_table_s* @add_trc(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay26, %struct.gs_cie_common_s* %36, i32 %37) #5
  store %struct.profile_table_s* %call27, %struct.profile_table_s** %tr, align 8, !tbaa !1
  %38 = bitcast %struct.profile_table_s** %tg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %arraydecay28 = getelementptr inbounds [12 x i8], [12 x i8]* %gTRC, i32 0, i32 0
  %39 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %40 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %call29 = call %struct.profile_table_s* @add_trc(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay28, %struct.gs_cie_common_s* %39, i32 %40) #5
  store %struct.profile_table_s* %call29, %struct.profile_table_s** %tg, align 8, !tbaa !1
  %41 = bitcast %struct.profile_table_s** %tb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %arraydecay30 = getelementptr inbounds [12 x i8], [12 x i8]* %bTRC, i32 0, i32 0
  %42 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %43 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %call31 = call %struct.profile_table_s* @add_trc(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay30, %struct.gs_cie_common_s* %42, i32 %43) #5
  store %struct.profile_table_s* %call31, %struct.profile_table_s** %tb, align 8, !tbaa !1
  %44 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %45 = load %struct.gs_range_s*, %struct.gs_range_s** %44, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_range_s* %45, null
  br i1 %tobool, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.then.25
  %46 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %47 = load %struct.gs_range_s*, %struct.gs_range_s** %46, align 8, !tbaa !1
  %48 = load %struct.profile_table_s*, %struct.profile_table_s** %tr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %48, i32 0, i32 6
  store %struct.gs_range_s* %47, %struct.gs_range_s** %ranges, align 8, !tbaa !76
  %49 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %50 = load %struct.gs_range_s*, %struct.gs_range_s** %49, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %50, i64 1
  %51 = load %struct.profile_table_s*, %struct.profile_table_s** %tg, align 8, !tbaa !1
  %ranges34 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %51, i32 0, i32 6
  store %struct.gs_range_s* %add.ptr33, %struct.gs_range_s** %ranges34, align 8, !tbaa !76
  %52 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %53 = load %struct.gs_range_s*, %struct.gs_range_s** %52, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %53, i64 2
  %54 = load %struct.profile_table_s*, %struct.profile_table_s** %tb, align 8, !tbaa !1
  %ranges36 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %54, i32 0, i32 6
  store %struct.gs_range_s* %add.ptr35, %struct.gs_range_s** %ranges36, align 8, !tbaa !76
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.then.25
  %55 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %55, i32 0, i32 0
  %56 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %56, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  call void @adjust_wp(%struct.gs_vector3_s* %cu, %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s* %temp_xyz, %struct.gs_vector3_s* %white_d50) #5
  %arraydecay38 = getelementptr inbounds [20 x i8], [20 x i8]* %rXYZ, i32 0, i32 0
  call void @add_table_xyz3(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay38, %struct.gs_vector3_s* %temp_xyz) #5
  %57 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %57, i32 0, i32 1
  %58 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points39 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %58, i32 0, i32 5
  %WhitePoint40 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points39, i32 0, i32 0
  call void @adjust_wp(%struct.gs_vector3_s* %cv, %struct.gs_vector3_s* %WhitePoint40, %struct.gs_vector3_s* %temp_xyz, %struct.gs_vector3_s* %white_d50) #5
  %arraydecay41 = getelementptr inbounds [20 x i8], [20 x i8]* %gXYZ, i32 0, i32 0
  call void @add_table_xyz3(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay41, %struct.gs_vector3_s* %temp_xyz) #5
  %59 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %59, i32 0, i32 2
  %60 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points42 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %60, i32 0, i32 5
  %WhitePoint43 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points42, i32 0, i32 0
  call void @adjust_wp(%struct.gs_vector3_s* %cw, %struct.gs_vector3_s* %WhitePoint43, %struct.gs_vector3_s* %temp_xyz, %struct.gs_vector3_s* %white_d50) #5
  %arraydecay44 = getelementptr inbounds [20 x i8], [20 x i8]* %bXYZ, i32 0, i32 0
  call void @add_table_xyz3(%struct.profile_table_s** %next_table, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay44, %struct.gs_vector3_s* %temp_xyz) #5
  %61 = bitcast %struct.profile_table_s** %tb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.profile_table_s** %tg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.profile_table_s** %tr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %64 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i32, i32* %ncomps, align 4, !tbaa !5
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call45 = call %struct.profile_table_s* @add_a2b0(%struct.profile_table_s** %next_table, %struct.icc_a2b0_s* %a2b0, i32 %65, %struct.gs_color_space_s* %66) #5
  store %struct.profile_table_s* %call45, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %67 = load %struct.gs_range_s**, %struct.gs_range_s*** %pprange.addr, align 8, !tbaa !1
  %68 = load %struct.gs_range_s*, %struct.gs_range_s** %67, align 8, !tbaa !1
  %69 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %ranges46 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %69, i32 0, i32 6
  store %struct.gs_range_s* %68, %struct.gs_range_s** %ranges46, align 8, !tbaa !76
  %70 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.end.37
  %71 = bitcast [112 x i8]* %bytes to i8*
  call void @llvm.lifetime.start(i64 112, i8* %71) #1
  %72 = bitcast i32* %num_tables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load %struct.profile_table_s*, %struct.profile_table_s** %next_table, align 8, !tbaa !1
  %arraydecay48 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint %struct.profile_table_s* %73 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.profile_table_s* %arraydecay48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %num_tables, align 4, !tbaa !5
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32, i32* %num_tables, align 4, !tbaa !5
  %mul = mul nsw i32 %77, 12
  %add = add nsw i32 4, %mul
  store i32 %add, i32* %table_size, align 4, !tbaa !5
  %78 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i32, i32* %table_size, align 4, !tbaa !5
  %conv49 = zext i32 %79 to i64
  %add50 = add i64 128, %conv49
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %offset, align 4, !tbaa !5
  %arraydecay52 = getelementptr inbounds [112 x i8], [112 x i8]* %bytes, i32 0, i32 0
  %80 = load %struct.profile_table_s*, %struct.profile_table_s** %next_table, align 8, !tbaa !1
  %arraydecay53 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i32 0
  %sub.ptr.lhs.cast54 = ptrtoint %struct.profile_table_s* %80 to i64
  %sub.ptr.rhs.cast55 = ptrtoint %struct.profile_table_s* %arraydecay53 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div57 = sdiv exact i64 %sub.ptr.sub56, 48
  %conv58 = trunc i64 %sub.ptr.div57 to i32
  call void @set_uint32(i8* %arraydecay52, i32 %conv58) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  %arraydecay59 = getelementptr inbounds [112 x i8], [112 x i8]* %bytes, i32 0, i32 0
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay59, i64 4
  store i8* %add.ptr60, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %82 = load i32, i32* %num_tables, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %81, %82
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %84 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom
  %tag = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx, i32 0, i32 0
  %85 = load i8*, i8** %tag, align 8, !tbaa !78
  %call63 = call i8* @memcpy(i8* %83, i8* %85, i64 4) #6
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i8, i8* %86, i64 4
  %87 = load i32, i32* %offset, align 4, !tbaa !5
  call void @set_uint32(i8* %add.ptr64, i32 %87) #5
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds i8, i8* %88, i64 8
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %89 to i64
  %arrayidx67 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom66
  %length = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx67, i32 0, i32 2
  %90 = load i32, i32* %length, align 4, !tbaa !79
  call void @set_uint32(i8* %add.ptr65, i32 %90) #5
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %91 to i64
  %arrayidx69 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom68
  %length70 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx69, i32 0, i32 2
  %92 = load i32, i32* %length70, align 4, !tbaa !79
  %add71 = add i32 %92, 3
  %and = and i32 %add71, -4
  %93 = load i32, i32* %offset, align 4, !tbaa !5
  %add72 = add i32 %93, %and
  store i32 %add72, i32* %offset, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %95, i64 12
  store i8* %add.ptr73, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay74 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %96 = load i32, i32* %offset, align 4, !tbaa !5
  call void @set_uint32(i8* %arraydecay74, i32 %96) #5
  %97 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [128 x i8], [128 x i8]* %header, i32 0, i32 0
  %call76 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %97, i8* %arraydecay75, i32 128) #5
  store i32 %call76, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.84, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %for.end
  %98 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %arraydecay80 = getelementptr inbounds [112 x i8], [112 x i8]* %bytes, i32 0, i32 0
  %99 = load i32, i32* %table_size, align 4, !tbaa !5
  %call81 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %98, i8* %arraydecay80, i32 %99) #5
  store i32 %call81, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.79, %for.end
  %100 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.85:                                        ; preds = %lor.lhs.false.79
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.121, %if.end.85
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %102 = load i32, i32* %num_tables, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %101, %102
  br i1 %cmp87, label %for.body.89, label %for.end.123

for.body.89:                                      ; preds = %for.cond.86
  %103 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %104 to i64
  %arrayidx91 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom90
  %data_length = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx91, i32 0, i32 3
  %105 = load i32, i32* %data_length, align 4, !tbaa !80
  store i32 %105, i32* %len, align 4, !tbaa !5
  %106 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %107 to i64
  %arrayidx93 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom92
  %data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx93, i32 0, i32 1
  %108 = load i8*, i8** %data, align 8, !tbaa !81
  %109 = load i32, i32* %len, align 4, !tbaa !5
  %call94 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %106, i8* %108, i32 %109) #5
  store i32 %call94, i32* %code, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then.119, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %for.body.89
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %110 to i64
  %arrayidx99 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom98
  %write = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx99, i32 0, i32 4
  %111 = load i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)*, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)** %write, align 8, !tbaa !82
  %cmp100 = icmp ne i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* %111, null
  br i1 %cmp100, label %land.lhs.true.102, label %lor.lhs.false.111

land.lhs.true.102:                                ; preds = %lor.lhs.false.97
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %112 to i64
  %arrayidx104 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom103
  %write105 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx104, i32 0, i32 4
  %113 = load i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)*, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)** %write105, align 8, !tbaa !82
  %114 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %115 to i64
  %arrayidx107 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom106
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 43
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !83
  %118 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %call108 = call i32 %113(%struct.cos_stream_s* %114, %struct.profile_table_s* %arrayidx107, %struct.gs_memory_s* %117, %struct.gs_cie_common_s* %118) #5
  store i32 %call108, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.119, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.102, %lor.lhs.false.97
  %119 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom112 = sext i32 %120 to i64
  %arrayidx113 = getelementptr inbounds [9 x %struct.profile_table_s], [9 x %struct.profile_table_s]* %tables, i32 0, i64 %idxprom112
  %length114 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %arrayidx113, i32 0, i32 2
  %121 = load i32, i32* %length114, align 4, !tbaa !79
  %sub = sub nsw i32 0, %121
  %and115 = and i32 %sub, 3
  %call116 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @pdf_convert_cie_to_iccbased.pad, i32 0, i32 0), i32 %and115) #5
  store i32 %call116, i32* %code, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.102, %for.body.89
  %122 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.120:                                       ; preds = %lor.lhs.false.111
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.120, %if.then.119
  %123 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.124 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.121

for.inc.121:                                      ; preds = %cleanup.cont
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc122 = add nsw i32 %124, 1
  store i32 %inc122, i32* %i, align 4, !tbaa !5
  br label %for.cond.86

for.end.123:                                      ; preds = %for.cond.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.124

cleanup.124:                                      ; preds = %for.end.123, %cleanup, %if.then.84
  %125 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %num_tables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast [112 x i8]* %bytes to i8*
  call void @llvm.lifetime.end(i64 112, i8* %130) #1
  %cleanup.dest.130 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.130, label %cleanup.133 [
    i32 0, label %cleanup.cont.131
  ]

cleanup.cont.131:                                 ; preds = %cleanup.124
  %131 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm, align 8, !tbaa !1
  %call132 = call i32 @pdf_finish_iccbased(%struct.cos_stream_s* %131) #5
  store i32 %call132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

cleanup.133:                                      ; preds = %cleanup.cont.131, %cleanup.124, %if.then
  %132 = bitcast %struct.profile_table_s** %next_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast [9 x %struct.profile_table_s]* %tables to i8*
  call void @llvm.lifetime.end(i64 432, i8* %133) #1
  %134 = bitcast [20 x i8]* %bXYZ to i8*
  call void @llvm.lifetime.end(i64 20, i8* %134) #1
  %135 = bitcast [20 x i8]* %gXYZ to i8*
  call void @llvm.lifetime.end(i64 20, i8* %135) #1
  %136 = bitcast [20 x i8]* %rXYZ to i8*
  call void @llvm.lifetime.end(i64 20, i8* %136) #1
  %137 = bitcast [12 x i8]* %bTRC to i8*
  call void @llvm.lifetime.end(i64 12, i8* %137) #1
  %138 = bitcast [12 x i8]* %gTRC to i8*
  call void @llvm.lifetime.end(i64 12, i8* %138) #1
  %139 = bitcast [12 x i8]* %rTRC to i8*
  call void @llvm.lifetime.end(i64 12, i8* %139) #1
  %140 = bitcast %struct.icc_a2b0_s* %a2b0 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %140) #1
  %141 = bitcast [20 x i8]* %wtpt to i8*
  call void @llvm.lifetime.end(i64 20, i8* %141) #1
  %142 = bitcast [96 x i8]* %desc to i8*
  call void @llvm.lifetime.end(i64 96, i8* %142) #1
  %143 = bitcast [128 x i8]* %header to i8*
  call void @llvm.lifetime.end(i64 128, i8* %143) #1
  %144 = bitcast %struct.gs_vector3_s* %temp_xyz to i8*
  call void @llvm.lifetime.end(i64 12, i8* %144) #1
  %145 = bitcast %struct.gs_vector3_s* %white_d50 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %145) #1
  %146 = bitcast %struct.cos_stream_s** %pcstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.gs_color_space_s** %alt_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = load i32, i32* %retval
  ret i32 %150
}

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @cos_array_add_real(%struct.cos_array_s*, double) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

declare void @cos_free(%struct.cos_object_s*, i8*) #2

declare %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #2

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #2

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #2

declare i32 @cos_array_add_object(%struct.cos_array_s*, %struct.cos_object_s*) #2

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #2

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare i32 @pdf_cspace_init_Device(%struct.gs_memory_s*, %struct.gs_color_space_s**, i32) #2

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.profile_table_s* @add_table(%struct.profile_table_s** %ppnt, i8* %tag, i8* %data, i32 %length) #0 {
entry:
  %ppnt.addr = alloca %struct.profile_table_s**, align 8
  %tag.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %pnt = alloca %struct.profile_table_s*, align 8
  store %struct.profile_table_s** %ppnt, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.profile_table_s**, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  %2 = load %struct.profile_table_s*, %struct.profile_table_s** %1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %2, i32 1
  store %struct.profile_table_s* %incdec.ptr, %struct.profile_table_s** %1, align 8, !tbaa !1
  store %struct.profile_table_s* %2, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %3 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %4 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %tag1 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %4, i32 0, i32 0
  store i8* %3, i8** %tag1, align 8, !tbaa !78
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %6, i32 0, i32 1
  store i8* %5, i8** %data2, align 8, !tbaa !81
  %7 = load i32, i32* %length.addr, align 4, !tbaa !5
  %8 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %length3 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %8, i32 0, i32 2
  store i32 %7, i32* %length3, align 4, !tbaa !79
  %9 = load i32, i32* %length.addr, align 4, !tbaa !5
  %10 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %10, i32 0, i32 3
  store i32 %9, i32* %data_length, align 4, !tbaa !80
  %11 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %write = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %11, i32 0, i32 4
  store i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* null, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)** %write, align 8, !tbaa !82
  %12 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %12, i32 0, i32 6
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !76
  %13 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %14 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.profile_table_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @add_table_xyz3(%struct.profile_table_s** %ppnt, i8* %tag, i8* %bytes, %struct.gs_vector3_s* %pv) #0 {
entry:
  %ppnt.addr = alloca %struct.profile_table_s**, align 8
  %tag.addr = alloca i8*, align 8
  %bytes.addr = alloca i8*, align 8
  %pv.addr = alloca %struct.gs_vector3_s*, align 8
  store %struct.profile_table_s** %ppnt, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pv, %struct.gs_vector3_s** %pv.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 8) #6
  %1 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pv.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %2, i32 0, i32 0
  %3 = load float, float* %u, align 4, !tbaa !71
  %conv = fpext float %3 to double
  call void @set_XYZ(i8* %add.ptr, double %conv) #5
  %4 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 12
  %5 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pv.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %5, i32 0, i32 1
  %6 = load float, float* %v, align 4, !tbaa !73
  %conv2 = fpext float %6 to double
  call void @set_XYZ(i8* %add.ptr1, double %conv2) #5
  %7 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 16
  %8 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pv.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %8, i32 0, i32 2
  %9 = load float, float* %w, align 4, !tbaa !74
  %conv4 = fpext float %9 to double
  call void @set_XYZ(i8* %add.ptr3, double %conv4) #5
  %10 = load %struct.profile_table_s**, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %call5 = call %struct.profile_table_s* @add_table(%struct.profile_table_s** %10, i8* %11, i8* %12, i32 20) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.profile_table_s* @add_trc(%struct.profile_table_s** %ppnt, i8* %tag, i8* %bytes, %struct.gs_cie_common_s* %pciec, i32 %one_step) #0 {
entry:
  %ppnt.addr = alloca %struct.profile_table_s**, align 8
  %tag.addr = alloca i8*, align 8
  %bytes.addr = alloca i8*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %one_step.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %pnt = alloca %struct.profile_table_s*, align 8
  store %struct.profile_table_s** %ppnt, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  store i32 %one_step, i32* %one_step.addr, align 4, !tbaa !69
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 512, i32* %count, align 4, !tbaa !5
  %1 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i64 8) #6
  %3 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8
  call void @set_uint32(i8* %add.ptr, i32 512) #5
  %4 = load %struct.profile_table_s**, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %call1 = call %struct.profile_table_s* @add_table(%struct.profile_table_s** %4, i8* %5, i8* %6, i32 12) #5
  store %struct.profile_table_s* %call1, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %7 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %7, i32 0, i32 2
  %8 = load i32, i32* %length, align 4, !tbaa !79
  %add = add i32 %8, 1024
  store i32 %add, i32* %length, align 4, !tbaa !79
  %9 = load i32, i32* %one_step.addr, align 4, !tbaa !69
  %cmp = icmp eq i32 %9, 2
  %cond = select i1 %cmp, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* @write_trc_abc, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* @write_trc_lmn
  %10 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %write = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %10, i32 0, i32 4
  store i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* %cond, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)** %write, align 8, !tbaa !82
  %11 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_cie_common_s* %11 to %struct.gs_cie_abc_s*
  %13 = bitcast %struct.gs_cie_abc_s* %12 to i8*
  %14 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %write_data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %14, i32 0, i32 5
  store i8* %13, i8** %write_data, align 8, !tbaa !84
  %15 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %16 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret %struct.profile_table_s* %15
}

; Function Attrs: nounwind uwtable
define internal void @adjust_wp(%struct.gs_vector3_s* %color_in, %struct.gs_vector3_s* %wp_in, %struct.gs_vector3_s* %color_out, %struct.gs_vector3_s* %wp_out) #0 {
entry:
  %color_in.addr = alloca %struct.gs_vector3_s*, align 8
  %wp_in.addr = alloca %struct.gs_vector3_s*, align 8
  %color_out.addr = alloca %struct.gs_vector3_s*, align 8
  %wp_out.addr = alloca %struct.gs_vector3_s*, align 8
  store %struct.gs_vector3_s* %color_in, %struct.gs_vector3_s** %color_in.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %wp_in, %struct.gs_vector3_s** %wp_in.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %color_out, %struct.gs_vector3_s** %color_out.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %wp_out, %struct.gs_vector3_s** %wp_out.addr, align 8, !tbaa !1
  %0 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_in.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %0, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !71
  %2 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_out.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %2, i32 0, i32 0
  %3 = load float, float* %u1, align 4, !tbaa !71
  %mul = fmul float %1, %3
  %4 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_in.addr, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %4, i32 0, i32 0
  %5 = load float, float* %u2, align 4, !tbaa !71
  %div = fdiv float %mul, %5
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_out.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 0
  store float %div, float* %u3, align 4, !tbaa !71
  %7 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_in.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %7, i32 0, i32 1
  %8 = load float, float* %v, align 4, !tbaa !73
  %9 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_out.addr, align 8, !tbaa !1
  %v4 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %9, i32 0, i32 1
  %10 = load float, float* %v4, align 4, !tbaa !73
  %mul5 = fmul float %8, %10
  %11 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_in.addr, align 8, !tbaa !1
  %v6 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %11, i32 0, i32 1
  %12 = load float, float* %v6, align 4, !tbaa !73
  %div7 = fdiv float %mul5, %12
  %13 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_out.addr, align 8, !tbaa !1
  %v8 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %13, i32 0, i32 1
  store float %div7, float* %v8, align 4, !tbaa !73
  %14 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_in.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %14, i32 0, i32 2
  %15 = load float, float* %w, align 4, !tbaa !74
  %16 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_out.addr, align 8, !tbaa !1
  %w9 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %16, i32 0, i32 2
  %17 = load float, float* %w9, align 4, !tbaa !74
  %mul10 = fmul float %15, %17
  %18 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %wp_in.addr, align 8, !tbaa !1
  %w11 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %18, i32 0, i32 2
  %19 = load float, float* %w11, align 4, !tbaa !74
  %div12 = fdiv float %mul10, %19
  %20 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %color_out.addr, align 8, !tbaa !1
  %w13 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %20, i32 0, i32 2
  store float %div12, float* %w13, align 4, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.profile_table_s* @add_a2b0(%struct.profile_table_s** %ppnt, %struct.icc_a2b0_s* %pa2b, i32 %ncomps, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %ppnt.addr = alloca %struct.profile_table_s**, align 8
  %pa2b.addr = alloca %struct.icc_a2b0_s*, align 8
  %ncomps.addr = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %num_points = alloca i32, align 4
  %pnt = alloca %struct.profile_table_s*, align 8
  store %struct.profile_table_s** %ppnt, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  store %struct.icc_a2b0_s* %pa2b, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to double
  %div = fdiv double 1.000000e+00, %conv
  %call = call double @pow(double 2.500000e+03, double %div) #6
  %call1 = call double @floor(double %call) #7
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %num_points, align 4, !tbaa !5
  %2 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %num_points, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %num_points, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 255, %cond.false ]
  store i32 %cond, i32* %num_points, align 4, !tbaa !5
  %5 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [52 x i8], [52 x i8]* %header, i32 0, i32 0
  %call4 = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @add_a2b0.a2b0_data, i32 0, i32 0), i64 52) #6
  %6 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %conv5 = trunc i32 %6 to i8
  %7 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %header6 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [52 x i8], [52 x i8]* %header6, i32 0, i64 8
  store i8 %conv5, i8* %arrayidx, align 1, !tbaa !69
  %8 = load i32, i32* %num_points, align 4, !tbaa !5
  %conv7 = trunc i32 %8 to i8
  %9 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %header8 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [52 x i8], [52 x i8]* %header8, i32 0, i64 10
  store i8 %conv7, i8* %arrayidx9, align 1, !tbaa !69
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %pcs10 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %11, i32 0, i32 1
  store %struct.gs_color_space_s* %10, %struct.gs_color_space_s** %pcs10, align 8, !tbaa !85
  %12 = load i32, i32* %num_points, align 4, !tbaa !5
  %13 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %num_points11 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %13, i32 0, i32 2
  store i32 %12, i32* %num_points11, align 4, !tbaa !87
  %14 = load i32, i32* %num_points, align 4, !tbaa !5
  %conv12 = sitofp i32 %14 to double
  %15 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %conv13 = sitofp i32 %15 to double
  %call14 = call double @pow(double %conv12, double %conv13) #6
  %conv15 = fptosi double %call14 to i32
  %16 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %16, i32 0, i32 3
  store i32 %conv15, i32* %count, align 4, !tbaa !88
  %17 = load %struct.profile_table_s**, %struct.profile_table_s*** %ppnt.addr, align 8, !tbaa !1
  %18 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %header16 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %18, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [52 x i8], [52 x i8]* %header16, i32 0, i32 0
  %19 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, 2
  %mul18 = mul nsw i32 %mul, 2
  %conv19 = sext i32 %mul18 to i64
  %add = add i64 52, %conv19
  %20 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %count20 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %20, i32 0, i32 3
  %21 = load i32, i32* %count20, align 4, !tbaa !88
  %mul21 = mul nsw i32 %21, 6
  %conv22 = sext i32 %mul21 to i64
  %add23 = add i64 %add, %conv22
  %add24 = add i64 %add23, 12
  %conv25 = trunc i64 %add24 to i32
  %call26 = call %struct.profile_table_s* @add_table(%struct.profile_table_s** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay17, i32 %conv25) #5
  store %struct.profile_table_s* %call26, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %22 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %22, i32 0, i32 3
  store i32 52, i32* %data_length, align 4, !tbaa !80
  %23 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %write = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %23, i32 0, i32 4
  store i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)* @write_a2b0, i32 (%struct.cos_stream_s*, %struct.profile_table_s*, %struct.gs_memory_s*, %struct.gs_cie_common_s*)** %write, align 8, !tbaa !82
  %24 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b.addr, align 8, !tbaa !1
  %25 = bitcast %struct.icc_a2b0_s* %24 to i8*
  %26 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %write_data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %26, i32 0, i32 5
  store i8* %25, i8** %write_data, align 8, !tbaa !84
  %27 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt, align 8, !tbaa !1
  %28 = bitcast %struct.profile_table_s** %pnt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret %struct.profile_table_s* %27
}

; Function Attrs: nounwind uwtable
define internal void @set_uint32(i8* %bytes, i32 %value) #0 {
entry:
  %bytes.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = load i32, i32* %value.addr, align 4, !tbaa !5
  %shr = lshr i32 %0, 24
  %conv = trunc i32 %shr to i8
  %1 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !69
  %2 = load i32, i32* %value.addr, align 4, !tbaa !5
  %shr1 = lshr i32 %2, 16
  %conv2 = trunc i32 %shr1 to i8
  %3 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !69
  %4 = load i32, i32* %value.addr, align 4, !tbaa !5
  %shr4 = lshr i32 %4, 8
  %conv5 = trunc i32 %shr4 to i8
  %5 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !69
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %conv7 = trunc i32 %6 to i8
  %7 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_XYZ(i8* %bytes, double %value) #0 {
entry:
  %bytes.addr = alloca i8*, align 8
  %value.addr = alloca double, align 8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  store double %value, double* %value.addr, align 8, !tbaa !14
  %0 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %1 = load double, double* %value.addr, align 8, !tbaa !14
  %mul = fmul double %1, 6.553600e+04
  %conv = fptosi double %mul to i32
  call void @set_uint32(i8* %0, i32 %conv) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_trc_abc(%struct.cos_stream_s* %pcstrm, %struct.profile_table_s* %pnt, %struct.gs_memory_s* %ignore_mem, %struct.gs_cie_common_s* %unused) #0 {
entry:
  %pcstrm.addr = alloca %struct.cos_stream_s*, align 8
  %pnt.addr = alloca %struct.profile_table_s*, align 8
  %ignore_mem.addr = alloca %struct.gs_memory_s*, align 8
  %unused.addr = alloca %struct.gs_cie_common_s*, align 8
  %pabc = alloca %struct.gs_cie_abc_s*, align 8
  %ci = alloca i32, align 4
  %proc = alloca float (double, %struct.gs_cie_abc_s*)*, align 8
  %samples = alloca [1024 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.cos_stream_s* %pcstrm, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  store %struct.profile_table_s* %pnt, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %ignore_mem, %struct.gs_memory_s** %ignore_mem.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %unused, %struct.gs_cie_common_s** %unused.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %write_data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %1, i32 0, i32 5
  %2 = load i8*, i8** %write_data, align 8, !tbaa !84
  %3 = bitcast i8* %2 to %struct.gs_cie_abc_s*
  store %struct.gs_cie_abc_s* %3, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %call = call i32 @rgb_to_index(%struct.profile_table_s* %5) #5
  store i32 %call, i32* %ci, align 4, !tbaa !5
  %6 = bitcast float (double, %struct.gs_cie_abc_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %8, i32 0, i32 3
  %procs = getelementptr inbounds %struct.gs_cie_abc_proc3_s, %struct.gs_cie_abc_proc3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x float (double, %struct.gs_cie_abc_s*)*], [3 x float (double, %struct.gs_cie_abc_s*)*]* %procs, i32 0, i64 %idxprom
  %9 = load float (double, %struct.gs_cie_abc_s*)*, float (double, %struct.gs_cie_abc_s*)** %arrayidx, align 8, !tbaa !1
  store float (double, %struct.gs_cie_abc_s*)* %9, float (double, %struct.gs_cie_abc_s*)** %proc, align 8, !tbaa !1
  %10 = bitcast [1024 x i8]* %samples to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %10) #1
  %11 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %samples, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load float (double, %struct.gs_cie_abc_s*)*, float (double, %struct.gs_cie_abc_s*)** %proc, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %17, i32 0, i32 6
  %18 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !76
  %call1 = call double @cache_arg(i32 %16, i32 511, %struct.gs_range_s* %18) #5
  %19 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %call2 = call float %15(double %call1, %struct.gs_cie_abc_s* %19) #5
  %conv = fpext float %call2 to double
  call void @set_sample16(i8* %14, double %conv) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %samples, i32 0, i32 0
  %call4 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %22, i8* %arraydecay3, i32 1024) #5
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast [1024 x i8]* %samples to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %25) #1
  %26 = bitcast float (double, %struct.gs_cie_abc_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @write_trc_lmn(%struct.cos_stream_s* %pcstrm, %struct.profile_table_s* %pnt, %struct.gs_memory_s* %ignore_mem, %struct.gs_cie_common_s* %unused) #0 {
entry:
  %pcstrm.addr = alloca %struct.cos_stream_s*, align 8
  %pnt.addr = alloca %struct.profile_table_s*, align 8
  %ignore_mem.addr = alloca %struct.gs_memory_s*, align 8
  %unused.addr = alloca %struct.gs_cie_common_s*, align 8
  %pciec = alloca %struct.gs_cie_common_s*, align 8
  %ci = alloca i32, align 4
  %proc = alloca float (double, %struct.gs_cie_common_s*)*, align 8
  %samples = alloca [1024 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.cos_stream_s* %pcstrm, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  store %struct.profile_table_s* %pnt, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %ignore_mem, %struct.gs_memory_s** %ignore_mem.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %unused, %struct.gs_cie_common_s** %unused.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_common_s** %pciec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %write_data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %1, i32 0, i32 5
  %2 = load i8*, i8** %write_data, align 8, !tbaa !84
  %3 = bitcast i8* %2 to %struct.gs_cie_common_s*
  store %struct.gs_cie_common_s* %3, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %call = call i32 @rgb_to_index(%struct.profile_table_s* %5) #5
  store i32 %call, i32* %ci, align 4, !tbaa !5
  %6 = bitcast float (double, %struct.gs_cie_common_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %8, i32 0, i32 3
  %procs = getelementptr inbounds %struct.gs_cie_common_proc3_s, %struct.gs_cie_common_proc3_s* %DecodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x float (double, %struct.gs_cie_common_s*)*], [3 x float (double, %struct.gs_cie_common_s*)*]* %procs, i32 0, i64 %idxprom
  %9 = load float (double, %struct.gs_cie_common_s*)*, float (double, %struct.gs_cie_common_s*)** %arrayidx, align 8, !tbaa !1
  store float (double, %struct.gs_cie_common_s*)* %9, float (double, %struct.gs_cie_common_s*)** %proc, align 8, !tbaa !1
  %10 = bitcast [1024 x i8]* %samples to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %10) #1
  %11 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %samples, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load float (double, %struct.gs_cie_common_s*)*, float (double, %struct.gs_cie_common_s*)** %proc, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %17, i32 0, i32 6
  %18 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !76
  %call1 = call double @cache_arg(i32 %16, i32 511, %struct.gs_range_s* %18) #5
  %19 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %call2 = call float %15(double %call1, %struct.gs_cie_common_s* %19) #5
  %conv = fpext float %call2 to double
  call void @set_sample16(i8* %14, double %conv) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %samples, i32 0, i32 0
  %call4 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %22, i8* %arraydecay3, i32 1024) #5
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast [1024 x i8]* %samples to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %25) #1
  %26 = bitcast float (double, %struct.gs_cie_common_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_cie_common_s** %pciec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @rgb_to_index(%struct.profile_table_s* %pnt) #0 {
entry:
  %retval = alloca i32, align 4
  %pnt.addr = alloca %struct.profile_table_s*, align 8
  store %struct.profile_table_s* %pnt, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %0 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %tag = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %tag, align 8, !tbaa !78
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !69
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 103, label %sw.bb.1
    i32 98, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.2
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal void @set_sample16(i8* %p, double %v) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %v.addr = alloca double, align 8
  %value = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store double %v, double* %v.addr, align 8, !tbaa !14
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %v.addr, align 8, !tbaa !14
  %mul = fmul double %1, 6.553500e+04
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %value, align 4, !tbaa !5
  %2 = load i32, i32* %value, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %value, align 4, !tbaa !5
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %3, 65535
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 65535, i32* %value, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %value, align 4, !tbaa !5
  %shr = ashr i32 %4, 8
  %conv6 = trunc i32 %shr to i8
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv6, i8* %arrayidx, align 1, !tbaa !69
  %6 = load i32, i32* %value, align 4, !tbaa !5
  %conv7 = trunc i32 %6 to i8
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !69
  %8 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @cache_arg(i32 %i, i32 %denom, %struct.gs_range_s* %range) #0 {
entry:
  %i.addr = alloca i32, align 4
  %denom.addr = alloca i32, align 4
  %range.addr = alloca %struct.gs_range_s*, align 8
  %arg = alloca double, align 8
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  store i32 %denom, i32* %denom.addr, align 4, !tbaa !5
  store %struct.gs_range_s* %range, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %0 = bitcast double* %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %denom.addr, align 4, !tbaa !5
  %conv1 = sitofp i32 %2 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %arg, align 8, !tbaa !14
  %3 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_range_s* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %arg, align 8, !tbaa !14
  %5 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %5, i32 0, i32 1
  %6 = load float, float* %rmax, align 4, !tbaa !16
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i32 0, i32 0
  %8 = load float, float* %rmin, align 4, !tbaa !11
  %sub = fsub float %6, %8
  %conv2 = fpext float %sub to double
  %mul = fmul double %4, %conv2
  %9 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmin3 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %9, i32 0, i32 0
  %10 = load float, float* %rmin3, align 4, !tbaa !11
  %conv4 = fpext float %10 to double
  %add = fadd double %mul, %conv4
  store double %add, double* %arg, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load double, double* %arg, align 8, !tbaa !14
  %12 = bitcast double* %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret double %11
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @write_a2b0(%struct.cos_stream_s* %pcstrm, %struct.profile_table_s* %pnt, %struct.gs_memory_s* %mem, %struct.gs_cie_common_s* %pciec) #0 {
entry:
  %retval = alloca i32, align 4
  %pcstrm.addr = alloca %struct.cos_stream_s*, align 8
  %pnt.addr = alloca %struct.profile_table_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %pa2b = alloca %struct.icc_a2b0_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %ncomps = alloca i32, align 4
  %num_points = alloca i32, align 4
  %i = alloca i32, align 4
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in = alloca [4 x double], align 16
  %xyz = alloca [3 x double], align 16
  %entry11 = alloca [6 x i8], align 1
  %p = alloca i8*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.cos_stream_s* %pcstrm, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  store %struct.profile_table_s* %pnt, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %0 = bitcast %struct.icc_a2b0_s** %pa2b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %write_data = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %1, i32 0, i32 5
  %2 = load i8*, i8** %write_data, align 8, !tbaa !84
  %3 = bitcast i8* %2 to %struct.icc_a2b0_s*
  store %struct.icc_a2b0_s* %3, %struct.icc_a2b0_s** %pa2b, align 8, !tbaa !1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b, align 8, !tbaa !1
  %pcs1 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %5, i32 0, i32 1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs1, align 8, !tbaa !85
  store %struct.gs_color_space_s* %6, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %7 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [52 x i8], [52 x i8]* %header, i32 0, i64 8
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !69
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %ncomps, align 4, !tbaa !5
  %10 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b, align 8, !tbaa !1
  %num_points2 = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %11, i32 0, i32 2
  %12 = load i32, i32* %num_points2, align 4, !tbaa !87
  store i32 %12, i32* %num_points, align 4, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %17 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul = mul nsw i32 %17, 4
  %call = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @write_a2b0.v01, i32 0, i32 0), i32 %mul) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end:                                           ; preds = %entry
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_cie_to_xyz_alloc(%struct.gs_imager_state_s** %pis, %struct.gs_color_space_s* %19, %struct.gs_memory_s* %20) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %21, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end.8
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load %struct.icc_a2b0_s*, %struct.icc_a2b0_s** %pa2b, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.icc_a2b0_s, %struct.icc_a2b0_s* %24, i32 0, i32 3
  %25 = load i32, i32* %count, align 4, !tbaa !88
  %cmp9 = icmp slt i32 %23, %25
  br i1 %cmp9, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %26 = bitcast [4 x double]* %in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %26) #1
  %27 = bitcast [3 x double]* %xyz to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #1
  %28 = bitcast [6 x i8]* %entry11 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %28) #1
  %29 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %entry11, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %30 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %32, i32* %n, align 4, !tbaa !5
  %33 = load i32, i32* %ncomps, align 4, !tbaa !5
  %sub = sub nsw i32 %33, 1
  store i32 %sub, i32* %j, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %34, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %35 = load i32, i32* %n, align 4, !tbaa !5
  %36 = load i32, i32* %num_points, align 4, !tbaa !5
  %rem = srem i32 %35, %36
  %37 = load i32, i32* %num_points, align 4, !tbaa !5
  %sub16 = sub nsw i32 %37, 1
  %38 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %38, i32 0, i32 6
  %39 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !76
  %tobool = icmp ne %struct.gs_range_s* %39, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %40 = load %struct.profile_table_s*, %struct.profile_table_s** %pnt.addr, align 8, !tbaa !1
  %ranges17 = getelementptr inbounds %struct.profile_table_s, %struct.profile_table_s* %40, i32 0, i32 6
  %41 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges17, align 8, !tbaa !76
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %41, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %for.body.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_range_s* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %call18 = call double @cache_arg(i32 %rem, i32 %sub16, %struct.gs_range_s* %cond) #5
  %43 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %in, i32 0, i64 %idxprom
  store double %call18, double* %arrayidx19, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  %45 = load i32, i32* %num_points, align 4, !tbaa !5
  %46 = load i32, i32* %n, align 4, !tbaa !5
  %div = sdiv i32 %46, %45
  store i32 %div, i32* %n, align 4, !tbaa !5
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %arraydecay20 = getelementptr inbounds [4 x double], [4 x double]* %in, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [3 x double], [3 x double]* %xyz, i32 0, i32 0
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %49 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %call22 = call i32 @cie_to_xyz(double* %arraydecay20, double* %arraydecay21, %struct.gs_color_space_s* %47, %struct.gs_imager_state_s* %48, %struct.gs_cie_common_s* %49) #5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %50, 3
  br i1 %cmp24, label %for.body.26, label %for.end.32

for.body.26:                                      ; preds = %for.cond.23
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %xyz, i32 0, i64 %idxprom27
  %53 = load double, double* %arrayidx28, align 8, !tbaa !14
  %div29 = fdiv double %53, 0x3FFFFFE000000000
  call void @set_sample16(i8* %51, double %div29) #5
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.26
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %add.ptr31, i8** %p, align 8, !tbaa !1
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  %56 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %arraydecay33 = getelementptr inbounds [6 x i8], [6 x i8]* %entry11, i32 0, i32 0
  %call34 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %56, i8* %arraydecay33, i32 6) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end.32
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %for.end.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37
  %57 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast [6 x i8]* %entry11 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %60) #1
  %61 = bitcast [3 x double]* %xyz to i8*
  call void @llvm.lifetime.end(i64 24, i8* %61) #1
  %62 = bitcast [4 x double]* %in to i8*
  call void @llvm.lifetime.end(i64 32, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.46
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.44

for.inc.44:                                       ; preds = %cleanup.cont
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %63, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.46:                                       ; preds = %cleanup, %for.cond
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  call void @gx_cie_to_xyz_free(%struct.gs_imager_state_s* %64) #5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %65, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end.46
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.50:                                        ; preds = %for.end.46
  %67 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcstrm.addr, align 8, !tbaa !1
  %call51 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @write_a2b0.v01, i32 0, i32 0), i32 12) #5
  store i32 %call51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.50, %if.then.49, %if.then.7, %if.then
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.icc_a2b0_s** %pa2b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_cie_to_xyz_alloc(%struct.gs_imager_state_s**, %struct.gs_color_space_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_to_xyz(double* %in, double* %out, %struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis, %struct.gs_cie_common_s* %pciec) #0 {
entry:
  %in.addr = alloca double*, align 8
  %out.addr = alloca double*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %xyz = alloca [3 x i16], align 2
  %ncomp = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca %struct.gx_device_s, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s, align 8
  %cs_index = alloca i32, align 4
  %pWhitePoint = alloca %struct.gs_vector3_s*, align 8
  %xyz_float = alloca [3 x float], align 4
  store double* %in, double** %in.addr, align 8, !tbaa !1
  store double* %out, double** %out.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #1
  %1 = bitcast [3 x i16]* %xyz to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #1
  %2 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %3) #5
  store i32 %call, i32* %ncomp, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gx_device_s* %dev to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %5) #1
  %6 = bitcast %struct.cmm_dev_profile_s* %dev_profile to i8*
  call void @llvm.lifetime.start(i64 224, i8* %6) #1
  %7 = bitcast i32* %cs_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_vector3_s** %pWhitePoint to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %9, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %pWhitePoint, align 8, !tbaa !1
  %10 = bitcast [3 x float]* %xyz_float to i8*
  call void @llvm.lifetime.start(i64 12, i8* %10) #1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %11) #5
  store i32 %call1, i32* %cs_index, align 4, !tbaa !69
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 6
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !17
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  store %struct.cmm_profile_s* %13, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %device_profile2 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile2, i32 0, i64 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx3, align 8, !tbaa !1
  %device_profile4 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile4, i32 0, i64 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx5, align 8, !tbaa !1
  %device_profile6 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile6, i32 0, i64 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx7, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !89
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !91
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 11
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !92
  %oi_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %dev_profile, i32 0, i32 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %oi_profile, align 8, !tbaa !93
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %dev, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %dev_profile, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !94
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %ncomp, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %17, i64 %idxprom
  %18 = load double, double* %arrayidx8, align 8, !tbaa !14
  %conv = fptrunc double %18 to float
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %19 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom9
  store float %conv, float* %arrayidx10, align 4, !tbaa !96
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %cs_index, align 4, !tbaa !69
  switch i32 %21, label %sw.default [
    i32 8, label %sw.bb
    i32 7, label %sw.bb.13
    i32 6, label %sw.bb.17
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.end
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call12 = call i32 @gx_psconcretize_CIEA(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %22, i16* %arraydecay, float* %arraydecay11, %struct.gs_imager_state_s* %23) #5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.end
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay14 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call16 = call i32 @gx_psconcretize_CIEABC(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %24, i16* %arraydecay14, float* %arraydecay15, %struct.gs_imager_state_s* %25) #5
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.end
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call20 = call i32 @gx_psconcretize_CIEDEF(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %26, i16* %arraydecay18, float* %arraydecay19, %struct.gs_imager_state_s* %27) #5
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.end
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call24 = call i32 @gx_psconcretize_CIEDEFG(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %28, i16* %arraydecay22, float* %arraydecay23, %struct.gs_imager_state_s* %29) #5
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb
  %30 = load i32, i32* %cs_index, align 4, !tbaa !69
  %cmp25 = icmp eq i32 %30, 8
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %31 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pWhitePoint, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %31, i32 0, i32 0
  %32 = load float, float* %u, align 4, !tbaa !71
  %arrayidx27 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 1
  %33 = load float, float* %arrayidx27, align 4, !tbaa !96
  %mul = fmul float %32, %33
  %arrayidx28 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 0
  store float %mul, float* %arrayidx28, align 4, !tbaa !96
  %34 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pWhitePoint, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %34, i32 0, i32 2
  %35 = load float, float* %w, align 4, !tbaa !74
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 1
  %36 = load float, float* %arrayidx29, align 4, !tbaa !96
  %mul30 = fmul float %35, %36
  %arrayidx31 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 2
  store float %mul30, float* %arrayidx31, align 4, !tbaa !96
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %arrayidx32 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 0
  %37 = load float, float* %arrayidx32, align 4, !tbaa !96
  %conv33 = fpext float %37 to double
  %mul34 = fmul double %conv33, 9.642000e-01
  %38 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pWhitePoint, align 8, !tbaa !1
  %u35 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %38, i32 0, i32 0
  %39 = load float, float* %u35, align 4, !tbaa !71
  %conv36 = fpext float %39 to double
  %div = fdiv double %mul34, %conv36
  %40 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %40, i64 0
  store double %div, double* %arrayidx37, align 8, !tbaa !14
  %arrayidx38 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 1
  %41 = load float, float* %arrayidx38, align 4, !tbaa !96
  %conv39 = fpext float %41 to double
  %42 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %42, i64 1
  store double %conv39, double* %arrayidx40, align 8, !tbaa !14
  %arrayidx41 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 2
  %43 = load float, float* %arrayidx41, align 4, !tbaa !96
  %conv42 = fpext float %43 to double
  %mul43 = fmul double %conv42, 8.249000e-01
  %44 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pWhitePoint, align 8, !tbaa !1
  %w44 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %44, i32 0, i32 2
  %45 = load float, float* %w44, align 4, !tbaa !74
  %conv45 = fpext float %45 to double
  %div46 = fdiv double %mul43, %conv45
  %46 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds double, double* %46, i64 2
  store double %div46, double* %arrayidx47, align 8, !tbaa !14
  %47 = bitcast [3 x float]* %xyz_float to i8*
  call void @llvm.lifetime.end(i64 12, i8* %47) #1
  %48 = bitcast %struct.gs_vector3_s** %pWhitePoint to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %cs_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.cmm_dev_profile_s* %dev_profile to i8*
  call void @llvm.lifetime.end(i64 224, i8* %50) #1
  %51 = bitcast %struct.gx_device_s* %dev to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [3 x i16]* %xyz to i8*
  call void @llvm.lifetime.end(i64 6, i8* %54) #1
  %55 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %55) #1
  ret i32 0
}

declare void @gx_cie_to_xyz_free(%struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEA(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEABC(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEDEF(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEDEFG(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"cos_dict_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !10, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!11 = !{!12, !13, i64 0}
!12 = !{!"gs_range_s", !13, i64 0, !13, i64 4}
!13 = !{!"float", !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !3, i64 0}
!16 = !{!12, !13, i64 4}
!17 = !{!18, !2, i64 64}
!18 = !{!"gs_color_space_s", !2, i64 0, !19, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!19 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!21, !3, i64 0}
!21 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !22, i64 20, !9, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !23, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !19, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!22 = !{!"gs_range_icc_s", !3, i64 0}
!23 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!24 = !{!18, !2, i64 40}
!25 = !{!21, !2, i64 256}
!26 = !{!21, !6, i64 220}
!27 = !{!28, !6, i64 30760}
!28 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !19, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !29, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !38, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !49, i64 7512, !49, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !43, i64 8800, !6, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !15, i64 8872, !54, i64 8880, !6, i64 9360, !15, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !59, i64 9424, !59, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !9, i64 9472, !6, i64 9480, !6, i64 9484, !58, i64 9488, !58, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !9, i64 9576, !9, i64 9584, !9, i64 9592, !60, i64 9600, !58, i64 9616, !58, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !58, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !61, i64 9784, !62, i64 9816, !62, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !9, i64 9920, !3, i64 9928, !6, i64 9960, !9, i64 9968, !9, i64 9976, !3, i64 9984, !3, i64 9988, !63, i64 9992, !63, i64 14120, !63, i64 18248, !63, i64 22376, !9, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !9, i64 26536, !6, i64 26544, !6, i64 26548, !9, i64 26552, !3, i64 26560, !9, i64 26568, !9, i64 26576, !3, i64 26584, !2, i64 26592, !64, i64 26600, !2, i64 26648, !6, i64 26656, !9, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !9, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !43, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !65, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !40, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !42, i64 30488, !6, i64 30524, !61, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !9, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !40, i64 30612, !15, i64 30640, !2, i64 30648, !55, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!29 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !30, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!30 = !{!"short", !3, i64 0}
!31 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !35, i64 16, !6, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !39, i64 24, !6, i64 128, !42, i64 132, !6, i64 168, !43, i64 176, !43, i64 192, !6, i64 208, !6, i64 212, !30, i64 216, !3, i64 220, !44, i64 224, !44, i64 228, !45, i64 232, !9, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !13, i64 296, !46, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !13, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !47, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !48, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !48, i64 1336}
!39 = !{!"gx_line_params_s", !13, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !6, i64 36, !40, i64 40, !41, i64 64}
!40 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!41 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !13, i64 12, !6, i64 16, !13, i64 20, !6, i64 24, !6, i64 28, !13, i64 32}
!42 = !{!"gs_matrix_fixed_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!43 = !{!"gs_point_s", !15, i64 0, !15, i64 8}
!44 = !{!"gs_transparency_source_s", !13, i64 0}
!45 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!46 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!47 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!48 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !3, i64 24}
!49 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !6, i64 16, !50, i64 24, !52, i64 288}
!50 = !{!"gs_client_color_s", !2, i64 0, !51, i64 8}
!51 = !{!"gs_paint_color_s", !3, i64 0}
!52 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !53, i64 336}
!53 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!54 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !55, i64 64, !55, i64 80, !55, i64 96, !55, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !56, i64 152, !6, i64 232, !6, i64 236, !56, i64 240, !56, i64 320, !57, i64 400, !57, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !58, i64 448, !57, i64 464}
!55 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!56 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !13, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!57 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!58 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!59 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!60 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!61 = !{!"gs_rect_s", !43, i64 0, !43, i64 16}
!62 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !61, i64 8}
!63 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!64 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!65 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !13, i64 40, !13, i64 44, !3, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !13, i64 84, !13, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !49, i64 120, !49, i64 752, !39, i64 1384, !2, i64 1488, !6, i64 1496, !9, i64 1504}
!66 = !{!67, !2, i64 32}
!67 = !{!"cos_stream_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !10, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!68 = !{!67, !9, i64 8}
!69 = !{!3, !3, i64 0}
!70 = !{!28, !15, i64 9368}
!71 = !{!72, !13, i64 0}
!72 = !{!"gs_vector3_s", !13, i64 0, !13, i64 4, !13, i64 8}
!73 = !{!72, !13, i64 4}
!74 = !{!72, !13, i64 8}
!75 = !{!28, !2, i64 24}
!76 = !{!77, !2, i64 40}
!77 = !{!"profile_table_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40}
!78 = !{!77, !2, i64 0}
!79 = !{!77, !6, i64 16}
!80 = !{!77, !6, i64 20}
!81 = !{!77, !2, i64 8}
!82 = !{!77, !2, i64 24}
!83 = !{!28, !2, i64 1728}
!84 = !{!77, !2, i64 32}
!85 = !{!86, !2, i64 56}
!86 = !{!"icc_a2b0_s", !3, i64 0, !2, i64 56, !6, i64 64, !6, i64 68}
!87 = !{!86, !6, i64 64}
!88 = !{!86, !6, i64 68}
!89 = !{!90, !2, i64 40}
!90 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !19, i64 200}
!91 = !{!90, !2, i64 32}
!92 = !{!90, !2, i64 176}
!93 = !{!90, !2, i64 48}
!94 = !{!95, !2, i64 1104}
!95 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !19, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !29, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144}
!96 = !{!13, !13, i64 0}
