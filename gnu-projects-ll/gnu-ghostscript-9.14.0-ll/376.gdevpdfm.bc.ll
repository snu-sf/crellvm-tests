; ModuleID = './gdevpdfm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdfmark_name_s = type { i8*, i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)*, i8 }
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
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_array_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
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
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.ao_params_s = type { %struct.gx_device_pdf_s*, i8*, i64 }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<</F %ld 0 R/I<<\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c">> >>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[%g %g %g %g %g %g]\00", align 1
@mark_names = internal constant [44 x %struct.pdfmark_name_s] [%struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_ANN, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_LNK, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_OUT, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_ARTICLE, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_DEST, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_EMBED, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PS, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PAGES, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PAGE, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PAGELABEL, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_DOCINFO, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_DOCVIEW, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_BP, i8 17 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_EP, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_SP, i8 22 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_OBJ, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PUT, i8 6 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PUTDICT, i8 6 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PUTINTERVAL, i8 6 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_PUTSTREAM, i8 14 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_APPEND, i8 4 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_CLOSE, i8 6 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_NamespacePush, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_NamespacePop, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_NI, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_MP, i8 2 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_DP, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_BMC, i8 2 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_BDC, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_EMC, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StRoleMap, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StClassMap, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StPNE, i8 1 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StBookmarkRoot, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StPush, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StPop, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StPopAll, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StBMC, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StBDC, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StOBJ, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StAttr, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StStore, i8 0 }, %struct.pdfmark_name_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)* @pdfmark_StRetrieve, i8 0 }, %struct.pdfmark_name_s zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"/_objdef\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"pdfmark_process(pairs)\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"pdfmark error: Outline node %ld has no action or destination.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"<< \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"/Count %d \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"/Parent %ld 0 R\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"/Prev %ld 0 R\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"/Next %ld 0 R\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"/First %ld 0 R /Last %ld 0 R\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"pdfmark_write_outline\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"<</T %ld 0 R/V %ld 0 R/N %ld 0 R\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"/P %ld 0 R\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"/R%s>>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"[%g %g %g %g]\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"pdfmark_add_pagelabel(PageLabels)\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"pdfmark_add_pagelabel(first)\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"pdfmark_add_pagelabel(dict)\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"/P\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"pdfmark_add_pagelabel(tmp)\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"pdfmark_add_pagelabel(current_label)\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ANN\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"ARTICLE\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"DEST\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"EMBED\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"PAGES\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"PAGELABEL\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"DOCINFO\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"DOCVIEW\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"BP\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"OBJ\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c".PUTDICT\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c".PUTINTERVAL\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c".PUTSTREAM\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"APPEND\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"NamespacePush\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"NamespacePop\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"NI\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"MP\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"BMC\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"BDC\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"EMC\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"StRoleMap\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"StClassMap\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"StPNE\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"StBookmarkRoot\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"StPush\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"StPop\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"StPopAll\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"StBMC\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"StBDC\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"StOBJ\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"StAttr\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"StStore\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"StRetrieve\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"/Text\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"/F\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"Annotation has an invalid /Flags attribute\0A\00", align 1
@.str.72 = private unnamed_addr constant [89 x i8] c"Annotation set to non-printing,\0A not permitted in PDF/A, reverting to normal PDF output\0A\00", align 1
@.str.73 = private unnamed_addr constant [104 x i8] c"Annotation set to non-printing,\0A not permitted in PDF/A, annotation will not be present in output file\0A\00", align 1
@.str.74 = private unnamed_addr constant [78 x i8] c"Annotation set to non-printing,\0A not permitted in PDF/A, aborting conversion\0A\00", align 1
@.str.75 = private unnamed_addr constant [126 x i8] c"Annotation set to non-printing,\0A not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"/TrapNet\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"/PrinterMark\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"/Rect\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"/TrimBox\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"/BleedBox\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"/ArtBox\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"/CropBox\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"[ %g %g %g %g ]\00", align 1
@.str.84 = private unnamed_addr constant [106 x i8] c"Annotation (not TrapNet or PrinterMark) on page,\0A not permitted in PDF/X, reverting to normal PDF output\0A\00", align 1
@.str.85 = private unnamed_addr constant [121 x i8] c"Annotation (not TrapNet or PrinterMark) on page,\0A not permitted in PDF/X, annotation will not be present in output file\0A\00", align 1
@.str.86 = private unnamed_addr constant [95 x i8] c"Annotation (not TrapNet or PrinterMark) on page,\0A not permitted in PDF/X, aborting conversion\0A\00", align 1
@.str.87 = private unnamed_addr constant [144 x i8] c"Annotation s(not TrapNet or PrinterMark) on page,\0A not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.88 = private unnamed_addr constant [137 x i8] c"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\0A not permitted in PDF/X, reverting to normal PDF output\0A\00", align 1
@.str.89 = private unnamed_addr constant [152 x i8] c"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\0A not permitted in PDF/X, annotation will not be present in output file\0A\00", align 1
@.str.90 = private unnamed_addr constant [126 x i8] c"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\0A not permitted in PDF/X, aborting conversion\0A\00", align 1
@.str.91 = private unnamed_addr constant [175 x i8] c"Annotation s(not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\0A not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"/Annot\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"pdfmark_annot\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"[%lg %lg %lg %lg]%d\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"/SrcPg\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"/Color\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"/C\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"/Title\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"/T\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"/Action\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"/A\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"/File\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"/Dest\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"/URI\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"/Page\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"/View\00", align 1
@.str.109 = private unnamed_addr constant [63 x i8] c"   **** Warning: Outline has invalid link that was discarded.\0A\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"/Contents\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"\5C012\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"pdfmark_put_ao_pairs\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"/Border\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"/Count\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"pdf_xmp_write_translated\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"/Link\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"/GoTo\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"/GoToR\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"/Launch\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"/Article\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"action dict\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"/Thread\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"/D\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"%d %d R\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"[%ld 0 R /XYZ null null null]\00", align 1
@.str.131 = private unnamed_addr constant [56 x i8] c"Destination page %d lies outside the valid page range.\0A\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"[/XYZ null null null]\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"[null \00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"[%d \00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"[%ld 0 R \00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"/Next\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"/Prev\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"[%lg %lg %lg\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"[%g %g %g\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"outline_levels array\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"pdfmark_OUT\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"pdfmark_ARTICLE(contents)\00", align 1
@st_pdf_article = internal constant %struct.gs_memory_struct_type_s { i32 160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_article_reloc_ptrs to i8*) }, align 8
@.str.145 = private unnamed_addr constant [25 x i8] c"pdfmark_ARTICLE(article)\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"pdf_article_t\00", align 1
@pdf_article_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @pdf_article_enum_ptrs, i32 0, i32 0) }, align 8
@pdf_article_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.147 = private unnamed_addr constant [20 x i8] c"pdfmark_DEST(Dests)\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"/FS\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"/Name\00", align 1
@.str.150 = private unnamed_addr constant [29 x i8] c"pdfmark_EMBED(EmbeddedFiles)\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"/DataSource\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"/Level1\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" PS\0A\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"/.Global\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"/PS\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"/R%ld Do\0A\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"./devices/vector/gdevpdfm.c\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"bad PS passthrough: \00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"start_XObject\00", align 1
@cos_generic_procs = external constant %struct.cos_object_procs_s, align 8
@.str.164 = private unnamed_addr constant [7 x i8] c"/Label\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"/Producer\00", align 1
@string_match_params_default = external constant %struct.string_match_params_s, align 4
@.str.166 = private unnamed_addr constant [12 x i8] c"*Distiller*\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"*\00D\00i\00s\00t\00i\00l\00l\00e\00r*\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"Producer\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"/OpenAction\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"/BBox\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"[%lg %lg %lg %lg]\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"pdfmark_PS\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"/Form\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"/FormType\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"/Matrix\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"/Resources\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"pdfmark_EP\00", align 1
@cos_stream_procs = external constant %struct.cos_object_procs_s, align 8
@.str.179 = private unnamed_addr constant [3 x i8] c"q \00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"/R%ld Do Q\0A\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"/type\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"/array\00", align 1
@cos_array_procs = external constant %struct.cos_object_procs_s, align 8
@.str.184 = private unnamed_addr constant [6 x i8] c"/dict\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.185 = private unnamed_addr constant [8 x i8] c"/stream\00", align 1
@setup_pdfmark_stream_compression.fnames = internal constant %struct.pdf_filter_names_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.196, i32 0, i32 0) }, align 8
@.str.186 = private unnamed_addr constant [15 x i8] c"/ASCII85Decode\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"/ASCIIHexDecode\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"/CCITTFaxDecode\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"/DCTDecode\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"/DecodeParms\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"/Filter\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"/FlateDecode\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"/LZWDecode\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"/RunLengthDecode\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"/JBIG2Decode\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"/JPXDecode\00", align 1
@s_zlibE_template = external constant %struct.stream_template_s, align 8
@s_LZWE_template = external constant %struct.stream_template_s, align 8
@.str.197 = private unnamed_addr constant [33 x i8] c"setup_pdfmark_stream_compression\00", align 1
@s_A85E_template = external constant %struct.stream_template_s, align 8
@.str.198 = private unnamed_addr constant [24 x i8] c"setup_image_compression\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_key_eq(%struct.gs_param_string_s* %pcs, i8* %str) #0 {
entry:
  %pcs.addr = alloca %struct.gs_param_string_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gs_param_string_s* %pcs, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %0) #6
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %2 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !8
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !5
  %conv3 = zext i32 %7 to i64
  %call4 = call i32 @strncmp(i8* %3, i8* %5, i64 %conv3) #6
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @pdfmark_scan_int(%struct.gs_param_string_s* %pstr, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %pvalue.addr = alloca i32*, align 8
  %size = alloca i32, align 4
  %str = alloca [21 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !5
  store i32 %2, i32* %size, align 4, !tbaa !9
  %3 = bitcast [21 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 21, i8* %3) #2
  %4 = load i32, i32* %size, align 4, !tbaa !9
  %cmp = icmp ugt i32 %4, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %str, i32 0, i32 0
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !8
  %7 = load i32, i32* %size, align 4, !tbaa !9
  %conv = zext i32 %7 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %6, i64 %conv) #7
  %8 = load i32, i32* %size, align 4, !tbaa !9
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [21 x i8], [21 x i8]* %str, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %arraydecay2 = getelementptr inbounds [21 x i8], [21 x i8]* %str, i32 0, i32 0
  %9 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %9) #7
  %cmp4 = icmp eq i32 %call3, 1
  %cond = select i1 %cmp4, i32 0, i32 -15
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast [21 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 21, i8* %10) #2
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pdfmark_close_outline(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %depth = alloca i32, align 4
  %plevel = alloca %struct.pdf_outline_level_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 172
  %2 = load i32, i32* %outline_depth, align 4, !tbaa !11
  store i32 %2, i32* %depth, align 4, !tbaa !9
  %3 = bitcast %struct.pdf_outline_level_s** %plevel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %depth, align 4, !tbaa !9
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 171
  %6 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %6, i64 %idxprom
  store %struct.pdf_outline_level_s* %arrayidx, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %8 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %8, i32 0, i32 1
  %id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last, i32 0, i32 0
  %9 = load i64, i64* %id, align 8, !tbaa !54
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last1 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %11, i32 0, i32 1
  %call = call i32 @pdfmark_write_outline(%struct.gx_device_pdf_s* %10, %struct.pdf_outline_node_s* %last1, i64 0) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %depth, align 4, !tbaa !9
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %13 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last3 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %13, i32 0, i32 1
  %id4 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last3, i32 0, i32 0
  %14 = load i64, i64* %id4, align 8, !tbaa !54
  %15 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %15, i64 -1
  %last6 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %arrayidx5, i32 0, i32 1
  %last_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last6, i32 0, i32 4
  store i64 %14, i64* %last_id, align 8, !tbaa !57
  %16 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  call void @pdfmark_adjust_parent_count(%struct.pdf_outline_level_s* %16) #8
  %17 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %17, i32 -1
  store %struct.pdf_outline_level_s* %incdec.ptr, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %18 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last7 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %18, i32 0, i32 1
  %count = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last7, i32 0, i32 5
  %19 = load i32, i32* %count, align 4, !tbaa !58
  %cmp8 = icmp slt i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.2
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %closed_outline_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 174
  %21 = load i32, i32* %closed_outline_depth, align 4, !tbaa !59
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %closed_outline_depth, align 4, !tbaa !59
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.2
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_depth11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 172
  %23 = load i32, i32* %outline_depth11, align 4, !tbaa !11
  %dec12 = add nsw i32 %23, -1
  store i32 %dec12, i32* %outline_depth11, align 4, !tbaa !11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.10, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !9
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.pdf_outline_level_s** %plevel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_write_outline(%struct.gx_device_pdf_s* %pdev, %struct.pdf_outline_node_s* %pnode, i64 %next_id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pnode.addr = alloca %struct.pdf_outline_node_s*, align 8
  %next_id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_outline_node_s* %pnode, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  store i64 %next_id, i64* %next_id.addr, align 8, !tbaa !60
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %3, i32 0, i32 0
  %4 = load i64, i64* %id, align 8, !tbaa !61
  %call = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %2, i64 %4, i32 21) #8
  %5 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %5, i32 0, i32 6
  %6 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action, align 8, !tbaa !62
  %cmp = icmp ne %struct.cos_dict_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %id1, align 8, !tbaa !61
  %9 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action2 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %9, i32 0, i32 6
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action2, align 8, !tbaa !62
  %id3 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %10, i32 0, i32 1
  store i64 %8, i64* %id3, align 8, !tbaa !63
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call4 = call i8* @gs_program_name() #8
  %call5 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %12, i8* %call4, i64 %call5) #8
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !66
  %15 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %id7 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %15, i32 0, i32 0
  %16 = load i64, i64* %id7, align 8, !tbaa !61
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0), i64 %16) #8
  store i32 -21, i32* %code, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 47
  %18 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !67
  store %struct.stream_s* %18, %struct.stream_s** %s, align 8, !tbaa !1
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #8
  %20 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action10 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %20, i32 0, i32 6
  %21 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action10, align 8, !tbaa !62
  %cmp11 = icmp ne %struct.cos_dict_s* %21, null
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %22 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action13 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %22, i32 0, i32 6
  %23 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action13, align 8, !tbaa !62
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call14 = call i32 @cos_dict_elements_write(%struct.cos_dict_s* %23, %struct.gx_device_pdf_s* %24) #8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %25 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %25, i32 0, i32 5
  %26 = load i32, i32* %count, align 4, !tbaa !68
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.15
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %28 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %count17 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %28, i32 0, i32 5
  %29 = load i32, i32* %count17, align 4, !tbaa !68
  %call18 = call i8* @pprintd1(%struct.stream_s* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %29) #8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.15
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %31 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %parent_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %31, i32 0, i32 1
  %32 = load i64, i64* %parent_id, align 8, !tbaa !69
  %call20 = call i8* @pprintld1(%struct.stream_s* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i64 %32) #8
  %33 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %prev_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %33, i32 0, i32 2
  %34 = load i64, i64* %prev_id, align 8, !tbaa !70
  %tobool21 = icmp ne i64 %34, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %36 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %prev_id23 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %36, i32 0, i32 2
  %37 = load i64, i64* %prev_id23, align 8, !tbaa !70
  %call24 = call i8* @pprintld1(%struct.stream_s* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 %37) #8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %38 = load i64, i64* %next_id.addr, align 8, !tbaa !60
  %tobool26 = icmp ne i64 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %40 = load i64, i64* %next_id.addr, align 8, !tbaa !60
  %call28 = call i8* @pprintld1(%struct.stream_s* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 %40) #8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %41 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %first_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %41, i32 0, i32 3
  %42 = load i64, i64* %first_id, align 8, !tbaa !71
  %tobool30 = icmp ne i64 %42, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.29
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %44 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %first_id32 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %44, i32 0, i32 3
  %45 = load i64, i64* %first_id32, align 8, !tbaa !71
  %46 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %last_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %46, i32 0, i32 4
  %47 = load i64, i64* %last_id, align 8, !tbaa !72
  %call33 = call i8* @pprintld2(%struct.stream_s* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i64 %45, i64 %47) #8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.29
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call35 = call i32 @stream_puts(%struct.stream_s* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #8
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call36 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %49, i32 21) #8
  %50 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action37 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %50, i32 0, i32 6
  %51 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action37, align 8, !tbaa !62
  %cmp38 = icmp ne %struct.cos_dict_s* %51, null
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %52 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action40 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %52, i32 0, i32 6
  %53 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action40, align 8, !tbaa !62
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %53, i32 0, i32 0
  %54 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  %55 = load %struct.pdf_outline_node_s*, %struct.pdf_outline_node_s** %pnode.addr, align 8, !tbaa !1
  %action42 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %55, i32 0, i32 6
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %action42, align 8, !tbaa !62
  %56 = load i32, i32* %code, align 4, !tbaa !9
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @pdfmark_adjust_parent_count(%struct.pdf_outline_level_s* %plevel) #0 {
entry:
  %plevel.addr = alloca %struct.pdf_outline_level_s*, align 8
  %parent = alloca %struct.pdf_outline_level_s*, align 8
  %count = alloca i32, align 4
  store %struct.pdf_outline_level_s* %plevel, %struct.pdf_outline_level_s** %plevel.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_outline_level_s** %parent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %1, i64 -1
  store %struct.pdf_outline_level_s* %add.ptr, %struct.pdf_outline_level_s** %parent, align 8, !tbaa !1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel.addr, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %3, i32 0, i32 1
  %count1 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last, i32 0, i32 5
  %4 = load i32, i32* %count1, align 4, !tbaa !58
  store i32 %4, i32* %count, align 4, !tbaa !9
  %5 = load i32, i32* %count, align 4, !tbaa !9
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %parent, align 8, !tbaa !1
  %last2 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %6, i32 0, i32 1
  %count3 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last2, i32 0, i32 5
  %7 = load i32, i32* %count3, align 4, !tbaa !58
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load i32, i32* %count, align 4, !tbaa !9
  %9 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %parent, align 8, !tbaa !1
  %last6 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %9, i32 0, i32 1
  %count7 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last6, i32 0, i32 5
  %10 = load i32, i32* %count7, align 4, !tbaa !58
  %sub = sub nsw i32 %10, %8
  store i32 %sub, i32* %count7, align 4, !tbaa !58
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %count, align 4, !tbaa !9
  %12 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %parent, align 8, !tbaa !1
  %last8 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %12, i32 0, i32 1
  %count9 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last8, i32 0, i32 5
  %13 = load i32, i32* %count9, align 4, !tbaa !58
  %add = add nsw i32 %13, %11
  store i32 %add, i32* %count9, align 4, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.pdf_outline_level_s** %parent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdfmark_write_article(%struct.gx_device_pdf_s* %pdev, %struct.pdf_article_s* %part) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %part.addr = alloca %struct.pdf_article_s*, align 8
  %art = alloca %struct.pdf_article_s, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_article_s* %part, %struct.pdf_article_s** %part.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_article_s* %art to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #2
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part.addr, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_article_s* %art to i8*
  %4 = bitcast %struct.pdf_article_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 160, i32 8, i1 false), !tbaa.struct !73
  %last = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 3
  %id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last, i32 0, i32 0
  %5 = load i64, i64* %id, align 8, !tbaa !75
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %id1 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first, i32 0, i32 0
  %6 = load i64, i64* %id1, align 8, !tbaa !78
  %first2 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %next_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first2, i32 0, i32 3
  store i64 %6, i64* %next_id, align 8, !tbaa !79
  %first3 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %prev_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first3, i32 0, i32 2
  store i64 %6, i64* %prev_id, align 8, !tbaa !80
  br label %if.end

if.else:                                          ; preds = %entry
  %last4 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 3
  %id5 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last4, i32 0, i32 0
  %7 = load i64, i64* %id5, align 8, !tbaa !75
  %first6 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %prev_id7 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first6, i32 0, i32 2
  store i64 %7, i64* %prev_id7, align 8, !tbaa !80
  %first8 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %id9 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first8, i32 0, i32 0
  %8 = load i64, i64* %id9, align 8, !tbaa !78
  %last10 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 3
  %next_id11 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last10, i32 0, i32 3
  store i64 %8, i64* %next_id11, align 8, !tbaa !81
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %last12 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 3
  %call = call i32 @pdfmark_write_bead(%struct.gx_device_pdf_s* %9, %struct.pdf_bead_s* %last12) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %first13 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %call14 = call i32 @pdfmark_write_bead(%struct.gx_device_pdf_s* %10, %struct.pdf_bead_s* %first13) #8
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 1
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents, align 8, !tbaa !82
  %id15 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %12, i32 0, i32 1
  %13 = load i64, i64* %id15, align 8, !tbaa !63
  %call16 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %11, i64 %13, i32 22) #8
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 47
  %15 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !67
  store %struct.stream_s* %15, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %first17 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 2
  %id18 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first17, i32 0, i32 0
  %17 = load i64, i64* %id18, align 8, !tbaa !78
  %call19 = call i8* @pprintld1(%struct.stream_s* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i64 %17) #8
  %contents20 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %art, i32 0, i32 1
  %18 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents20, align 8, !tbaa !82
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call21 = call i32 @cos_dict_elements_write(%struct.cos_dict_s* %18, %struct.gx_device_pdf_s* %19) #8
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call22 = call i32 @stream_puts(%struct.stream_s* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #8
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %21, i32 22) #8
  %22 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.pdf_article_s* %art to i8*
  call void @llvm.lifetime.end(i64 160, i8* %23) #2
  ret i32 %call23
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_write_bead(%struct.gx_device_pdf_s* %pdev, %struct.pdf_bead_s* %pbead) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbead.addr = alloca %struct.pdf_bead_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %rstr = alloca [100 x i8], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_bead_s* %pbead, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [100 x i8]* %rstr to i8*
  call void @llvm.lifetime.start(i64 100, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %3, i32 0, i32 0
  %4 = load i64, i64* %id, align 8, !tbaa !83
  %call = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %2, i64 %4, i32 22) #8
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !67
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %article_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %8, i32 0, i32 1
  %9 = load i64, i64* %article_id, align 8, !tbaa !84
  %10 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %prev_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %10, i32 0, i32 2
  %11 = load i64, i64* %prev_id, align 8, !tbaa !85
  %12 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %next_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %12, i32 0, i32 3
  %13 = load i64, i64* %next_id, align 8, !tbaa !86
  %call1 = call i8* @pprintld3(%struct.stream_s* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i64 %9, i64 %11, i64 %13) #8
  %14 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %page_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %14, i32 0, i32 4
  %15 = load i64, i64* %page_id, align 8, !tbaa !87
  %cmp = icmp ne i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %page_id2 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %17, i32 0, i32 4
  %18 = load i64, i64* %page_id2, align 8, !tbaa !87
  %call3 = call i8* @pprintld1(%struct.stream_s* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i64 %18) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %rstr, i32 0, i32 0
  %19 = load %struct.pdf_bead_s*, %struct.pdf_bead_s** %pbead.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %19, i32 0, i32 5
  call void @pdfmark_make_rect(i8* %arraydecay, %struct.gs_rect_s* %rect) #8
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %rstr, i32 0, i32 0
  %call5 = call i8* @pprints1(%struct.stream_s* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay4) #8
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %21, i32 22) #8
  %22 = bitcast [100 x i8]* %rstr to i8*
  call void @llvm.lifetime.end(i64 100, i8* %22) #2
  %23 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call6
}

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #4

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #4

declare i32 @cos_dict_elements_write(%struct.cos_dict_s*, %struct.gx_device_pdf_s*) #4

declare i32 @stream_puts(%struct.stream_s*, i8*) #4

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @pdfmark_end_pagelabels(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdfmark_add_pagelabel(%struct.gx_device_pdf_s* %0, %struct.gs_param_string_s* null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_add_pagelabel(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %label) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %label.addr = alloca %struct.gs_param_string_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %dict = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.cos_dict_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %label, %struct.gs_param_string_s** %label.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cos_dict_s** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %label.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_param_string_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 188
  %5 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels, align 8, !tbaa !88
  %tobool = icmp ne %struct.cos_array_s* %5, null
  br i1 %tobool, label %if.end.13, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #8
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 188
  store %struct.cos_array_s* %call, %struct.cos_array_s** %PageLabels2, align 8, !tbaa !88
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 188
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels3, align 8, !tbaa !88
  %cmp4 = icmp eq %struct.cos_array_s* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.1
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end:                                           ; preds = %if.then.1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %10) #8
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 188
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels7, align 8, !tbaa !88
  %id = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %12, i32 0, i32 1
  store i64 %call6, i64* %id, align 8, !tbaa !89
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 189
  store i32 0, i32* %PageLabels_current_page, align 4, !tbaa !91
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #8
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 190
  store %struct.cos_dict_s* %call8, %struct.cos_dict_s** %PageLabels_current_label, align 8, !tbaa !92
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 190
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %PageLabels_current_label9, align 8, !tbaa !92
  %cmp10 = icmp eq %struct.cos_dict_s* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.12:                                        ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call14 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0)) #8
  store %struct.cos_dict_s* %call14, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %19 = load %struct.cos_dict_s*, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.cos_dict_s* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.17:                                        ; preds = %if.end.13
  %20 = load %struct.cos_dict_s*, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %label.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8, !tbaa !8
  %23 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %label.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %23, i32 0, i32 1
  %24 = load i32, i32* %size, align 4, !tbaa !5
  %call18 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %22, i32 %24) #8
  %call19 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), %struct.cos_value_s* %call18) #8
  store i32 %call19, i32* %code, align 4, !tbaa !9
  %25 = load i32, i32* %code, align 4, !tbaa !9
  %cmp20 = icmp slt i32 %25, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %26 = load %struct.cos_dict_s*, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %26, i32 0, i32 0
  %27 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0)) #8
  %28 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.22:                                        ; preds = %if.end.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %29 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %label.addr, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.gs_param_string_s* %29, null
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 153
  %31 = load i32, i32* %next_page, align 4, !tbaa !93
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 189
  %33 = load i32, i32* %PageLabels_current_page25, align 4, !tbaa !91
  %cmp26 = icmp ne i32 %31, %33
  br i1 %cmp26, label %if.then.27, label %if.end.70

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.23
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 190
  %35 = load %struct.cos_dict_s*, %struct.cos_dict_s** %PageLabels_current_label28, align 8, !tbaa !92
  %tobool29 = icmp ne %struct.cos_dict_s* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %if.then.27
  %36 = load i32, i32* %code, align 4, !tbaa !9
  %cmp31 = icmp sge i32 %36, 0
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.then.30
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels33 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 188
  %38 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels33, align 8, !tbaa !88
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 189
  %40 = load i32, i32* %PageLabels_current_page34, align 4, !tbaa !91
  %call35 = call i32 @cos_array_add_int(%struct.cos_array_s* %38, i32 %40) #8
  store i32 %call35, i32* %code, align 4, !tbaa !9
  %41 = load i32, i32* %code, align 4, !tbaa !9
  %cmp36 = icmp sge i32 %41, 0
  br i1 %cmp36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.then.32
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 188
  %43 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels38, align 8, !tbaa !88
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 190
  %45 = load %struct.cos_dict_s*, %struct.cos_dict_s** %PageLabels_current_label39, align 8, !tbaa !92
  %cos_procs40 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %45, i32 0, i32 0
  %46 = bitcast %struct.cos_object_procs_s** %cos_procs40 to %struct.cos_object_s*
  %call41 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %46) #8
  %call42 = call i32 @cos_array_add(%struct.cos_array_s* %43, %struct.cos_value_s* %call41) #8
  store i32 %call42, i32* %code, align 4, !tbaa !9
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.then.32
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.30
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 190
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %PageLabels_current_label45, align 8, !tbaa !92
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.44, %if.then.27
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 188
  %49 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels47, align 8, !tbaa !88
  %tobool48 = icmp ne %struct.cos_array_s* %49, null
  br i1 %tobool48, label %if.then.49, label %if.end.69

if.then.49:                                       ; preds = %if.end.46
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 153
  %51 = load i32, i32* %next_page50, align 4, !tbaa !93
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 189
  %53 = load i32, i32* %PageLabels_current_page51, align 4, !tbaa !91
  %sub = sub nsw i32 %51, %53
  %cmp52 = icmp sgt i32 %sub, 1
  br i1 %cmp52, label %if.then.53, label %if.end.68

if.then.53:                                       ; preds = %if.then.49
  %54 = bitcast %struct.cos_dict_s** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call54 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)) #8
  store %struct.cos_dict_s* %call54, %struct.cos_dict_s** %tmp, align 8, !tbaa !1
  %56 = load %struct.cos_dict_s*, %struct.cos_dict_s** %tmp, align 8, !tbaa !1
  %cmp55 = icmp eq %struct.cos_dict_s* %56, null
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.then.53
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 188
  %58 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels58, align 8, !tbaa !88
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page59 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 189
  %60 = load i32, i32* %PageLabels_current_page59, align 4, !tbaa !91
  %add = add nsw i32 %60, 1
  %call60 = call i32 @cos_array_add_int(%struct.cos_array_s* %58, i32 %add) #8
  store i32 %call60, i32* %code, align 4, !tbaa !9
  %61 = load i32, i32* %code, align 4, !tbaa !9
  %cmp61 = icmp sge i32 %61, 0
  br i1 %cmp61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.57
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels63 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 188
  %63 = load %struct.cos_array_s*, %struct.cos_array_s** %PageLabels63, align 8, !tbaa !88
  %64 = load %struct.cos_dict_s*, %struct.cos_dict_s** %tmp, align 8, !tbaa !1
  %cos_procs64 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %64, i32 0, i32 0
  %65 = bitcast %struct.cos_object_procs_s** %cos_procs64 to %struct.cos_object_s*
  %call65 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %65) #8
  %call66 = call i32 @cos_array_add(%struct.cos_array_s* %63, %struct.cos_value_s* %call65) #8
  store i32 %call66, i32* %code, align 4, !tbaa !9
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.end.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.56
  %66 = bitcast %struct.cos_dict_s** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont, %if.then.49
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.46
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %lor.lhs.false
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label71 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 190
  %68 = load %struct.cos_dict_s*, %struct.cos_dict_s** %PageLabels_current_label71, align 8, !tbaa !92
  %tobool72 = icmp ne %struct.cos_dict_s* %68, null
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.70
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 190
  %70 = load %struct.cos_dict_s*, %struct.cos_dict_s** %PageLabels_current_label74, align 8, !tbaa !92
  %cos_procs75 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %70, i32 0, i32 0
  %71 = bitcast %struct.cos_object_procs_s** %cos_procs75 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0)) #8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.70
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %dict, align 8, !tbaa !1
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_label77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 190
  store %struct.cos_dict_s* %72, %struct.cos_dict_s** %PageLabels_current_label77, align 8, !tbaa !92
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page78 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 153
  %75 = load i32, i32* %next_page78, align 4, !tbaa !93
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PageLabels_current_page79 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 189
  store i32 %75, i32* %PageLabels_current_page79, align 4, !tbaa !91
  %77 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %if.end.76, %cleanup, %if.then.21, %if.then.16, %if.then.11, %if.then.5
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast %struct.cos_dict_s** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define i32 @pdfmark_process(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_array_s* %pma) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pma.addr = alloca %struct.gs_param_string_array_s*, align 8
  %data = alloca %struct.gs_param_string_s*, align 8
  %size = alloca i32, align 4
  %pts = alloca %struct.gs_param_string_s*, align 8
  %objname = alloca %struct.gs_param_string_s*, align 8
  %ctm = alloca %struct.gs_matrix_s, align 4
  %pmn = alloca %struct.pdfmark_name_s*, align 8
  %code = alloca i32, align 4
  %cnt = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_memory_s*, align 8
  %odd_ok = alloca i32, align 4
  %pairs = alloca %struct.gs_param_string_s*, align 8
  %j = alloca i32, align 4
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pma, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %1, i32 0, i32 0
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data1, align 8, !tbaa !94
  store %struct.gs_param_string_s* %2, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4, !tbaa !95
  store i32 %5, i32* %size, align 4, !tbaa !9
  %6 = bitcast %struct.gs_param_string_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %size, align 4, !tbaa !9
  %sub = sub i32 %7, 1
  %idxprom = zext i32 %sub to i64
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i64 %idxprom
  store %struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s** %pts, align 8, !tbaa !1
  %9 = bitcast %struct.gs_param_string_s** %objname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %objname, align 8, !tbaa !1
  %10 = bitcast %struct.gs_matrix_s* %ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #2
  %11 = bitcast %struct.pdfmark_name_s** %pmn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %13 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pts, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i64 -1
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx3, i32 0, i32 1
  %16 = load i32, i32* %size4, align 4, !tbaa !5
  store i32 %16, i32* %len, align 4, !tbaa !9
  %17 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %17) #2
  %18 = load i32, i32* %len, align 4, !tbaa !9
  %conv = sext i32 %18 to i64
  %cmp = icmp ugt i64 %conv, 199
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pts, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %19, i64 -1
  %data7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx6, i32 0, i32 0
  %20 = load i8*, i8** %data7, align 8, !tbaa !8
  %21 = load i32, i32* %len, align 4, !tbaa !9
  %conv8 = sext i32 %21 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %20, i64 %conv8) #7
  %22 = load i32, i32* %len, align 4, !tbaa !9
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !10
  %arraydecay11 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 5
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), float* %xx, float* %xy, float* %yx, float* %yy, float* %tx, float* %ty) #7
  store i32 %call12, i32* %cnt, align 4, !tbaa !9
  %23 = load i32, i32* %cnt, align 4, !tbaa !9
  %cmp13 = icmp ne i32 %23, 6
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then
  %24 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %24) #2
  %25 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.157 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %27 = load i32, i32* %size, align 4, !tbaa !9
  %sub19 = sub i32 %27, 2
  store i32 %sub19, i32* %size, align 4, !tbaa !9
  store %struct.pdfmark_name_s* getelementptr inbounds ([44 x %struct.pdfmark_name_s], [44 x %struct.pdfmark_name_s]* @mark_names, i32 0, i32 0), %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.155, %cleanup.cont
  %28 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %mname = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %mname, align 8, !tbaa !96
  %cmp20 = icmp ne i8* %29, null
  br i1 %cmp20, label %for.body, label %for.end.156

for.body:                                         ; preds = %for.cond
  %30 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pts, align 8, !tbaa !1
  %31 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %mname22 = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %mname22, align 8, !tbaa !96
  %call23 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %30, i8* %32) #8
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.154

if.then.24:                                       ; preds = %for.body
  %33 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 43
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  store %struct.gs_memory_s* %35, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = bitcast i32* %odd_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %37, i32 0, i32 2
  %38 = load i8, i8* %options, align 1, !tbaa !99
  %conv25 = zext i8 %38 to i32
  %and = and i32 %conv25, 2
  %cmp26 = icmp ne i32 %and, 0
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, i32* %odd_ok, align 4, !tbaa !9
  %39 = bitcast %struct.gs_param_string_s** %pairs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %options28 = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %41, i32 0, i32 2
  %42 = load i8, i8* %options28, align 1, !tbaa !99
  %conv29 = zext i8 %42 to i32
  %and30 = and i32 %conv29, 16
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.24
  br label %do.body

do.body:                                          ; preds = %if.then.32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.62

if.else:                                          ; preds = %if.then.24
  %43 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 22
  %arrayidx33 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %45 = load float, float* %arrayidx33, align 4, !tbaa !100
  %conv34 = fpext float %45 to double
  %div = fdiv double 7.200000e+01, %conv34
  store double %div, double* %xscale, align 8, !tbaa !74
  %46 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution35 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 22
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution35, i32 0, i64 1
  %48 = load float, float* %arrayidx36, align 4, !tbaa !100
  %conv37 = fpext float %48 to double
  %div38 = fdiv double 7.200000e+01, %conv37
  store double %div38, double* %yscale, align 8, !tbaa !74
  %49 = load double, double* %xscale, align 8, !tbaa !74
  %xx39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %50 = load float, float* %xx39, align 4, !tbaa !101
  %conv40 = fpext float %50 to double
  %mul = fmul double %conv40, %49
  %conv41 = fptrunc double %mul to float
  store float %conv41, float* %xx39, align 4, !tbaa !101
  %51 = load double, double* %yscale, align 8, !tbaa !74
  %xy42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 1
  %52 = load float, float* %xy42, align 4, !tbaa !102
  %conv43 = fpext float %52 to double
  %mul44 = fmul double %conv43, %51
  %conv45 = fptrunc double %mul44 to float
  store float %conv45, float* %xy42, align 4, !tbaa !102
  %53 = load double, double* %xscale, align 8, !tbaa !74
  %yx46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %54 = load float, float* %yx46, align 4, !tbaa !103
  %conv47 = fpext float %54 to double
  %mul48 = fmul double %conv47, %53
  %conv49 = fptrunc double %mul48 to float
  store float %conv49, float* %yx46, align 4, !tbaa !103
  %55 = load double, double* %yscale, align 8, !tbaa !74
  %yy50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 3
  %56 = load float, float* %yy50, align 4, !tbaa !104
  %conv51 = fpext float %56 to double
  %mul52 = fmul double %conv51, %55
  %conv53 = fptrunc double %mul52 to float
  store float %conv53, float* %yy50, align 4, !tbaa !104
  %57 = load double, double* %xscale, align 8, !tbaa !74
  %tx54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %58 = load float, float* %tx54, align 4, !tbaa !105
  %conv55 = fpext float %58 to double
  %mul56 = fmul double %conv55, %57
  %conv57 = fptrunc double %mul56 to float
  store float %conv57, float* %tx54, align 4, !tbaa !105
  %59 = load double, double* %yscale, align 8, !tbaa !74
  %ty58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 5
  %60 = load float, float* %ty58, align 4, !tbaa !106
  %conv59 = fpext float %60 to double
  %mul60 = fmul double %conv59, %59
  %conv61 = fptrunc double %mul60 to float
  store float %conv61, float* %ty58, align 4, !tbaa !106
  %61 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %do.end
  %63 = load i32, i32* %size, align 4, !tbaa !9
  %64 = load i32, i32* %odd_ok, align 4, !tbaa !9
  %tobool63 = icmp ne i32 %64, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  %and64 = and i32 %63, %lnot.ext
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.67:                                        ; preds = %if.end.62
  %65 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %options68 = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %65, i32 0, i32 2
  %66 = load i8, i8* %options68, align 1, !tbaa !99
  %conv69 = zext i8 %66 to i32
  %and70 = and i32 %conv69, 1
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.107

if.then.72:                                       ; preds = %if.end.67
  store i32 0, i32* %j, align 4, !tbaa !9
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.then.72
  %67 = load i32, i32* %j, align 4, !tbaa !9
  %68 = load i32, i32* %size, align 4, !tbaa !9
  %cmp74 = icmp ult i32 %67, %68
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.73
  %69 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom77 = sext i32 %69 to i64
  %70 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %70, i64 %idxprom77
  %call79 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #8
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.105

if.then.81:                                       ; preds = %for.body.76
  %71 = load i32, i32* %j, align 4, !tbaa !9
  %add = add nsw i32 %71, 1
  %idxprom82 = sext i32 %add to i64
  %72 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %72, i64 %idxprom82
  store %struct.gs_param_string_s* %arrayidx83, %struct.gs_param_string_s** %objname, align 8, !tbaa !1
  %73 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname, align 8, !tbaa !1
  %data84 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %73, i32 0, i32 0
  %74 = load i8*, i8** %data84, align 8, !tbaa !8
  %75 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname, align 8, !tbaa !1
  %size85 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %75, i32 0, i32 1
  %76 = load i32, i32* %size85, align 4, !tbaa !5
  %call86 = call i32 @pdf_objname_is_valid(i8* %74, i32 %76) #8
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.then.81
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.89:                                        ; preds = %if.then.81
  %77 = load i32, i32* %size, align 4, !tbaa !9
  %sub90 = sub i32 %77, 2
  store i32 %sub90, i32* %size, align 4, !tbaa !9
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %79 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %81 = load i32, i32* %size, align 4, !tbaa !9
  %call91 = call i8* %79(%struct.gs_memory_s* %80, i32 %81, i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #8
  %82 = bitcast i8* %call91 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %82, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %83 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %tobool92 = icmp ne %struct.gs_param_string_s* %83, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.89
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.94:                                        ; preds = %if.end.89
  %84 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %85 = bitcast %struct.gs_param_string_s* %84 to i8*
  %86 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %87 = bitcast %struct.gs_param_string_s* %86 to i8*
  %88 = load i32, i32* %j, align 4, !tbaa !9
  %conv95 = sext i32 %88 to i64
  %mul96 = mul i64 %conv95, 16
  %call97 = call i8* @memcpy(i8* %85, i8* %87, i64 %mul96) #7
  %89 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %90 = load i32, i32* %j, align 4, !tbaa !9
  %idx.ext = sext i32 %90 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %89, i64 %idx.ext
  %91 = bitcast %struct.gs_param_string_s* %add.ptr to i8*
  %92 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %93 = load i32, i32* %j, align 4, !tbaa !9
  %idx.ext98 = sext i32 %93 to i64
  %add.ptr99 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %92, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %add.ptr99, i64 2
  %94 = bitcast %struct.gs_param_string_s* %add.ptr100 to i8*
  %95 = load i32, i32* %size, align 4, !tbaa !9
  %96 = load i32, i32* %j, align 4, !tbaa !9
  %sub101 = sub i32 %95, %96
  %conv102 = zext i32 %sub101 to i64
  %mul103 = mul i64 %conv102, 16
  %call104 = call i8* @memcpy(i8* %91, i8* %94, i64 %mul103) #7
  br label %copied

if.end.105:                                       ; preds = %for.body.76
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %97 = load i32, i32* %j, align 4, !tbaa !9
  %add106 = add nsw i32 %97, 2
  store i32 %add106, i32* %j, align 4, !tbaa !9
  br label %for.cond.73

for.end:                                          ; preds = %for.cond.73
  br label %if.end.107

if.end.107:                                       ; preds = %for.end, %if.end.67
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs108 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %alloc_byte_array109 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs108, i32 0, i32 10
  %99 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array109, align 8, !tbaa !107
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %101 = load i32, i32* %size, align 4, !tbaa !9
  %call110 = call i8* %99(%struct.gs_memory_s* %100, i32 %101, i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #8
  %102 = bitcast i8* %call110 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %102, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %103 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %tobool111 = icmp ne %struct.gs_param_string_s* %103, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.end.107
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.113:                                       ; preds = %if.end.107
  %104 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %105 = bitcast %struct.gs_param_string_s* %104 to i8*
  %106 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !1
  %107 = bitcast %struct.gs_param_string_s* %106 to i8*
  %108 = load i32, i32* %size, align 4, !tbaa !9
  %conv114 = zext i32 %108 to i64
  %mul115 = mul i64 %conv114, 16
  %call116 = call i8* @memcpy(i8* %105, i8* %107, i64 %mul115) #7
  br label %copied

copied:                                           ; preds = %if.end.113, %if.end.94
  %109 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %options117 = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %109, i32 0, i32 2
  %110 = load i8, i8* %options117, align 1, !tbaa !99
  %conv118 = zext i8 %110 to i32
  %and119 = and i32 %conv118, 8
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.end.145, label %if.then.121

if.then.121:                                      ; preds = %copied
  %111 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %options122 = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %111, i32 0, i32 2
  %112 = load i8, i8* %options122, align 1, !tbaa !99
  %conv123 = zext i8 %112 to i32
  %and124 = and i32 %conv123, 4
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.121
  br label %cond.end

cond.false:                                       ; preds = %if.then.121
  %113 = load i32, i32* %odd_ok, align 4, !tbaa !9
  %sub126 = sub nsw i32 1, %113
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %sub126, %cond.false ]
  store i32 %cond, i32* %j, align 4, !tbaa !9
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.141, %cond.end
  %114 = load i32, i32* %j, align 4, !tbaa !9
  %115 = load i32, i32* %size, align 4, !tbaa !9
  %cmp128 = icmp ult i32 %114, %115
  br i1 %cmp128, label %for.body.130, label %for.end.144

for.body.130:                                     ; preds = %for.cond.127
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %117 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom131 = sext i32 %117 to i64
  %118 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %118, i64 %idxprom131
  %119 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom133 = sext i32 %119 to i64
  %120 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %120, i64 %idxprom133
  %call135 = call i32 @pdf_replace_names(%struct.gx_device_pdf_s* %116, %struct.gs_param_string_s* %arrayidx132, %struct.gs_param_string_s* %arrayidx134) #8
  store i32 %call135, i32* %code, align 4, !tbaa !9
  %121 = load i32, i32* %code, align 4, !tbaa !9
  %cmp136 = icmp slt i32 %121, 0
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %for.body.130
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 2
  %123 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !110
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %125 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %126 = bitcast %struct.gs_param_string_s* %125 to i8*
  call void %123(%struct.gs_memory_s* %124, i8* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #8
  %127 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.140:                                       ; preds = %for.body.130
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %128 = load i32, i32* %odd_ok, align 4, !tbaa !9
  %sub142 = sub nsw i32 2, %128
  %129 = load i32, i32* %j, align 4, !tbaa !9
  %add143 = add nsw i32 %129, %sub142
  store i32 %add143, i32* %j, align 4, !tbaa !9
  br label %for.cond.127

for.end.144:                                      ; preds = %for.cond.127
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.144, %copied
  %130 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %130, i32 0, i32 1
  %131 = load i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, i32, %struct.gs_matrix_s*, %struct.gs_param_string_s*)** %proc, align 8, !tbaa !111
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %133 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %134 = load i32, i32* %size, align 4, !tbaa !9
  %135 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname, align 8, !tbaa !1
  %call146 = call i32 %131(%struct.gx_device_pdf_s* %132, %struct.gs_param_string_s* %133, i32 %134, %struct.gs_matrix_s* %ctm, %struct.gs_param_string_s* %135) #8
  store i32 %call146, i32* %code, align 4, !tbaa !9
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs147 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 1
  %free_object148 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs147, i32 0, i32 2
  %137 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object148, align 8, !tbaa !110
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %139 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs, align 8, !tbaa !1
  %140 = bitcast %struct.gs_param_string_s* %139 to i8*
  call void %137(%struct.gs_memory_s* %138, i8* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.145, %if.then.138, %if.then.112, %if.then.93, %if.then.88, %if.then.66
  %141 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast %struct.gs_param_string_s** %pairs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32* %odd_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.157 [
    i32 2, label %for.end.156
  ]

if.end.154:                                       ; preds = %for.body
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %145 = load %struct.pdfmark_name_s*, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdfmark_name_s, %struct.pdfmark_name_s* %145, i32 1
  store %struct.pdfmark_name_s* %incdec.ptr, %struct.pdfmark_name_s** %pmn, align 8, !tbaa !1
  br label %for.cond

for.end.156:                                      ; preds = %cleanup.149, %for.cond
  %146 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %for.end.156, %cleanup.149, %cleanup
  %147 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast %struct.pdfmark_name_s** %pmn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast %struct.gs_matrix_s* %ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %149) #2
  %150 = bitcast %struct.gs_param_string_s** %objname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.gs_param_string_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast %struct.gs_param_string_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = load i32, i32* %retval
  ret i32 %154
}

declare i32 @pdf_objname_is_valid(i8*, i32) #4

declare i32 @pdf_replace_names(%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, %struct.gs_param_string_s*) #4

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #4

declare i8* @gs_program_name() #4

declare i64 @gs_revision_number() #4

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #4

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #4

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #4

declare void @cos_free(%struct.cos_object_s*, i8*) #4

declare i8* @pprintld3(%struct.stream_s*, i8*, i64, i64, i64) #4

; Function Attrs: nounwind uwtable
define internal void @pdfmark_make_rect(i8* %str, %struct.gs_rect_s* %prect) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %prect.addr = alloca %struct.gs_rect_s*, align 8
  %s = alloca %struct.stream_s, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %prect, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #2
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #8
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  call void @swrite_string(%struct.stream_s* %s, i8* %1, i32 99) #8
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %3 = load double, double* %x, align 8, !tbaa !112
  %4 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %5 = load double, double* %y, align 8, !tbaa !113
  %6 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %6, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %7 = load double, double* %x2, align 8, !tbaa !114
  %8 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %8, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q3, i32 0, i32 1
  %9 = load double, double* %y4, align 8, !tbaa !115
  %call = call i8* @pprintg4(%struct.stream_s* %s, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), double %3, double %5, double %7, double %9) #8
  %call5 = call i64 @stell(%struct.stream_s* %s) #8
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %call5
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %11 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %11) #2
  ret void
}

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #4

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #4

declare void @swrite_string(%struct.stream_s*, i8*, i32) #4

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #4

declare i64 @stell(%struct.stream_s*) #4

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #4

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #4

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #4

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #4

declare %struct.cos_value_s* @cos_string_value(%struct.cos_value_s*, i8*, i32) #4

declare i32 @cos_array_add_int(%struct.cos_array_s*, i32) #4

declare i32 @cos_array_add(%struct.cos_array_s*, %struct.cos_value_s*) #4

declare %struct.cos_value_s* @cos_object_value(%struct.cos_value_s*, %struct.cos_object_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_ANN(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call = call i32 @pdfmark_annot(%struct.gx_device_pdf_s* %0, %struct.gs_param_string_s* %1, i32 %2, %struct.gs_matrix_s* %3, %struct.gs_param_string_s* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_LNK(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call = call i32 @pdfmark_annot(%struct.gx_device_pdf_s* %0, %struct.gs_param_string_s* %1, i32 %2, %struct.gs_matrix_s* %3, %struct.gs_param_string_s* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0)) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_OUT(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %depth = alloca i32, align 4
  %plevel = alloca %struct.pdf_outline_level_s*, align 8
  %sub_count = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca %struct.pdf_outline_node_s, align 8
  %ao = alloca %struct.ao_params_s, align 8
  %code = alloca i32, align 4
  %pair = alloca %struct.gs_param_string_s*, align 8
  %new_ptr = alloca %struct.pdf_outline_level_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 172
  %2 = load i32, i32* %outline_depth, align 4, !tbaa !11
  store i32 %2, i32* %depth, align 4, !tbaa !9
  %3 = bitcast %struct.pdf_outline_level_s** %plevel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %depth, align 4, !tbaa !9
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 171
  %6 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %6, i64 %idxprom
  store %struct.pdf_outline_level_s* %arrayidx, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %7 = bitcast i32* %sub_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %sub_count, align 4, !tbaa !9
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.pdf_outline_node_s* %node to i8*
  call void @llvm.lifetime.start(i64 56, i8* %9) #2
  %10 = bitcast %struct.ao_params_s* %ao to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %13 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom1 = zext i32 %15 to i64
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 %idxprom1
  store %struct.gs_param_string_s* %arrayidx2, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 1
  %call3 = call i32 @pdfmark_scan_int(%struct.gs_param_string_s* %add.ptr, i32* %sub_count) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %add = add i32 %20, 2
  store i32 %add, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %sub_count, align 4, !tbaa !9
  %cmp4 = icmp ne i32 %21, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %for.end
  %22 = load i32, i32* %depth, align 4, !tbaa !9
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_outline_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 173
  %24 = load i32, i32* %max_outline_depth, align 4, !tbaa !116
  %sub = sub nsw i32 %24, 1
  %cmp5 = icmp eq i32 %22, %sub
  br i1 %cmp5, label %if.then.6, label %if.end.31

if.then.6:                                        ; preds = %land.lhs.true
  %25 = bitcast %struct.pdf_outline_level_s** %new_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 43
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !117
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 43
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory7, align 8, !tbaa !98
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_outline_depth8 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 173
  %32 = load i32, i32* %max_outline_depth8, align 4, !tbaa !116
  %add9 = add nsw i32 %32, 32
  %conv = sext i32 %add9 to i64
  %mul = mul i64 %conv, 120
  %mul10 = mul i64 %mul, 120
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call i8* %28(%struct.gs_memory_s* %30, i32 %conv11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0)) #8
  %33 = bitcast i8* %call12 to %struct.pdf_outline_level_s*
  store %struct.pdf_outline_level_s* %33, %struct.pdf_outline_level_s** %new_ptr, align 8, !tbaa !1
  %34 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %new_ptr, align 8, !tbaa !1
  %tobool13 = icmp ne %struct.pdf_outline_level_s* %34, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.6
  %35 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %new_ptr, align 8, !tbaa !1
  %36 = bitcast %struct.pdf_outline_level_s* %35 to i8*
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 171
  %38 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels16, align 8, !tbaa !53
  %39 = bitcast %struct.pdf_outline_level_s* %38 to i8*
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_outline_depth17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 173
  %41 = load i32, i32* %max_outline_depth17, align 4, !tbaa !116
  %conv18 = sext i32 %41 to i64
  %mul19 = mul i64 %conv18, 120
  %call20 = call i8* @memcpy(i8* %36, i8* %39, i64 %mul19) #7
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 43
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory21, align 8, !tbaa !98
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !110
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 43
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory23, align 8, !tbaa !98
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 171
  %48 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels24, align 8, !tbaa !53
  %49 = bitcast %struct.pdf_outline_level_s* %48 to i8*
  call void %44(%struct.gs_memory_s* %46, i8* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0)) #8
  %50 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %new_ptr, align 8, !tbaa !1
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 171
  store %struct.pdf_outline_level_s* %50, %struct.pdf_outline_level_s** %outline_levels25, align 8, !tbaa !53
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_outline_depth26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 173
  %53 = load i32, i32* %max_outline_depth26, align 4, !tbaa !116
  %add27 = add nsw i32 %53, 32
  store i32 %add27, i32* %max_outline_depth26, align 4, !tbaa !116
  %54 = load i32, i32* %depth, align 4, !tbaa !9
  %idxprom28 = sext i32 %54 to i64
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 171
  %56 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels29, align 8, !tbaa !53
  %arrayidx30 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %56, i64 %idxprom28
  store %struct.pdf_outline_level_s* %arrayidx30, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14
  %57 = bitcast %struct.pdf_outline_level_s** %new_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %land.lhs.true, %for.end
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call32 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0)) #8
  %action = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 6
  store %struct.cos_dict_s* %call32, %struct.cos_dict_s** %action, align 8, !tbaa !62
  %action33 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 6
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action33, align 8, !tbaa !62
  %cmp34 = icmp eq %struct.cos_dict_s* %59, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.37:                                        ; preds = %if.end.31
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pdev38 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %ao, i32 0, i32 0
  store %struct.gx_device_pdf_s* %60, %struct.gx_device_pdf_s** %pdev38, align 8, !tbaa !118
  %subtype = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %ao, i32 0, i32 1
  store i8* null, i8** %subtype, align 8, !tbaa !120
  %src_pg = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %ao, i32 0, i32 2
  store i64 -1, i64* %src_pg, align 8, !tbaa !121
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %action39 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 6
  %62 = load %struct.cos_dict_s*, %struct.cos_dict_s** %action39, align 8, !tbaa !62
  %63 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %64 = load i32, i32* %count.addr, align 4, !tbaa !9
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call40 = call i32 @pdfmark_put_ao_pairs(%struct.gx_device_pdf_s* %61, %struct.cos_dict_s* %62, %struct.gs_param_string_s* %63, i32 %64, %struct.gs_matrix_s* %65, %struct.ao_params_s* %ao, i32 1) #8
  store i32 %call40, i32* %code, align 4, !tbaa !9
  %66 = load i32, i32* %code, align 4, !tbaa !9
  %cmp41 = icmp slt i32 %66, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  %67 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.44:                                        ; preds = %if.end.37
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outlines_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 152
  %69 = load i64, i64* %outlines_id, align 8, !tbaa !122
  %cmp45 = icmp eq i64 %69, 0
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call48 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %70) #8
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outlines_id49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 152
  store i64 %call48, i64* %outlines_id49, align 8, !tbaa !122
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call51 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %72) #8
  %id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 0
  store i64 %call51, i64* %id, align 8, !tbaa !61
  %73 = load i32, i32* %depth, align 4, !tbaa !9
  %cmp52 = icmp eq i32 %73, 0
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outlines_id54 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 152
  %75 = load i64, i64* %outlines_id54, align 8, !tbaa !122
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %76 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %76, i64 -1
  %last = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %arrayidx55, i32 0, i32 1
  %id56 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last, i32 0, i32 0
  %77 = load i64, i64* %id56, align 8, !tbaa !54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %75, %cond.true ], [ %77, %cond.false ]
  %parent_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 1
  store i64 %cond, i64* %parent_id, align 8, !tbaa !69
  %78 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last57 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %78, i32 0, i32 1
  %id58 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last57, i32 0, i32 0
  %79 = load i64, i64* %id58, align 8, !tbaa !54
  %prev_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 2
  store i64 %79, i64* %prev_id, align 8, !tbaa !70
  %last_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 4
  store i64 0, i64* %last_id, align 8, !tbaa !72
  %first_id = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 3
  store i64 0, i64* %first_id, align 8, !tbaa !71
  %80 = load i32, i32* %sub_count, align 4, !tbaa !9
  %count59 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 5
  store i32 %80, i32* %count59, align 4, !tbaa !68
  %81 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %81, i32 0, i32 0
  %id60 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %first, i32 0, i32 0
  %82 = load i64, i64* %id60, align 8, !tbaa !123
  %cmp61 = icmp eq i64 %82, 0
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %cond.end
  %83 = load i32, i32* %depth, align 4, !tbaa !9
  %cmp64 = icmp sgt i32 %83, 0
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.then.63
  %id67 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 0
  %84 = load i64, i64* %id67, align 8, !tbaa !61
  %85 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %85, i64 -1
  %last69 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %arrayidx68, i32 0, i32 1
  %first_id70 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last69, i32 0, i32 3
  store i64 %84, i64* %first_id70, align 8, !tbaa !124
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.then.63
  %prev_id72 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 2
  store i64 0, i64* %prev_id72, align 8, !tbaa !70
  %86 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %first73 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %86, i32 0, i32 0
  %87 = bitcast %struct.pdf_outline_node_s* %first73 to i8*
  %88 = bitcast %struct.pdf_outline_node_s* %node to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 56, i32 8, i1 false), !tbaa.struct !125
  %89 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %first74 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %89, i32 0, i32 0
  %action75 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %first74, i32 0, i32 6
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %action75, align 8, !tbaa !126
  br label %if.end.83

if.else:                                          ; preds = %cond.end
  %90 = load i32, i32* %depth, align 4, !tbaa !9
  %cmp76 = icmp sgt i32 %90, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else
  %91 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  call void @pdfmark_adjust_parent_count(%struct.pdf_outline_level_s* %91) #8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.else
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %93 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last80 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %93, i32 0, i32 1
  %id81 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %node, i32 0, i32 0
  %94 = load i64, i64* %id81, align 8, !tbaa !61
  %call82 = call i32 @pdfmark_write_outline(%struct.gx_device_pdf_s* %92, %struct.pdf_outline_node_s* %last80, i64 %94) #8
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.79, %if.end.71
  %95 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last84 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %95, i32 0, i32 1
  %96 = bitcast %struct.pdf_outline_node_s* %last84 to i8*
  %97 = bitcast %struct.pdf_outline_node_s* %node to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 56, i32 8, i1 false), !tbaa.struct !125
  %98 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %98, i32 0, i32 2
  %99 = load i32, i32* %left, align 4, !tbaa !127
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %left, align 4, !tbaa !127
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %closed_outline_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 174
  %101 = load i32, i32* %closed_outline_depth, align 4, !tbaa !59
  %tobool85 = icmp ne i32 %101, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.end.83
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outlines_open = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %102, i32 0, i32 175
  %103 = load i32, i32* %outlines_open, align 4, !tbaa !128
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %outlines_open, align 4, !tbaa !128
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  %104 = load i32, i32* %sub_count, align 4, !tbaa !9
  %cmp88 = icmp ne i32 %104, 0
  br i1 %cmp88, label %if.then.90, label %if.else.113

if.then.90:                                       ; preds = %if.end.87
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_depth91 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %105, i32 0, i32 172
  %106 = load i32, i32* %outline_depth91, align 4, !tbaa !11
  %inc92 = add nsw i32 %106, 1
  store i32 %inc92, i32* %outline_depth91, align 4, !tbaa !11
  %107 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %107, i32 1
  store %struct.pdf_outline_level_s* %incdec.ptr, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %108 = load i32, i32* %sub_count, align 4, !tbaa !9
  %cmp93 = icmp sgt i32 %108, 0
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %if.then.90
  %109 = load i32, i32* %sub_count, align 4, !tbaa !9
  br label %cond.end.98

cond.false.96:                                    ; preds = %if.then.90
  %110 = load i32, i32* %sub_count, align 4, !tbaa !9
  %sub97 = sub nsw i32 0, %110
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.95
  %cond99 = phi i32 [ %109, %cond.true.95 ], [ %sub97, %cond.false.96 ]
  %111 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %left100 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %111, i32 0, i32 2
  store i32 %cond99, i32* %left100, align 4, !tbaa !127
  %112 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %first101 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %112, i32 0, i32 0
  %id102 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %first101, i32 0, i32 0
  store i64 0, i64* %id102, align 8, !tbaa !123
  %113 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %last103 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %113, i32 0, i32 1
  %action104 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %last103, i32 0, i32 6
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %action104, align 8, !tbaa !129
  %114 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %plevel, align 8, !tbaa !1
  %first105 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %114, i32 0, i32 0
  %action106 = getelementptr inbounds %struct.pdf_outline_node_s, %struct.pdf_outline_node_s* %first105, i32 0, i32 6
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %action106, align 8, !tbaa !126
  %115 = load i32, i32* %sub_count, align 4, !tbaa !9
  %cmp107 = icmp slt i32 %115, 0
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %cond.end.98
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %closed_outline_depth110 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 174
  %117 = load i32, i32* %closed_outline_depth110, align 4, !tbaa !59
  %inc111 = add nsw i32 %117, 1
  store i32 %inc111, i32* %closed_outline_depth110, align 4, !tbaa !59
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %cond.end.98
  br label %if.end.124

if.else.113:                                      ; preds = %if.end.87
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.113
  %118 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_depth114 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %118, i32 0, i32 172
  %119 = load i32, i32* %outline_depth114, align 4, !tbaa !11
  store i32 %119, i32* %depth, align 4, !tbaa !9
  %cmp115 = icmp sgt i32 %119, 0
  br i1 %cmp115, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %120 = load i32, i32* %depth, align 4, !tbaa !9
  %idxprom117 = sext i32 %120 to i64
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %outline_levels118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %121, i32 0, i32 171
  %122 = load %struct.pdf_outline_level_s*, %struct.pdf_outline_level_s** %outline_levels118, align 8, !tbaa !53
  %arrayidx119 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %122, i64 %idxprom117
  %left120 = getelementptr inbounds %struct.pdf_outline_level_s, %struct.pdf_outline_level_s* %arrayidx119, i32 0, i32 2
  %123 = load i32, i32* %left120, align 4, !tbaa !127
  %cmp121 = icmp eq i32 %123, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %124 = phi i1 [ false, %while.cond ], [ %cmp121, %land.rhs ]
  br i1 %124, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call123 = call i32 @pdfmark_close_outline(%struct.gx_device_pdf_s* %125) #8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.124

if.end.124:                                       ; preds = %while.end, %if.end.112
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %if.then.43, %if.then.36, %cleanup
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast %struct.ao_params_s* %ao to i8*
  call void @llvm.lifetime.end(i64 24, i8* %127) #2
  %128 = bitcast %struct.pdf_outline_node_s* %node to i8*
  call void @llvm.lifetime.end(i64 56, i8* %128) #2
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %sub_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast %struct.pdf_outline_level_s** %plevel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_ARTICLE(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %title = alloca %struct.gs_param_string_s, align 8
  %rectstr = alloca %struct.gs_param_string_s, align 8
  %rect = alloca %struct.gs_rect_s, align 8
  %bead_id = alloca i64, align 8
  %part = alloca %struct.pdf_article_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %a_title = alloca %struct.cos_value_s*, align 8
  %contents23 = alloca %struct.cos_dict_s*, align 8
  %page_string = alloca %struct.gs_param_string_s, align 8
  %page = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_string_s* %title to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast %struct.gs_param_string_s* %rectstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = bitcast i64* %bead_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.pdf_article_s** %part to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %10 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), %struct.gs_param_string_s* %9, i32 %10, %struct.gs_param_string_s* %title) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %12 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call1 = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), %struct.gs_param_string_s* %11, i32 %12, %struct.gs_param_string_s* %rectstr) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call3 = call i32 @pdfmark_scan_rect(%struct.gs_rect_s* %rect, %struct.gs_param_string_s* %rectstr, %struct.gs_matrix_s* %13) #8
  store i32 %call3, i32* %code, align 4, !tbaa !9
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %15) #8
  store i64 %call6, i64* %bead_id, align 8, !tbaa !60
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %articles = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 176
  %17 = load %struct.pdf_article_s*, %struct.pdf_article_s** %articles, align 8, !tbaa !130
  store %struct.pdf_article_s* %17, %struct.pdf_article_s** %part, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %18 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.pdf_article_s* %18, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast %struct.cos_value_s** %a_title to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %20, i32 0, i32 1
  %21 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents, align 8, !tbaa !82
  %call8 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call8, %struct.cos_value_s** %a_title, align 8, !tbaa !1
  %22 = load %struct.cos_value_s*, %struct.cos_value_s** %a_title, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.cos_value_s* %22, null
  br i1 %cmp9, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %23 = load %struct.cos_value_s*, %struct.cos_value_s** %a_title, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %23, i32 0, i32 0
  %24 = load i32, i32* %value_type, align 4, !tbaa !131
  %cmp10 = icmp uge i32 %24, 2
  br i1 %cmp10, label %if.end.20, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %25 = load %struct.cos_value_s*, %struct.cos_value_s** %a_title, align 8, !tbaa !1
  %contents12 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %25, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents12 to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8, !tbaa !133
  %27 = load %struct.cos_value_s*, %struct.cos_value_s** %a_title, align 8, !tbaa !1
  %contents13 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %27, i32 0, i32 1
  %chars14 = bitcast %union.vc_* %contents13 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars14, i32 0, i32 1
  %28 = load i32, i32* %size, align 4, !tbaa !135
  %data15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %title, i32 0, i32 0
  %29 = load i8*, i8** %data15, align 8, !tbaa !8
  %size16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %title, i32 0, i32 1
  %30 = load i32, i32* %size16, align 4, !tbaa !5
  %call17 = call i32 @bytes_compare(i8* %26, i32 %28, i8* %29, i32 %30) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.11
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %31 = bitcast %struct.cos_value_s** %a_title to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %32 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %32, i32 0, i32 0
  %33 = load %struct.pdf_article_s*, %struct.pdf_article_s** %next, align 8, !tbaa !136
  store %struct.pdf_article_s* %33, %struct.pdf_article_s** %part, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %34 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.pdf_article_s* %34, null
  br i1 %cmp21, label %if.then.22, label %if.end.51

if.then.22:                                       ; preds = %for.end
  %35 = bitcast %struct.cos_dict_s** %contents23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call24 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.144, i32 0, i32 0)) #8
  store %struct.cos_dict_s* %call24, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %37 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %cmp25 = icmp eq %struct.cos_dict_s* %37, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.27:                                        ; preds = %if.then.22
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %39 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !137
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call28 = call i8* %39(%struct.gs_memory_s* %40, %struct.gs_memory_struct_type_s* @st_pdf_article, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i32 0, i32 0)) #8
  %41 = bitcast i8* %call28 to %struct.pdf_article_s*
  store %struct.pdf_article_s* %41, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %42 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.pdf_article_s* %42, null
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.27
  %43 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.cos_dict_s* %43, null
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %lor.lhs.false.30, %if.end.27
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !110
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %47 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %48 = bitcast %struct.pdf_article_s* %47 to i8*
  call void %45(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i32 0, i32 0)) #8
  %49 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %tobool34 = icmp ne %struct.cos_dict_s* %49, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %50 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %50, i32 0, i32 0
  %51 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.144, i32 0, i32 0)) #8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.37:                                        ; preds = %lor.lhs.false.30
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call38 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %52) #8
  %53 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %53, i32 0, i32 1
  store i64 %call38, i64* %id, align 8, !tbaa !63
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %articles39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 176
  %55 = load %struct.pdf_article_s*, %struct.pdf_article_s** %articles39, align 8, !tbaa !130
  %56 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %next40 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %56, i32 0, i32 0
  store %struct.pdf_article_s* %55, %struct.pdf_article_s** %next40, align 8, !tbaa !136
  %57 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %articles41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 176
  store %struct.pdf_article_s* %57, %struct.pdf_article_s** %articles41, align 8, !tbaa !130
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %data42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %title, i32 0, i32 0
  %60 = load i8*, i8** %data42, align 8, !tbaa !8
  %size43 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %title, i32 0, i32 1
  %61 = load i32, i32* %size43, align 4, !tbaa !5
  %call44 = call i32 @cos_dict_put_string(%struct.cos_dict_s* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 6, i8* %60, i32 %61) #8
  %62 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %62, i32 0, i32 3
  %id45 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last, i32 0, i32 0
  store i64 0, i64* %id45, align 8, !tbaa !75
  %63 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %63, i32 0, i32 2
  %id46 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first, i32 0, i32 0
  store i64 0, i64* %id46, align 8, !tbaa !78
  %64 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents23, align 8, !tbaa !1
  %65 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %contents47 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %65, i32 0, i32 1
  store %struct.cos_dict_s* %64, %struct.cos_dict_s** %contents47, align 8, !tbaa !82
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.end.37, %if.end.36, %if.then.26
  %66 = bitcast %struct.cos_dict_s** %contents23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest.49 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.49, label %cleanup.109 [
    i32 0, label %cleanup.cont.50
  ]

cleanup.cont.50:                                  ; preds = %cleanup.48
  br label %if.end.51

if.end.51:                                        ; preds = %cleanup.cont.50, %for.end
  %67 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last52 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %67, i32 0, i32 3
  %id53 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last52, i32 0, i32 0
  %68 = load i64, i64* %id53, align 8, !tbaa !75
  %cmp54 = icmp eq i64 %68, 0
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.51
  %69 = load i64, i64* %bead_id, align 8, !tbaa !60
  %70 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %first56 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %70, i32 0, i32 2
  %next_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first56, i32 0, i32 3
  store i64 %69, i64* %next_id, align 8, !tbaa !79
  %71 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %first57 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %71, i32 0, i32 2
  %id58 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first57, i32 0, i32 0
  %72 = load i64, i64* %id58, align 8, !tbaa !78
  %73 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last59 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %73, i32 0, i32 3
  %id60 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last59, i32 0, i32 0
  store i64 %72, i64* %id60, align 8, !tbaa !75
  br label %if.end.65

if.else:                                          ; preds = %if.end.51
  %74 = load i64, i64* %bead_id, align 8, !tbaa !60
  %75 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last61 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %75, i32 0, i32 3
  %next_id62 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last61, i32 0, i32 3
  store i64 %74, i64* %next_id62, align 8, !tbaa !81
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %77 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last63 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %77, i32 0, i32 3
  %call64 = call i32 @pdfmark_write_bead(%struct.gx_device_pdf_s* %76, %struct.pdf_bead_s* %last63) #8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.55
  %78 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last66 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %78, i32 0, i32 3
  %id67 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last66, i32 0, i32 0
  %79 = load i64, i64* %id67, align 8, !tbaa !75
  %80 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last68 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %80, i32 0, i32 3
  %prev_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last68, i32 0, i32 2
  store i64 %79, i64* %prev_id, align 8, !tbaa !138
  %81 = load i64, i64* %bead_id, align 8, !tbaa !60
  %82 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last69 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %82, i32 0, i32 3
  %id70 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last69, i32 0, i32 0
  store i64 %81, i64* %id70, align 8, !tbaa !75
  %83 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %contents71 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %83, i32 0, i32 1
  %84 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents71, align 8, !tbaa !82
  %id72 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %84, i32 0, i32 1
  %85 = load i64, i64* %id72, align 8, !tbaa !63
  %86 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last73 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %86, i32 0, i32 3
  %article_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last73, i32 0, i32 1
  store i64 %85, i64* %article_id, align 8, !tbaa !139
  %87 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last74 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %87, i32 0, i32 3
  %next_id75 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last74, i32 0, i32 3
  store i64 0, i64* %next_id75, align 8, !tbaa !81
  %88 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last76 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %88, i32 0, i32 3
  %rect77 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last76, i32 0, i32 5
  %89 = bitcast %struct.gs_rect_s* %rect77 to i8*
  %90 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 32, i32 8, i1 false), !tbaa.struct !140
  %91 = bitcast %struct.gs_param_string_s* %page_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %91) #2
  %92 = bitcast i32* %page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  store i32 0, i32* %page, align 4, !tbaa !9
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %95 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call78 = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), %struct.gs_param_string_s* %94, i32 %95, %struct.gs_param_string_s* %page_string) #8
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call79 = call i32 @pdfmark_page_number(%struct.gx_device_pdf_s* %96, %struct.gs_param_string_s* %page_string) #8
  store i32 %call79, i32* %page, align 4, !tbaa !9
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %98 = load i32, i32* %page, align 4, !tbaa !9
  %call80 = call i64 @pdf_page_id(%struct.gx_device_pdf_s* %97, i32 %98) #8
  %99 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last81 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %99, i32 0, i32 3
  %page_id = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last81, i32 0, i32 4
  store i64 %call80, i64* %page_id, align 8, !tbaa !141
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.98, %if.end.65
  %100 = load i32, i32* %i, align 4, !tbaa !9
  %101 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp83 = icmp ult i32 %100, %101
  br i1 %cmp83, label %for.body.84, label %for.end.99

for.body.84:                                      ; preds = %for.cond.82
  %102 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = zext i32 %102 to i64
  %103 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %103, i64 %idxprom
  %call85 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #8
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.92, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %for.body.84
  %104 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom88 = zext i32 %104 to i64
  %105 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %105, i64 %idxprom88
  %call90 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #8
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.87, %for.body.84
  br label %for.inc.98

if.end.93:                                        ; preds = %lor.lhs.false.87
  %106 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %contents94 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %106, i32 0, i32 1
  %107 = load %struct.cos_dict_s*, %struct.cos_dict_s** %contents94, align 8, !tbaa !82
  %108 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom95 = zext i32 %108 to i64
  %109 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %109, i64 %idxprom95
  %call97 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %107, %struct.gs_param_string_s* %arrayidx96) #8
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.93, %if.then.92
  %110 = load i32, i32* %i, align 4, !tbaa !9
  %add = add i32 %110, 2
  store i32 %add, i32* %i, align 4, !tbaa !9
  br label %for.cond.82

for.end.99:                                       ; preds = %for.cond.82
  %111 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast %struct.gs_param_string_s* %page_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #2
  %114 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %first100 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %114, i32 0, i32 2
  %id101 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %first100, i32 0, i32 0
  %115 = load i64, i64* %id101, align 8, !tbaa !78
  %cmp102 = icmp eq i64 %115, 0
  br i1 %cmp102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %for.end.99
  %116 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %first104 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %116, i32 0, i32 2
  %117 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last105 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %117, i32 0, i32 3
  %118 = bitcast %struct.pdf_bead_s* %first104 to i8*
  %119 = bitcast %struct.pdf_bead_s* %last105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 72, i32 8, i1 false), !tbaa.struct !142
  %120 = load %struct.pdf_article_s*, %struct.pdf_article_s** %part, align 8, !tbaa !1
  %last106 = getelementptr inbounds %struct.pdf_article_s, %struct.pdf_article_s* %120, i32 0, i32 3
  %id107 = getelementptr inbounds %struct.pdf_bead_s, %struct.pdf_bead_s* %last106, i32 0, i32 0
  store i64 0, i64* %id107, align 8, !tbaa !75
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %for.end.99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

cleanup.109:                                      ; preds = %if.end.108, %cleanup.48, %if.then.4, %if.then
  %121 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast %struct.pdf_article_s** %part to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast i64* %bead_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %124) #2
  %125 = bitcast %struct.gs_param_string_s* %rectstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #2
  %126 = bitcast %struct.gs_param_string_s* %title to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #2
  %127 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = load i32, i32* %retval
  ret i32 %128

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_DEST(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %present = alloca i32, align 4
  %dest = alloca [80 x i8], align 16
  %key = alloca %struct.gs_param_string_s, align 8
  %value = alloca %struct.cos_value_s, align 8
  %cleanup.dest.slot = alloca i32
  %ddict = alloca %struct.cos_dict_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #2
  %2 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), %struct.gs_param_string_s* %4, i32 %5, %struct.gs_param_string_s* %key) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call1 = call i32 @pdfmark_make_dest(i8* %arraydecay, %struct.gx_device_pdf_s* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), %struct.gs_param_string_s* %7, i32 %8, i32 1) #8
  store i32 %call1, i32* %present, align 4, !tbaa !9
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #6
  %conv = trunc i64 %call4 to i32
  %call5 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %arraydecay2, i32 %conv) #8
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Dests = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 177
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Dests, align 8, !tbaa !143
  %tobool6 = icmp ne %struct.cos_dict_s* %10, null
  br i1 %tobool6, label %if.end.17, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.147, i32 0, i32 0)) #8
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Dests9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 177
  store %struct.cos_dict_s* %call8, %struct.cos_dict_s** %Dests9, align 8, !tbaa !143
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Dests10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 177
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Dests10, align 8, !tbaa !143
  %cmp11 = icmp eq %struct.cos_dict_s* %14, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.14:                                        ; preds = %if.then.7
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call15 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %15) #8
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Dests16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 177
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Dests16, align 8, !tbaa !143
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %17, i32 0, i32 1
  store i64 %call15, i64* %id, align 8, !tbaa !63
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %tobool18 = icmp ne %struct.gs_param_string_s* %18, null
  br i1 %tobool18, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.17
  %19 = load i32, i32* %count.addr, align 4, !tbaa !9
  %20 = load i32, i32* %present, align 4, !tbaa !9
  %add = add nsw i32 %20, 1
  %mul = mul nsw i32 %add, 2
  %cmp20 = icmp ugt i32 %19, %mul
  br i1 %cmp20, label %if.then.22, label %if.end.61

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.17
  %21 = bitcast %struct.cos_dict_s** %ddict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf_make_named_dict(%struct.gx_device_pdf_s* %24, %struct.gs_param_string_s* %25, %struct.cos_dict_s** %ddict, i32 0) #8
  store i32 %call23, i32* %code, align 4, !tbaa !9
  %26 = load i32, i32* %code, align 4, !tbaa !9
  %cmp24 = icmp slt i32 %26, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %27 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.22
  %28 = load %struct.cos_dict_s*, %struct.cos_dict_s** %ddict, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call30 = call i64 @strlen(i8* %arraydecay29) #6
  %conv31 = trunc i64 %call30 to i32
  %call32 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %arraydecay28, i32 %conv31) #8
  store i32 %call32, i32* %code, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %29 = load i32, i32* %code, align 4, !tbaa !9
  %cmp33 = icmp sge i32 %29, 0
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4, !tbaa !9
  %31 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp35 = icmp ult i32 %30, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %32 = phi i1 [ false, %for.cond ], [ %cmp35, %land.rhs ]
  br i1 %32, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %33 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %34, i64 %idxprom
  %call37 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #8
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.52, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom39 = sext i32 %35 to i64
  %36 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %36, i64 %idxprom39
  %call41 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.52, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %38, i64 %idxprom44
  %call46 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0)) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.52, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.43
  %39 = load %struct.cos_dict_s*, %struct.cos_dict_s** %ddict, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom49 = sext i32 %40 to i64
  %41 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %41, i64 %idxprom49
  %call51 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %39, %struct.gs_param_string_s* %arrayidx50) #8
  store i32 %call51, i32* %code, align 4, !tbaa !9
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.43, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %42 = load i32, i32* %i, align 4, !tbaa !9
  %add53 = add nsw i32 %42, 2
  store i32 %add53, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %43 = load i32, i32* %code, align 4, !tbaa !9
  %cmp54 = icmp slt i32 %43, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.end
  %44 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %for.end
  %45 = load %struct.cos_dict_s*, %struct.cos_dict_s** %ddict, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %45, i32 0, i32 0
  %46 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call58 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %46) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.56, %if.then.26
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast %struct.cos_dict_s** %ddict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.61

if.end.61:                                        ; preds = %cleanup.cont, %lor.lhs.false.19
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Dests62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 177
  %51 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Dests62, align 8, !tbaa !143
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %52 = load i8*, i8** %data, align 8, !tbaa !8
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %53 = load i32, i32* %size, align 4, !tbaa !5
  %call63 = call i32 @cos_dict_put(%struct.cos_dict_s* %51, i8* %52, i32 %53, %struct.cos_value_s* %value) #8
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.61, %cleanup, %if.then.13, %if.then
  %54 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %54) #2
  %55 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #2
  %56 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.end(i64 80, i8* %56) #2
  %57 = bitcast i32* %present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_EMBED(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 75
  %4 = load double, double* %CompatibilityLevel, align 8, !tbaa !144
  %cmp = fcmp olt double %4, 1.400000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %6 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), %struct.gs_param_string_s* %5, i32 %6, %struct.gs_param_string_s* %key) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call3 = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), %struct.gs_param_string_s* %7, i32 %8, %struct.gs_param_string_s* %key) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.2
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EmbeddedFiles = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 178
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %EmbeddedFiles, align 8, !tbaa !145
  %tobool7 = icmp ne %struct.cos_dict_s* %10, null
  br i1 %tobool7, label %if.end.17, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call9 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.150, i32 0, i32 0)) #8
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EmbeddedFiles10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 178
  store %struct.cos_dict_s* %call9, %struct.cos_dict_s** %EmbeddedFiles10, align 8, !tbaa !145
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EmbeddedFiles11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 178
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %EmbeddedFiles11, align 8, !tbaa !145
  %cmp12 = icmp eq %struct.cos_dict_s* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call15 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %15) #8
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EmbeddedFiles16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 178
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %EmbeddedFiles16, align 8, !tbaa !145
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %17, i32 0, i32 1
  store i64 %call15, i64* %id, align 8, !tbaa !63
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end.6
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %18 = load i32, i32* %code, align 4, !tbaa !9
  %cmp18 = icmp sge i32 %18, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !9
  %20 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp19 = icmp ult i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %23, i64 %idxprom
  %call20 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0)) #8
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %for.body
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EmbeddedFiles23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 178
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %EmbeddedFiles23, align 8, !tbaa !145
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8, !tbaa !8
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %28 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %28, 1
  %idxprom24 = sext i32 %add to i64
  %29 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %29, i64 %idxprom24
  %data26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx25, i32 0, i32 0
  %30 = load i8*, i8** %data26, align 8, !tbaa !8
  %31 = load i32, i32* %i, align 4, !tbaa !9
  %add27 = add nsw i32 %31, 1
  %idxprom28 = sext i32 %add27 to i64
  %32 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %32, i64 %idxprom28
  %size30 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx29, i32 0, i32 1
  %33 = load i32, i32* %size30, align 4, !tbaa !5
  %call31 = call i32 @cos_dict_put_string(%struct.cos_dict_s* %25, i8* %26, i32 %27, i8* %30, i32 %33) #8
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %34 = load i32, i32* %i, align 4, !tbaa !9
  %add33 = add nsw i32 %34, 2
  store i32 %add33, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.22, %if.then.13, %if.then.5, %if.then.1, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PS(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %source = alloca %struct.gs_param_string_s, align 8
  %level1 = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %code23 = alloca i32, align 4
  %level1_id = alloca i64, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pres27 = alloca %struct.pdf_resource_s*, align 8
  %r = alloca [80 x i8], align 16
  %objname1 = alloca %struct.gs_const_string_s, align 8
  %pon = alloca %struct.gs_const_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %source to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %level1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), %struct.gs_param_string_s* %2, i32 %3, %struct.gs_param_string_s* %source) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call1 = call i32 @ps_source_ok(%struct.gs_memory_s* %5, %struct.gs_param_string_s* %source) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %7 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call4 = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), %struct.gs_param_string_s* %6, i32 %7, %struct.gs_param_string_s* %level1) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !66
  %call7 = call i32 @ps_source_ok(%struct.gs_memory_s* %9, %struct.gs_param_string_s* %level1) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.3
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %level1, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %if.end
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %source, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !5
  %cmp10 = icmp ule i32 %11, 100
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.gs_param_string_s* %12, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.11
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call14 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %14, i32 1) #8
  store i32 %call14, i32* %code, align 4, !tbaa !9
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %code, align 4, !tbaa !9
  %cmp15 = icmp slt i32 %16, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %17 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.13
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 47
  %19 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !67
  store %struct.stream_s* %19, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %source, i32 0, i32 0
  %21 = load i8*, i8** %data18, align 8, !tbaa !8
  %size19 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %source, i32 0, i32 1
  %22 = load i32, i32* %size19, align 4, !tbaa !5
  %call20 = call i32 @stream_write(%struct.stream_s* %20, i8* %21, i32 %22) #8
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call21 = call i32 @stream_puts(%struct.stream_s* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0)) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16
  %24 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.136 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.135

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.9, %if.end
  %26 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = bitcast i32* %code23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i64* %level1_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  store i64 0, i64* %level1_id, align 8, !tbaa !60
  %29 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %data24 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %level1, i32 0, i32 0
  %30 = load i8*, i8** %data24, align 8, !tbaa !8
  %cmp25 = icmp ne i8* %30, null
  br i1 %cmp25, label %if.then.26, label %if.end.61

if.then.26:                                       ; preds = %if.else
  %31 = bitcast %struct.pdf_resource_s** %pres27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 94
  %34 = load i32, i32* %CompressFonts, align 4, !tbaa !146
  %call28 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %32, i32 4, i64 0, %struct.pdf_resource_s** %pres27, i32 1, i32 %34) #8
  store i32 %call28, i32* %code23, align 4, !tbaa !9
  %35 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp29 = icmp slt i32 %35, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %36 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.31:                                        ; preds = %if.then.26
  %37 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %37, i32 0, i32 7
  %38 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !147
  %39 = bitcast %struct.cos_object_s* %38 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %39, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 99
  %41 = load i32, i32* %ForOPDFRead, align 4, !tbaa !149
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.end.31
  %42 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp34 = icmp ne %struct.gs_param_string_s* %42, null
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %land.lhs.true.33
  %43 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %object36 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %43, i32 0, i32 7
  %44 = load %struct.cos_object_s*, %struct.cos_object_s** %object36, align 8, !tbaa !147
  %45 = bitcast %struct.cos_object_s* %44 to %struct.cos_dict_s*
  %call37 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 1) #8
  store i32 %call37, i32* %code23, align 4, !tbaa !9
  %46 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp38 = icmp slt i32 %46, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  %47 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.40:                                        ; preds = %if.then.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true.33, %if.end.31
  %48 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp42 = icmp ne %struct.gs_param_string_s* %48, null
  %conv = zext i1 %cmp42 to i32
  %49 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %named = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %49, i32 0, i32 3
  store i32 %conv, i32* %named, align 4, !tbaa !150
  %50 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %50, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !151
  %51 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %52 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pres43 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %52, i32 0, i32 5
  store %struct.pdf_resource_s* %51, %struct.pdf_resource_s** %pres43, align 8, !tbaa !152
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 47
  %54 = load %struct.stream_s*, %struct.stream_s** %strm44, align 8, !tbaa !67
  %call45 = call i32 @pdfmark_write_ps(%struct.stream_s* %54, %struct.gs_param_string_s* %level1) #8
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call46 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %55) #8
  store i32 %call46, i32* %code23, align 4, !tbaa !9
  %56 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp47 = icmp slt i32 %56, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.41
  %57 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.50:                                        ; preds = %if.end.41
  %58 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %object51 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %58, i32 0, i32 7
  %59 = load %struct.cos_object_s*, %struct.cos_object_s** %object51, align 8, !tbaa !147
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call52 = call i32 @cos_write_object(%struct.cos_object_s* %59, %struct.gx_device_pdf_s* %60, i32 5) #8
  store i32 %call52, i32* %code23, align 4, !tbaa !9
  %61 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp53 = icmp slt i32 %61, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.50
  %62 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.56:                                        ; preds = %if.end.50
  %63 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres27, align 8, !tbaa !1
  %object57 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %63, i32 0, i32 7
  %64 = load %struct.cos_object_s*, %struct.cos_object_s** %object57, align 8, !tbaa !147
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %64, i32 0, i32 1
  %65 = load i64, i64* %id, align 8, !tbaa !154
  store i64 %65, i64* %level1_id, align 8, !tbaa !60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.56, %if.then.55, %if.then.49, %if.then.39, %if.then.30
  %66 = bitcast %struct.pdf_resource_s** %pres27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest.59 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.59, label %cleanup.129 [
    i32 0, label %cleanup.cont.60
  ]

cleanup.cont.60:                                  ; preds = %cleanup.58
  br label %if.end.61

if.end.61:                                        ; preds = %cleanup.cont.60, %if.else
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 73
  %CompressPages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 3
  %69 = load i32, i32* %CompressPages, align 4, !tbaa !156
  %call62 = call i32 @start_XObject(%struct.gx_device_pdf_s* %67, i32 %69, %struct.cos_stream_s** %pcs) #8
  store i32 %call62, i32* %code23, align 4, !tbaa !9
  %70 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp63 = icmp slt i32 %70, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %71 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.66:                                        ; preds = %if.end.61
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 210
  %73 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !157
  store %struct.pdf_resource_s* %73, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %74 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call67 = call i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0)) #8
  store i32 %call67, i32* %code23, align 4, !tbaa !9
  %75 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp68 = icmp slt i32 %75, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  %76 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.71:                                        ; preds = %if.end.66
  %77 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call72 = call i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0)) #8
  store i32 %call72, i32* %code23, align 4, !tbaa !9
  %78 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp73 = icmp slt i32 %78, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  %79 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.76:                                        ; preds = %if.end.71
  %80 = load i64, i64* %level1_id, align 8, !tbaa !60
  %cmp77 = icmp ne i64 %80, 0
  br i1 %cmp77, label %if.then.79, label %if.end.94

if.then.79:                                       ; preds = %if.end.76
  %81 = bitcast [80 x i8]* %r to i8*
  call void @llvm.lifetime.start(i64 80, i8* %81) #2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %r, i32 0, i32 0
  %82 = load i64, i64* %level1_id, align 8, !tbaa !60
  %call80 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i64 %82) #8
  %83 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call81 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %83) #8
  %arraydecay82 = getelementptr inbounds [80 x i8], [80 x i8]* %r, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [80 x i8], [80 x i8]* %r, i32 0, i32 0
  %call84 = call i64 @strlen(i8* %arraydecay83) #6
  %conv85 = trunc i64 %call84 to i32
  %call86 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %call81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i8* %arraydecay82, i32 %conv85) #8
  store i32 %call86, i32* %code23, align 4, !tbaa !9
  %84 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp87 = icmp slt i32 %84, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.79
  %85 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.90:                                        ; preds = %if.then.79
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %if.end.90, %if.then.89
  %86 = bitcast [80 x i8]* %r to i8*
  call void @llvm.lifetime.end(i64 80, i8* %86) #2
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.129 [
    i32 0, label %cleanup.cont.93
  ]

cleanup.cont.93:                                  ; preds = %cleanup.91
  br label %if.end.94

if.end.94:                                        ; preds = %cleanup.cont.93, %if.end.76
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm95 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %87, i32 0, i32 47
  %88 = load %struct.stream_s*, %struct.stream_s** %strm95, align 8, !tbaa !67
  %call96 = call i32 @pdfmark_write_ps(%struct.stream_s* %88, %struct.gs_param_string_s* %source) #8
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call97 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %89) #8
  store i32 %call97, i32* %code23, align 4, !tbaa !9
  %90 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp98 = icmp slt i32 %90, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.94
  %91 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.101:                                       ; preds = %if.end.94
  %92 = bitcast %struct.gs_const_string_s* %objname1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %92) #2
  %93 = bitcast %struct.gs_const_string_s** %pon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %pon, align 8, !tbaa !1
  %94 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp102 = icmp ne %struct.gs_param_string_s* %94, null
  br i1 %cmp102, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.101
  %95 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %data105 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %95, i32 0, i32 0
  %96 = load i8*, i8** %data105, align 8, !tbaa !8
  %data106 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname1, i32 0, i32 0
  store i8* %96, i8** %data106, align 8, !tbaa !158
  %97 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %size107 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %97, i32 0, i32 1
  %98 = load i32, i32* %size107, align 4, !tbaa !5
  %size108 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname1, i32 0, i32 1
  store i32 %98, i32* %size108, align 4, !tbaa !159
  store %struct.gs_const_string_s* %objname1, %struct.gs_const_string_s** %pon, align 8, !tbaa !1
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.end.101
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pon, align 8, !tbaa !1
  %call110 = call i32 @pdfmark_bind_named_object(%struct.gx_device_pdf_s* %99, %struct.gs_const_string_s* %100, %struct.pdf_resource_s** %pres) #8
  store i32 %call110, i32* %code23, align 4, !tbaa !9
  %101 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp111 = icmp slt i32 %101, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.109
  %102 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.114:                                       ; preds = %if.end.109
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %if.end.114, %if.then.113
  %103 = bitcast %struct.gs_const_string_s** %pon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.gs_const_string_s* %objname1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %104) #2
  %cleanup.dest.117 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.117, label %cleanup.129 [
    i32 0, label %cleanup.cont.118
  ]

cleanup.cont.118:                                 ; preds = %cleanup.115
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call119 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %105, i32 1) #8
  store i32 %call119, i32* %code23, align 4, !tbaa !9
  %106 = load i32, i32* %code23, align 4, !tbaa !9
  %cmp120 = icmp slt i32 %106, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %cleanup.cont.118
  %107 = load i32, i32* %code23, align 4, !tbaa !9
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.123:                                       ; preds = %cleanup.cont.118
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %108, i32 0, i32 164
  %109 = load i64, i64* %used_mask, align 8, !tbaa !160
  %110 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pres124 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %110, i32 0, i32 5
  %111 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres124, align 8, !tbaa !152
  %where_used125 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %111, i32 0, i32 6
  %112 = load i64, i64* %where_used125, align 8, !tbaa !151
  %or = or i64 %112, %109
  store i64 %or, i64* %where_used125, align 8, !tbaa !151
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm126 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 47
  %114 = load %struct.stream_s*, %struct.stream_s** %strm126, align 8, !tbaa !67
  %115 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %id127 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %115, i32 0, i32 1
  %116 = load i64, i64* %id127, align 8, !tbaa !161
  %call128 = call i8* @pprintld1(%struct.stream_s* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0), i64 %116) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.123, %if.then.122, %cleanup.115, %if.then.100, %cleanup.91, %if.then.75, %if.then.70, %if.then.65, %cleanup.58
  %117 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i64* %level1_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = bitcast i32* %code23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %cleanup.dest.133 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.133, label %cleanup.136 [
    i32 0, label %cleanup.cont.134
  ]

cleanup.cont.134:                                 ; preds = %cleanup.129
  br label %if.end.135

if.end.135:                                       ; preds = %cleanup.cont.134, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %if.end.135, %cleanup.129, %cleanup, %if.then
  %121 = bitcast %struct.gs_param_string_s* %level1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %121) #2
  %122 = bitcast %struct.gs_param_string_s* %source to i8*
  call void @llvm.lifetime.end(i64 16, i8* %122) #2
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PAGES(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Pages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 151
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Pages, align 8, !tbaa !162
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_put_pairs(%struct.cos_dict_s* %1, %struct.gs_param_string_s* %2, i32 %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PAGE(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_dict_s* @pdf_current_page_dict(%struct.gx_device_pdf_s* %0) #8
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call1 = call i32 @pdfmark_put_pairs(%struct.cos_dict_s* %call, %struct.gs_param_string_s* %1, i32 %2) #8
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PAGELABEL(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 75
  %2 = load double, double* %CompatibilityLevel, align 8, !tbaa !144
  %cmp = fcmp oge double %2, 1.300000e+00
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %4 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), %struct.gs_param_string_s* %3, i32 %4, %struct.gs_param_string_s* %key) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdfmark_add_pagelabel(%struct.gx_device_pdf_s* %5, %struct.gs_param_string_s* %key) #8
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.1
  %6 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_DOCINFO(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pair = alloca %struct.gs_param_string_s*, align 8
  %alt_pair = alloca [2 x %struct.gs_param_string_s], align 16
  %vdata = alloca i8*, align 8
  %vsize = alloca i32, align 4
  %str = alloca i8*, align 8
  %params = alloca %struct.string_match_params_s, align 4
  %j = alloca i32, align 4
  %buf = alloca [200 x i8], align 16
  %len = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 150
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info, align 8, !tbaa !163
  store %struct.cos_dict_s* %2, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 43
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !9
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %11 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ult i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %12, label %for.body, label %for.end.86

for.body:                                         ; preds = %land.end
  %13 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i64 %idx.ext
  store %struct.gs_param_string_s* %add.ptr, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %16 = bitcast [2 x %struct.gs_param_string_s]* %alt_pair to i8*
  call void @llvm.lifetime.start(i64 32, i8* %16) #2
  %17 = bitcast i8** %vdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32* %vsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store i8* null, i8** %str, align 8, !tbaa !1
  store i32 195948557, i32* %vsize, align 4, !tbaa !9
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !9
  %idx.ext2 = sext i32 %21 to i64
  %add.ptr3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %20, i64 %idx.ext2
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0)) #8
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end.72

if.then.5:                                        ; preds = %for.body
  %22 = bitcast %struct.string_match_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 20, i8* %22) #2
  %arraydecay = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i32 0
  %23 = bitcast %struct.gs_param_string_s* %arraydecay to i8*
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !9
  %idx.ext6 = sext i32 %25 to i64
  %add.ptr7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i64 %idx.ext6
  %26 = bitcast %struct.gs_param_string_s* %add.ptr7 to i8*
  %call8 = call i8* @memcpy(i8* %23, i8* %26, i64 32) #7
  %arrayidx = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i64 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8, !tbaa !8
  store i8* %27, i8** %vdata, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i64 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx9, i32 0, i32 1
  %28 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %28, i32* %vsize, align 4, !tbaa !9
  %29 = bitcast %struct.string_match_params_s* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.string_match_params_s* @string_match_params_default to i8*), i64 20, i32 4, i1 false), !tbaa.struct !164
  %ignore_case = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %params, i32 0, i32 3
  store i32 1, i32* %ignore_case, align 4, !tbaa !165
  %30 = load i8*, i8** %vdata, align 8, !tbaa !1
  %31 = load i32, i32* %vsize, align 4, !tbaa !9
  %call10 = call i32 @string_match(i8* %30, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i32 11, %struct.string_match_params_s* %params) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %32 = load i8*, i8** %vdata, align 8, !tbaa !1
  %33 = load i32, i32* %vsize, align 4, !tbaa !9
  %call12 = call i32 @string_match(i8* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i32 0, i32 0), i32 20, %struct.string_match_params_s* %params) #8
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.68

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.5
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %35) #2
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load i32, i32* %vsize, align 4, !tbaa !9
  store i32 %37, i32* %j, align 4, !tbaa !9
  br label %for.cond.15

for.cond.15:                                      ; preds = %do.end, %if.then.14
  %38 = load i32, i32* %j, align 4, !tbaa !9
  %cmp16 = icmp ugt i32 %38, 0
  br i1 %cmp16, label %land.rhs.17, label %land.end.21

land.rhs.17:                                      ; preds = %for.cond.15
  %39 = load i32, i32* %j, align 4, !tbaa !9
  %dec = add i32 %39, -1
  store i32 %dec, i32* %j, align 4, !tbaa !9
  %idxprom = zext i32 %dec to i64
  %40 = load i8*, i8** %vdata, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx18, align 1, !tbaa !10
  %conv = zext i8 %41 to i32
  %cmp19 = icmp ne i32 %conv, 43
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.17, %for.cond.15
  %42 = phi i1 [ false, %for.cond.15 ], [ %cmp19, %land.rhs.17 ]
  br i1 %42, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %land.end.21
  br label %do.body

do.body:                                          ; preds = %for.body.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.15

for.end:                                          ; preds = %land.end.21
  %43 = load i32, i32* %vsize, align 4, !tbaa !9
  %44 = load i32, i32* %j, align 4, !tbaa !9
  %sub = sub i32 %43, %44
  %cmp23 = icmp ugt i32 %sub, 2
  br i1 %cmp23, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %for.end
  %45 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom25 = zext i32 %45 to i64
  %46 = load i8*, i8** %vdata, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %46, i64 %idxprom25
  %47 = load i8, i8* %arrayidx26, align 1, !tbaa !10
  %conv27 = zext i8 %47 to i32
  %cmp28 = icmp eq i32 %conv27, 43
  br i1 %cmp28, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %j, align 4, !tbaa !9
  %inc = add i32 %48, 1
  store i32 %inc, i32* %j, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.30
  %49 = load i32, i32* %j, align 4, !tbaa !9
  %50 = load i32, i32* %vsize, align 4, !tbaa !9
  %cmp31 = icmp ult i32 %49, %50
  br i1 %cmp31, label %land.rhs.33, label %land.end.39

land.rhs.33:                                      ; preds = %while.cond
  %51 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom34 = zext i32 %51 to i64
  %52 = load i8*, i8** %vdata, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %52, i64 %idxprom34
  %53 = load i8, i8* %arrayidx35, align 1, !tbaa !10
  %conv36 = zext i8 %53 to i32
  %cmp37 = icmp eq i32 %conv36, 32
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.33, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs.33 ]
  br i1 %54, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.39
  %55 = load i32, i32* %j, align 4, !tbaa !9
  %inc40 = add i32 %55, 1
  store i32 %inc40, i32* %j, align 4, !tbaa !9
  br label %while.cond

while.end:                                        ; preds = %land.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %while.end, %land.lhs.true, %for.end
  %arraydecay42 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void @pdf_store_default_Producer(i8* %arraydecay42) #8
  %arraydecay43 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call44 = call i64 @strlen(i8* %arraydecay43) #6
  %sub45 = sub i64 %call44, 1
  %conv46 = trunc i64 %sub45 to i32
  store i32 %conv46, i32* %len, align 4, !tbaa !9
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %57 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !167
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %59 = load i32, i32* %j, align 4, !tbaa !9
  %60 = load i32, i32* %len, align 4, !tbaa !9
  %add = add i32 %59, %60
  %call47 = call i8* %57(%struct.gs_memory_s* %58, i32 %add, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0)) #8
  store i8* %call47, i8** %str, align 8, !tbaa !1
  %61 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %61, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.41
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.41
  %62 = load i8*, i8** %str, align 8, !tbaa !1
  %63 = load i8*, i8** %vdata, align 8, !tbaa !1
  %64 = load i32, i32* %j, align 4, !tbaa !9
  %conv52 = zext i32 %64 to i64
  %call53 = call i8* @memcpy(i8* %62, i8* %63, i64 %conv52) #7
  %65 = load i8*, i8** %str, align 8, !tbaa !1
  %66 = load i32, i32* %j, align 4, !tbaa !9
  %idx.ext54 = zext i32 %66 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %65, i64 %idx.ext54
  %arraydecay56 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %add.ptr57 = getelementptr inbounds i8, i8* %arraydecay56, i64 1
  %67 = load i32, i32* %len, align 4, !tbaa !9
  %conv58 = sext i32 %67 to i64
  %call59 = call i8* @memcpy(i8* %add.ptr55, i8* %add.ptr57, i64 %conv58) #7
  %68 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i64 1
  %data61 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx60, i32 0, i32 0
  store i8* %68, i8** %data61, align 8, !tbaa !8
  %69 = load i32, i32* %j, align 4, !tbaa !9
  %70 = load i32, i32* %len, align 4, !tbaa !9
  %add62 = add i32 %69, %70
  store i32 %add62, i32* %vsize, align 4, !tbaa !9
  %arrayidx63 = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i64 1
  %size64 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx63, i32 0, i32 1
  store i32 %add62, i32* %size64, align 4, !tbaa !5
  %arraydecay65 = getelementptr inbounds [2 x %struct.gs_param_string_s], [2 x %struct.gs_param_string_s]* %alt_pair, i32 0, i32 0
  store %struct.gs_param_string_s* %arraydecay65, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.50
  %71 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %72) #2
  %73 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.68, %cleanup
  %74 = bitcast %struct.string_match_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 20, i8* %74) #2
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.70, label %cleanup.78 [
    i32 0, label %cleanup.cont.71
  ]

cleanup.cont.71:                                  ; preds = %cleanup.69
  br label %if.end.72

if.end.72:                                        ; preds = %cleanup.cont.71, %for.body
  %75 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %76 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call73 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %75, %struct.gs_param_string_s* %76) #8
  store i32 %call73, i32* %code, align 4, !tbaa !9
  %77 = load i8*, i8** %str, align 8, !tbaa !1
  %tobool74 = icmp ne i8* %77, null
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs76, i32 0, i32 19
  %79 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !168
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %81 = load i8*, i8** %str, align 8, !tbaa !1
  %82 = load i32, i32* %vsize, align 4, !tbaa !9
  call void %79(%struct.gs_memory_s* %80, i8* %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0)) #8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.77, %cleanup.69
  %83 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i32* %vsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i8** %vdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast [2 x %struct.gs_param_string_s]* %alt_pair to i8*
  call void @llvm.lifetime.end(i64 32, i8* %86) #2
  %87 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %cleanup.dest.83 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.83, label %cleanup.87 [
    i32 0, label %cleanup.cont.84
  ]

cleanup.cont.84:                                  ; preds = %cleanup.78
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.84
  %88 = load i32, i32* %i, align 4, !tbaa !9
  %add85 = add nsw i32 %88, 2
  store i32 %add85, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end.86:                                       ; preds = %land.end
  %89 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %for.end.86, %cleanup.78, %if.then
  %90 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_DOCVIEW(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %dest = alloca [80 x i8], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_make_dest(i8* %arraydecay, %struct.gx_device_pdf_s* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), %struct.gs_param_string_s* %4, i32 %5, i32 0) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %6 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %7 = load i32, i32* %code, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Catalog = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 149
  %10 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Catalog, align 8, !tbaa !169
  %arraydecay5 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #6
  %conv = trunc i64 %call7 to i32
  %call8 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i32 0, i32 0), i8* %arraydecay5, i32 %conv) #8
  store i32 %call8, i32* %code, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %11 = load i32, i32* %code, align 4, !tbaa !9
  %cmp9 = icmp sge i32 %11, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %13 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp11 = icmp ult i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 %idxprom
  %call13 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 %idxprom15
  %call17 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0)) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Catalog20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 149
  %20 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Catalog20, align 8, !tbaa !169
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !9
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i64 %idx.ext
  %call21 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %20, %struct.gs_param_string_s* %add.ptr) #8
  store i32 %call21, i32* %code, align 4, !tbaa !9
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %23 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %23, 2
  store i32 %add, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  br label %cleanup

if.else:                                          ; preds = %if.end.2
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Catalog23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 149
  %27 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Catalog23, align 8, !tbaa !169
  %28 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %29 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call24 = call i32 @pdfmark_put_pairs(%struct.cos_dict_s* %27, %struct.gs_param_string_s* %28, i32 %29) #8
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end, %if.then.1, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.end(i64 80, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_BP(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %ictm = alloca %struct.gs_matrix_s, align 4
  %bbox_str = alloca [96 x i8], align 16
  %matrix_str = alloca [96 x i8], align 16
  %chars = alloca [101 x i8], align 16
  %bbox_str_len = alloca i32, align 4
  %matrix_str_len = alloca i32, align 4
  %s = alloca %struct.stream_s, align 8
  %cleanup.dest.slot = alloca i32
  %s37 = alloca i8*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.gs_matrix_s* %ictm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast [96 x i8]* %bbox_str to i8*
  call void @llvm.lifetime.start(i64 96, i8* %4) #2
  %5 = bitcast [96 x i8]* %matrix_str to i8*
  call void @llvm.lifetime.start(i64 96, i8* %5) #2
  %6 = bitcast [101 x i8]* %chars to i8*
  call void @llvm.lifetime.start(i64 101, i8* %6) #2
  %7 = bitcast i32* %bbox_str_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %matrix_str_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %9) #2
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_param_string_s* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ne i32 %11, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i64 0
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end:                                           ; preds = %lor.lhs.false.2
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %13, %struct.gs_matrix_s* %ictm) #8
  store i32 %call3, i32* %code, align 4, !tbaa !9
  %14 = load i32, i32* %code, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx7, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %cmp8 = icmp ugt i32 %17, 100
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.10:                                        ; preds = %if.end.6
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i32 0
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx11, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !8
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %20, i64 1
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx12, i32 0, i32 1
  %21 = load i32, i32* %size13, align 4, !tbaa !5
  %conv = zext i32 %21 to i64
  %call14 = call i8* @memcpy(i8* %arraydecay, i8* %19, i64 %conv) #7
  %22 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %22, i64 1
  %size16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx15, i32 0, i32 1
  %23 = load i32, i32* %size16, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx17, align 1, !tbaa !10
  %arraydecay18 = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %q21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q21, i32 0, i32 1
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), double* %x, double* %y, double* %x20, double* %y22) #7
  %cmp24 = icmp ne i32 %call23, 4
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.10
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.27:                                        ; preds = %if.end.10
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 164
  %25 = load i64, i64* %used_mask, align 8, !tbaa !160
  %shl = shl i64 %25, 1
  %cmp28 = icmp eq i64 %shl, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.31:                                        ; preds = %if.end.27
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 73
  %CompressPages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 3
  %28 = load i32, i32* %CompressPages, align 4, !tbaa !156
  %call32 = call i32 @start_XObject(%struct.gx_device_pdf_s* %26, i32 %28, %struct.cos_stream_s** %pcs) #8
  store i32 %call32, i32* %code, align 4, !tbaa !9
  %29 = load i32, i32* %code, align 4, !tbaa !9
  %cmp33 = icmp slt i32 %29, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %30 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.36:                                        ; preds = %if.end.31
  %31 = bitcast i8** %s37 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %34 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !167
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !66
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %size39 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %37, i32 0, i32 1
  %38 = load i32, i32* %size39, align 4, !tbaa !5
  %call40 = call i8* %34(%struct.gs_memory_s* %36, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.172, i32 0, i32 0)) #8
  store i8* %call40, i8** %s37, align 8, !tbaa !1
  %39 = load i8*, i8** %s37, align 8, !tbaa !1
  %cmp41 = icmp eq i8* %39, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.36
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.36
  %40 = load i8*, i8** %s37, align 8, !tbaa !1
  %41 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %data45 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %data45, align 8, !tbaa !8
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %size46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %43, i32 0, i32 1
  %44 = load i32, i32* %size46, align 4, !tbaa !5
  %conv47 = zext i32 %44 to i64
  %call48 = call i8* @memcpy(i8* %40, i8* %42, i64 %conv47) #7
  %45 = load i8*, i8** %s37, align 8, !tbaa !1
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 227
  %data50 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname49, i32 0, i32 0
  store i8* %45, i8** %data50, align 8, !tbaa !170
  %47 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %size51 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %47, i32 0, i32 1
  %48 = load i32, i32* %size51, align 4, !tbaa !5
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 227
  %size53 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname52, i32 0, i32 1
  store i32 %48, i32* %size53, align 4, !tbaa !171
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43
  %50 = bitcast i8** %s37 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %51 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %is_graphics = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %51, i32 0, i32 7
  store i8 1, i8* %is_graphics, align 1, !tbaa !172
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call54 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %52, %struct.gs_rect_s* %bbox) #8
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #8
  %arraydecay55 = getelementptr inbounds [96 x i8], [96 x i8]* %bbox_str, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay55, i32 96) #8
  %p56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p56, i32 0, i32 0
  %53 = load double, double* %x57, align 8, !tbaa !112
  %p58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p58, i32 0, i32 1
  %54 = load double, double* %y59, align 8, !tbaa !113
  %q60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q60, i32 0, i32 0
  %55 = load double, double* %x61, align 8, !tbaa !114
  %q62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q62, i32 0, i32 1
  %56 = load double, double* %y63, align 8, !tbaa !115
  %call64 = call i8* @pprintg4(%struct.stream_s* %s, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), double %53, double %54, double %55, double %56) #8
  %call65 = call i64 @stell(%struct.stream_s* %s) #8
  %conv66 = trunc i64 %call65 to i32
  store i32 %conv66, i32* %bbox_str_len, align 4, !tbaa !9
  %arraydecay67 = getelementptr inbounds [96 x i8], [96 x i8]* %matrix_str, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay67, i32 96) #8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 0
  %57 = load float, float* %xx, align 4, !tbaa !101
  %conv68 = fpext float %57 to double
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 1
  %58 = load float, float* %xy, align 4, !tbaa !102
  %conv69 = fpext float %58 to double
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 2
  %59 = load float, float* %yx, align 4, !tbaa !103
  %conv70 = fpext float %59 to double
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 3
  %60 = load float, float* %yy, align 4, !tbaa !104
  %conv71 = fpext float %60 to double
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 4
  %61 = load float, float* %tx, align 4, !tbaa !105
  %conv72 = fpext float %61 to double
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ictm, i32 0, i32 5
  %62 = load float, float* %ty, align 4, !tbaa !106
  %conv73 = fpext float %62 to double
  %call74 = call i8* @pprintg6(%struct.stream_s* %s, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), double %conv68, double %conv69, double %conv70, double %conv71, double %conv72, double %conv73) #8
  %call75 = call i64 @stell(%struct.stream_s* %s) #8
  %conv76 = trunc i64 %call75 to i32
  store i32 %conv76, i32* %matrix_str_len, align 4, !tbaa !9
  %63 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call77 = call i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0)) #8
  store i32 %call77, i32* %code, align 4, !tbaa !9
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.105, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %cleanup.cont
  %64 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call81 = call i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0)) #8
  store i32 %call81, i32* %code, align 4, !tbaa !9
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.105, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.80
  %65 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call85 = call i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0)) #8
  store i32 %call85, i32* %code, align 4, !tbaa !9
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then.105, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.84
  %66 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call89 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %66) #8
  %arraydecay90 = getelementptr inbounds [96 x i8], [96 x i8]* %bbox_str, i32 0, i32 0
  %67 = load i32, i32* %bbox_str_len, align 4, !tbaa !9
  %call91 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %call89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* %arraydecay90, i32 %67) #8
  store i32 %call91, i32* %code, align 4, !tbaa !9
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.105, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.88
  %68 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call95 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %68) #8
  %arraydecay96 = getelementptr inbounds [96 x i8], [96 x i8]* %matrix_str, i32 0, i32 0
  %69 = load i32, i32* %matrix_str_len, align 4, !tbaa !9
  %call97 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %call95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i8* %arraydecay96, i32 %69) #8
  store i32 %call97, i32* %code, align 4, !tbaa !9
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.105, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.94
  %70 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call101 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %70) #8
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 205
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !173
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %72, i32 0, i32 0
  %73 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call102 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %call101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), %struct.cos_object_s* %73) #8
  store i32 %call102, i32* %code, align 4, !tbaa !9
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.100, %lor.lhs.false.94, %lor.lhs.false.88, %lor.lhs.false.84, %lor.lhs.false.80, %cleanup.cont
  %74 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.106:                                       ; preds = %lor.lhs.false.100
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 201
  %76 = load i32, i32* %FormDepth, align 4, !tbaa !174
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %FormDepth, align 4, !tbaa !174
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %if.end.106, %if.then.105, %cleanup, %if.then.35, %if.then.30, %if.then.26, %if.then.9, %if.then.5, %if.then
  %77 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %77) #2
  %78 = bitcast i32* %matrix_str_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %bbox_str_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast [101 x i8]* %chars to i8*
  call void @llvm.lifetime.end(i64 101, i8* %80) #2
  %81 = bitcast [96 x i8]* %matrix_str to i8*
  call void @llvm.lifetime.end(i64 96, i8* %81) #2
  %82 = bitcast [96 x i8]* %bbox_str to i8*
  call void @llvm.lifetime.end(i64 96, i8* %82) #2
  %83 = bitcast %struct.gs_matrix_s* %ictm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %83) #2
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %86) #2
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_EP(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %objname = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 210
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !157
  store %struct.pdf_resource_s* %3, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %4 = bitcast %struct.gs_const_string_s* %objname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 227
  %6 = bitcast %struct.gs_const_string_s* %objname to i8*
  %7 = bitcast %struct.gs_const_string_s* %objname1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !175
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 205
  %9 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !173
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 159
  %11 = load i32, i32* %procsets, align 4, !tbaa !176
  %call = call i32 @pdf_add_procsets(%struct.cos_dict_s* %9, i32 %11) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %12 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %14) #8
  store i32 %call2, i32* %code, align 4, !tbaa !9
  %15 = load i32, i32* %code, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i32 @pdfmark_bind_named_object(%struct.gx_device_pdf_s* %17, %struct.gs_const_string_s* %objname, %struct.pdf_resource_s** %pres) #8
  store i32 %call6, i32* %code, align 4, !tbaa !9
  %18 = load i32, i32* %code, align 4, !tbaa !9
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8, !tbaa !158
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname, i32 0, i32 1
  %22 = load i32, i32* %size, align 4, !tbaa !159
  call void @gs_free_const_string(%struct.gs_memory_s* %20, i8* %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0)) #8
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 201
  %24 = load i32, i32* %FormDepth, align 4, !tbaa !174
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %FormDepth, align 4, !tbaa !174
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %25 = bitcast %struct.gs_const_string_s* %objname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #2
  %26 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_SP(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %3, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_stream_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 6
  %7 = load i8, i8* %is_open, align 1, !tbaa !177
  %conv = zext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %is_graphics = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %8, i32 0, i32 7
  %9 = load i8, i8* %is_graphics, align 1, !tbaa !178
  %tobool4 = icmp ne i8 %9, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call7 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %10, i32 1) #8
  store i32 %call7, i32* %code, align 4, !tbaa !9
  %11 = load i32, i32* %code, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %12 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), %struct.gs_matrix_s* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0)) #8
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 47
  %16 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !67
  %17 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %17, i32 0, i32 1
  %18 = load i64, i64* %id, align 8, !tbaa !154
  %call12 = call i8* @pprintld1(%struct.stream_s* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.181, i32 0, i32 0), i64 %18) #8
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 164
  %20 = load i64, i64* %used_mask, align 8, !tbaa !160
  %21 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %21, i32 0, i32 5
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !179
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %22, i32 0, i32 6
  %23 = load i64, i64* %where_used, align 8, !tbaa !151
  %or = or i64 %23, %20
  store i64 %or, i64* %where_used, align 8, !tbaa !151
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 205
  %26 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !173
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %pres13 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %27, i32 0, i32 5
  %28 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres13, align 8, !tbaa !179
  %call14 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %24, %struct.cos_dict_s* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), %struct.pdf_resource_s* %28) #8
  store i32 %call14, i32* %code, align 4, !tbaa !9
  %29 = load i32, i32* %code, align 4, !tbaa !9
  %cmp15 = icmp slt i32 %29, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  %30 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.10, %if.then.5, %if.then.2, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_OBJ(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %cotype = alloca %struct.cos_object_procs_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %stream = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_procs_s** %cotype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %stream to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %stream, align 4, !tbaa !9
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_param_string_s* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i64 0
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i64 1
  %call4 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.183, i32 0, i32 0)) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  store %struct.cos_object_procs_s* @cos_array_procs, %struct.cos_object_procs_s** %cotype, align 8, !tbaa !1
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i64 1
  %call8 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i32 0, i32 0)) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store %struct.cos_object_procs_s* @cos_dict_procs, %struct.cos_object_procs_s** %cotype, align 8, !tbaa !1
  br label %if.end.18

if.else.11:                                       ; preds = %if.else
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i64 1
  %call13 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i32 0, i32 0)) #8
  store i32 %call13, i32* %stream, align 4, !tbaa !9
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  store %struct.cos_object_procs_s* @cos_stream_procs, %struct.cos_object_procs_s** %cotype, align 8, !tbaa !1
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %12 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype, align 8, !tbaa !1
  %call20 = call i32 @pdf_make_named(%struct.gx_device_pdf_s* %10, %struct.gs_param_string_s* %11, %struct.cos_object_procs_s* %12, %struct.cos_object_s** %pco, i32 1) #8
  store i32 %call20, i32* %code, align 4, !tbaa !9
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.end.19
  %13 = load i32, i32* %code, align 4, !tbaa !9
  %cmp23 = icmp eq i32 %13, -15
  br i1 %cmp23, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.then.22
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call24 = call i32 @pdf_refer_named(%struct.gx_device_pdf_s* %14, %struct.gs_param_string_s* %15, %struct.cos_object_s** %pco) #8
  %cmp25 = icmp sge i32 %call24, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.29

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %16, i32 0, i32 0
  %17 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !180
  %18 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cotype, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.cos_object_procs_s* %17, %18
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true.26, %land.lhs.true, %if.then.22
  %19 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.19
  %20 = load i32, i32* %stream, align 4, !tbaa !9
  %tobool31 = icmp ne i32 %20, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_pdf_s* %21 to %struct.gx_device_psdf_s*
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %24 = bitcast %struct.cos_object_s* %23 to %struct.cos_stream_s*
  %call33 = call i32 @setup_pdfmark_stream_compression(%struct.gx_device_psdf_s* %22, %struct.cos_stream_s* %24) #8
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.32, %if.end.29, %if.then.28, %if.else.16, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %stream to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.cos_object_procs_s** %cotype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PUT(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %5, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_array_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i64 1
  %call5 = call i32 @pdfmark_scan_int(%struct.gs_param_string_s* %arrayidx4, i32* %index) #8
  store i32 %call5, i32* %code, align 4, !tbaa !9
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %9 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %10 = load i32, i32* %index, align 4, !tbaa !9
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %11, i32 0, i32 8
  %12 = load i8, i8* %written, align 1, !tbaa !181
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.11
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %14 = bitcast %struct.cos_object_s* %13 to %struct.cos_array_s*
  %15 = load i32, i32* %index, align 4, !tbaa !9
  %conv = sext i32 %15 to i64
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 2
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx14, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !8
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 2
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx15, i32 0, i32 1
  %19 = load i32, i32* %size, align 4, !tbaa !5
  %call16 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %17, i32 %19) #8
  %call17 = call i32 @cos_array_put(%struct.cos_array_s* %14, i64 %conv, %struct.cos_value_s* %call16) #8
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.10, %if.then.7, %if.then.2, %if.then
  %20 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #2
  %23 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PUTDICT(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i64 0
  %call = call i32 @pdf_refer_named(%struct.gx_device_pdf_s* %2, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %5, i32 0, i32 0
  %6 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !180
  %cmp1 = icmp ne %struct.cos_object_procs_s* %6, @cos_dict_procs
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs2 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %7, i32 0, i32 0
  %8 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs2, align 8, !tbaa !180
  %cmp3 = icmp ne %struct.cos_object_procs_s* %8, @cos_stream_procs
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 8
  %10 = load i8, i8* %written, align 1, !tbaa !181
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.5
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %12 = bitcast %struct.cos_object_s* %11 to %struct.cos_dict_s*
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i64 1
  %14 = load i32, i32* %count.addr, align 4, !tbaa !9
  %sub = sub i32 %14, 1
  %call8 = call i32 @pdfmark_put_pairs(%struct.cos_dict_s* %12, %struct.gs_param_string_s* %add.ptr, i32 %sub) #8
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.4, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PUTINTERVAL(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %6, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_array_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i64 1
  %call5 = call i32 @pdfmark_scan_int(%struct.gs_param_string_s* %arrayidx4, i32* %index) #8
  store i32 %call5, i32* %code, align 4, !tbaa !9
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %10 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %11 = load i32, i32* %index, align 4, !tbaa !9
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  store i32 2, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %12 = load i32, i32* %code, align 4, !tbaa !9
  %cmp12 = icmp sge i32 %12, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !9
  %14 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp13 = icmp ult i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %17 = bitcast %struct.cos_object_s* %16 to %struct.cos_array_s*
  %18 = load i32, i32* %index, align 4, !tbaa !9
  %19 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %18, %19
  %sub = sub nsw i32 %add, 2
  %conv = sext i32 %sub to i64
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx14, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8, !tbaa !8
  %23 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i64 %idxprom15
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx16, i32 0, i32 1
  %25 = load i32, i32* %size, align 4, !tbaa !5
  %call17 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %22, i32 %25) #8
  %call18 = call i32 @cos_array_put(%struct.cos_array_s* %17, i64 %conv, %struct.cos_value_s* %call17) #8
  store i32 %call18, i32* %code, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10, %if.then.7, %if.then.2, %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %31) #2
  %32 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PUTSTREAM(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %5, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_stream_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %8, i32 0, i32 6
  %9 = load i8, i8* %is_open, align 1, !tbaa !177
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.3
  store i32 1, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %11 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp6 = icmp ult i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %input_strm = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %12, i32 0, i32 10
  %13 = load %struct.stream_s*, %struct.stream_s** %input_strm, align 8, !tbaa !182
  %14 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx7, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !8
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 %idxprom8
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx9, i32 0, i32 1
  %19 = load i32, i32* %size, align 4, !tbaa !5
  %call10 = call i32 @sputs(%struct.stream_s* %13, i8* %16, i32 %19, i32* %l) #8
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %21, i32 0, i32 8
  %22 = load i8, i8* %written, align 1, !tbaa !181
  %tobool14 = icmp ne i8 %22, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.end
  %23 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.12, %if.then.4, %if.then.2, %if.then
  %24 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_APPEND(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %4, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_array_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %8 = bitcast %struct.cos_object_s* %7 to %struct.cos_array_s*
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i64 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx4, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !8
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i64 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx5, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %call6 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %value, i8* %10, i32 %12) #8
  %call7 = call i32 @cos_array_add(%struct.cos_array_s* %8, %struct.cos_value_s* %call6) #8
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %14) #2
  %15 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_CLOSE(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %no_objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %no_objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %no_objname, %struct.gs_param_string_s** %no_objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i64 0
  %call = call i32 @pdf_get_named(%struct.gx_device_pdf_s* %3, %struct.gs_param_string_s* %arrayidx, %struct.cos_object_procs_s* @cos_stream_procs, %struct.cos_object_s** %pco) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 6
  %7 = load i8, i8* %is_open, align 1, !tbaa !177
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.3
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %is_open6 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %8, i32 0, i32 6
  store i8 0, i8* %is_open6, align 1, !tbaa !177
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then.2, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_NamespacePush(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_push_namespace(%struct.gx_device_pdf_s* %1) #8
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_NamespacePop(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 182
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !183
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @cos_dict_objects_write(%struct.cos_dict_s* %2, %struct.gx_device_pdf_s* %3) #8
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_pop_namespace(%struct.gx_device_pdf_s* %4) #8
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_NI(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_param_string_s* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call = call i32 @pdf_make_named(%struct.gx_device_pdf_s* %4, %struct.gs_param_string_s* %5, %struct.cos_object_procs_s* @cos_dict_procs, %struct.cos_object_s** %pco, i32 1) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %6 = load i32, i32* %code, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 183
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !184
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %call5 = call i32 @cos_array_add_object(%struct.cos_array_s* %9, %struct.cos_object_s* %10) #8
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_MP(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_DP(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_BMC(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_BDC(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_EMC(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StRoleMap(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StClassMap(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StPNE(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StBookmarkRoot(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StPush(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StPop(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StPopAll(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StBMC(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StBDC(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StOBJ(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StAttr(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StStore(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_StRetrieve(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_annot(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.gs_param_string_s* %objname, i8* %subtype) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %objname.addr = alloca %struct.gs_param_string_s*, align 8
  %subtype.addr = alloca i8*, align 8
  %params = alloca %struct.ao_params_s, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %page_index = alloca i32, align 4
  %annots = alloca %struct.cos_array_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %Flags = alloca i32, align 4
  %pair = alloca %struct.gs_param_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  %Subtype = alloca %struct.gs_param_string_s, align 8
  %discard = alloca i32, align 4
  %page = alloca %struct.pdf_page_s*, align 8
  %i64 = alloca i32, align 4
  %pair69 = alloca %struct.gs_param_string_s*, align 8
  %rect = alloca %struct.gs_rect_s, align 8
  %v_trimbox = alloca %struct.cos_value_s*, align 8
  %v_bleedbox = alloca %struct.cos_value_s*, align 8
  %v_artbox = alloca %struct.cos_value_s*, align 8
  %v_cropbox = alloca %struct.cos_value_s*, align 8
  %p = alloca i8*, align 8
  %buf = alloca [100 x i8], align 16
  %size75 = alloca i32, align 4
  %code76 = alloca i32, align 4
  %temp = alloca [4 x float], align 16
  %pagebox = alloca [4 x double], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %objname, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  store i8* %subtype, i8** %subtype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ao_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %page_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 153
  %4 = load i32, i32* %next_page, align 4, !tbaa !93
  store i32 %4, i32* %page_index, align 4, !tbaa !9
  %5 = bitcast %struct.cos_array_s** %annots to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 109
  %9 = load i32, i32* %PDFA, align 4, !tbaa !185
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %Flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %Flags, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %13 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ult i32 %12, %13
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 %idxprom
  store %struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %for.body
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx3, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !8
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i32* %Flags) #7
  store i32 %call4, i32* %code, align 4, !tbaa !9
  %20 = load i32, i32* %code, align 4, !tbaa !9
  %cmp5 = icmp ne i32 %20, 1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call7 = call i8* @gs_program_name() #8
  %call8 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %22, i8* %call7, i64 %call8) #8
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !66
  %call10 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.71, i32 0, i32 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.2
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.end
  %25 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %26, 2
  store i32 %add, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %27 = load i32, i32* %Flags, align 4, !tbaa !9
  %and = and i32 %27, 4
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.end.39

if.then.13:                                       ; preds = %for.end
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 239
  %29 = load i32, i32* %PDFACompatibilityPolicy, align 4, !tbaa !186
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.then.13
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !66
  %call15 = call i8* @gs_program_name() #8
  %call16 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %31, i8* %call15, i64 %call16) #8
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !66
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %33, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.72, i32 0, i32 0)) #8
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX, align 4, !tbaa !187
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 109
  store i32 0, i32* %PDFA19, align 4, !tbaa !185
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.13
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !66
  %call22 = call i8* @gs_program_name() #8
  %call23 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %37, i8* %call22, i64 %call23) #8
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !66
  %call25 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %39, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.73, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.bb.26:                                         ; preds = %if.then.13
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !66
  %call28 = call i8* @gs_program_name() #8
  %call29 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %41, i8* %call28, i64 %call29) #8
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !66
  %call31 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.74, i32 0, i32 0)) #8
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

sw.default:                                       ; preds = %if.then.13
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !66
  %call33 = call i8* @gs_program_name() #8
  %call34 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %45, i8* %call33, i64 %call34) #8
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !66
  %call36 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %47, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.75, i32 0, i32 0)) #8
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX37, align 4, !tbaa !187
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 109
  store i32 0, i32* %PDFA38, align 4, !tbaa !185
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end.39

if.end.39:                                        ; preds = %sw.epilog, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %if.end.39, %sw.bb.26, %sw.bb.20
  %50 = bitcast i32* %Flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %cleanup.dest.42 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.42, label %cleanup.623 [
    i32 0, label %cleanup.cont.43
  ]

cleanup.cont.43:                                  ; preds = %cleanup.40
  br label %if.end.44

if.end.44:                                        ; preds = %cleanup.cont.43, %entry
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 108
  %53 = load i32, i32* %PDFX, align 4, !tbaa !188
  %cmp45 = icmp ne i32 %53, 0
  br i1 %cmp45, label %if.then.46, label %if.end.568

if.then.46:                                       ; preds = %if.end.44
  %54 = bitcast %struct.gs_param_string_s* %Subtype to i8*
  call void @llvm.lifetime.start(i64 16, i8* %54) #2
  %55 = bitcast i32* %discard to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  store i32 1, i32* %discard, align 4, !tbaa !9
  %56 = bitcast %struct.pdf_page_s** %page to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  store %struct.pdf_page_s* null, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 153
  %58 = load i32, i32* %next_page47, align 4, !tbaa !93
  %idxprom48 = sext i32 %58 to i64
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 162
  %60 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages, align 8, !tbaa !189
  %arrayidx49 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %60, i64 %idxprom48
  store %struct.pdf_page_s* %arrayidx49, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %61 = load i8*, i8** %subtype.addr, align 8, !tbaa !1
  %tobool50 = icmp ne i8* %61, null
  br i1 %tobool50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %if.then.46
  %62 = load i8*, i8** %subtype.addr, align 8, !tbaa !1
  %data52 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  store i8* %62, i8** %data52, align 8, !tbaa !8
  %data53 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  %63 = load i8*, i8** %data53, align 8, !tbaa !8
  %call54 = call i64 @strlen(i8* %63) #6
  %conv = trunc i64 %call54 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !190
  %call55 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %Subtype, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0)) #8
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.51
  %call57 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %Subtype, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0)) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %if.then.51
  store i32 0, i32* %discard, align 4, !tbaa !9
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %lor.lhs.false
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.46
  %64 = load i32, i32* %discard, align 4, !tbaa !9
  %tobool62 = icmp ne i32 %64, 0
  br i1 %tobool62, label %if.then.63, label %if.end.562

if.then.63:                                       ; preds = %if.end.61
  %65 = bitcast i32* %i64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  store i32 0, i32* %i64, align 4, !tbaa !9
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.522, %if.then.63
  %66 = load i32, i32* %i64, align 4, !tbaa !9
  %67 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp66 = icmp ult i32 %66, %67
  br i1 %cmp66, label %for.body.68, label %for.end.524

for.body.68:                                      ; preds = %for.cond.65
  %68 = bitcast %struct.gs_param_string_s** %pair69 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #2
  %69 = load i32, i32* %i64, align 4, !tbaa !9
  %idxprom70 = sext i32 %69 to i64
  %70 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %70, i64 %idxprom70
  store %struct.gs_param_string_s* %arrayidx71, %struct.gs_param_string_s** %pair69, align 8, !tbaa !1
  %71 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair69, align 8, !tbaa !1
  %call72 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #8
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.518

if.then.74:                                       ; preds = %for.body.68
  %72 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %72) #2
  %73 = bitcast %struct.cos_value_s** %v_trimbox to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #2
  %74 = bitcast %struct.cos_value_s** %v_bleedbox to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #2
  %75 = bitcast %struct.cos_value_s** %v_artbox to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #2
  %76 = bitcast %struct.cos_value_s** %v_cropbox to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #2
  %77 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %78) #2
  %79 = bitcast i32* %size75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  %81 = bitcast [4 x float]* %temp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %81) #2
  %82 = bitcast [4 x double]* %pagebox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %82) #2
  %83 = bitcast [4 x double]* %pagebox to i8*
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 32, i32 16, i1 false)
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 19
  %arrayidx77 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %85 = load float, float* %arrayidx77, align 4, !tbaa !100
  %conv78 = fpext float %85 to double
  %arrayidx79 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 2
  store double %conv78, double* %arrayidx79, align 8, !tbaa !74
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MediaSize80 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 19
  %arrayidx81 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize80, i32 0, i64 1
  %87 = load float, float* %arrayidx81, align 4, !tbaa !100
  %conv82 = fpext float %87 to double
  %arrayidx83 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 3
  store double %conv82, double* %arrayidx83, align 8, !tbaa !74
  store %struct.cos_value_s* null, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  store %struct.cos_value_s* null, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  store %struct.cos_value_s* null, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  store %struct.cos_value_s* null, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %88 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair69, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %88, i64 1
  %89 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call84 = call i32 @pdfmark_scan_rect(%struct.gs_rect_s* %rect, %struct.gs_param_string_s* %add.ptr, %struct.gs_matrix_s* %89) #8
  store i32 %call84, i32* %code76, align 4, !tbaa !9
  %90 = load i32, i32* %code76, align 4, !tbaa !9
  %cmp85 = icmp slt i32 %90, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.74
  %91 = load i32, i32* %code76, align 4, !tbaa !9
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.507

if.end.88:                                        ; preds = %if.then.74
  %92 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %tobool89 = icmp ne %struct.pdf_page_s* %92, null
  br i1 %tobool89, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %if.end.88
  %93 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %Page = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %93, i32 0, i32 0
  %94 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page, align 8, !tbaa !191
  %tobool90 = icmp ne %struct.cos_dict_s* %94, null
  br i1 %tobool90, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %land.lhs.true
  %95 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %Page92 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %95, i32 0, i32 0
  %96 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page92, align 8, !tbaa !191
  %call93 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call93, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %97 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %Page94 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %97, i32 0, i32 0
  %98 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page94, align 8, !tbaa !191
  %call95 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call95, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %99 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %Page96 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %99, i32 0, i32 0
  %100 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page96, align 8, !tbaa !191
  %call97 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call97, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %101 = load %struct.pdf_page_s*, %struct.pdf_page_s** %page, align 8, !tbaa !1
  %Page98 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %101, i32 0, i32 0
  %102 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Page98, align 8, !tbaa !191
  %call99 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call99, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.91, %land.lhs.true, %if.end.88
  %103 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %cmp101 = icmp ne %struct.cos_value_s* %103, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.153

land.lhs.true.103:                                ; preds = %if.end.100
  %104 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %104, i32 0, i32 0
  %105 = load i32, i32* %value_type, align 4, !tbaa !131
  %cmp104 = icmp eq i32 %105, 0
  br i1 %cmp104, label %if.then.106, label %if.end.153

if.then.106:                                      ; preds = %land.lhs.true.103
  %106 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %106, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data107 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %107 = load i8*, i8** %data107, align 8, !tbaa !133
  store i8* %107, i8** %p, align 8, !tbaa !1
  %108 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %contents108 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %108, i32 0, i32 1
  %chars109 = bitcast %union.vc_* %contents108 to %struct.gs_string_s*
  %size110 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars109, i32 0, i32 1
  %109 = load i32, i32* %size110, align 4, !tbaa !135
  %conv111 = zext i32 %109 to i64
  %cmp112 = icmp ult i64 %conv111, 99
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.106
  %110 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %contents114 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %110, i32 0, i32 1
  %chars115 = bitcast %union.vc_* %contents114 to %struct.gs_string_s*
  %size116 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars115, i32 0, i32 1
  %111 = load i32, i32* %size116, align 4, !tbaa !135
  %conv117 = zext i32 %111 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv117, %cond.true ], [ 99, %cond.false ]
  %conv118 = trunc i64 %cond to i32
  store i32 %conv118, i32* %size75, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %112 = load i8*, i8** %p, align 8, !tbaa !1
  %113 = load i32, i32* %size75, align 4, !tbaa !9
  %conv119 = sext i32 %113 to i64
  %call120 = call i8* @memcpy(i8* %arraydecay, i8* %112, i64 %conv119) #7
  %114 = load i32, i32* %size75, align 4, !tbaa !9
  %idxprom121 = sext i32 %114 to i64
  %arrayidx122 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom121
  store i8 0, i8* %arrayidx122, align 1, !tbaa !10
  %arraydecay123 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %arrayidx125 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %arrayidx126 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 2
  %arrayidx127 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 3
  %call128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), float* %arrayidx124, float* %arrayidx125, float* %arrayidx126, float* %arrayidx127) #7
  %cmp129 = icmp eq i32 %call128, 4
  br i1 %cmp129, label %if.then.131, label %if.end.152

if.then.131:                                      ; preds = %cond.end
  %arrayidx132 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %115 = load float, float* %arrayidx132, align 4, !tbaa !100
  %conv133 = fpext float %115 to double
  %arrayidx134 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %116 = load double, double* %arrayidx134, align 8, !tbaa !74
  %cmp135 = fcmp ogt double %conv133, %116
  br i1 %cmp135, label %if.then.137, label %if.end.141

if.then.137:                                      ; preds = %if.then.131
  %arrayidx138 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %117 = load float, float* %arrayidx138, align 4, !tbaa !100
  %conv139 = fpext float %117 to double
  %arrayidx140 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  store double %conv139, double* %arrayidx140, align 8, !tbaa !74
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %if.then.131
  %arrayidx142 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %118 = load float, float* %arrayidx142, align 4, !tbaa !100
  %conv143 = fpext float %118 to double
  %arrayidx144 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %119 = load double, double* %arrayidx144, align 8, !tbaa !74
  %cmp145 = fcmp ogt double %conv143, %119
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.end.141
  %arrayidx148 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %120 = load float, float* %arrayidx148, align 4, !tbaa !100
  %conv149 = fpext float %120 to double
  %arrayidx150 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  store double %conv149, double* %arrayidx150, align 8, !tbaa !74
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %if.end.141
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %cond.end
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %land.lhs.true.103, %if.end.100
  %121 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %cmp154 = icmp ne %struct.cos_value_s* %121, null
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.214

land.lhs.true.156:                                ; preds = %if.end.153
  %122 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %value_type157 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %122, i32 0, i32 0
  %123 = load i32, i32* %value_type157, align 4, !tbaa !131
  %cmp158 = icmp eq i32 %123, 0
  br i1 %cmp158, label %if.then.160, label %if.end.214

if.then.160:                                      ; preds = %land.lhs.true.156
  %124 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %contents161 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %124, i32 0, i32 1
  %chars162 = bitcast %union.vc_* %contents161 to %struct.gs_string_s*
  %data163 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars162, i32 0, i32 0
  %125 = load i8*, i8** %data163, align 8, !tbaa !133
  store i8* %125, i8** %p, align 8, !tbaa !1
  %126 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %contents164 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %126, i32 0, i32 1
  %chars165 = bitcast %union.vc_* %contents164 to %struct.gs_string_s*
  %size166 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars165, i32 0, i32 1
  %127 = load i32, i32* %size166, align 4, !tbaa !135
  %conv167 = zext i32 %127 to i64
  %cmp168 = icmp ult i64 %conv167, 99
  br i1 %cmp168, label %cond.true.170, label %cond.false.175

cond.true.170:                                    ; preds = %if.then.160
  %128 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %contents171 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %128, i32 0, i32 1
  %chars172 = bitcast %union.vc_* %contents171 to %struct.gs_string_s*
  %size173 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars172, i32 0, i32 1
  %129 = load i32, i32* %size173, align 4, !tbaa !135
  %conv174 = zext i32 %129 to i64
  br label %cond.end.176

cond.false.175:                                   ; preds = %if.then.160
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.175, %cond.true.170
  %cond177 = phi i64 [ %conv174, %cond.true.170 ], [ 99, %cond.false.175 ]
  %conv178 = trunc i64 %cond177 to i32
  store i32 %conv178, i32* %size75, align 4, !tbaa !9
  %arraydecay179 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %130 = load i8*, i8** %p, align 8, !tbaa !1
  %131 = load i32, i32* %size75, align 4, !tbaa !9
  %conv180 = sext i32 %131 to i64
  %call181 = call i8* @memcpy(i8* %arraydecay179, i8* %130, i64 %conv180) #7
  %132 = load i32, i32* %size75, align 4, !tbaa !9
  %idxprom182 = sext i32 %132 to i64
  %arrayidx183 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom182
  store i8 0, i8* %arrayidx183, align 1, !tbaa !10
  %arraydecay184 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %arrayidx186 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %arrayidx187 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 2
  %arrayidx188 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 3
  %call189 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), float* %arrayidx185, float* %arrayidx186, float* %arrayidx187, float* %arrayidx188) #7
  %cmp190 = icmp eq i32 %call189, 4
  br i1 %cmp190, label %if.then.192, label %if.end.213

if.then.192:                                      ; preds = %cond.end.176
  %arrayidx193 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %133 = load float, float* %arrayidx193, align 4, !tbaa !100
  %conv194 = fpext float %133 to double
  %arrayidx195 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %134 = load double, double* %arrayidx195, align 8, !tbaa !74
  %cmp196 = fcmp ogt double %conv194, %134
  br i1 %cmp196, label %if.then.198, label %if.end.202

if.then.198:                                      ; preds = %if.then.192
  %arrayidx199 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %135 = load float, float* %arrayidx199, align 4, !tbaa !100
  %conv200 = fpext float %135 to double
  %arrayidx201 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  store double %conv200, double* %arrayidx201, align 8, !tbaa !74
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.198, %if.then.192
  %arrayidx203 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %136 = load float, float* %arrayidx203, align 4, !tbaa !100
  %conv204 = fpext float %136 to double
  %arrayidx205 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %137 = load double, double* %arrayidx205, align 8, !tbaa !74
  %cmp206 = fcmp ogt double %conv204, %137
  br i1 %cmp206, label %if.then.208, label %if.end.212

if.then.208:                                      ; preds = %if.end.202
  %arrayidx209 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %138 = load float, float* %arrayidx209, align 4, !tbaa !100
  %conv210 = fpext float %138 to double
  %arrayidx211 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  store double %conv210, double* %arrayidx211, align 8, !tbaa !74
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.208, %if.end.202
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %cond.end.176
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %land.lhs.true.156, %if.end.153
  %139 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %cmp215 = icmp ne %struct.cos_value_s* %139, null
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.275

land.lhs.true.217:                                ; preds = %if.end.214
  %140 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %value_type218 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %140, i32 0, i32 0
  %141 = load i32, i32* %value_type218, align 4, !tbaa !131
  %cmp219 = icmp eq i32 %141, 0
  br i1 %cmp219, label %if.then.221, label %if.end.275

if.then.221:                                      ; preds = %land.lhs.true.217
  %142 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %contents222 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %142, i32 0, i32 1
  %chars223 = bitcast %union.vc_* %contents222 to %struct.gs_string_s*
  %data224 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars223, i32 0, i32 0
  %143 = load i8*, i8** %data224, align 8, !tbaa !133
  store i8* %143, i8** %p, align 8, !tbaa !1
  %144 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %contents225 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %144, i32 0, i32 1
  %chars226 = bitcast %union.vc_* %contents225 to %struct.gs_string_s*
  %size227 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars226, i32 0, i32 1
  %145 = load i32, i32* %size227, align 4, !tbaa !135
  %conv228 = zext i32 %145 to i64
  %cmp229 = icmp ult i64 %conv228, 99
  br i1 %cmp229, label %cond.true.231, label %cond.false.236

cond.true.231:                                    ; preds = %if.then.221
  %146 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %contents232 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %146, i32 0, i32 1
  %chars233 = bitcast %union.vc_* %contents232 to %struct.gs_string_s*
  %size234 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars233, i32 0, i32 1
  %147 = load i32, i32* %size234, align 4, !tbaa !135
  %conv235 = zext i32 %147 to i64
  br label %cond.end.237

cond.false.236:                                   ; preds = %if.then.221
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.236, %cond.true.231
  %cond238 = phi i64 [ %conv235, %cond.true.231 ], [ 99, %cond.false.236 ]
  %conv239 = trunc i64 %cond238 to i32
  store i32 %conv239, i32* %size75, align 4, !tbaa !9
  %arraydecay240 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %148 = load i8*, i8** %p, align 8, !tbaa !1
  %149 = load i32, i32* %size75, align 4, !tbaa !9
  %conv241 = sext i32 %149 to i64
  %call242 = call i8* @memcpy(i8* %arraydecay240, i8* %148, i64 %conv241) #7
  %150 = load i32, i32* %size75, align 4, !tbaa !9
  %idxprom243 = sext i32 %150 to i64
  %arrayidx244 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom243
  store i8 0, i8* %arrayidx244, align 1, !tbaa !10
  %arraydecay245 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %arrayidx247 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %arrayidx248 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 2
  %arrayidx249 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 3
  %call250 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), float* %arrayidx246, float* %arrayidx247, float* %arrayidx248, float* %arrayidx249) #7
  %cmp251 = icmp eq i32 %call250, 4
  br i1 %cmp251, label %if.then.253, label %if.end.274

if.then.253:                                      ; preds = %cond.end.237
  %arrayidx254 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %151 = load float, float* %arrayidx254, align 4, !tbaa !100
  %conv255 = fpext float %151 to double
  %arrayidx256 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %152 = load double, double* %arrayidx256, align 8, !tbaa !74
  %cmp257 = fcmp ogt double %conv255, %152
  br i1 %cmp257, label %if.then.259, label %if.end.263

if.then.259:                                      ; preds = %if.then.253
  %arrayidx260 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %153 = load float, float* %arrayidx260, align 4, !tbaa !100
  %conv261 = fpext float %153 to double
  %arrayidx262 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  store double %conv261, double* %arrayidx262, align 8, !tbaa !74
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.259, %if.then.253
  %arrayidx264 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %154 = load float, float* %arrayidx264, align 4, !tbaa !100
  %conv265 = fpext float %154 to double
  %arrayidx266 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %155 = load double, double* %arrayidx266, align 8, !tbaa !74
  %cmp267 = fcmp ogt double %conv265, %155
  br i1 %cmp267, label %if.then.269, label %if.end.273

if.then.269:                                      ; preds = %if.end.263
  %arrayidx270 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %156 = load float, float* %arrayidx270, align 4, !tbaa !100
  %conv271 = fpext float %156 to double
  %arrayidx272 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  store double %conv271, double* %arrayidx272, align 8, !tbaa !74
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.269, %if.end.263
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %cond.end.237
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.217, %if.end.214
  %157 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %cmp276 = icmp ne %struct.cos_value_s* %157, null
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.336

land.lhs.true.278:                                ; preds = %if.end.275
  %158 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %value_type279 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %158, i32 0, i32 0
  %159 = load i32, i32* %value_type279, align 4, !tbaa !131
  %cmp280 = icmp eq i32 %159, 0
  br i1 %cmp280, label %if.then.282, label %if.end.336

if.then.282:                                      ; preds = %land.lhs.true.278
  %160 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %contents283 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %160, i32 0, i32 1
  %chars284 = bitcast %union.vc_* %contents283 to %struct.gs_string_s*
  %data285 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars284, i32 0, i32 0
  %161 = load i8*, i8** %data285, align 8, !tbaa !133
  store i8* %161, i8** %p, align 8, !tbaa !1
  %162 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %contents286 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %162, i32 0, i32 1
  %chars287 = bitcast %union.vc_* %contents286 to %struct.gs_string_s*
  %size288 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars287, i32 0, i32 1
  %163 = load i32, i32* %size288, align 4, !tbaa !135
  %conv289 = zext i32 %163 to i64
  %cmp290 = icmp ult i64 %conv289, 99
  br i1 %cmp290, label %cond.true.292, label %cond.false.297

cond.true.292:                                    ; preds = %if.then.282
  %164 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %contents293 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %164, i32 0, i32 1
  %chars294 = bitcast %union.vc_* %contents293 to %struct.gs_string_s*
  %size295 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars294, i32 0, i32 1
  %165 = load i32, i32* %size295, align 4, !tbaa !135
  %conv296 = zext i32 %165 to i64
  br label %cond.end.298

cond.false.297:                                   ; preds = %if.then.282
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.297, %cond.true.292
  %cond299 = phi i64 [ %conv296, %cond.true.292 ], [ 99, %cond.false.297 ]
  %conv300 = trunc i64 %cond299 to i32
  store i32 %conv300, i32* %size75, align 4, !tbaa !9
  %arraydecay301 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %166 = load i8*, i8** %p, align 8, !tbaa !1
  %167 = load i32, i32* %size75, align 4, !tbaa !9
  %conv302 = sext i32 %167 to i64
  %call303 = call i8* @memcpy(i8* %arraydecay301, i8* %166, i64 %conv302) #7
  %168 = load i32, i32* %size75, align 4, !tbaa !9
  %idxprom304 = sext i32 %168 to i64
  %arrayidx305 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom304
  store i8 0, i8* %arrayidx305, align 1, !tbaa !10
  %arraydecay306 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %arrayidx308 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %arrayidx309 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 2
  %arrayidx310 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 3
  %call311 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay306, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), float* %arrayidx307, float* %arrayidx308, float* %arrayidx309, float* %arrayidx310) #7
  %cmp312 = icmp eq i32 %call311, 4
  br i1 %cmp312, label %if.then.314, label %if.end.335

if.then.314:                                      ; preds = %cond.end.298
  %arrayidx315 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %169 = load float, float* %arrayidx315, align 4, !tbaa !100
  %conv316 = fpext float %169 to double
  %arrayidx317 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %170 = load double, double* %arrayidx317, align 8, !tbaa !74
  %cmp318 = fcmp ogt double %conv316, %170
  br i1 %cmp318, label %if.then.320, label %if.end.324

if.then.320:                                      ; preds = %if.then.314
  %arrayidx321 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 0
  %171 = load float, float* %arrayidx321, align 4, !tbaa !100
  %conv322 = fpext float %171 to double
  %arrayidx323 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  store double %conv322, double* %arrayidx323, align 8, !tbaa !74
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.320, %if.then.314
  %arrayidx325 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %172 = load float, float* %arrayidx325, align 4, !tbaa !100
  %conv326 = fpext float %172 to double
  %arrayidx327 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %173 = load double, double* %arrayidx327, align 8, !tbaa !74
  %cmp328 = fcmp ogt double %conv326, %173
  br i1 %cmp328, label %if.then.330, label %if.end.334

if.then.330:                                      ; preds = %if.end.324
  %arrayidx331 = getelementptr inbounds [4 x float], [4 x float]* %temp, i32 0, i64 1
  %174 = load float, float* %arrayidx331, align 4, !tbaa !100
  %conv332 = fpext float %174 to double
  %arrayidx333 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  store double %conv332, double* %arrayidx333, align 8, !tbaa !74
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.330, %if.end.324
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %cond.end.298
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %land.lhs.true.278, %if.end.275
  %175 = load %struct.cos_value_s*, %struct.cos_value_s** %v_cropbox, align 8, !tbaa !1
  %cmp337 = icmp eq %struct.cos_value_s* %175, null
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.454

land.lhs.true.339:                                ; preds = %if.end.336
  %176 = load %struct.cos_value_s*, %struct.cos_value_s** %v_trimbox, align 8, !tbaa !1
  %cmp340 = icmp eq %struct.cos_value_s* %176, null
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.454

land.lhs.true.342:                                ; preds = %land.lhs.true.339
  %177 = load %struct.cos_value_s*, %struct.cos_value_s** %v_artbox, align 8, !tbaa !1
  %cmp343 = icmp eq %struct.cos_value_s* %177, null
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.454

land.lhs.true.345:                                ; preds = %land.lhs.true.342
  %178 = load %struct.cos_value_s*, %struct.cos_value_s** %v_bleedbox, align 8, !tbaa !1
  %cmp346 = icmp eq %struct.cos_value_s* %178, null
  br i1 %cmp346, label %if.then.348, label %if.end.454

if.then.348:                                      ; preds = %land.lhs.true.345
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 88
  %size349 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset, i32 0, i32 1
  %180 = load i32, i32* %size349, align 4, !tbaa !193
  %cmp350 = icmp uge i32 %180, 4
  br i1 %cmp350, label %land.lhs.true.352, label %if.else

land.lhs.true.352:                                ; preds = %if.then.348
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset353 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 88
  %data354 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset353, i32 0, i32 0
  %182 = load float*, float** %data354, align 8, !tbaa !194
  %arrayidx355 = getelementptr inbounds float, float* %182, i64 0
  %183 = load float, float* %arrayidx355, align 4, !tbaa !100
  %cmp356 = fcmp oge float %183, 0.000000e+00
  br i1 %cmp356, label %land.lhs.true.358, label %if.else

land.lhs.true.358:                                ; preds = %land.lhs.true.352
  %184 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset359 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %184, i32 0, i32 88
  %data360 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset359, i32 0, i32 0
  %185 = load float*, float** %data360, align 8, !tbaa !194
  %arrayidx361 = getelementptr inbounds float, float* %185, i64 1
  %186 = load float, float* %arrayidx361, align 4, !tbaa !100
  %cmp362 = fcmp oge float %186, 0.000000e+00
  br i1 %cmp362, label %land.lhs.true.364, label %if.else

land.lhs.true.364:                                ; preds = %land.lhs.true.358
  %187 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset365 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %187, i32 0, i32 88
  %data366 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset365, i32 0, i32 0
  %188 = load float*, float** %data366, align 8, !tbaa !194
  %arrayidx367 = getelementptr inbounds float, float* %188, i64 2
  %189 = load float, float* %arrayidx367, align 4, !tbaa !100
  %cmp368 = fcmp oge float %189, 0.000000e+00
  br i1 %cmp368, label %land.lhs.true.370, label %if.else

land.lhs.true.370:                                ; preds = %land.lhs.true.364
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset371 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %190, i32 0, i32 88
  %data372 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset371, i32 0, i32 0
  %191 = load float*, float** %data372, align 8, !tbaa !194
  %arrayidx373 = getelementptr inbounds float, float* %191, i64 3
  %192 = load float, float* %arrayidx373, align 4, !tbaa !100
  %cmp374 = fcmp oge float %192, 0.000000e+00
  br i1 %cmp374, label %if.then.376, label %if.else

if.then.376:                                      ; preds = %land.lhs.true.370
  %193 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset377 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %193, i32 0, i32 88
  %data378 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset377, i32 0, i32 0
  %194 = load float*, float** %data378, align 8, !tbaa !194
  %arrayidx379 = getelementptr inbounds float, float* %194, i64 0
  %195 = load float, float* %arrayidx379, align 4, !tbaa !100
  %conv380 = fpext float %195 to double
  %arrayidx381 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %196 = load double, double* %arrayidx381, align 8, !tbaa !74
  %add382 = fadd double %196, %conv380
  store double %add382, double* %arrayidx381, align 8, !tbaa !74
  %197 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset383 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %197, i32 0, i32 88
  %data384 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset383, i32 0, i32 0
  %198 = load float*, float** %data384, align 8, !tbaa !194
  %arrayidx385 = getelementptr inbounds float, float* %198, i64 3
  %199 = load float, float* %arrayidx385, align 4, !tbaa !100
  %conv386 = fpext float %199 to double
  %arrayidx387 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %200 = load double, double* %arrayidx387, align 8, !tbaa !74
  %add388 = fadd double %200, %conv386
  store double %add388, double* %arrayidx387, align 8, !tbaa !74
  %201 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset389 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %201, i32 0, i32 88
  %data390 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset389, i32 0, i32 0
  %202 = load float*, float** %data390, align 8, !tbaa !194
  %arrayidx391 = getelementptr inbounds float, float* %202, i64 1
  %203 = load float, float* %arrayidx391, align 4, !tbaa !100
  %conv392 = fpext float %203 to double
  %arrayidx393 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 2
  %204 = load double, double* %arrayidx393, align 8, !tbaa !74
  %sub = fsub double %204, %conv392
  store double %sub, double* %arrayidx393, align 8, !tbaa !74
  %205 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXTrimBoxToMediaBoxOffset394 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %205, i32 0, i32 88
  %data395 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXTrimBoxToMediaBoxOffset394, i32 0, i32 0
  %206 = load float*, float** %data395, align 8, !tbaa !194
  %arrayidx396 = getelementptr inbounds float, float* %206, i64 2
  %207 = load float, float* %arrayidx396, align 4, !tbaa !100
  %conv397 = fpext float %207 to double
  %arrayidx398 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 3
  %208 = load double, double* %arrayidx398, align 8, !tbaa !74
  %sub399 = fsub double %208, %conv397
  store double %sub399, double* %arrayidx398, align 8, !tbaa !74
  br label %if.end.453

if.else:                                          ; preds = %land.lhs.true.370, %land.lhs.true.364, %land.lhs.true.358, %land.lhs.true.352, %if.then.348
  %209 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %209, i32 0, i32 89
  %size400 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset, i32 0, i32 1
  %210 = load i32, i32* %size400, align 4, !tbaa !195
  %cmp401 = icmp uge i32 %210, 4
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.452

land.lhs.true.403:                                ; preds = %if.else
  %211 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset404 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %211, i32 0, i32 89
  %data405 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset404, i32 0, i32 0
  %212 = load float*, float** %data405, align 8, !tbaa !196
  %arrayidx406 = getelementptr inbounds float, float* %212, i64 0
  %213 = load float, float* %arrayidx406, align 4, !tbaa !100
  %cmp407 = fcmp oge float %213, 0.000000e+00
  br i1 %cmp407, label %land.lhs.true.409, label %if.end.452

land.lhs.true.409:                                ; preds = %land.lhs.true.403
  %214 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset410 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %214, i32 0, i32 89
  %data411 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset410, i32 0, i32 0
  %215 = load float*, float** %data411, align 8, !tbaa !196
  %arrayidx412 = getelementptr inbounds float, float* %215, i64 1
  %216 = load float, float* %arrayidx412, align 4, !tbaa !100
  %cmp413 = fcmp oge float %216, 0.000000e+00
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.452

land.lhs.true.415:                                ; preds = %land.lhs.true.409
  %217 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset416 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %217, i32 0, i32 89
  %data417 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset416, i32 0, i32 0
  %218 = load float*, float** %data417, align 8, !tbaa !196
  %arrayidx418 = getelementptr inbounds float, float* %218, i64 2
  %219 = load float, float* %arrayidx418, align 4, !tbaa !100
  %cmp419 = fcmp oge float %219, 0.000000e+00
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.452

land.lhs.true.421:                                ; preds = %land.lhs.true.415
  %220 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset422 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %220, i32 0, i32 89
  %data423 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset422, i32 0, i32 0
  %221 = load float*, float** %data423, align 8, !tbaa !196
  %arrayidx424 = getelementptr inbounds float, float* %221, i64 3
  %222 = load float, float* %arrayidx424, align 4, !tbaa !100
  %cmp425 = fcmp oge float %222, 0.000000e+00
  br i1 %cmp425, label %if.then.427, label %if.end.452

if.then.427:                                      ; preds = %land.lhs.true.421
  %223 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset428 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %223, i32 0, i32 89
  %data429 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset428, i32 0, i32 0
  %224 = load float*, float** %data429, align 8, !tbaa !196
  %arrayidx430 = getelementptr inbounds float, float* %224, i64 0
  %225 = load float, float* %arrayidx430, align 4, !tbaa !100
  %conv431 = fpext float %225 to double
  %arrayidx432 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %226 = load double, double* %arrayidx432, align 8, !tbaa !74
  %sub433 = fsub double %226, %conv431
  store double %sub433, double* %arrayidx432, align 8, !tbaa !74
  %227 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset434 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %227, i32 0, i32 89
  %data435 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset434, i32 0, i32 0
  %228 = load float*, float** %data435, align 8, !tbaa !196
  %arrayidx436 = getelementptr inbounds float, float* %228, i64 3
  %229 = load float, float* %arrayidx436, align 4, !tbaa !100
  %conv437 = fpext float %229 to double
  %arrayidx438 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 1
  %230 = load double, double* %arrayidx438, align 8, !tbaa !74
  %sub439 = fsub double %230, %conv437
  store double %sub439, double* %arrayidx438, align 8, !tbaa !74
  %231 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset440 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %231, i32 0, i32 89
  %data441 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset440, i32 0, i32 0
  %232 = load float*, float** %data441, align 8, !tbaa !196
  %arrayidx442 = getelementptr inbounds float, float* %232, i64 1
  %233 = load float, float* %arrayidx442, align 4, !tbaa !100
  %conv443 = fpext float %233 to double
  %arrayidx444 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 2
  %234 = load double, double* %arrayidx444, align 8, !tbaa !74
  %add445 = fadd double %234, %conv443
  store double %add445, double* %arrayidx444, align 8, !tbaa !74
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFXBleedBoxToTrimBoxOffset446 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %235, i32 0, i32 89
  %data447 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %PDFXBleedBoxToTrimBoxOffset446, i32 0, i32 0
  %236 = load float*, float** %data447, align 8, !tbaa !196
  %arrayidx448 = getelementptr inbounds float, float* %236, i64 2
  %237 = load float, float* %arrayidx448, align 4, !tbaa !100
  %conv449 = fpext float %237 to double
  %arrayidx450 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 3
  %238 = load double, double* %arrayidx450, align 8, !tbaa !74
  %add451 = fadd double %238, %conv449
  store double %add451, double* %arrayidx450, align 8, !tbaa !74
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.427, %land.lhs.true.421, %land.lhs.true.415, %land.lhs.true.409, %land.lhs.true.403, %if.else
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.then.376
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %land.lhs.true.345, %land.lhs.true.342, %land.lhs.true.339, %if.end.336
  %p455 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p455, i32 0, i32 0
  %239 = load double, double* %x, align 8, !tbaa !112
  %arrayidx456 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 2
  %240 = load double, double* %arrayidx456, align 8, !tbaa !74
  %cmp457 = fcmp ogt double %239, %240
  br i1 %cmp457, label %if.then.475, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %if.end.454
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x460 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %241 = load double, double* %x460, align 8, !tbaa !114
  %arrayidx461 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 0
  %242 = load double, double* %arrayidx461, align 8, !tbaa !74
  %cmp462 = fcmp olt double %241, %242
  br i1 %cmp462, label %if.then.475, label %lor.lhs.false.464

lor.lhs.false.464:                                ; preds = %lor.lhs.false.459
  %p465 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p465, i32 0, i32 1
  %243 = load double, double* %y, align 8, !tbaa !113
  %arrayidx466 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 3
  %244 = load double, double* %arrayidx466, align 8, !tbaa !74
  %cmp467 = fcmp ogt double %243, %244
  br i1 %cmp467, label %if.then.475, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %lor.lhs.false.464
  %q470 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y471 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q470, i32 0, i32 1
  %245 = load double, double* %y471, align 8, !tbaa !115
  %arrayidx472 = getelementptr inbounds [4 x double], [4 x double]* %pagebox, i32 0, i64 2
  %246 = load double, double* %arrayidx472, align 8, !tbaa !74
  %cmp473 = fcmp olt double %245, %246
  br i1 %cmp473, label %if.then.475, label %if.end.476

if.then.475:                                      ; preds = %lor.lhs.false.469, %lor.lhs.false.464, %lor.lhs.false.459, %if.end.454
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.507

if.end.476:                                       ; preds = %lor.lhs.false.469
  %247 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy477 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %247, i32 0, i32 239
  %248 = load i32, i32* %PDFACompatibilityPolicy477, align 4, !tbaa !186
  switch i32 %248, label %sw.default.498 [
    i32 0, label %sw.bb.478
    i32 1, label %sw.bb.486
    i32 2, label %sw.bb.492
  ]

sw.bb.478:                                        ; preds = %if.end.476
  %249 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory479 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %249, i32 0, i32 3
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory479, align 8, !tbaa !66
  %call480 = call i8* @gs_program_name() #8
  %call481 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %250, i8* %call480, i64 %call481) #8
  %251 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory482 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %251, i32 0, i32 3
  %252 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory482, align 8, !tbaa !66
  %call483 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %252, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.84, i32 0, i32 0)) #8
  %253 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX484 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %253, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX484, align 4, !tbaa !187
  %254 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX485 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %254, i32 0, i32 108
  store i32 0, i32* %PDFX485, align 4, !tbaa !188
  br label %sw.epilog.506

sw.bb.486:                                        ; preds = %if.end.476
  %255 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory487 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %255, i32 0, i32 3
  %256 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory487, align 8, !tbaa !66
  %call488 = call i8* @gs_program_name() #8
  %call489 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %256, i8* %call488, i64 %call489) #8
  %257 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory490 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %257, i32 0, i32 3
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory490, align 8, !tbaa !66
  %call491 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %258, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.85, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.507

sw.bb.492:                                        ; preds = %if.end.476
  %259 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory493 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %259, i32 0, i32 3
  %260 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory493, align 8, !tbaa !66
  %call494 = call i8* @gs_program_name() #8
  %call495 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %260, i8* %call494, i64 %call495) #8
  %261 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory496 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %261, i32 0, i32 3
  %262 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory496, align 8, !tbaa !66
  %call497 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %262, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.86, i32 0, i32 0)) #8
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.507

sw.default.498:                                   ; preds = %if.end.476
  %263 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory499 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %263, i32 0, i32 3
  %264 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory499, align 8, !tbaa !66
  %call500 = call i8* @gs_program_name() #8
  %call501 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %264, i8* %call500, i64 %call501) #8
  %265 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory502 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %265, i32 0, i32 3
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory502, align 8, !tbaa !66
  %call503 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %266, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.87, i32 0, i32 0)) #8
  %267 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX504 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %267, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX504, align 4, !tbaa !187
  %268 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX505 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %268, i32 0, i32 108
  store i32 0, i32* %PDFX505, align 4, !tbaa !188
  br label %sw.epilog.506

sw.epilog.506:                                    ; preds = %sw.default.498, %sw.bb.478
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.507

cleanup.507:                                      ; preds = %sw.epilog.506, %sw.bb.492, %sw.bb.486, %if.then.475, %if.then.87
  %269 = bitcast [4 x double]* %pagebox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %269) #2
  %270 = bitcast [4 x float]* %temp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %270) #2
  %271 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = bitcast i32* %size75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %273) #2
  %274 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #2
  %275 = bitcast %struct.cos_value_s** %v_cropbox to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast %struct.cos_value_s** %v_artbox to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  %277 = bitcast %struct.cos_value_s** %v_bleedbox to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  %278 = bitcast %struct.cos_value_s** %v_trimbox to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #2
  %279 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %279) #2
  br label %cleanup.519

if.end.518:                                       ; preds = %for.body.68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.519

cleanup.519:                                      ; preds = %if.end.518, %cleanup.507
  %280 = bitcast %struct.gs_param_string_s** %pair69 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #2
  %cleanup.dest.520 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.520, label %cleanup.559 [
    i32 0, label %cleanup.cont.521
    i32 6, label %for.end.524
  ]

cleanup.cont.521:                                 ; preds = %cleanup.519
  br label %for.inc.522

for.inc.522:                                      ; preds = %cleanup.cont.521
  %281 = load i32, i32* %i64, align 4, !tbaa !9
  %add523 = add nsw i32 %281, 2
  store i32 %add523, i32* %i64, align 4, !tbaa !9
  br label %for.cond.65

for.end.524:                                      ; preds = %cleanup.519, %for.cond.65
  %282 = load i32, i32* %i64, align 4, !tbaa !9
  %283 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp525 = icmp ugt i32 %282, %283
  br i1 %cmp525, label %if.then.527, label %if.end.558

if.then.527:                                      ; preds = %for.end.524
  %284 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy528 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %284, i32 0, i32 239
  %285 = load i32, i32* %PDFACompatibilityPolicy528, align 4, !tbaa !186
  switch i32 %285, label %sw.default.549 [
    i32 0, label %sw.bb.529
    i32 1, label %sw.bb.537
    i32 2, label %sw.bb.543
  ]

sw.bb.529:                                        ; preds = %if.then.527
  %286 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory530 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %286, i32 0, i32 3
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory530, align 8, !tbaa !66
  %call531 = call i8* @gs_program_name() #8
  %call532 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %287, i8* %call531, i64 %call532) #8
  %288 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory533 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %288, i32 0, i32 3
  %289 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory533, align 8, !tbaa !66
  %call534 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %289, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.88, i32 0, i32 0)) #8
  %290 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX535 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %290, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX535, align 4, !tbaa !187
  %291 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX536 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %291, i32 0, i32 108
  store i32 0, i32* %PDFX536, align 4, !tbaa !188
  br label %sw.epilog.557

sw.bb.537:                                        ; preds = %if.then.527
  %292 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory538 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %292, i32 0, i32 3
  %293 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory538, align 8, !tbaa !66
  %call539 = call i8* @gs_program_name() #8
  %call540 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %293, i8* %call539, i64 %call540) #8
  %294 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory541 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %294, i32 0, i32 3
  %295 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory541, align 8, !tbaa !66
  %call542 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %295, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.89, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.559

sw.bb.543:                                        ; preds = %if.then.527
  %296 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory544 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %296, i32 0, i32 3
  %297 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory544, align 8, !tbaa !66
  %call545 = call i8* @gs_program_name() #8
  %call546 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %297, i8* %call545, i64 %call546) #8
  %298 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory547 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %298, i32 0, i32 3
  %299 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory547, align 8, !tbaa !66
  %call548 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %299, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.90, i32 0, i32 0)) #8
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.559

sw.default.549:                                   ; preds = %if.then.527
  %300 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory550 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %300, i32 0, i32 3
  %301 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory550, align 8, !tbaa !66
  %call551 = call i8* @gs_program_name() #8
  %call552 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %301, i8* %call551, i64 %call552) #8
  %302 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory553 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %302, i32 0, i32 3
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory553, align 8, !tbaa !66
  %call554 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %303, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.91, i32 0, i32 0)) #8
  %304 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX555 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %304, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX555, align 4, !tbaa !187
  %305 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX556 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %305, i32 0, i32 108
  store i32 0, i32* %PDFX556, align 4, !tbaa !188
  br label %sw.epilog.557

sw.epilog.557:                                    ; preds = %sw.default.549, %sw.bb.529
  br label %if.end.558

if.end.558:                                       ; preds = %sw.epilog.557, %for.end.524
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.559

cleanup.559:                                      ; preds = %if.end.558, %sw.bb.543, %sw.bb.537, %cleanup.519
  %306 = bitcast i32* %i64 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %cleanup.dest.560 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.560, label %cleanup.563 [
    i32 0, label %cleanup.cont.561
  ]

cleanup.cont.561:                                 ; preds = %cleanup.559
  br label %if.end.562

if.end.562:                                       ; preds = %cleanup.cont.561, %if.end.61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.563

cleanup.563:                                      ; preds = %if.end.562, %cleanup.559
  %307 = bitcast %struct.pdf_page_s** %page to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #2
  %308 = bitcast i32* %discard to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast %struct.gs_param_string_s* %Subtype to i8*
  call void @llvm.lifetime.end(i64 16, i8* %309) #2
  %cleanup.dest.566 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.566, label %cleanup.623 [
    i32 0, label %cleanup.cont.567
  ]

cleanup.cont.567:                                 ; preds = %cleanup.563
  br label %if.end.568

if.end.568:                                       ; preds = %cleanup.cont.567, %if.end.44
  %310 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pdev569 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %params, i32 0, i32 0
  store %struct.gx_device_pdf_s* %310, %struct.gx_device_pdf_s** %pdev569, align 8, !tbaa !118
  %311 = load i8*, i8** %subtype.addr, align 8, !tbaa !1
  %subtype570 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %params, i32 0, i32 1
  store i8* %311, i8** %subtype570, align 8, !tbaa !120
  %src_pg = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %params, i32 0, i32 2
  store i64 -1, i64* %src_pg, align 8, !tbaa !121
  %312 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %313 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %call571 = call i32 @pdf_make_named_dict(%struct.gx_device_pdf_s* %312, %struct.gs_param_string_s* %313, %struct.cos_dict_s** %pcd, i32 1) #8
  store i32 %call571, i32* %code, align 4, !tbaa !9
  %314 = load i32, i32* %code, align 4, !tbaa !9
  %cmp572 = icmp slt i32 %314, 0
  br i1 %cmp572, label %if.then.574, label %if.end.575

if.then.574:                                      ; preds = %if.end.568
  %315 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %315, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

if.end.575:                                       ; preds = %if.end.568
  %316 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call576 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0)) #8
  store i32 %call576, i32* %code, align 4, !tbaa !9
  %317 = load i32, i32* %code, align 4, !tbaa !9
  %cmp577 = icmp slt i32 %317, 0
  br i1 %cmp577, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %if.end.575
  %318 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %318, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

if.end.580:                                       ; preds = %if.end.575
  %319 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %320 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %321 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %322 = load i32, i32* %count.addr, align 4, !tbaa !9
  %323 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call581 = call i32 @pdfmark_put_ao_pairs(%struct.gx_device_pdf_s* %319, %struct.cos_dict_s* %320, %struct.gs_param_string_s* %321, i32 %322, %struct.gs_matrix_s* %323, %struct.ao_params_s* %params, i32 0) #8
  store i32 %call581, i32* %code, align 4, !tbaa !9
  %324 = load i32, i32* %code, align 4, !tbaa !9
  %cmp582 = icmp slt i32 %324, 0
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %if.end.580
  %325 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %325, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

if.end.585:                                       ; preds = %if.end.580
  %src_pg586 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %params, i32 0, i32 2
  %326 = load i64, i64* %src_pg586, align 8, !tbaa !121
  %cmp587 = icmp sge i64 %326, 0
  br i1 %cmp587, label %if.then.589, label %if.end.592

if.then.589:                                      ; preds = %if.end.585
  %src_pg590 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %params, i32 0, i32 2
  %327 = load i64, i64* %src_pg590, align 8, !tbaa !121
  %conv591 = trunc i64 %327 to i32
  store i32 %conv591, i32* %page_index, align 4, !tbaa !9
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.589, %if.end.585
  %328 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %329 = load i32, i32* %page_index, align 4, !tbaa !9
  %add593 = add nsw i32 %329, 1
  %call594 = call i64 @pdf_page_id(%struct.gx_device_pdf_s* %328, i32 %add593) #8
  %cmp595 = icmp sle i64 %call594, 0
  br i1 %cmp595, label %if.then.597, label %if.end.598

if.then.597:                                      ; preds = %if.end.592
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

if.end.598:                                       ; preds = %if.end.592
  %330 = load i32, i32* %page_index, align 4, !tbaa !9
  %idxprom599 = sext i32 %330 to i64
  %331 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages600 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %331, i32 0, i32 162
  %332 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages600, align 8, !tbaa !189
  %arrayidx601 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %332, i64 %idxprom599
  %Annots = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %arrayidx601, i32 0, i32 6
  %333 = load %struct.cos_array_s*, %struct.cos_array_s** %Annots, align 8, !tbaa !197
  store %struct.cos_array_s* %333, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %334 = load %struct.cos_array_s*, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %cmp602 = icmp eq %struct.cos_array_s* %334, null
  br i1 %cmp602, label %if.then.604, label %if.end.614

if.then.604:                                      ; preds = %if.end.598
  %335 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call605 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %335, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0)) #8
  store %struct.cos_array_s* %call605, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %336 = load %struct.cos_array_s*, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %cmp606 = icmp eq %struct.cos_array_s* %336, null
  br i1 %cmp606, label %if.then.608, label %if.end.609

if.then.608:                                      ; preds = %if.then.604
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

if.end.609:                                       ; preds = %if.then.604
  %337 = load %struct.cos_array_s*, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %338 = load i32, i32* %page_index, align 4, !tbaa !9
  %idxprom610 = sext i32 %338 to i64
  %339 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages611 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %339, i32 0, i32 162
  %340 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages611, align 8, !tbaa !189
  %arrayidx612 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %340, i64 %idxprom610
  %Annots613 = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %arrayidx612, i32 0, i32 6
  store %struct.cos_array_s* %337, %struct.cos_array_s** %Annots613, align 8, !tbaa !197
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.609, %if.end.598
  %341 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %objname.addr, align 8, !tbaa !1
  %tobool615 = icmp ne %struct.gs_param_string_s* %341, null
  br i1 %tobool615, label %if.end.619, label %if.then.616

if.then.616:                                      ; preds = %if.end.614
  %342 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %342, i32 0, i32 0
  %343 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %344 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call617 = call i32 @cos_write_object(%struct.cos_object_s* %343, %struct.gx_device_pdf_s* %344, i32 31) #8
  %345 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cos_procs618 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %345, i32 0, i32 0
  %346 = bitcast %struct.cos_object_procs_s** %cos_procs618 to %struct.cos_object_s*
  call void @cos_release(%struct.cos_object_s* %346, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0)) #8
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.616, %if.end.614
  %347 = load %struct.cos_array_s*, %struct.cos_array_s** %annots, align 8, !tbaa !1
  %348 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cos_procs620 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %348, i32 0, i32 0
  %349 = bitcast %struct.cos_object_procs_s** %cos_procs620 to %struct.cos_object_s*
  %call621 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %349) #8
  %call622 = call i32 @cos_array_add(%struct.cos_array_s* %347, %struct.cos_value_s* %call621) #8
  store i32 %call622, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.623

cleanup.623:                                      ; preds = %if.end.619, %if.then.608, %if.then.597, %if.then.584, %if.then.579, %if.then.574, %cleanup.563, %cleanup.40
  %350 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #2
  %351 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %351) #2
  %352 = bitcast %struct.cos_array_s** %annots to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #2
  %353 = bitcast i32* %page_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #2
  %354 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #2
  %355 = bitcast %struct.ao_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %355) #2
  %356 = load i32, i32* %retval
  ret i32 %356

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_scan_rect(%struct.gs_rect_s* %prect, %struct.gs_param_string_s* %str, %struct.gs_matrix_s* %pctm) #0 {
entry:
  %retval = alloca i32, align 4
  %prect.addr = alloca %struct.gs_rect_s*, align 8
  %str.addr = alloca %struct.gs_param_string_s*, align 8
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %size = alloca i32, align 4
  %v = alloca [4 x double], align 16
  %chars = alloca [103 x i8], align 16
  %end_check = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_rect_s* %prect, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %str, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !5
  store i32 %2, i32* %size, align 4, !tbaa !9
  %3 = bitcast [4 x double]* %v to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast [103 x i8]* %chars to i8*
  call void @llvm.lifetime.start(i64 103, i8* %4) #2
  %5 = bitcast i32* %end_check to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [103 x i8], [103 x i8]* %chars, i32 0, i32 0
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !8
  %10 = load i32, i32* %size, align 4, !tbaa !9
  %conv = zext i32 %10 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %9, i64 %conv) #7
  %arraydecay3 = getelementptr inbounds [103 x i8], [103 x i8]* %chars, i32 0, i32 0
  %11 = load i32, i32* %size, align 4, !tbaa !9
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 %idx.ext
  %call4 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0)) #7
  %arraydecay5 = getelementptr inbounds [103 x i8], [103 x i8]* %chars, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 3
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i32 0, i32 0), double* %arrayidx, double* %arrayidx6, double* %arrayidx7, double* %arrayidx8, i32* %end_check) #7
  %cmp10 = icmp ne i32 %call9, 5
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 0
  %12 = load double, double* %arrayidx14, align 8, !tbaa !74
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 1
  %13 = load double, double* %arrayidx15, align 8, !tbaa !74
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %15 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %15, i32 0, i32 0
  %call16 = call i32 @gs_point_transform(double %12, double %13, %struct.gs_matrix_s* %14, %struct.gs_point_s* %p) #8
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 2
  %16 = load double, double* %arrayidx17, align 8, !tbaa !74
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %v, i32 0, i64 3
  %17 = load double, double* %arrayidx18, align 8, !tbaa !74
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %19 = load %struct.gs_rect_s*, %struct.gs_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %19, i32 0, i32 1
  %call19 = call i32 @gs_point_transform(double %16, double %17, %struct.gs_matrix_s* %18, %struct.gs_point_s* %q) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then
  %20 = bitcast i32* %end_check to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast [103 x i8]* %chars to i8*
  call void @llvm.lifetime.end(i64 103, i8* %21) #2
  %22 = bitcast [4 x double]* %v to i8*
  call void @llvm.lifetime.end(i64 32, i8* %22) #2
  %23 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s*, i8*) #4

declare i32 @pdf_make_named_dict(%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, %struct.cos_dict_s**, i32) #4

declare i32 @cos_dict_put_c_strings(%struct.cos_dict_s*, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_put_ao_pairs(%struct.gx_device_pdf_s* %pdev, %struct.cos_dict_s* %pcd, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_matrix_s* %pctm, %struct.ao_params_s* %params, i32 %for_outline) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %params.addr = alloca %struct.ao_params_s*, align 8
  %for_outline.addr = alloca i32, align 4
  %Action = alloca %struct.gs_param_string_s*, align 8
  %File = alloca %struct.gs_param_string_s*, align 8
  %URI = alloca %struct.gs_param_string_s*, align 8
  %Dest = alloca %struct.gs_param_string_s, align 8
  %Subtype = alloca %struct.gs_param_string_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %dest = alloca [80 x i8], align 16
  %coerce_dest = alloca i32, align 4
  %pair = alloca %struct.gs_param_string_s*, align 8
  %src_pg = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %cstr = alloca i8*, align 8
  %csize = alloca i32, align 4
  %pcv = alloca %struct.cos_value_s*, align 8
  %i93 = alloca i32, align 4
  %j = alloca i32, align 4
  %rect = alloca %struct.gs_rect_s, align 8
  %rstr = alloca [100 x i8], align 16
  %code181 = alloca i32, align 4
  %s = alloca %struct.stream_s, align 8
  %bstr = alloca [101 x i8], align 16
  %code203 = alloca i32, align 4
  %i235 = alloca i32, align 4
  %j236 = alloca i32, align 4
  %temp = alloca i8*, align 8
  %buf0 = alloca i8*, align 8
  %c = alloca i8, align 1
  %astr = alloca i8*, align 8
  %asize = alloca i32, align 4
  %adict = alloca %struct.cos_dict_s*, align 8
  %avalue = alloca %struct.cos_value_s, align 8
  %scan = alloca i8*, align 8
  %end = alloca i8*, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %value = alloca %struct.gs_param_string_s, align 8
  %adict482 = alloca %struct.cos_dict_s*, align 8
  %avalue484 = alloca %struct.cos_value_s, align 8
  %code485 = alloca i32, align 4
  %buf = alloca [30 x i8], align 16
  %d0 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %dstr = alloca [49 x i8], align 16
  %page_id = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.ao_params_s* %params, %struct.ao_params_s** %params.addr, align 8, !tbaa !1
  store i32 %for_outline, i32* %for_outline.addr, align 4, !tbaa !9
  %0 = bitcast %struct.gs_param_string_s** %Action to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %1 = bitcast %struct.gs_param_string_s** %File to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_s** %URI to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_string_s* %Dest to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast %struct.gs_param_string_s* %Subtype to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.start(i64 80, i8* %7) #2
  %8 = bitcast i32* %coerce_dest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %coerce_dest, align 4, !tbaa !9
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !8
  %9 = load %struct.ao_params_s*, %struct.ao_params_s** %params.addr, align 8, !tbaa !1
  %subtype = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %subtype, align 8, !tbaa !120
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.ao_params_s*, %struct.ao_params_s** %params.addr, align 8, !tbaa !1
  %subtype1 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %subtype1, align 8, !tbaa !120
  %data2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  store i8* %12, i8** %data2, align 8, !tbaa !8
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  %13 = load i8*, i8** %data3, align 8, !tbaa !8
  %call = call i64 @strlen(i8* %13) #6
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !190
  br label %if.end

if.else:                                          ; preds = %entry
  %data4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  store i8* null, i8** %data4, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc.369, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !9
  %15 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.371

for.body:                                         ; preds = %for.cond
  %16 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i64 %idxprom
  store %struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %19 = bitcast i64* %src_pg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call6 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %for.body
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i64 1
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx8, i32 0, i32 0
  %22 = load i8*, i8** %data9, align 8, !tbaa !8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i64* %src_pg) #7
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %land.lhs.true
  %23 = load i64, i64* %src_pg, align 8, !tbaa !60
  %sub = sub nsw i64 %23, 1
  %24 = load %struct.ao_params_s*, %struct.ao_params_s** %params.addr, align 8, !tbaa !1
  %src_pg14 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %24, i32 0, i32 2
  store i64 %sub, i64* %src_pg14, align 8, !tbaa !121
  br label %if.end.364

if.else.15:                                       ; preds = %land.lhs.true, %for.body
  %25 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.else.22, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.else.15
  %26 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call18 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0)) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %land.lhs.true.17
  %27 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %28 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %28, i64 1
  %call21 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), %struct.gs_param_string_s* %add.ptr) #8
  br label %if.end.363

if.else.22:                                       ; preds = %land.lhs.true.17, %if.else.15
  %29 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.else.30, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %if.else.22
  %30 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call25 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0)) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %land.lhs.true.24
  %31 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %32 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %32, i64 1
  %call29 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), %struct.gs_param_string_s* %add.ptr28) #8
  br label %if.end.362

if.else.30:                                       ; preds = %land.lhs.true.24, %if.else.22
  %33 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call31 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0)) #8
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.30
  %34 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call33 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0)) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.else.30
  %35 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  store %struct.gs_param_string_s* %35, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  br label %if.end.361

if.else.36:                                       ; preds = %lor.lhs.false
  %36 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call37 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0)) #8
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  store %struct.gs_param_string_s* %37, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  br label %if.end.360

if.else.40:                                       ; preds = %if.else.36
  %38 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call41 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.40
  %39 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %39, i64 1
  %40 = bitcast %struct.gs_param_string_s* %Dest to i8*
  %41 = bitcast %struct.gs_param_string_s* %arrayidx44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !198
  store i32 1, i32* %coerce_dest, align 4, !tbaa !9
  br label %if.end.359

if.else.45:                                       ; preds = %if.else.40
  %42 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call46 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else.45
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  store %struct.gs_param_string_s* %43, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  br label %if.end.358

if.else.49:                                       ; preds = %if.else.45
  %44 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call50 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #8
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.55, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.else.49
  %45 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call53 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0)) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.82

if.then.55:                                       ; preds = %lor.lhs.false.52, %if.else.49
  %data56 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  %46 = load i8*, i8** %data56, align 8, !tbaa !8
  %cmp57 = icmp eq i8* %46, null
  br i1 %cmp57, label %if.then.59, label %if.end.81

if.then.59:                                       ; preds = %if.then.55
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %47 = load %struct.ao_params_s*, %struct.ao_params_s** %params.addr, align 8, !tbaa !1
  %pdev60 = getelementptr inbounds %struct.ao_params_s, %struct.ao_params_s* %47, i32 0, i32 0
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev60, align 8, !tbaa !118
  %49 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %50 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call61 = call i32 @pdfmark_make_dest(i8* %arraydecay, %struct.gx_device_pdf_s* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), %struct.gs_param_string_s* %49, i32 %50, i32 0) #8
  store i32 %call61, i32* %code, align 4, !tbaa !9
  %51 = load i32, i32* %code, align 4, !tbaa !9
  %cmp62 = icmp sge i32 %51, 0
  br i1 %cmp62, label %if.then.64, label %if.else.75

if.then.64:                                       ; preds = %if.then.59
  %arraydecay65 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %data66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  store i8* %arraydecay65, i8** %data66, align 8, !tbaa !8
  %data67 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  %52 = load i8*, i8** %data67, align 8, !tbaa !8
  %call68 = call i64 @strlen(i8* %52) #6
  %conv69 = trunc i64 %call68 to i32
  %size70 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 1
  store i32 %conv69, i32* %size70, align 4, !tbaa !5
  %persistent71 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 2
  store i32 1, i32* %persistent71, align 4, !tbaa !190
  %53 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool72 = icmp ne i32 %53, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.64
  store i32 0, i32* %coerce_dest, align 4, !tbaa !9
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.64
  br label %if.end.80

if.else.75:                                       ; preds = %if.then.59
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call76 = call i8* @gs_program_name() #8
  %call77 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %55, i8* %call76, i64 %call77) #8
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !66
  %call79 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %57, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.109, i32 0, i32 0)) #8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.365

if.end.80:                                        ; preds = %if.end.74
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.55
  br label %if.end.357

if.else.82:                                       ; preds = %lor.lhs.false.52
  %58 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call83 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0)) #8
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.82
  %59 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %59, i64 1
  %60 = bitcast %struct.gs_param_string_s* %Subtype to i8*
  %61 = bitcast %struct.gs_param_string_s* %arrayidx86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false), !tbaa.struct !198
  br label %if.end.356

if.else.87:                                       ; preds = %if.else.82
  %62 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call88 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0)) #8
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.else.177

if.then.90:                                       ; preds = %if.else.87
  %63 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %65, i64 1
  %size92 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx91, i32 0, i32 1
  %66 = load i32, i32* %size92, align 4, !tbaa !5
  store i32 %66, i32* %csize, align 4, !tbaa !9
  %67 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = bitcast i32* %i93 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %71 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call94 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %70, %struct.gs_param_string_s* %71) #8
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %call95 = call %struct.cos_value_s* @cos_dict_find_c_key(%struct.cos_dict_s* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0)) #8
  store %struct.cos_value_s* %call95, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %73 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %cmp96 = icmp eq %struct.cos_value_s* %73, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.90
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %if.then.90
  %74 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %74, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data100 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %75 = load i8*, i8** %data100, align 8, !tbaa !133
  store i8* %75, i8** %cstr, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !9
  store i32 0, i32* %i93, align 4, !tbaa !9
  br label %for.cond.101

for.cond.101:                                     ; preds = %if.end.163, %if.end.99
  %76 = load i32, i32* %i93, align 4, !tbaa !9
  %77 = load i32, i32* %csize, align 4, !tbaa !9
  %cmp102 = icmp ult i32 %76, %77
  br i1 %cmp102, label %for.body.104, label %for.end

for.body.104:                                     ; preds = %for.cond.101
  %78 = load i32, i32* %csize, align 4, !tbaa !9
  %79 = load i32, i32* %i93, align 4, !tbaa !9
  %sub105 = sub i32 %78, %79
  %cmp106 = icmp uge i32 %sub105, 2
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.129

land.lhs.true.108:                                ; preds = %for.body.104
  %80 = load i8*, i8** %cstr, align 8, !tbaa !1
  %81 = load i32, i32* %i93, align 4, !tbaa !9
  %idx.ext = zext i32 %81 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %80, i64 %idx.ext
  %call110 = call i32 @memcmp(i8* %add.ptr109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i64 2) #6
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.else.129, label %land.lhs.true.112

land.lhs.true.112:                                ; preds = %land.lhs.true.108
  %82 = load i32, i32* %i93, align 4, !tbaa !9
  %cmp113 = icmp eq i32 %82, 0
  br i1 %cmp113, label %if.then.122, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %land.lhs.true.112
  %83 = load i32, i32* %i93, align 4, !tbaa !9
  %sub116 = sub i32 %83, 1
  %idxprom117 = zext i32 %sub116 to i64
  %84 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %84, i64 %idxprom117
  %85 = load i8, i8* %arrayidx118, align 1, !tbaa !10
  %conv119 = zext i8 %85 to i32
  %cmp120 = icmp ne i32 %conv119, 92
  br i1 %cmp120, label %if.then.122, label %if.else.129

if.then.122:                                      ; preds = %lor.lhs.false.115, %land.lhs.true.112
  %86 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom123 = zext i32 %86 to i64
  %87 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %87, i64 %idxprom123
  store i8 92, i8* %arrayidx124, align 1, !tbaa !10
  %88 = load i32, i32* %j, align 4, !tbaa !9
  %add = add i32 %88, 1
  %idxprom125 = zext i32 %add to i64
  %89 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %89, i64 %idxprom125
  store i8 114, i8* %arrayidx126, align 1, !tbaa !10
  %90 = load i32, i32* %i93, align 4, !tbaa !9
  %add127 = add i32 %90, 2
  store i32 %add127, i32* %i93, align 4, !tbaa !9
  %91 = load i32, i32* %j, align 4, !tbaa !9
  %add128 = add i32 %91, 2
  store i32 %add128, i32* %j, align 4, !tbaa !9
  br label %if.end.163

if.else.129:                                      ; preds = %lor.lhs.false.115, %land.lhs.true.108, %for.body.104
  %92 = load i32, i32* %csize, align 4, !tbaa !9
  %93 = load i32, i32* %i93, align 4, !tbaa !9
  %sub130 = sub i32 %92, %93
  %cmp131 = icmp uge i32 %sub130, 4
  br i1 %cmp131, label %land.lhs.true.133, label %if.else.156

land.lhs.true.133:                                ; preds = %if.else.129
  %94 = load i8*, i8** %cstr, align 8, !tbaa !1
  %95 = load i32, i32* %i93, align 4, !tbaa !9
  %idx.ext134 = zext i32 %95 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %94, i64 %idx.ext134
  %call136 = call i32 @memcmp(i8* %add.ptr135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i64 4) #6
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.else.156, label %land.lhs.true.138

land.lhs.true.138:                                ; preds = %land.lhs.true.133
  %96 = load i32, i32* %i93, align 4, !tbaa !9
  %cmp139 = icmp eq i32 %96, 0
  br i1 %cmp139, label %if.then.148, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.138
  %97 = load i32, i32* %i93, align 4, !tbaa !9
  %sub142 = sub i32 %97, 1
  %idxprom143 = zext i32 %sub142 to i64
  %98 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %98, i64 %idxprom143
  %99 = load i8, i8* %arrayidx144, align 1, !tbaa !10
  %conv145 = zext i8 %99 to i32
  %cmp146 = icmp ne i32 %conv145, 92
  br i1 %cmp146, label %if.then.148, label %if.else.156

if.then.148:                                      ; preds = %lor.lhs.false.141, %land.lhs.true.138
  %100 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom149 = zext i32 %100 to i64
  %101 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %101, i64 %idxprom149
  store i8 92, i8* %arrayidx150, align 1, !tbaa !10
  %102 = load i32, i32* %j, align 4, !tbaa !9
  %add151 = add i32 %102, 1
  %idxprom152 = zext i32 %add151 to i64
  %103 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %103, i64 %idxprom152
  store i8 114, i8* %arrayidx153, align 1, !tbaa !10
  %104 = load i32, i32* %i93, align 4, !tbaa !9
  %add154 = add i32 %104, 4
  store i32 %add154, i32* %i93, align 4, !tbaa !9
  %105 = load i32, i32* %j, align 4, !tbaa !9
  %add155 = add i32 %105, 2
  store i32 %add155, i32* %j, align 4, !tbaa !9
  br label %if.end.162

if.else.156:                                      ; preds = %lor.lhs.false.141, %land.lhs.true.133, %if.else.129
  %106 = load i32, i32* %i93, align 4, !tbaa !9
  %inc = add i32 %106, 1
  store i32 %inc, i32* %i93, align 4, !tbaa !9
  %idxprom157 = zext i32 %106 to i64
  %107 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %107, i64 %idxprom157
  %108 = load i8, i8* %arrayidx158, align 1, !tbaa !10
  %109 = load i32, i32* %j, align 4, !tbaa !9
  %inc159 = add i32 %109, 1
  store i32 %inc159, i32* %j, align 4, !tbaa !9
  %idxprom160 = zext i32 %109 to i64
  %110 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %110, i64 %idxprom160
  store i8 %108, i8* %arrayidx161, align 1, !tbaa !10
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.156, %if.then.148
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.122
  br label %for.cond.101

for.end:                                          ; preds = %for.cond.101
  %111 = load i32, i32* %j, align 4, !tbaa !9
  %112 = load i32, i32* %i93, align 4, !tbaa !9
  %cmp164 = icmp ne i32 %111, %112
  br i1 %cmp164, label %if.then.166, label %if.end.172

if.then.166:                                      ; preds = %for.end
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 43
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %115 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !199
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory167 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 43
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory167, align 8, !tbaa !98
  %118 = load i8*, i8** %cstr, align 8, !tbaa !1
  %119 = load i32, i32* %csize, align 4, !tbaa !9
  %120 = load i32, i32* %j, align 4, !tbaa !9
  %call168 = call i8* %115(%struct.gs_memory_s* %117, i8* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i32 0, i32 0)) #8
  %121 = load %struct.cos_value_s*, %struct.cos_value_s** %pcv, align 8, !tbaa !1
  %contents169 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %121, i32 0, i32 1
  %chars170 = bitcast %union.vc_* %contents169 to %struct.gs_string_s*
  %data171 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars170, i32 0, i32 0
  store i8* %call168, i8** %data171, align 8, !tbaa !133
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.166, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.172, %if.then.98
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %i93 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast %struct.cos_value_s** %pcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.365 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.355

if.else.177:                                      ; preds = %if.else.87
  %127 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call178 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #8
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.else.199

if.then.180:                                      ; preds = %if.else.177
  %128 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %128) #2
  %129 = bitcast [100 x i8]* %rstr to i8*
  call void @llvm.lifetime.start(i64 100, i8* %129) #2
  %130 = bitcast i32* %code181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #2
  %131 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %add.ptr182 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %131, i64 1
  %132 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call183 = call i32 @pdfmark_scan_rect(%struct.gs_rect_s* %rect, %struct.gs_param_string_s* %add.ptr182, %struct.gs_matrix_s* %132) #8
  store i32 %call183, i32* %code181, align 4, !tbaa !9
  %133 = load i32, i32* %code181, align 4, !tbaa !9
  %cmp184 = icmp slt i32 %133, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.then.180
  %134 = load i32, i32* %code181, align 4, !tbaa !9
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.187:                                       ; preds = %if.then.180
  %arraydecay188 = getelementptr inbounds [100 x i8], [100 x i8]* %rstr, i32 0, i32 0
  call void @pdfmark_make_rect(i8* %arraydecay188, %struct.gs_rect_s* %rect) #8
  %135 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %arraydecay189 = getelementptr inbounds [100 x i8], [100 x i8]* %rstr, i32 0, i32 0
  %arraydecay190 = getelementptr inbounds [100 x i8], [100 x i8]* %rstr, i32 0, i32 0
  %call191 = call i64 @strlen(i8* %arraydecay190) #6
  %conv192 = trunc i64 %call191 to i32
  %call193 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* %arraydecay189, i32 %conv192) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.194

cleanup.194:                                      ; preds = %if.end.187, %if.then.186
  %136 = bitcast i32* %code181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast [100 x i8]* %rstr to i8*
  call void @llvm.lifetime.end(i64 100, i8* %137) #2
  %138 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %138) #2
  %cleanup.dest.197 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.197, label %cleanup.365 [
    i32 0, label %cleanup.cont.198
  ]

cleanup.cont.198:                                 ; preds = %cleanup.194
  br label %if.end.354

if.else.199:                                      ; preds = %if.else.177
  %139 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call200 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0)) #8
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.228

if.then.202:                                      ; preds = %if.else.199
  %140 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %140) #2
  %141 = bitcast [101 x i8]* %bstr to i8*
  call void @llvm.lifetime.start(i64 101, i8* %141) #2
  %142 = bitcast i32* %code203 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #8
  %arraydecay204 = getelementptr inbounds [101 x i8], [101 x i8]* %bstr, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay204, i32 101) #8
  %143 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %add.ptr205 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %143, i64 1
  %144 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call206 = call i32 @pdfmark_write_border(%struct.stream_s* %s, %struct.gs_param_string_s* %add.ptr205, %struct.gs_matrix_s* %144) #8
  store i32 %call206, i32* %code203, align 4, !tbaa !9
  %145 = load i32, i32* %code203, align 4, !tbaa !9
  %cmp207 = icmp slt i32 %145, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.then.202
  %146 = load i32, i32* %code203, align 4, !tbaa !9
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.210:                                       ; preds = %if.then.202
  %call211 = call i64 @stell(%struct.stream_s* %s) #8
  %cmp212 = icmp sgt i64 %call211, 100
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.210
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.215:                                       ; preds = %if.end.210
  %call216 = call i64 @stell(%struct.stream_s* %s) #8
  %arrayidx217 = getelementptr inbounds [101 x i8], [101 x i8]* %bstr, i32 0, i64 %call216
  store i8 0, i8* %arrayidx217, align 1, !tbaa !10
  %147 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %arraydecay218 = getelementptr inbounds [101 x i8], [101 x i8]* %bstr, i32 0, i32 0
  %arraydecay219 = getelementptr inbounds [101 x i8], [101 x i8]* %bstr, i32 0, i32 0
  %call220 = call i64 @strlen(i8* %arraydecay219) #6
  %conv221 = trunc i64 %call220 to i32
  %call222 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* %arraydecay218, i32 %conv221) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.223

cleanup.223:                                      ; preds = %if.end.215, %if.then.214, %if.then.209
  %148 = bitcast i32* %code203 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast [101 x i8]* %bstr to i8*
  call void @llvm.lifetime.end(i64 101, i8* %149) #2
  %150 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %150) #2
  %cleanup.dest.226 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.226, label %cleanup.365 [
    i32 0, label %cleanup.cont.227
  ]

cleanup.cont.227:                                 ; preds = %cleanup.223
  br label %if.end.353

if.else.228:                                      ; preds = %if.else.199
  %151 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool229 = icmp ne i32 %151, 0
  br i1 %tobool229, label %land.lhs.true.230, label %if.else.234

land.lhs.true.230:                                ; preds = %if.else.228
  %152 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call231 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0)) #8
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %land.lhs.true.230
  br label %do.body

do.body:                                          ; preds = %if.then.233
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.352

if.else.234:                                      ; preds = %land.lhs.true.230, %if.else.228
  %153 = bitcast i32* %i235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #2
  %154 = bitcast i32* %j236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #2
  store i32 0, i32* %j236, align 4, !tbaa !9
  %155 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #2
  %156 = bitcast i8** %buf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #2
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory237 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %157, i32 0, i32 3
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory237, align 8, !tbaa !66
  %procs238 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs238, i32 0, i32 7
  %159 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !117
  %160 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory239 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory239, align 8, !tbaa !66
  %162 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %162, i64 1
  %size241 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx240, i32 0, i32 1
  %163 = load i32, i32* %size241, align 4, !tbaa !5
  %mul = mul i32 %163, 2
  %conv242 = zext i32 %mul to i64
  %mul243 = mul i64 %conv242, 1
  %conv244 = trunc i64 %mul243 to i32
  %call245 = call i8* %159(%struct.gs_memory_s* %161, i32 %conv244, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.117, i32 0, i32 0)) #8
  store i8* %call245, i8** %buf0, align 8, !tbaa !1
  %164 = load i8*, i8** %buf0, align 8, !tbaa !1
  %cmp246 = icmp eq i8* %164, null
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.else.234
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346

if.end.249:                                       ; preds = %if.else.234
  store i32 0, i32* %i235, align 4, !tbaa !9
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc, %if.end.249
  %165 = load i32, i32* %i235, align 4, !tbaa !9
  %166 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %166, i64 1
  %size252 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx251, i32 0, i32 1
  %167 = load i32, i32* %size252, align 4, !tbaa !5
  %cmp253 = icmp ult i32 %165, %167
  br i1 %cmp253, label %for.body.255, label %for.end.329

for.body.255:                                     ; preds = %for.cond.250
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %168 = load i32, i32* %i235, align 4, !tbaa !9
  %idxprom256 = sext i32 %168 to i64
  %169 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %169, i64 1
  %data258 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx257, i32 0, i32 0
  %170 = load i8*, i8** %data258, align 8, !tbaa !8
  %arrayidx259 = getelementptr inbounds i8, i8* %170, i64 %idxprom256
  %171 = load i8, i8* %arrayidx259, align 1, !tbaa !10
  store i8 %171, i8* %c, align 1, !tbaa !10
  %172 = load i8, i8* %c, align 1, !tbaa !10
  %173 = load i32, i32* %j236, align 4, !tbaa !9
  %inc260 = add nsw i32 %173, 1
  store i32 %inc260, i32* %j236, align 4, !tbaa !9
  %idxprom261 = sext i32 %173 to i64
  %174 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %174, i64 %idxprom261
  store i8 %172, i8* %arrayidx262, align 1, !tbaa !10
  %175 = load i8, i8* %c, align 1, !tbaa !10
  %conv263 = zext i8 %175 to i32
  %cmp264 = icmp eq i32 %conv263, 92
  br i1 %cmp264, label %if.then.266, label %if.end.327

if.then.266:                                      ; preds = %for.body.255
  %176 = load i32, i32* %i235, align 4, !tbaa !9
  %add267 = add nsw i32 %176, 1
  %idxprom268 = sext i32 %add267 to i64
  %177 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %177, i64 1
  %data270 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx269, i32 0, i32 0
  %178 = load i8*, i8** %data270, align 8, !tbaa !8
  %arrayidx271 = getelementptr inbounds i8, i8* %178, i64 %idxprom268
  %179 = load i8, i8* %arrayidx271, align 1, !tbaa !10
  %conv272 = zext i8 %179 to i32
  switch i32 %conv272, label %sw.default [
    i32 98, label %sw.bb
    i32 102, label %sw.bb.283
    i32 110, label %sw.bb.294
    i32 114, label %sw.bb.305
    i32 116, label %sw.bb.316
  ]

sw.bb:                                            ; preds = %if.then.266
  %180 = load i32, i32* %j236, align 4, !tbaa !9
  %inc273 = add nsw i32 %180, 1
  store i32 %inc273, i32* %j236, align 4, !tbaa !9
  %idxprom274 = sext i32 %180 to i64
  %181 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i8, i8* %181, i64 %idxprom274
  store i8 48, i8* %arrayidx275, align 1, !tbaa !10
  %182 = load i32, i32* %j236, align 4, !tbaa !9
  %inc276 = add nsw i32 %182, 1
  store i32 %inc276, i32* %j236, align 4, !tbaa !9
  %idxprom277 = sext i32 %182 to i64
  %183 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i8, i8* %183, i64 %idxprom277
  store i8 48, i8* %arrayidx278, align 1, !tbaa !10
  %184 = load i32, i32* %j236, align 4, !tbaa !9
  %inc279 = add nsw i32 %184, 1
  store i32 %inc279, i32* %j236, align 4, !tbaa !9
  %idxprom280 = sext i32 %184 to i64
  %185 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %185, i64 %idxprom280
  store i8 55, i8* %arrayidx281, align 1, !tbaa !10
  %186 = load i32, i32* %i235, align 4, !tbaa !9
  %inc282 = add nsw i32 %186, 1
  store i32 %inc282, i32* %i235, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.283:                                        ; preds = %if.then.266
  %187 = load i32, i32* %j236, align 4, !tbaa !9
  %inc284 = add nsw i32 %187, 1
  store i32 %inc284, i32* %j236, align 4, !tbaa !9
  %idxprom285 = sext i32 %187 to i64
  %188 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i8, i8* %188, i64 %idxprom285
  store i8 48, i8* %arrayidx286, align 1, !tbaa !10
  %189 = load i32, i32* %j236, align 4, !tbaa !9
  %inc287 = add nsw i32 %189, 1
  store i32 %inc287, i32* %j236, align 4, !tbaa !9
  %idxprom288 = sext i32 %189 to i64
  %190 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i8, i8* %190, i64 %idxprom288
  store i8 49, i8* %arrayidx289, align 1, !tbaa !10
  %191 = load i32, i32* %j236, align 4, !tbaa !9
  %inc290 = add nsw i32 %191, 1
  store i32 %inc290, i32* %j236, align 4, !tbaa !9
  %idxprom291 = sext i32 %191 to i64
  %192 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %192, i64 %idxprom291
  store i8 52, i8* %arrayidx292, align 1, !tbaa !10
  %193 = load i32, i32* %i235, align 4, !tbaa !9
  %inc293 = add nsw i32 %193, 1
  store i32 %inc293, i32* %i235, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.294:                                        ; preds = %if.then.266
  %194 = load i32, i32* %j236, align 4, !tbaa !9
  %inc295 = add nsw i32 %194, 1
  store i32 %inc295, i32* %j236, align 4, !tbaa !9
  %idxprom296 = sext i32 %194 to i64
  %195 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8, i8* %195, i64 %idxprom296
  store i8 48, i8* %arrayidx297, align 1, !tbaa !10
  %196 = load i32, i32* %j236, align 4, !tbaa !9
  %inc298 = add nsw i32 %196, 1
  store i32 %inc298, i32* %j236, align 4, !tbaa !9
  %idxprom299 = sext i32 %196 to i64
  %197 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8, i8* %197, i64 %idxprom299
  store i8 49, i8* %arrayidx300, align 1, !tbaa !10
  %198 = load i32, i32* %j236, align 4, !tbaa !9
  %inc301 = add nsw i32 %198, 1
  store i32 %inc301, i32* %j236, align 4, !tbaa !9
  %idxprom302 = sext i32 %198 to i64
  %199 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %199, i64 %idxprom302
  store i8 50, i8* %arrayidx303, align 1, !tbaa !10
  %200 = load i32, i32* %i235, align 4, !tbaa !9
  %inc304 = add nsw i32 %200, 1
  store i32 %inc304, i32* %i235, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.305:                                        ; preds = %if.then.266
  %201 = load i32, i32* %j236, align 4, !tbaa !9
  %inc306 = add nsw i32 %201, 1
  store i32 %inc306, i32* %j236, align 4, !tbaa !9
  %idxprom307 = sext i32 %201 to i64
  %202 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i8, i8* %202, i64 %idxprom307
  store i8 48, i8* %arrayidx308, align 1, !tbaa !10
  %203 = load i32, i32* %j236, align 4, !tbaa !9
  %inc309 = add nsw i32 %203, 1
  store i32 %inc309, i32* %j236, align 4, !tbaa !9
  %idxprom310 = sext i32 %203 to i64
  %204 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds i8, i8* %204, i64 %idxprom310
  store i8 49, i8* %arrayidx311, align 1, !tbaa !10
  %205 = load i32, i32* %j236, align 4, !tbaa !9
  %inc312 = add nsw i32 %205, 1
  store i32 %inc312, i32* %j236, align 4, !tbaa !9
  %idxprom313 = sext i32 %205 to i64
  %206 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i8, i8* %206, i64 %idxprom313
  store i8 53, i8* %arrayidx314, align 1, !tbaa !10
  %207 = load i32, i32* %i235, align 4, !tbaa !9
  %inc315 = add nsw i32 %207, 1
  store i32 %inc315, i32* %i235, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.316:                                        ; preds = %if.then.266
  %208 = load i32, i32* %j236, align 4, !tbaa !9
  %inc317 = add nsw i32 %208, 1
  store i32 %inc317, i32* %j236, align 4, !tbaa !9
  %idxprom318 = sext i32 %208 to i64
  %209 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds i8, i8* %209, i64 %idxprom318
  store i8 48, i8* %arrayidx319, align 1, !tbaa !10
  %210 = load i32, i32* %j236, align 4, !tbaa !9
  %inc320 = add nsw i32 %210, 1
  store i32 %inc320, i32* %j236, align 4, !tbaa !9
  %idxprom321 = sext i32 %210 to i64
  %211 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i8, i8* %211, i64 %idxprom321
  store i8 49, i8* %arrayidx322, align 1, !tbaa !10
  %212 = load i32, i32* %j236, align 4, !tbaa !9
  %inc323 = add nsw i32 %212, 1
  store i32 %inc323, i32* %j236, align 4, !tbaa !9
  %idxprom324 = sext i32 %212 to i64
  %213 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i8, i8* %213, i64 %idxprom324
  store i8 49, i8* %arrayidx325, align 1, !tbaa !10
  %214 = load i32, i32* %i235, align 4, !tbaa !9
  %inc326 = add nsw i32 %214, 1
  store i32 %inc326, i32* %i235, align 4, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.266
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.316, %sw.bb.305, %sw.bb.294, %sw.bb.283, %sw.bb
  br label %if.end.327

if.end.327:                                       ; preds = %sw.epilog, %for.body.255
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.327
  %215 = load i32, i32* %i235, align 4, !tbaa !9
  %inc328 = add nsw i32 %215, 1
  store i32 %inc328, i32* %i235, align 4, !tbaa !9
  br label %for.cond.250

for.end.329:                                      ; preds = %for.cond.250
  %216 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %216, i64 1
  %size331 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx330, i32 0, i32 1
  %217 = load i32, i32* %size331, align 4, !tbaa !5
  store i32 %217, i32* %i235, align 4, !tbaa !9
  %218 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %218, i64 1
  %data333 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx332, i32 0, i32 0
  %219 = load i8*, i8** %data333, align 8, !tbaa !8
  store i8* %219, i8** %temp, align 8, !tbaa !1
  %220 = load i8*, i8** %buf0, align 8, !tbaa !1
  %221 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %221, i64 1
  %data335 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx334, i32 0, i32 0
  store i8* %220, i8** %data335, align 8, !tbaa !8
  %222 = load i32, i32* %j236, align 4, !tbaa !9
  %223 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %223, i64 1
  %size337 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx336, i32 0, i32 1
  store i32 %222, i32* %size337, align 4, !tbaa !5
  %224 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %225 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %call338 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %224, %struct.gs_param_string_s* %225) #8
  %226 = load i8*, i8** %temp, align 8, !tbaa !1
  %227 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %227, i64 1
  %data340 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx339, i32 0, i32 0
  store i8* %226, i8** %data340, align 8, !tbaa !8
  %228 = load i32, i32* %i235, align 4, !tbaa !9
  %229 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair, align 8, !tbaa !1
  %arrayidx341 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %229, i64 1
  %size342 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx341, i32 0, i32 1
  store i32 %228, i32* %size342, align 4, !tbaa !5
  %230 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory343 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %230, i32 0, i32 3
  %231 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory343, align 8, !tbaa !66
  %procs344 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %231, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs344, i32 0, i32 2
  %232 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !110
  %233 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory345 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %233, i32 0, i32 3
  %234 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory345, align 8, !tbaa !66
  %235 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %232(%struct.gs_memory_s* %234, i8* %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.117, i32 0, i32 0)) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.346

cleanup.346:                                      ; preds = %for.end.329, %if.then.248
  %236 = bitcast i8** %buf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast i32* %j236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = bitcast i32* %i235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %cleanup.dest.350 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.350, label %cleanup.365 [
    i32 0, label %cleanup.cont.351
  ]

cleanup.cont.351:                                 ; preds = %cleanup.346
  br label %if.end.352

if.end.352:                                       ; preds = %cleanup.cont.351, %do.end
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %cleanup.cont.227
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %cleanup.cont.198
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %cleanup.cont
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.85
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.end.81
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.then.48
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %if.then.43
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %if.then.39
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.35
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.27
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.then.20
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.365

cleanup.365:                                      ; preds = %if.end.364, %cleanup.346, %cleanup.223, %cleanup.194, %cleanup, %if.else.75
  %240 = bitcast i64* %src_pg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #2
  %241 = bitcast %struct.gs_param_string_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #2
  %cleanup.dest.367 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.367, label %cleanup.661 [
    i32 0, label %cleanup.cont.368
  ]

cleanup.cont.368:                                 ; preds = %cleanup.365
  br label %for.inc.369

for.inc.369:                                      ; preds = %cleanup.cont.368
  %242 = load i32, i32* %i, align 4, !tbaa !9
  %add370 = add i32 %242, 2
  store i32 %add370, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end.371:                                      ; preds = %for.cond
  %243 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool372 = icmp ne i32 %243, 0
  br i1 %tobool372, label %if.end.396, label %land.lhs.true.373

land.lhs.true.373:                                ; preds = %for.end.371
  %call374 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %Subtype, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0)) #8
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.then.376, label %if.end.396

if.then.376:                                      ; preds = %land.lhs.true.373
  %244 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %tobool377 = icmp ne %struct.gs_param_string_s* %244, null
  br i1 %tobool377, label %if.then.378, label %if.end.395

if.then.378:                                      ; preds = %if.then.376
  %245 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr379 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %245, i64 1
  %call380 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0)) #8
  %tobool381 = icmp ne i32 %call380, 0
  br i1 %tobool381, label %if.then.388, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.then.378
  %246 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %tobool383 = icmp ne %struct.gs_param_string_s* %246, null
  br i1 %tobool383, label %land.lhs.true.384, label %if.else.392

land.lhs.true.384:                                ; preds = %lor.lhs.false.382
  %247 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr385 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %247, i64 1
  %call386 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr385, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0)) #8
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.then.388, label %if.else.392

if.then.388:                                      ; preds = %land.lhs.true.384, %if.then.378
  br label %do.body.389

do.body.389:                                      ; preds = %if.then.388
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.body.389
  br label %do.end.391

do.end.391:                                       ; preds = %do.cond.390
  br label %if.end.394

if.else.392:                                      ; preds = %land.lhs.true.384, %lor.lhs.false.382
  %data393 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  store i8* null, i8** %data393, align 8, !tbaa !8
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.392, %do.end.391
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.376
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %land.lhs.true.373, %for.end.371
  %248 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %tobool397 = icmp ne %struct.gs_param_string_s* %248, null
  br i1 %tobool397, label %if.then.398, label %if.end.626

if.then.398:                                      ; preds = %if.end.396
  %249 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #2
  %250 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %250, i64 1
  %data400 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx399, i32 0, i32 0
  %251 = load i8*, i8** %data400, align 8, !tbaa !8
  store i8* %251, i8** %astr, align 8, !tbaa !1
  %252 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #2
  %253 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %253, i64 1
  %size402 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx401, i32 0, i32 1
  %254 = load i32, i32* %size402, align 4, !tbaa !5
  store i32 %254, i32* %asize, align 4, !tbaa !9
  %255 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %cmp403 = icmp ne %struct.gs_param_string_s* %255, null
  br i1 %cmp403, label %land.lhs.true.412, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %if.then.398
  %data406 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  %256 = load i8*, i8** %data406, align 8, !tbaa !8
  %cmp407 = icmp ne i8* %256, null
  br i1 %cmp407, label %land.lhs.true.412, label %lor.lhs.false.409

lor.lhs.false.409:                                ; preds = %lor.lhs.false.405
  %257 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %cmp410 = icmp ne %struct.gs_param_string_s* %257, null
  br i1 %cmp410, label %land.lhs.true.412, label %if.else.472

land.lhs.true.412:                                ; preds = %lor.lhs.false.409, %lor.lhs.false.405, %if.then.398
  %258 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr413 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %258, i64 1
  %call414 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0)) #8
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.then.426, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %land.lhs.true.412
  %259 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr417 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %259, i64 1
  %call418 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0)) #8
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %land.lhs.true.420, label %lor.lhs.false.422

land.lhs.true.420:                                ; preds = %lor.lhs.false.416
  %260 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %tobool421 = icmp ne %struct.gs_param_string_s* %260, null
  br i1 %tobool421, label %if.then.426, label %lor.lhs.false.422

lor.lhs.false.422:                                ; preds = %land.lhs.true.420, %lor.lhs.false.416
  %261 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr423 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %261, i64 1
  %call424 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr423, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0)) #8
  %tobool425 = icmp ne i32 %call424, 0
  br i1 %tobool425, label %if.then.426, label %if.else.472

if.then.426:                                      ; preds = %lor.lhs.false.422, %land.lhs.true.420, %land.lhs.true.412
  %262 = bitcast %struct.cos_dict_s** %adict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #2
  %263 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call427 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0)) #8
  store %struct.cos_dict_s* %call427, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %264 = bitcast %struct.cos_value_s* %avalue to i8*
  call void @llvm.lifetime.start(i64 24, i8* %264) #2
  %265 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %cmp428 = icmp eq %struct.cos_dict_s* %265, null
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %if.then.426
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.468

if.end.431:                                       ; preds = %if.then.426
  %266 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool432 = icmp ne i32 %266, 0
  br i1 %tobool432, label %if.end.435, label %if.then.433

if.then.433:                                      ; preds = %if.end.431
  %267 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %call434 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0)) #8
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %if.end.431
  %268 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr436 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %268, i64 1
  %call437 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr436, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0)) #8
  %tobool438 = icmp ne i32 %call437, 0
  br i1 %tobool438, label %if.then.439, label %if.else.441

if.then.439:                                      ; preds = %if.end.435
  %269 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %call440 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0)) #8
  store i32 0, i32* %coerce_dest, align 4, !tbaa !9
  br label %if.end.444

if.else.441:                                      ; preds = %if.end.435
  %270 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %271 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr442 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %271, i64 1
  %call443 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), %struct.gs_param_string_s* %add.ptr442) #8
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.441, %if.then.439
  %data445 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  %272 = load i8*, i8** %data445, align 8, !tbaa !8
  %tobool446 = icmp ne i8* %272, null
  br i1 %tobool446, label %if.then.447, label %if.end.455

if.then.447:                                      ; preds = %if.end.444
  %273 = load i32, i32* %coerce_dest, align 4, !tbaa !9
  %tobool448 = icmp ne i32 %273, 0
  br i1 %tobool448, label %if.then.449, label %if.end.452

if.then.449:                                      ; preds = %if.then.447
  %arraydecay450 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call451 = call i32 @pdfmark_coerce_dest(%struct.gs_param_string_s* %Dest, i8* %arraydecay450) #8
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.449, %if.then.447
  %274 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %call453 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), %struct.gs_param_string_s* %Dest) #8
  %data454 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  store i8* null, i8** %data454, align 8, !tbaa !8
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.452, %if.end.444
  %275 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %tobool456 = icmp ne %struct.gs_param_string_s* %275, null
  br i1 %tobool456, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %if.end.455
  %276 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %277 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %add.ptr458 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %277, i64 1
  %call459 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), %struct.gs_param_string_s* %add.ptr458) #8
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.457, %if.end.455
  %278 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %tobool461 = icmp ne %struct.gs_param_string_s* %278, null
  br i1 %tobool461, label %if.then.462, label %if.end.465

if.then.462:                                      ; preds = %if.end.460
  %279 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %280 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %call463 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %279, %struct.gs_param_string_s* %280) #8
  %281 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %call464 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)) #8
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.462, %if.end.460
  %282 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %283 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %283, i32 0, i32 0
  %284 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call466 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %avalue, %struct.cos_object_s* %284) #8
  %call467 = call i32 @cos_dict_put(%struct.cos_dict_s* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i32 2, %struct.cos_value_s* %call466) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.468

cleanup.468:                                      ; preds = %if.end.465, %if.then.430
  %285 = bitcast %struct.cos_value_s* %avalue to i8*
  call void @llvm.lifetime.end(i64 24, i8* %285) #2
  %286 = bitcast %struct.cos_dict_s** %adict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #2
  %cleanup.dest.470 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.470, label %cleanup.622 [
    i32 0, label %cleanup.cont.471
  ]

cleanup.cont.471:                                 ; preds = %cleanup.468
  br label %if.end.621

if.else.472:                                      ; preds = %lor.lhs.false.422, %lor.lhs.false.409
  %287 = load i32, i32* %asize, align 4, !tbaa !9
  %cmp473 = icmp uge i32 %287, 4
  br i1 %cmp473, label %land.lhs.true.475, label %if.else.588

land.lhs.true.475:                                ; preds = %if.else.472
  %288 = load i8*, i8** %astr, align 8, !tbaa !1
  %call476 = call i32 @memcmp(i8* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i64 2) #6
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %if.else.588, label %if.then.478

if.then.478:                                      ; preds = %land.lhs.true.475
  %289 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #2
  %290 = load i8*, i8** %astr, align 8, !tbaa !1
  %add.ptr479 = getelementptr inbounds i8, i8* %290, i64 2
  store i8* %add.ptr479, i8** %scan, align 8, !tbaa !1
  %291 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #2
  %292 = load i8*, i8** %astr, align 8, !tbaa !1
  %293 = load i32, i32* %asize, align 4, !tbaa !9
  %idx.ext480 = zext i32 %293 to i64
  %add.ptr481 = getelementptr inbounds i8, i8* %292, i64 %idx.ext480
  store i8* %add.ptr481, i8** %end, align 8, !tbaa !1
  %294 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %294) #2
  %295 = bitcast %struct.gs_param_string_s* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %295) #2
  %296 = bitcast %struct.cos_dict_s** %adict482 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %296) #2
  %297 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call483 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %297, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0)) #8
  store %struct.cos_dict_s* %call483, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %298 = bitcast %struct.cos_value_s* %avalue484 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %298) #2
  %299 = bitcast i32* %code485 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %299) #2
  %300 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %cmp486 = icmp eq %struct.cos_dict_s* %300, null
  br i1 %cmp486, label %if.then.488, label %if.end.489

if.then.488:                                      ; preds = %if.then.478
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.579

if.end.489:                                       ; preds = %if.then.478
  %301 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %tobool490 = icmp ne %struct.gs_param_string_s* %301, null
  br i1 %tobool490, label %if.then.491, label %if.end.494

if.then.491:                                      ; preds = %if.end.489
  %302 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %303 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %URI, align 8, !tbaa !1
  %call492 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %302, %struct.gs_param_string_s* %303) #8
  %304 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %call493 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)) #8
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.491, %if.end.489
  br label %while.cond

while.cond:                                       ; preds = %if.end.563, %if.end.494
  %305 = load i8*, i8** %end, align 8, !tbaa !1
  %data495 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %call496 = call i32 @pdf_scan_token(i8** %scan, i8* %305, i8** %data495) #8
  store i32 %call496, i32* %code485, align 4, !tbaa !9
  %cmp497 = icmp sgt i32 %call496, 0
  br i1 %cmp497, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %306 = load i8*, i8** %scan, align 8, !tbaa !1
  %data499 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %307 = load i8*, i8** %data499, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %306 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %307 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv500 = trunc i64 %sub.ptr.sub to i32
  %size501 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  store i32 %conv500, i32* %size501, align 4, !tbaa !5
  %data502 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %308 = load i8*, i8** %data502, align 8, !tbaa !8
  %arrayidx503 = getelementptr inbounds i8, i8* %308, i64 0
  %309 = load i8, i8* %arrayidx503, align 1, !tbaa !10
  %conv504 = zext i8 %309 to i32
  %cmp505 = icmp ne i32 %conv504, 47
  br i1 %cmp505, label %if.then.512, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %while.body
  %310 = load i8*, i8** %end, align 8, !tbaa !1
  %data508 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 0
  %call509 = call i32 @pdf_scan_token_composite(i8** %scan, i8* %310, i8** %data508) #8
  store i32 %call509, i32* %code485, align 4, !tbaa !9
  %cmp510 = icmp ne i32 %call509, 1
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %lor.lhs.false.507, %while.body
  br label %while.end

if.end.513:                                       ; preds = %lor.lhs.false.507
  %311 = load i8*, i8** %scan, align 8, !tbaa !1
  %data514 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 0
  %312 = load i8*, i8** %data514, align 8, !tbaa !8
  %sub.ptr.lhs.cast515 = ptrtoint i8* %311 to i64
  %sub.ptr.rhs.cast516 = ptrtoint i8* %312 to i64
  %sub.ptr.sub517 = sub i64 %sub.ptr.lhs.cast515, %sub.ptr.rhs.cast516
  %conv518 = trunc i64 %sub.ptr.sub517 to i32
  %size519 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 1
  store i32 %conv518, i32* %size519, align 4, !tbaa !5
  %call520 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %key, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #8
  %tobool521 = icmp ne i32 %call520, 0
  br i1 %tobool521, label %if.then.525, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %if.end.513
  %call523 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %key, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0)) #8
  %tobool524 = icmp ne i32 %call523, 0
  br i1 %tobool524, label %if.then.525, label %if.else.541

if.then.525:                                      ; preds = %lor.lhs.false.522, %if.end.513
  %data526 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8** %data526, align 8, !tbaa !8
  %data527 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %313 = load i8*, i8** %data527, align 8, !tbaa !8
  %call528 = call i64 @strlen(i8* %313) #6
  %conv529 = trunc i64 %call528 to i32
  %size530 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  store i32 %conv529, i32* %size530, align 4, !tbaa !5
  %persistent531 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  store i32 1, i32* %persistent531, align 4, !tbaa !190
  %data532 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 0
  %314 = load i8*, i8** %data532, align 8, !tbaa !8
  %arrayidx533 = getelementptr inbounds i8, i8* %314, i64 0
  %315 = load i8, i8* %arrayidx533, align 1, !tbaa !10
  %conv534 = zext i8 %315 to i32
  %cmp535 = icmp eq i32 %conv534, 40
  br i1 %cmp535, label %if.then.537, label %if.end.540

if.then.537:                                      ; preds = %if.then.525
  %arraydecay538 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call539 = call i32 @pdfmark_coerce_dest(%struct.gs_param_string_s* %value, i8* %arraydecay538) #8
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.537, %if.then.525
  br label %if.end.563

if.else.541:                                      ; preds = %lor.lhs.false.522
  %call542 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %key, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0)) #8
  %tobool543 = icmp ne i32 %call542, 0
  br i1 %tobool543, label %if.then.544, label %if.else.551

if.then.544:                                      ; preds = %if.else.541
  %data545 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8** %data545, align 8, !tbaa !8
  %data546 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %316 = load i8*, i8** %data546, align 8, !tbaa !8
  %call547 = call i64 @strlen(i8* %316) #6
  %conv548 = trunc i64 %call547 to i32
  %size549 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  store i32 %conv548, i32* %size549, align 4, !tbaa !5
  %persistent550 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  store i32 1, i32* %persistent550, align 4, !tbaa !190
  br label %if.end.562

if.else.551:                                      ; preds = %if.else.541
  %call552 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %key, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0)) #8
  %tobool553 = icmp ne i32 %call552, 0
  br i1 %tobool553, label %if.then.554, label %if.end.561

if.then.554:                                      ; preds = %if.else.551
  %data555 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8** %data555, align 8, !tbaa !8
  %data556 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %317 = load i8*, i8** %data556, align 8, !tbaa !8
  %call557 = call i64 @strlen(i8* %317) #6
  %conv558 = trunc i64 %call557 to i32
  %size559 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  store i32 %conv558, i32* %size559, align 4, !tbaa !5
  %persistent560 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  store i32 1, i32* %persistent560, align 4, !tbaa !190
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.554, %if.else.551
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.then.544
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.end.540
  %318 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %data564 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %319 = load i8*, i8** %data564, align 8, !tbaa !8
  %size565 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %320 = load i32, i32* %size565, align 4, !tbaa !5
  %data566 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 0
  %321 = load i8*, i8** %data566, align 8, !tbaa !8
  %size567 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %value, i32 0, i32 1
  %322 = load i32, i32* %size567, align 4, !tbaa !5
  %call568 = call i32 @cos_dict_put_string(%struct.cos_dict_s* %318, i8* %319, i32 %320, i8* %321, i32 %322) #8
  br label %while.cond

while.end:                                        ; preds = %if.then.512, %while.cond
  %323 = load i32, i32* %code485, align 4, !tbaa !9
  %cmp569 = icmp sle i32 %323, 0
  br i1 %cmp569, label %if.then.574, label %lor.lhs.false.571

lor.lhs.false.571:                                ; preds = %while.end
  %call572 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %key, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0)) #8
  %tobool573 = icmp ne i32 %call572, 0
  br i1 %tobool573, label %if.end.575, label %if.then.574

if.then.574:                                      ; preds = %lor.lhs.false.571, %while.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.579

if.end.575:                                       ; preds = %lor.lhs.false.571
  %324 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %325 = load %struct.cos_dict_s*, %struct.cos_dict_s** %adict482, align 8, !tbaa !1
  %cos_procs576 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %325, i32 0, i32 0
  %326 = bitcast %struct.cos_object_procs_s** %cos_procs576 to %struct.cos_object_s*
  %call577 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %avalue484, %struct.cos_object_s* %326) #8
  %call578 = call i32 @cos_dict_put(%struct.cos_dict_s* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i32 2, %struct.cos_value_s* %call577) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.579

cleanup.579:                                      ; preds = %if.end.575, %if.then.574, %if.then.488
  %327 = bitcast i32* %code485 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #2
  %328 = bitcast %struct.cos_value_s* %avalue484 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %328) #2
  %329 = bitcast %struct.cos_dict_s** %adict482 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #2
  %330 = bitcast %struct.gs_param_string_s* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %330) #2
  %331 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %331) #2
  %332 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #2
  %333 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #2
  %cleanup.dest.586 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.586, label %cleanup.622 [
    i32 0, label %cleanup.cont.587
  ]

cleanup.cont.587:                                 ; preds = %cleanup.579
  br label %if.end.620

if.else.588:                                      ; preds = %land.lhs.true.475, %if.else.472
  %334 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %add.ptr589 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %334, i64 1
  %call590 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %add.ptr589, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0)) #8
  %tobool591 = icmp ne i32 %call590, 0
  br i1 %tobool591, label %if.then.592, label %if.else.594

if.then.592:                                      ; preds = %if.else.588
  %335 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %336 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %call593 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %335, %struct.gs_param_string_s* %336) #8
  br label %if.end.619

if.else.594:                                      ; preds = %if.else.588
  %337 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx595 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %337, i64 1
  %size596 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx595, i32 0, i32 1
  %338 = load i32, i32* %size596, align 4, !tbaa !5
  %cmp597 = icmp ult i32 %338, 30
  br i1 %cmp597, label %if.then.599, label %if.end.618

if.then.599:                                      ; preds = %if.else.594
  %339 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %339) #2
  %340 = bitcast i32* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %340) #2
  %341 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %341) #2
  %arraydecay600 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %342 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx601 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %342, i64 1
  %data602 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx601, i32 0, i32 0
  %343 = load i8*, i8** %data602, align 8, !tbaa !8
  %344 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %344, i64 1
  %size604 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx603, i32 0, i32 1
  %345 = load i32, i32* %size604, align 4, !tbaa !5
  %conv605 = zext i32 %345 to i64
  %call606 = call i8* @memcpy(i8* %arraydecay600, i8* %343, i64 %conv605) #7
  %346 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %arrayidx607 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %346, i64 1
  %size608 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx607, i32 0, i32 1
  %347 = load i32, i32* %size608, align 4, !tbaa !5
  %idxprom609 = zext i32 %347 to i64
  %arrayidx610 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i64 %idxprom609
  store i8 0, i8* %arrayidx610, align 1, !tbaa !10
  %arraydecay611 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %call612 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay611, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i32* %d0, i32* %d1) #7
  %cmp613 = icmp eq i32 %call612, 2
  br i1 %cmp613, label %if.then.615, label %if.end.617

if.then.615:                                      ; preds = %if.then.599
  %348 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %349 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %call616 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %348, %struct.gs_param_string_s* %349) #8
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.615, %if.then.599
  %350 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #2
  %351 = bitcast i32* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #2
  %352 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %352) #2
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.617, %if.else.594
  br label %if.end.619

if.end.619:                                       ; preds = %if.end.618, %if.then.592
  br label %if.end.620

if.end.620:                                       ; preds = %if.end.619, %cleanup.cont.587
  br label %if.end.621

if.end.621:                                       ; preds = %if.end.620, %cleanup.cont.471
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.622

cleanup.622:                                      ; preds = %if.end.621, %cleanup.579, %cleanup.468
  %353 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #2
  %354 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #2
  %cleanup.dest.624 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.624, label %cleanup.661 [
    i32 0, label %cleanup.cont.625
  ]

cleanup.cont.625:                                 ; preds = %cleanup.622
  br label %if.end.626

if.end.626:                                       ; preds = %cleanup.cont.625, %if.end.396
  %data627 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Dest, i32 0, i32 0
  %355 = load i8*, i8** %data627, align 8, !tbaa !8
  %tobool628 = icmp ne i8* %355, null
  br i1 %tobool628, label %if.then.629, label %if.else.636

if.then.629:                                      ; preds = %if.end.626
  %356 = load i32, i32* %coerce_dest, align 4, !tbaa !9
  %tobool630 = icmp ne i32 %356, 0
  br i1 %tobool630, label %if.then.631, label %if.end.634

if.then.631:                                      ; preds = %if.then.629
  %arraydecay632 = getelementptr inbounds [80 x i8], [80 x i8]* %dest, i32 0, i32 0
  %call633 = call i32 @pdfmark_coerce_dest(%struct.gs_param_string_s* %Dest, i8* %arraydecay632) #8
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.631, %if.then.629
  %357 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %call635 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), %struct.gs_param_string_s* %Dest) #8
  br label %if.end.651

if.else.636:                                      ; preds = %if.end.626
  %358 = load i32, i32* %for_outline.addr, align 4, !tbaa !9
  %tobool637 = icmp ne i32 %358, 0
  br i1 %tobool637, label %land.lhs.true.638, label %if.end.650

land.lhs.true.638:                                ; preds = %if.else.636
  %359 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %Action, align 8, !tbaa !1
  %tobool639 = icmp ne %struct.gs_param_string_s* %359, null
  br i1 %tobool639, label %if.end.650, label %if.then.640

if.then.640:                                      ; preds = %land.lhs.true.638
  %360 = bitcast [49 x i8]* %dstr to i8*
  call void @llvm.lifetime.start(i64 49, i8* %360) #2
  %361 = bitcast i64* %page_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %361) #2
  %362 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %363 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %363, i32 0, i32 153
  %364 = load i32, i32* %next_page, align 4, !tbaa !93
  %add641 = add nsw i32 %364, 1
  %call642 = call i64 @pdf_page_id(%struct.gx_device_pdf_s* %362, i32 %add641) #8
  store i64 %call642, i64* %page_id, align 8, !tbaa !60
  %arraydecay643 = getelementptr inbounds [49 x i8], [49 x i8]* %dstr, i32 0, i32 0
  %365 = load i64, i64* %page_id, align 8, !tbaa !60
  %call644 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay643, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0), i64 %365) #8
  %366 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %arraydecay645 = getelementptr inbounds [49 x i8], [49 x i8]* %dstr, i32 0, i32 0
  %arraydecay646 = getelementptr inbounds [49 x i8], [49 x i8]* %dstr, i32 0, i32 0
  %call647 = call i64 @strlen(i8* %arraydecay646) #6
  %conv648 = trunc i64 %call647 to i32
  %call649 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %366, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* %arraydecay645, i32 %conv648) #8
  %367 = bitcast i64* %page_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #2
  %368 = bitcast [49 x i8]* %dstr to i8*
  call void @llvm.lifetime.end(i64 49, i8* %368) #2
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.640, %land.lhs.true.638, %if.else.636
  br label %if.end.651

if.end.651:                                       ; preds = %if.end.650, %if.end.634
  %369 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %tobool652 = icmp ne %struct.gs_param_string_s* %369, null
  br i1 %tobool652, label %if.then.653, label %if.end.655

if.then.653:                                      ; preds = %if.end.651
  %370 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %371 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %File, align 8, !tbaa !1
  %call654 = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %370, %struct.gs_param_string_s* %371) #8
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.653, %if.end.651
  %data656 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Subtype, i32 0, i32 0
  %372 = load i8*, i8** %data656, align 8, !tbaa !8
  %tobool657 = icmp ne i8* %372, null
  br i1 %tobool657, label %if.then.658, label %if.end.660

if.then.658:                                      ; preds = %if.end.655
  %373 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %call659 = call i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), %struct.gs_param_string_s* %Subtype) #8
  br label %if.end.660

if.end.660:                                       ; preds = %if.then.658, %if.end.655
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.661

cleanup.661:                                      ; preds = %if.end.660, %cleanup.622, %cleanup.365
  %374 = bitcast i32* %coerce_dest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #2
  %375 = bitcast [80 x i8]* %dest to i8*
  call void @llvm.lifetime.end(i64 80, i8* %375) #2
  %376 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #2
  %377 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #2
  %378 = bitcast %struct.gs_param_string_s* %Subtype to i8*
  call void @llvm.lifetime.end(i64 16, i8* %378) #2
  %379 = bitcast %struct.gs_param_string_s* %Dest to i8*
  call void @llvm.lifetime.end(i64 16, i8* %379) #2
  %380 = bitcast %struct.gs_param_string_s** %URI to i8*
  call void @llvm.lifetime.end(i64 8, i8* %380) #2
  %381 = bitcast %struct.gs_param_string_s** %File to i8*
  call void @llvm.lifetime.end(i64 8, i8* %381) #2
  %382 = bitcast %struct.gs_param_string_s** %Action to i8*
  call void @llvm.lifetime.end(i64 8, i8* %382) #2
  %383 = load i32, i32* %retval
  ret i32 %383
}

declare i64 @pdf_page_id(%struct.gx_device_pdf_s*, i32) #4

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #4

declare void @cos_release(%struct.cos_object_s*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_put_c_pair(%struct.cos_dict_s* %pcd, i8* %key, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !8
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4, !tbaa !5
  %call = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %0, i8* %1, i8* %3, i32 %5) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_make_dest(i8* %dstr, %struct.gx_device_pdf_s* %pdev, i8* %Page_key, i8* %View_key, %struct.gs_param_string_s* %pairs, i32 %count, i32 %RequirePage) #0 {
entry:
  %retval = alloca i32, align 4
  %dstr.addr = alloca i8*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %Page_key.addr = alloca i8*, align 8
  %View_key.addr = alloca i8*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %RequirePage.addr = alloca i32, align 4
  %page_string = alloca %struct.gs_param_string_s, align 8
  %view_string = alloca %struct.gs_param_string_s, align 8
  %present = alloca i32, align 4
  %page = alloca i32, align 4
  %action = alloca %struct.gs_param_string_s, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %dstr, i8** %dstr.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %Page_key, i8** %Page_key.addr, align 8, !tbaa !1
  store i8* %View_key, i8** %View_key.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store i32 %RequirePage, i32* %RequirePage.addr, align 4, !tbaa !9
  %0 = bitcast %struct.gs_param_string_s* %page_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_s* %view_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %Page_key.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call = call i32 @pdfmark_find_key(i8* %3, %struct.gs_param_string_s* %4, i32 %5, %struct.gs_param_string_s* %page_string) #8
  %6 = load i8*, i8** %View_key.addr, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call1 = call i32 @pdfmark_find_key(i8* %6, %struct.gs_param_string_s* %7, i32 %8, %struct.gs_param_string_s* %view_string) #8
  %add = add nsw i32 %call, %call1
  store i32 %add, i32* %present, align 4, !tbaa !9
  %9 = bitcast i32* %page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %page, align 4, !tbaa !9
  %10 = bitcast %struct.gs_param_string_s* %action to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %present, align 4, !tbaa !9
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %RequirePage.addr, align 4, !tbaa !9
  %tobool2 = icmp ne i32 %13, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @pdfmark_page_number(%struct.gx_device_pdf_s* %14, %struct.gs_param_string_s* %page_string) #8
  store i32 %call3, i32* %page, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load i32, i32* %page, align 4, !tbaa !9
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FirstPage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 250
  %17 = load i32, i32* %FirstPage, align 4, !tbaa !200
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %LastPage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 251
  %19 = load i32, i32* %LastPage, align 4, !tbaa !201
  %cmp5 = icmp ne i32 %19, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %20 = load i32, i32* %page, align 4, !tbaa !9
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %LastPage6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 251
  %22 = load i32, i32* %LastPage6, align 4, !tbaa !201
  %cmp7 = icmp sgt i32 %20, %22
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true, %if.end
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %call9 = call i8* @gs_program_name() #8
  %call10 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %24, i8* %call9, i64 %call10) #8
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !66
  %27 = load i32, i32* %page, align 4, !tbaa !9
  %call12 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.131, i32 0, i32 0), i32 %27) #8
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.4
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FirstPage13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 250
  %29 = load i32, i32* %FirstPage13, align 4, !tbaa !200
  %cmp14 = icmp ne i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.else
  %30 = load i32, i32* %page, align 4, !tbaa !9
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FirstPage16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 250
  %32 = load i32, i32* %FirstPage16, align 4, !tbaa !200
  %sub = sub nsw i32 %30, %32
  %add17 = add nsw i32 %sub, 1
  store i32 %add17, i32* %page, align 4, !tbaa !9
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  %33 = load i32, i32* %size, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %33, 0
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0), i8** %data, align 8, !tbaa !8
  %data22 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 0
  %34 = load i8*, i8** %data22, align 8, !tbaa !8
  %call23 = call i64 @strlen(i8* %34) #6
  %conv = trunc i64 %call23 to i32
  %size24 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  store i32 %conv, i32* %size24, align 4, !tbaa !5
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !190
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %35 = load i32, i32* %page, align 4, !tbaa !9
  %cmp26 = icmp eq i32 %35, 0
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.end.25
  %36 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %call29 = call i8* @strcpy(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %if.end.43

if.else.30:                                       ; preds = %if.end.25
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %38 = load i32, i32* %count.addr, align 4, !tbaa !9
  %call31 = call i32 @pdfmark_find_key(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), %struct.gs_param_string_s* %37, i32 %38, %struct.gs_param_string_s* %action) #8
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.39

land.lhs.true.33:                                 ; preds = %if.else.30
  %call34 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %action, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0)) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %land.lhs.true.33
  %39 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %40 = load i32, i32* %page, align 4, !tbaa !9
  %sub37 = sub nsw i32 %40, 1
  %call38 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i32 %sub37) #8
  br label %if.end.42

if.else.39:                                       ; preds = %land.lhs.true.33, %if.else.30
  %41 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %43 = load i32, i32* %page, align 4, !tbaa !9
  %call40 = call i64 @pdf_page_id(%struct.gx_device_pdf_s* %42, i32 %43) #8
  %call41 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i64 %call40) #8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.28
  %44 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %call44 = call i64 @strlen(i8* %44) #6
  %conv45 = trunc i64 %call44 to i32
  store i32 %conv45, i32* %len, align 4, !tbaa !9
  %45 = load i32, i32* %len, align 4, !tbaa !9
  %size46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  %46 = load i32, i32* %size46, align 4, !tbaa !5
  %add47 = add i32 %45, %46
  %cmp48 = icmp ugt i32 %add47, 80
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.43
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.43
  %data52 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 0
  %47 = load i8*, i8** %data52, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv53 = zext i8 %48 to i32
  %cmp54 = icmp ne i32 %conv53, 91
  br i1 %cmp54, label %if.then.64, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.51
  %size57 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  %49 = load i32, i32* %size57, align 4, !tbaa !5
  %sub58 = sub i32 %49, 1
  %idxprom = zext i32 %sub58 to i64
  %data59 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 0
  %50 = load i8*, i8** %data59, align 8, !tbaa !8
  %arrayidx60 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx60, align 1, !tbaa !10
  %conv61 = zext i8 %51 to i32
  %cmp62 = icmp ne i32 %conv61, 93
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.56, %if.end.51
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %lor.lhs.false.56
  %52 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %53 = load i32, i32* %len, align 4, !tbaa !9
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  %data66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 0
  %54 = load i8*, i8** %data66, align 8, !tbaa !8
  %add.ptr67 = getelementptr inbounds i8, i8* %54, i64 1
  %size68 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  %55 = load i32, i32* %size68, align 4, !tbaa !5
  %sub69 = sub i32 %55, 1
  %conv70 = zext i32 %sub69 to i64
  %call71 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr67, i64 %conv70) #7
  %56 = load i32, i32* %len, align 4, !tbaa !9
  %size72 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %view_string, i32 0, i32 1
  %57 = load i32, i32* %size72, align 4, !tbaa !5
  %add73 = add i32 %56, %57
  %sub74 = sub i32 %add73, 1
  %idxprom75 = zext i32 %sub74 to i64
  %58 = load i8*, i8** %dstr.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %58, i64 %idxprom75
  store i8 0, i8* %arrayidx76, align 1, !tbaa !10
  %59 = load i32, i32* %present, align 4, !tbaa !9
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.65, %if.then.64, %if.then.50, %if.then.8
  %60 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.gs_param_string_s* %action to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #2
  %62 = bitcast i32* %page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gs_param_string_s* %view_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #2
  %65 = bitcast %struct.gs_param_string_s* %page_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #2
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_put_pair(%struct.cos_dict_s* %pcd, %struct.gs_param_string_s* %pair) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pair.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pair, %struct.gs_param_string_s** %pair.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !8
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !5
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i64 1
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8, !tbaa !8
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pair.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i64 1
  %size3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx2, i32 0, i32 1
  %8 = load i32, i32* %size3, align 4, !tbaa !5
  %call = call i32 @cos_dict_put_string(%struct.cos_dict_s* %0, i8* %2, i32 %4, i8* %6, i32 %8) #8
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_write_border(%struct.stream_s* %s, %struct.gs_param_string_s* %str, %struct.gs_matrix_s* %pctm) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca %struct.gs_param_string_s*, align 8
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %size = alloca i32, align 4
  %chars = alloca [101 x i8], align 16
  %bx = alloca double, align 8
  %by = alloca double, align 8
  %c = alloca double, align 8
  %bpt = alloca %struct.gs_point_s, align 8
  %cpt = alloca %struct.gs_point_s, align 8
  %next = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca double, align 8
  %vpt = alloca %struct.gs_point_s, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %str, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !5
  store i32 %2, i32* %size, align 4, !tbaa !9
  %3 = bitcast [101 x i8]* %chars to i8*
  call void @llvm.lifetime.start(i64 101, i8* %3) #2
  %4 = bitcast double* %bx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %by to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_point_s* %bpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast %struct.gs_point_s* %cpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size2, align 4, !tbaa !5
  %cmp = icmp ugt i32 %11, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i32 0
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !8
  %14 = load i32, i32* %size, align 4, !tbaa !9
  %conv = zext i32 %14 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %13, i64 %conv) #7
  %15 = load i32, i32* %size, align 4, !tbaa !9
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %arraydecay3 = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), double* %bx, double* %by, double* %c) #7
  %cmp5 = icmp ne i32 %call4, 3
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %16 = load double, double* %bx, align 8, !tbaa !74
  %17 = load double, double* %by, align 8, !tbaa !74
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call9 = call i32 @gs_distance_transform(double %16, double %17, %struct.gs_matrix_s* %18, %struct.gs_point_s* %bpt) #8
  %19 = load double, double* %c, align 8, !tbaa !74
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_distance_transform(double 0.000000e+00, double %19, %struct.gs_matrix_s* %20, %struct.gs_point_s* %cpt) #8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %bpt, i32 0, i32 0
  %22 = load double, double* %x, align 8, !tbaa !202
  %call11 = call double @fabs(double %22) #9
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %bpt, i32 0, i32 1
  %23 = load double, double* %y, align 8, !tbaa !203
  %call12 = call double @fabs(double %23) #9
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %cpt, i32 0, i32 0
  %24 = load double, double* %x13, align 8, !tbaa !202
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %cpt, i32 0, i32 1
  %25 = load double, double* %y14, align 8, !tbaa !203
  %add = fadd double %24, %25
  %call15 = call double @fabs(double %add) #9
  %call16 = call i8* @pprintg3(%struct.stream_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), double %call11, double %call12, double %call15) #8
  %arraydecay17 = getelementptr inbounds [101 x i8], [101 x i8]* %chars, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %call18 = call i8* @strchr(i8* %add.ptr, i32 93) #7
  store i8* %call18, i8** %next, align 8, !tbaa !1
  %26 = load i8*, i8** %next, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %26, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.8
  %27 = load i8*, i8** %next, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx23, align 1, !tbaa !10
  %conv24 = sext i8 %28 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %if.end.22
  %29 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call28 = call i32 @spputc(%struct.stream_s* %30, i8 zeroext 91) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.27
  %31 = load i8*, i8** %next, align 8, !tbaa !1
  %cmp29 = icmp ne i8* %31, null
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %32 = load i8*, i8** %next, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %next, align 8, !tbaa !1
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %incdec.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), double* %v) #7
  %cmp32 = icmp eq i32 %call31, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = bitcast %struct.gs_point_s* %vpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #2
  %35 = load double, double* %v, align 8, !tbaa !74
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call34 = call i32 @gs_distance_transform(double 0.000000e+00, double %35, %struct.gs_matrix_s* %36, %struct.gs_point_s* %vpt) #8
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %vpt, i32 0, i32 0
  %38 = load double, double* %x35, align 8, !tbaa !202
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %vpt, i32 0, i32 1
  %39 = load double, double* %y36, align 8, !tbaa !203
  %add37 = fadd double %38, %39
  %call38 = call double @fabs(double %add37) #9
  %call39 = call i8* @pprintg1(%struct.stream_s* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), double %call38) #8
  %40 = load i8*, i8** %next, align 8, !tbaa !1
  %call40 = call i8* @strchr(i8* %40, i32 32) #7
  store i8* %call40, i8** %next, align 8, !tbaa !1
  %41 = bitcast %struct.gs_point_s* %vpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #2
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call41 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext 93) #8
  %43 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  br label %if.end.42

if.end.42:                                        ; preds = %while.end, %if.end.22
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call43 = call i32 @spputc(%struct.stream_s* %44, i8 zeroext 93) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.21, %if.then.7, %if.then
  %45 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.gs_point_s* %cpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #2
  %47 = bitcast %struct.gs_point_s* %bpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #2
  %48 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast double* %by to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast double* %bx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast [101 x i8]* %chars to i8*
  call void @llvm.lifetime.end(i64 101, i8* %51) #2
  %52 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_coerce_dest(%struct.gs_param_string_s* %dstr, i8* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %dstr.addr = alloca %struct.gs_param_string_s*, align 8
  %dest.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_s* %dstr, %struct.gs_param_string_s** %dstr.addr, align 8, !tbaa !1
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %dstr.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !8
  store i8* %2, i8** %data, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %dstr.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4, !tbaa !5
  store i32 %5, i32* %size, align 4, !tbaa !9
  %6 = load i32, i32* %size, align 4, !tbaa !9
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 40
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %data, align 8, !tbaa !1
  %11 = load i32, i32* %size, align 4, !tbaa !9
  %sub = sub i32 %11, 1
  %conv5 = zext i32 %sub to i64
  %call = call i8* @memcpy(i8* %9, i8* %10, i64 %conv5) #7
  %12 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 47, i8* %arrayidx6, align 1, !tbaa !10
  %13 = load i32, i32* %size, align 4, !tbaa !9
  %sub7 = sub i32 %13, 1
  %idxprom = zext i32 %sub7 to i64
  %14 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx8, align 1, !tbaa !10
  %15 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %dstr.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 0
  store i8* %15, i8** %data9, align 8, !tbaa !8
  %17 = load i32, i32* %size, align 4, !tbaa !9
  %sub10 = sub i32 %17, 1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %dstr.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i32 0, i32 1
  store i32 %sub10, i32* %size11, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @cos_dict_put(%struct.cos_dict_s*, i8*, i32, %struct.cos_value_s*) #4

declare i32 @pdf_scan_token(i8**, i8*, i8**) #4

declare i32 @pdf_scan_token_composite(i8**, i8*, i8**) #4

declare i32 @cos_dict_put_string(%struct.cos_dict_s*, i8*, i32, i8*, i32) #4

declare i32 @gs_sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_find_key(i8* %key, %struct.gs_param_string_s* %pairs, i32 %count, %struct.gs_param_string_s* %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !9
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i64 %idxprom
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %arrayidx, i8* %5) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !9
  %add = add i32 %7, 1
  %idxprom1 = zext i32 %add to i64
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i64 %idxprom1
  %9 = bitcast %struct.gs_param_string_s* %6 to i8*
  %10 = bitcast %struct.gs_param_string_s* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !198
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !9
  %add3 = add i32 %11, 2
  store i32 %add3, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !8
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_page_number(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_s* %pnstr) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pnstr.addr = alloca %struct.gs_param_string_s*, align 8
  %page = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pnstr, %struct.gs_param_string_s** %pnstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 153
  %2 = load i32, i32* %next_page, align 4, !tbaa !93
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %page, align 4, !tbaa !9
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pnstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8, !tbaa !8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.12

if.else:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pnstr.addr, align 8, !tbaa !1
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  %6 = load i32, i32* %page, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %page, align 4, !tbaa !9
  br label %if.end.11

if.else.2:                                        ; preds = %if.else
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pnstr.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0)) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.2
  %8 = load i32, i32* %page, align 4, !tbaa !9
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %page, align 4, !tbaa !9
  br label %if.end.10

if.else.6:                                        ; preds = %if.else.2
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pnstr.addr, align 8, !tbaa !1
  %call7 = call i32 @pdfmark_scan_int(%struct.gs_param_string_s* %9, i32* %page) #8
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.6
  store i32 0, i32* %page, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.1
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_referred_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 154
  %11 = load i32, i32* %max_referred_page, align 4, !tbaa !204
  %12 = load i32, i32* %page, align 4, !tbaa !9
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %13 = load i32, i32* %page, align 4, !tbaa !9
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %max_referred_page15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 154
  store i32 %13, i32* %max_referred_page15, align 4, !tbaa !204
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %15 = load i32, i32* %page, align 4, !tbaa !9
  %16 = bitcast i32* %page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret i32 %15
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

declare i8* @pprintg3(%struct.stream_s*, i8*, double, double, double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #4

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #4

declare i32 @bytes_compare(i8*, i32, i8*, i32) #4

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @ps_source_ok(%struct.gs_memory_s* %mem, %struct.gs_param_string_s* %psource) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psource.addr = alloca %struct.gs_param_string_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %psource, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp uge i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 40
  br i1 %cmp1, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size4, align 4, !tbaa !5
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %data5, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx6, align 1, !tbaa !10
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 41
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %call = call i8* @gs_program_name() #8
  %call10 = call i64 @gs_revision_number() #8
  call void @eprintf_program_ident(i8* %call, i64 %call10) #8
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.159, i32 0, i32 0), i32 1452) #8
  %call11 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.160, i32 0, i32 0)) #8
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4, !tbaa !9
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 1
  %13 = load i32, i32* %size12, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %11, %13
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %data16, align 8, !tbaa !8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %18 = load i8, i8* %arrayidx17, align 1, !tbaa !10
  %conv18 = zext i8 %18 to i32
  %call19 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i32 %conv18) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #4

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #4

declare i32 @pdf_enter_substream(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i32, i32) #4

declare i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_write_ps(%struct.stream_s* %s, %struct.gs_param_string_s* %psource) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %psource.addr = alloca %struct.gs_param_string_s*, align 8
  %size = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %psource, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !5
  %sub = sub i32 %2, 2
  store i32 %sub, i32* %size, align 4, !tbaa !9
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psource.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i32, i32* %size, align 4, !tbaa !9
  %call = call i32 @stream_write(%struct.stream_s* %3, i8* %add.ptr, i32 %6) #8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %7, i8 zeroext 10) #8
  %8 = load i32, i32* %size, align 4, !tbaa !9
  %add = add i32 %8, 1
  %9 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret i32 %add
}

declare i32 @pdf_exit_substream(%struct.gx_device_pdf_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @start_XObject(%struct.gx_device_pdf_s* %pdev, i32 %compress, %struct.cos_stream_s** %ppcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %compress.addr = alloca i32, align 4
  %ppcs.addr = alloca %struct.cos_stream_s**, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %compress, i32* %compress.addr, align 4, !tbaa !9
  store %struct.cos_stream_s** %ppcs, %struct.cos_stream_s*** %ppcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %3, i32 1) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  %4 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 94
  %8 = load i32, i32* %CompressFonts, align 4, !tbaa !146
  %call1 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %6, i32 4, i64 0, %struct.pdf_resource_s** %pres, i32 0, i32 %8) #8
  store i32 %call1, i32* %code, align 4, !tbaa !9
  %9 = load i32, i32* %code, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_a_global_object = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 216
  store i32 1, i32* %accumulating_a_global_object, align 4, !tbaa !205
  %12 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %12, i32 0, i32 7
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !147
  %14 = bitcast %struct.cos_object_s* %13 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %14, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.163, i32 0, i32 0)) #8
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 205
  store %struct.cos_dict_s* %call5, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !173
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 205
  %18 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources6, align 8, !tbaa !173
  %tobool = icmp ne %struct.cos_dict_s* %18, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 99
  %20 = load i32, i32* %ForOPDFRead, align 4, !tbaa !149
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.8
  %21 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object11 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %21, i32 0, i32 7
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object11, align 8, !tbaa !147
  %23 = bitcast %struct.cos_object_s* %22 to %struct.cos_dict_s*
  %call12 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 1) #8
  store i32 %call12, i32* %code, align 4, !tbaa !9
  %24 = load i32, i32* %code, align 4, !tbaa !9
  %cmp13 = icmp slt i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %25 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.8
  %26 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %named = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %26, i32 0, i32 3
  store i32 1, i32* %named, align 4, !tbaa !150
  %27 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %27, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !151
  %28 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %29 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %pres17 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %29, i32 0, i32 5
  store %struct.pdf_resource_s* %28, %struct.pdf_resource_s** %pres17, align 8, !tbaa !152
  %30 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %31 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.cos_stream_s* %30, %struct.cos_stream_s** %31, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.14, %if.then.7, %if.then.3, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @cos_stream_put_c_strings(%struct.cos_stream_s* %pcs, i8* %key, i8* %value) #0 {
entry:
  %pcs.addr = alloca %struct.cos_stream_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.cos_stream_s* %pcs, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs.addr, align 8, !tbaa !1
  %call = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %0) #8
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %call, i8* %1, i8* %2) #8
  ret i32 %call1
}

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_bind_named_object(%struct.gx_device_pdf_s* %pdev, %struct.gs_const_string_s* %objname, %struct.pdf_resource_s** %pres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %objname.addr = alloca %struct.gs_const_string_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s**, align 8
  %code = alloca i32, align 4
  %v = alloca %struct.cos_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  %value = alloca %struct.cos_value_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %objname, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %pres, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_const_string_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !159
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 182
  %6 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects, align 8, !tbaa !183
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !158
  %9 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %9, i32 0, i32 1
  %10 = load i32, i32* %size1, align 4, !tbaa !159
  %call = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %6, i8* %8, i32 %10) #8
  store %struct.cos_value_s* %call, %struct.cos_value_s** %v, align 8, !tbaa !1
  %11 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.cos_value_s* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.26

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 0
  %13 = load i32, i32* %value_type, align 4, !tbaa !131
  %cmp4 = icmp eq i32 %13, 2
  br i1 %cmp4, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %if.then.3
  %14 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %14, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %15, i32 0, i32 0
  %16 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !180
  %cmp6 = icmp eq %struct.cos_object_procs_s* %16, @cos_generic_procs
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %18, align 8, !tbaa !1
  %20 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents8 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %20, i32 0, i32 1
  %object9 = bitcast %union.vc_* %contents8 to %struct.cos_object_s**
  %21 = load %struct.cos_object_s*, %struct.cos_object_s** %object9, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %21, i32 0, i32 1
  %22 = load i64, i64* %id, align 8, !tbaa !154
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %17, %struct.pdf_resource_s* %19, i64 %22) #8
  br label %if.end.23

if.else:                                          ; preds = %if.then.5
  %23 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents10 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %23, i32 0, i32 1
  %object11 = bitcast %union.vc_* %contents10 to %struct.cos_object_s**
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %object11, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %24, i32 0, i32 8
  %25 = load i8, i8* %written, align 1, !tbaa !181
  %tobool12 = icmp ne i8 %25, 0
  br i1 %tobool12, label %if.end.22, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %26 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents14 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %26, i32 0, i32 1
  %object15 = bitcast %union.vc_* %contents14 to %struct.cos_object_s**
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %object15, align 8, !tbaa !1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call16 = call i32 @cos_write_object(%struct.cos_object_s* %27, %struct.gx_device_pdf_s* %28, i32 5) #8
  store i32 %call16, i32* %code, align 4, !tbaa !9
  %29 = load i32, i32* %code, align 4, !tbaa !9
  %cmp17 = icmp slt i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.13
  %30 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.13
  %31 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents19 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %31, i32 0, i32 1
  %object20 = bitcast %union.vc_* %contents19 to %struct.cos_object_s**
  %32 = load %struct.cos_object_s*, %struct.cos_object_s** %object20, align 8, !tbaa !1
  %written21 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %32, i32 0, i32 8
  store i8 1, i8* %written21, align 1, !tbaa !181
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.7
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.else.24, %if.then.18
  %33 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %land.lhs.true, %entry
  %34 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %35 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %34, align 8, !tbaa !1
  %object28 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %35, i32 0, i32 7
  %36 = load %struct.cos_object_s*, %struct.cos_object_s** %object28, align 8, !tbaa !147
  %id29 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %36, i32 0, i32 1
  %37 = load i64, i64* %id29, align 8, !tbaa !154
  %cmp30 = icmp eq i64 %37, -1
  br i1 %cmp30, label %if.then.31, label %if.else.44

if.then.31:                                       ; preds = %if.end.27
  %38 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %cmp32 = icmp ne %struct.gs_const_string_s* %38, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.then.31
  %39 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %size34 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %39, i32 0, i32 1
  %40 = load i32, i32* %size34, align 4, !tbaa !159
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %land.lhs.true.33
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %call37 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %41, %struct.pdf_resource_s** %42, i32 4, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #8
  store i32 %call37, i32* %code, align 4, !tbaa !9
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.then.31
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %call39 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %43, %struct.pdf_resource_s** %44, i32 4, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 1) #8
  store i32 %call39, i32* %code, align 4, !tbaa !9
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 164
  %46 = load i64, i64* %used_mask, align 8, !tbaa !160
  %47 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %48 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %47, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %48, i32 0, i32 6
  %49 = load i64, i64* %where_used, align 8, !tbaa !151
  %or = or i64 %49, %46
  store i64 %or, i64* %where_used, align 8, !tbaa !151
  %50 = load i32, i32* %code, align 4, !tbaa !9
  %cmp41 = icmp slt i32 %50, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %51 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.43:                                        ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.27
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  %52 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %cmp46 = icmp ne %struct.gs_const_string_s* %52, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.63

land.lhs.true.47:                                 ; preds = %if.end.45
  %53 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %size48 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %53, i32 0, i32 1
  %54 = load i32, i32* %size48, align 4, !tbaa !159
  %tobool49 = icmp ne i32 %54, 0
  br i1 %tobool49, label %if.then.50, label %if.end.63

if.then.50:                                       ; preds = %land.lhs.true.47
  %55 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %55) #2
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %local_named_objects51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 182
  %57 = load %struct.cos_dict_s*, %struct.cos_dict_s** %local_named_objects51, align 8, !tbaa !183
  %58 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %data52 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %58, i32 0, i32 0
  %59 = load i8*, i8** %data52, align 8, !tbaa !158
  %60 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %objname.addr, align 8, !tbaa !1
  %size53 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %60, i32 0, i32 1
  %61 = load i32, i32* %size53, align 4, !tbaa !159
  %62 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pres.addr, align 8, !tbaa !1
  %63 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %62, align 8, !tbaa !1
  %object54 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %63, i32 0, i32 7
  %64 = load %struct.cos_object_s*, %struct.cos_object_s** %object54, align 8, !tbaa !147
  %call55 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %64) #8
  %call56 = call i32 @cos_dict_put(%struct.cos_dict_s* %57, i8* %59, i32 %61, %struct.cos_value_s* %call55) #8
  store i32 %call56, i32* %code, align 4, !tbaa !9
  %65 = load i32, i32* %code, align 4, !tbaa !9
  %cmp57 = icmp slt i32 %65, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.50
  %66 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.59:                                        ; preds = %if.then.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.58
  %67 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %67) #2
  %cleanup.dest.61 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.61, label %cleanup.64 [
    i32 0, label %cleanup.cont.62
  ]

cleanup.cont.62:                                  ; preds = %cleanup.60
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont.62, %land.lhs.true.47, %if.end.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %cleanup.60, %if.then.42, %cleanup
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare void @eprintf_program_ident(i8*, i64) #4

declare void @lprintf_file_and_line(i8*, i32) #4

declare i32 @errprintf_nomem(i8*, ...) #4

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #4

declare %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s*, i8*, i32) #4

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #4

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_put_pairs(%struct.cos_dict_s* %pcd, %struct.gs_param_string_s* %pairs, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pairs.addr = alloca %struct.gs_param_string_s*, align 8
  %count.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pairs, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !9
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %count.addr, align 4, !tbaa !9
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %code, align 4, !tbaa !9
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !9
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp1 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pairs.addr, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !9
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i64 %idx.ext
  %call = call i32 @pdfmark_put_pair(%struct.cos_dict_s* %7, %struct.gs_param_string_s* %add.ptr) #8
  store i32 %call, i32* %code, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %10, 2
  store i32 %add, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct.cos_dict_s* @pdf_current_page_dict(%struct.gx_device_pdf_s*) #4

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #4

declare void @pdf_store_default_Producer(i8*) #4

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #4

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #4

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #4

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #4

declare i32 @pdf_add_procsets(%struct.cos_dict_s*, i32) #4

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #4

declare i32 @pdf_get_named(%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, %struct.cos_object_procs_s*, %struct.cos_object_s**) #4

declare void @pdf_put_matrix(%struct.gx_device_pdf_s*, i8*, %struct.gs_matrix_s*, i8*) #4

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #4

declare i32 @pdf_make_named(%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, %struct.cos_object_procs_s*, %struct.cos_object_s**, i32) #4

declare i32 @pdf_refer_named(%struct.gx_device_pdf_s*, %struct.gs_param_string_s*, %struct.cos_object_s**) #4

; Function Attrs: nounwind uwtable
define internal i32 @setup_pdfmark_stream_compression(%struct.gx_device_psdf_s* %pdev0, %struct.cos_stream_s* %pco) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev0.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pco.addr = alloca %struct.cos_stream_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %st = alloca %struct.stream_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ss = alloca %struct.stream_state_s*, align 8
  store %struct.gx_device_psdf_s* %pdev0, %struct.gx_device_psdf_s** %pdev0.addr, align 8, !tbaa !1
  store %struct.cos_stream_s* %pco, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_psdf_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 73
  %UseFlateCompression = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 12
  %8 = load i32, i32* %UseFlateCompression, align 4, !tbaa !206
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 67
  %10 = load i32, i32* %version, align 4, !tbaa !207
  %cmp = icmp uge i32 %10, 3010
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %cond = select i1 %11, %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s* @s_LZWE_template
  store %struct.stream_template_s* %cond, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %12 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s* %13, %struct.gx_device_pdf_s* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.197, i32 0, i32 0)) #8
  %15 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %input_strm = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %15, i32 0, i32 10
  store %struct.stream_s* %call, %struct.stream_s** %input_strm, align 8, !tbaa !208
  %16 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %input_strm1 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %16, i32 0, i32 10
  %17 = load %struct.stream_s*, %struct.stream_s** %input_strm1, align 8, !tbaa !208
  %cmp2 = icmp eq %struct.stream_s* %17, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end:                                           ; preds = %land.end
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 68
  %19 = load i32, i32* %binary_ok, align 4, !tbaa !209
  %tobool3 = icmp ne i32 %19, 0
  br i1 %tobool3, label %if.end.14, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %20 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %22 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_A85E_template, i32 0, i32 0), align 8, !tbaa !210
  %call5 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.197, i32 0, i32 0)) #8
  store %struct.stream_state_s* %call5, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %23 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.stream_state_s* %23, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.4
  %24 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %input_strm9 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %24, i32 0, i32 10
  %25 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call10 = call %struct.stream_s* @s_add_filter(%struct.stream_s** %input_strm9, %struct.stream_template_s* @s_A85E_template, %struct.stream_state_s* %25, %struct.gs_memory_s* %26) #8
  %cmp11 = icmp eq %struct.stream_s* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !110
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %30 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %31 = bitcast %struct.stream_state_s* %30 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.198, i32 0, i32 0)) #8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.7
  %32 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %if.end
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %34 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %34, i32 0, i32 0
  %35 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !210
  %call15 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %33, %struct.gs_memory_struct_type_s* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.197, i32 0, i32 0)) #8
  store %struct.stream_state_s* %call15, %struct.stream_state_s** %st, align 8, !tbaa !1
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.stream_state_s* %36, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.18:                                        ; preds = %if.end.14
  %37 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %37, i32 0, i32 6
  %38 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !212
  %tobool19 = icmp ne void (%struct.stream_state_s*)* %38, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %39 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults21 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %39, i32 0, i32 6
  %40 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults21, align 8, !tbaa !212
  %41 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  call void %40(%struct.stream_state_s* %41) #8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %42 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %input_strm23 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %42, i32 0, i32 10
  %43 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %44 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call24 = call %struct.stream_s* @s_add_filter(%struct.stream_s** %input_strm23, %struct.stream_template_s* %43, %struct.stream_state_s* %44, %struct.gs_memory_s* %45) #8
  %cmp25 = icmp eq %struct.stream_s* %call24, null
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object28 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object28, align 8, !tbaa !110
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %49 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %50 = bitcast %struct.stream_state_s* %49 to i8*
  call void %47(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.198, i32 0, i32 0)) #8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.29:                                        ; preds = %if.end.22
  %51 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %call30 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %51) #8
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %53 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pco.addr, align 8, !tbaa !1
  %input_strm31 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %53, i32 0, i32 10
  %54 = load %struct.stream_s*, %struct.stream_s** %input_strm31, align 8, !tbaa !208
  %call32 = call i32 @pdf_put_filters(%struct.cos_dict_s* %call30, %struct.gx_device_pdf_s* %52, %struct.stream_s* %54, %struct.pdf_filter_names_s* @setup_pdfmark_stream_compression.fnames) #8
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.29, %if.then.26, %if.then.17, %cleanup, %if.then
  %55 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s*, %struct.gx_device_pdf_s*, i8*) #4

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #4

declare %struct.stream_s* @s_add_filter(%struct.stream_s**, %struct.stream_template_s*, %struct.stream_state_s*, %struct.gs_memory_s*) #4

declare i32 @pdf_put_filters(%struct.cos_dict_s*, %struct.gx_device_pdf_s*, %struct.stream_s*, %struct.pdf_filter_names_s*) #4

declare i32 @cos_array_put(%struct.cos_array_s*, i64, %struct.cos_value_s*) #4

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #4

declare i32 @pdf_push_namespace(%struct.gx_device_pdf_s*) #4

declare i32 @cos_dict_objects_write(%struct.cos_dict_s*, %struct.gx_device_pdf_s*) #4

declare i32 @pdf_pop_namespace(%struct.gx_device_pdf_s*) #4

declare i32 @cos_array_add_object(%struct.cos_array_s*, %struct.cos_object_s*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!3, !3, i64 0}
!11 = !{!12, !7, i64 28680}
!12 = !{!"gx_device_pdf_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !13, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !15, i64 96, !18, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !7, i64 1052, !7, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !24, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !37, i64 7512, !37, i64 8144, !14, i64 8776, !14, i64 8784, !3, i64 8792, !3, i64 8796, !30, i64 8800, !7, i64 8816, !2, i64 8824, !14, i64 8832, !14, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !31, i64 8872, !42, i64 8880, !7, i64 9360, !31, i64 9368, !7, i64 9376, !7, i64 9380, !7, i64 9384, !7, i64 9388, !7, i64 9392, !7, i64 9396, !7, i64 9400, !7, i64 9404, !7, i64 9408, !7, i64 9412, !7, i64 9416, !7, i64 9420, !46, i64 9424, !46, i64 9440, !7, i64 9456, !7, i64 9460, !7, i64 9464, !14, i64 9472, !7, i64 9480, !7, i64 9484, !6, i64 9488, !6, i64 9504, !7, i64 9520, !7, i64 9524, !7, i64 9528, !7, i64 9532, !7, i64 9536, !7, i64 9540, !7, i64 9544, !7, i64 9548, !7, i64 9552, !7, i64 9556, !7, i64 9560, !7, i64 9564, !7, i64 9568, !14, i64 9576, !14, i64 9584, !14, i64 9592, !47, i64 9600, !6, i64 9616, !6, i64 9632, !7, i64 9648, !7, i64 9652, !7, i64 9656, !6, i64 9664, !7, i64 9680, !7, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !7, i64 9768, !7, i64 9772, !7, i64 9776, !48, i64 9784, !49, i64 9816, !49, i64 9856, !7, i64 9896, !7, i64 9900, !7, i64 9904, !7, i64 9908, !7, i64 9912, !14, i64 9920, !3, i64 9928, !7, i64 9960, !14, i64 9968, !14, i64 9976, !3, i64 9984, !3, i64 9988, !50, i64 9992, !50, i64 14120, !50, i64 18248, !50, i64 22376, !14, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !14, i64 26536, !7, i64 26544, !7, i64 26548, !14, i64 26552, !3, i64 26560, !14, i64 26568, !14, i64 26576, !3, i64 26584, !2, i64 26592, !51, i64 26600, !2, i64 26648, !7, i64 26656, !14, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !14, i64 28664, !2, i64 28672, !7, i64 28680, !7, i64 28684, !7, i64 28688, !7, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !30, i64 28792, !2, i64 28808, !2, i64 28816, !7, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !7, i64 28856, !7, i64 28860, !7, i64 28864, !52, i64 28872, !7, i64 30384, !7, i64 30388, !7, i64 30392, !2, i64 30400, !7, i64 30408, !7, i64 30412, !7, i64 30416, !27, i64 30420, !2, i64 30448, !3, i64 30456, !7, i64 30460, !7, i64 30464, !2, i64 30472, !2, i64 30480, !29, i64 30488, !7, i64 30524, !48, i64 30528, !7, i64 30560, !7, i64 30564, !7, i64 30568, !2, i64 30576, !7, i64 30584, !7, i64 30588, !14, i64 30592, !7, i64 30600, !7, i64 30604, !7, i64 30608, !27, i64 30612, !31, i64 30640, !2, i64 30648, !43, i64 30656, !7, i64 30672, !2, i64 30680, !7, i64 30688, !7, i64 30692, !7, i64 30696, !7, i64 30700, !7, i64 30704, !7, i64 30708, !7, i64 30712, !7, i64 30716, !7, i64 30720, !7, i64 30724, !7, i64 30728, !7, i64 30732, !7, i64 30736, !7, i64 30740, !7, i64 30744, !7, i64 30748, !7, i64 30752, !7, i64 30756, !7, i64 30760, !7, i64 30764, !7, i64 30768, !7, i64 30772, !2, i64 30776, !7, i64 30784, !7, i64 30788}
!13 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"long", !3, i64 0}
!15 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !7, i64 712}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!18 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !21, i64 16, !7, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !14, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !25, i64 24, !7, i64 128, !29, i64 132, !7, i64 168, !30, i64 176, !30, i64 192, !7, i64 208, !7, i64 212, !16, i64 216, !3, i64 220, !32, i64 224, !32, i64 228, !33, i64 232, !14, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !26, i64 296, !34, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !26, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !35, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !36, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !36, i64 1336}
!25 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !7, i64 36, !27, i64 40, !28, i64 64}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!28 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !26, i64 12, !7, i64 16, !26, i64 20, !7, i64 24, !7, i64 28, !26, i64 32}
!29 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !3, i64 0}
!32 = !{!"gs_transparency_source_s", !26, i64 0}
!33 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!34 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!35 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!36 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !14, i64 16, !3, i64 24}
!37 = !{!"gx_hl_saved_color_s", !14, i64 0, !14, i64 8, !7, i64 16, !38, i64 24, !40, i64 288}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !41, i64 336}
!41 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!42 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !43, i64 64, !43, i64 80, !43, i64 96, !43, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !44, i64 152, !7, i64 232, !7, i64 236, !44, i64 240, !44, i64 320, !45, i64 400, !45, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !6, i64 448, !45, i64 464}
!43 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!44 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !26, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!45 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!46 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!47 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!"gs_rect_s", !30, i64 0, !30, i64 16}
!49 = !{!"pdf_page_dsc_info_s", !7, i64 0, !7, i64 4, !48, i64 8}
!50 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!51 = !{!"pdf_text_rotation_s", !3, i64 0, !7, i64 40}
!52 = !{!"pdf_viewer_state_s", !7, i64 0, !3, i64 8, !26, i64 40, !26, i64 44, !3, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !7, i64 80, !26, i64 84, !26, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !37, i64 120, !37, i64 752, !25, i64 1384, !2, i64 1488, !7, i64 1496, !14, i64 1504}
!53 = !{!12, !2, i64 28672}
!54 = !{!55, !14, i64 56}
!55 = !{!"pdf_outline_level_s", !56, i64 0, !56, i64 56, !7, i64 112}
!56 = !{!"pdf_outline_node_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !2, i64 48}
!57 = !{!55, !14, i64 88}
!58 = !{!55, !7, i64 96}
!59 = !{!12, !7, i64 28688}
!60 = !{!14, !14, i64 0}
!61 = !{!56, !14, i64 0}
!62 = !{!56, !2, i64 48}
!63 = !{!64, !14, i64 8}
!64 = !{!"cos_dict_s", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !14, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!65 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!66 = !{!12, !2, i64 24}
!67 = !{!12, !2, i64 5848}
!68 = !{!56, !7, i64 40}
!69 = !{!56, !14, i64 8}
!70 = !{!56, !14, i64 16}
!71 = !{!56, !14, i64 24}
!72 = !{!56, !14, i64 32}
!73 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !60, i64 48, i64 8, !60, i64 56, i64 8, !74, i64 64, i64 8, !74, i64 72, i64 8, !74, i64 80, i64 8, !74, i64 88, i64 8, !60, i64 96, i64 8, !60, i64 104, i64 8, !60, i64 112, i64 8, !60, i64 120, i64 8, !60, i64 128, i64 8, !74, i64 136, i64 8, !74, i64 144, i64 8, !74, i64 152, i64 8, !74}
!74 = !{!31, !31, i64 0}
!75 = !{!76, !14, i64 88}
!76 = !{!"pdf_article_s", !2, i64 0, !2, i64 8, !77, i64 16, !77, i64 88}
!77 = !{!"pdf_bead_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !48, i64 40}
!78 = !{!76, !14, i64 16}
!79 = !{!76, !14, i64 40}
!80 = !{!76, !14, i64 32}
!81 = !{!76, !14, i64 112}
!82 = !{!76, !2, i64 8}
!83 = !{!77, !14, i64 0}
!84 = !{!77, !14, i64 8}
!85 = !{!77, !14, i64 16}
!86 = !{!77, !14, i64 24}
!87 = !{!77, !14, i64 32}
!88 = !{!12, !2, i64 28816}
!89 = !{!90, !14, i64 8}
!90 = !{!"cos_array_s", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !14, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!91 = !{!12, !7, i64 28824}
!92 = !{!12, !2, i64 28832}
!93 = !{!12, !7, i64 26544}
!94 = !{!45, !2, i64 0}
!95 = !{!45, !7, i64 8}
!96 = !{!97, !2, i64 0}
!97 = !{!"pdfmark_name_s", !2, i64 0, !2, i64 8, !3, i64 16}
!98 = !{!12, !2, i64 1728}
!99 = !{!97, !3, i64 16}
!100 = !{!26, !26, i64 0}
!101 = !{!27, !26, i64 0}
!102 = !{!27, !26, i64 4}
!103 = !{!27, !26, i64 8}
!104 = !{!27, !26, i64 12}
!105 = !{!27, !26, i64 16}
!106 = !{!27, !26, i64 20}
!107 = !{!108, !2, i64 88}
!108 = !{!"gs_memory_s", !2, i64 0, !109, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!109 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!110 = !{!108, !2, i64 24}
!111 = !{!97, !2, i64 8}
!112 = !{!48, !31, i64 0}
!113 = !{!48, !31, i64 8}
!114 = !{!48, !31, i64 16}
!115 = !{!48, !31, i64 24}
!116 = !{!12, !7, i64 28684}
!117 = !{!108, !2, i64 64}
!118 = !{!119, !2, i64 0}
!119 = !{!"ao_params_s", !2, i64 0, !2, i64 8, !14, i64 16}
!120 = !{!119, !2, i64 8}
!121 = !{!119, !14, i64 16}
!122 = !{!12, !14, i64 26536}
!123 = !{!55, !14, i64 0}
!124 = !{!55, !14, i64 80}
!125 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 4, !9, i64 48, i64 8, !1}
!126 = !{!55, !2, i64 48}
!127 = !{!55, !7, i64 112}
!128 = !{!12, !7, i64 28692}
!129 = !{!55, !2, i64 104}
!130 = !{!12, !2, i64 28696}
!131 = !{!132, !3, i64 0}
!132 = !{!"cos_value_s", !3, i64 0, !3, i64 8}
!133 = !{!134, !2, i64 0}
!134 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!135 = !{!134, !7, i64 8}
!136 = !{!76, !2, i64 0}
!137 = !{!108, !2, i64 72}
!138 = !{!76, !14, i64 104}
!139 = !{!76, !14, i64 96}
!140 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !74}
!141 = !{!76, !14, i64 120}
!142 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !74, i64 48, i64 8, !74, i64 56, i64 8, !74, i64 64, i64 8, !74}
!143 = !{!12, !2, i64 28704}
!144 = !{!12, !31, i64 9368}
!145 = !{!12, !2, i64 28712}
!146 = !{!12, !7, i64 9480}
!147 = !{!148, !2, i64 64}
!148 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !14, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !14, i64 56, !2, i64 64}
!149 = !{!12, !7, i64 9524}
!150 = !{!148, !7, i64 24}
!151 = !{!148, !14, i64 56}
!152 = !{!153, !2, i64 40}
!153 = !{!"cos_stream_s", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !14, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!154 = !{!155, !14, i64 8}
!155 = !{!"cos_object_s", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !14, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!156 = !{!12, !7, i64 8892}
!157 = !{!12, !2, i64 30480}
!158 = !{!43, !2, i64 0}
!159 = !{!43, !7, i64 8}
!160 = !{!12, !14, i64 26664}
!161 = !{!153, !14, i64 8}
!162 = !{!12, !2, i64 26528}
!163 = !{!12, !2, i64 26520}
!164 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9}
!165 = !{!166, !7, i64 12}
!166 = !{!"string_match_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!167 = !{!108, !2, i64 136}
!168 = !{!108, !2, i64 160}
!169 = !{!12, !2, i64 26512}
!170 = !{!12, !2, i64 30656}
!171 = !{!12, !7, i64 30664}
!172 = !{!153, !3, i64 49}
!173 = !{!12, !2, i64 30448}
!174 = !{!12, !7, i64 30408}
!175 = !{i64 0, i64 8, !1, i64 8, i64 4, !9}
!176 = !{!12, !3, i64 26584}
!177 = !{!155, !3, i64 48}
!178 = !{!155, !3, i64 49}
!179 = !{!155, !2, i64 40}
!180 = !{!155, !2, i64 0}
!181 = !{!155, !3, i64 50}
!182 = !{!155, !2, i64 64}
!183 = !{!12, !2, i64 28760}
!184 = !{!12, !2, i64 28768}
!185 = !{!12, !7, i64 9564}
!186 = !{!12, !7, i64 30724}
!187 = !{!12, !7, i64 9568}
!188 = !{!12, !7, i64 9560}
!189 = !{!12, !2, i64 26648}
!190 = !{!6, !7, i64 12}
!191 = !{!192, !2, i64 0}
!192 = !{!"pdf_page_s", !2, i64 0, !30, i64 8, !3, i64 24, !14, i64 32, !3, i64 40, !14, i64 96, !2, i64 104, !51, i64 112, !49, i64 160, !7, i64 200, !7, i64 204}
!193 = !{!12, !7, i64 9432}
!194 = !{!12, !2, i64 9424}
!195 = !{!12, !7, i64 9448}
!196 = !{!12, !2, i64 9440}
!197 = !{!192, !2, i64 104}
!198 = !{i64 0, i64 8, !1, i64 8, i64 4, !9, i64 12, i64 4, !9}
!199 = !{!108, !2, i64 152}
!200 = !{!12, !7, i64 30768}
!201 = !{!12, !7, i64 30772}
!202 = !{!30, !31, i64 0}
!203 = !{!30, !31, i64 8}
!204 = !{!12, !7, i64 26548}
!205 = !{!12, !7, i64 30568}
!206 = !{!12, !7, i64 8936}
!207 = !{!12, !3, i64 8848}
!208 = !{!153, !2, i64 64}
!209 = !{!12, !7, i64 8852}
!210 = !{!211, !2, i64 0}
!211 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!212 = !{!211, !2, i64 40}
