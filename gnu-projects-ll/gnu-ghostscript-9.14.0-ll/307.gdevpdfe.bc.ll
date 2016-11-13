; ModuleID = './gdevpdfe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@PDFDocEncodingLookup = global [92 x i8] c" \22   ! & \14 \13\01\92 D 9 :\22\12 0 \1E \1C \1D \18 \19 \1A!\22\FB\01\FB\02\01A\01R\01`\01x\01}\011\01B\01S\01a\01~\00\00 \AC\00\A1\00\A2\00\A3\00\A4\00\A5\00\A6\00\A7\00\A8\00\A9\00\AA\00\AB\00\AC\00\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/Metadata\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/XML\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/CreationDate\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/ModDate\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"xpacket\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@dd = internal constant [6 x i8] c"'\EF\BB\BF'\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"W5M0MpCehiHzreSzNTczkc9d\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"<?adobe-xap-filters esc=\22CRLF\22?>\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='XMP toolkit 2.9.1-13, framework 1.6'>\0A\00", align 1
@.str.13 = private unnamed_addr constant [106 x i8] c"<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:iX='http://ns.adobe.com/iX/1.0/'>\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"rdf:Description\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"rdf:about\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"xmlns:pdf\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"http://ns.adobe.com/pdf/1.3/\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"/Keywords\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"pdf:Producer\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"/Producer\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"UnknownProducer\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"pdf:Keywords\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"xmlns:xmp\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"http://ns.adobe.com/xap/1.0/\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"xmp:ModifyDate\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"xmp:CreateDate\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"xmp:CreatorTool\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"/Creator\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"UnknownApplication\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"xmlns:xapMM\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"http://ns.adobe.com/xap/1.0/mm/\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"xapMM:DocumentID\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"xmlns:dc\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"http://purl.org/dc/elements/1.1/\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"dc:format\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"dc:title\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"rdf:Alt\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"rdf:li\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"xml:lang\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"x-default\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"/Title\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"/Author\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"dc:creator\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"rdf:Seq\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"/Subject\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"dc:description\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"No Subject\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"xmlns:pdfaid\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"http://www.aiim.org/pdfa/ns/id/\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"pdfaid:part\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"pdfaid:conformance\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"</rdf:RDF>\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"</x:xmpmeta>\0A\00", align 1
@.str.60 = private unnamed_addr constant [74 x i8] c"                                                                        \0A\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"<?xpacket end='w'?>\00", align 1
@pdf_make_instance_uuid.URI_prefix = private unnamed_addr constant [5 x i8] c"uuid:", align 1
@writehex.digit = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@pdf_make_document_uuid.URI_prefix = private unnamed_addr constant [5 x i8] c"uuid:", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"%04d-%02d-%02d\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"pdf_xmp_write_translated\00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"PDFDocEncoding %x cannot be represented in Unicode\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"&#%d;\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"/>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_get_docinfo_item(%struct.gx_device_pdf_s* %pdev, i8* %key, i8* %buf, i32 %buf_length) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %key.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %v = alloca %struct.cos_value_s*, align 8
  %l = alloca i32, align 4
  %s = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 150
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info, align 8, !tbaa !7
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %call1 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %2, i8* %3, i32 %conv) #7
  store %struct.cos_value_s* %call1, %struct.cos_value_s** %v, align 8, !tbaa !1
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_value_s* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %8, i32 0, i32 0
  %9 = load i32, i32* %value_type, align 4, !tbaa !50
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %10, i32 0, i32 0
  %11 = load i32, i32* %value_type5, align 4, !tbaa !50
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then, label %if.else.29

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !52
  %cmp8 = icmp ugt i32 %13, 2
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %if.then
  %14 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents11 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %14, i32 0, i32 1
  %chars12 = bitcast %union.vc_* %contents11 to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars12, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !54
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !55
  %conv13 = zext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 40
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.10
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents17 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %chars18 = bitcast %union.vc_* %contents17 to %struct.gs_string_s*
  %data19 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars18, i32 0, i32 0
  %18 = load i8*, i8** %data19, align 8, !tbaa !54
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  %19 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents20 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %19, i32 0, i32 1
  %chars21 = bitcast %union.vc_* %contents20 to %struct.gs_string_s*
  %size22 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars21, i32 0, i32 1
  %20 = load i32, i32* %size22, align 4, !tbaa !52
  %sub = sub i32 %20, 2
  store i32 %sub, i32* %l, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %if.then
  %21 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents23 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %21, i32 0, i32 1
  %chars24 = bitcast %union.vc_* %contents23 to %struct.gs_string_s*
  %data25 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars24, i32 0, i32 0
  %22 = load i8*, i8** %data25, align 8, !tbaa !54
  store i8* %22, i8** %s, align 8, !tbaa !1
  %23 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents26 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %23, i32 0, i32 1
  %chars27 = bitcast %union.vc_* %contents26 to %struct.gs_string_s*
  %size28 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars27, i32 0, i32 1
  %24 = load i32, i32* %size28, align 4, !tbaa !52
  store i32 %24, i32* %l, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.30

if.else.29:                                       ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end
  %25 = load i32, i32* %l, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %25, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %26 = load i32, i32* %l, align 4, !tbaa !5
  %27 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %26, %27
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %28 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  store i32 %28, i32* %l, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %29 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %s, align 8, !tbaa !1
  %31 = load i32, i32* %l, align 4, !tbaa !5
  %conv39 = sext i32 %31 to i64
  %call40 = call i8* @memcpy(i8* %29, i8* %30, i64 %conv39) #8
  %32 = load i32, i32* %l, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.else.29
  %33 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_document_metadata(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %buf = alloca [20 x i8], align 16
  %digest = alloca [6 x i8], align 1
  %code = alloca i32, align 4
  %options = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 75
  %1 = load double, double* %CompatibilityLevel, align 8, !tbaa !56
  %cmp = fcmp olt double %1, 1.400000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParseDSCCommentsForDocInfo = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 79
  %3 = load i32, i32* %ParseDSCCommentsForDocInfo, align 4, !tbaa !57
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PreserveEPSInfo = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 83
  %5 = load i32, i32* %PreserveEPSInfo, align 4, !tbaa !58
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.51

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %6 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %7) #1
  %8 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 6, i8* %8) #1
  %9 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 6, i32 1, i1 false)
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %options to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %options, align 4, !tbaa !5
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 47
  %13 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %14 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !60
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 47
  %16 = load %struct.stream_s*, %struct.stream_s** %strm3, align 8, !tbaa !59
  %call = call i32 %14(%struct.stream_s* %16) #7
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 47
  %18 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !59
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %digest, i32 0, i32 0
  %call5 = call i32 @s_MD5C_get_digest(%struct.stream_s* %18, i8* %arraydecay, i32 6) #7
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %EncryptMetadata = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 121
  %20 = load i32, i32* %EncryptMetadata, align 4, !tbaa !63
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.2
  %21 = load i32, i32* %options, align 4, !tbaa !5
  %or = or i32 %21, 8
  store i32 %or, i32* %options, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.2
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %options, align 4, !tbaa !5
  %call9 = call i32 @pdf_open_aside(%struct.gx_device_pdf_s* %22, i32 29, i64 0, %struct.pdf_resource_s** %pres, i32 1, i32 %23) #7
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %24, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %26 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %26, i32 0, i32 7
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !64
  %28 = bitcast %struct.cos_object_s* %27 to %struct.cos_dict_s*
  %call13 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 9) #7
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object17 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %31, i32 0, i32 7
  %32 = load %struct.cos_object_s*, %struct.cos_object_s** %object17, align 8, !tbaa !64
  %33 = bitcast %struct.cos_object_s* %32 to %struct.cos_dict_s*
  %call18 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4) #7
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %34, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [6 x i8], [6 x i8]* %digest, i32 0, i32 0
  %call23 = call i32 @pdf_write_document_metadata(%struct.gx_device_pdf_s* %36, i8* %arraydecay22) #7
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %37, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call27 = call i32 @pdf_close_aside(%struct.gx_device_pdf_s* %39) #7
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %40, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %42 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object31 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %42, i32 0, i32 7
  %43 = load %struct.cos_object_s*, %struct.cos_object_s** %object31, align 8, !tbaa !64
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %43, i32 0, i32 0
  %44 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call32 = call i32 @cos_write_object(%struct.cos_object_s* %44, %struct.gx_device_pdf_s* %45, i32 34) #7
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %46, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.30
  %arraydecay36 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %48 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object37 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %48, i32 0, i32 7
  %49 = load %struct.cos_object_s*, %struct.cos_object_s** %object37, align 8, !tbaa !64
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %49, i32 0, i32 1
  %50 = load i64, i64* %id, align 8, !tbaa !66
  %call38 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %50) #7
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object39 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %52, i32 0, i32 7
  %53 = load %struct.cos_object_s*, %struct.cos_object_s** %object39, align 8, !tbaa !64
  %id40 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %53, i32 0, i32 1
  %54 = load i64, i64* %id40, align 8, !tbaa !66
  %call41 = call i32 @pdf_record_usage(%struct.gx_device_pdf_s* %51, i64 %54, i32 -3) #7
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Catalog = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 149
  %56 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Catalog, align 8, !tbaa !69
  %57 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object42 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %57, i32 0, i32 7
  %58 = load %struct.cos_object_s*, %struct.cos_object_s** %object42, align 8, !tbaa !64
  %call43 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.cos_object_s* %58) #7
  store i32 %call43, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %59, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.35
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45, %if.then.34, %if.then.29, %if.then.25, %if.then.20, %if.then.15, %if.then.11
  %61 = bitcast i32* %options to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 6, i8* %63) #1
  %64 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %64) #1
  %65 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.51

if.end.51:                                        ; preds = %cleanup.cont, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %cleanup, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @s_MD5C_get_digest(%struct.stream_s*, i8*, i32) #2

declare i32 @pdf_open_aside(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i32, i32) #2

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_document_metadata(%struct.gx_device_pdf_s* %pdev, i8* %digest) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %digest.addr = alloca i8*, align 8
  %instance_uuid = alloca [45 x i8], align 16
  %document_uuid = alloca [45 x i8], align 16
  %cre_date_time = alloca [40 x i8], align 16
  %mod_date_time = alloca [40 x i8], align 16
  %date_time_buf = alloca [40 x i8], align 16
  %cre_date_time_len = alloca i32, align 4
  %mod_date_time_len = alloca i32, align 4
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  %0 = bitcast [45 x i8]* %instance_uuid to i8*
  call void @llvm.lifetime.start(i64 45, i8* %0) #1
  %1 = bitcast [45 x i8]* %document_uuid to i8*
  call void @llvm.lifetime.start(i64 45, i8* %1) #1
  %2 = bitcast [40 x i8]* %cre_date_time to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast [40 x i8]* %mod_date_time to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast [40 x i8]* %date_time_buf to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast i32* %cre_date_time_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %mod_date_time_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 47
  %10 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  %call = call i32 @pdf_make_instance_uuid(%struct.gx_device_pdf_s* %11, i8* %12, i8* %arraydecay, i32 45) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [45 x i8], [45 x i8]* %document_uuid, i32 0, i32 0
  %call2 = call i32 @pdf_make_document_uuid(%struct.gx_device_pdf_s* %15, i8* %16, i8* %arraydecay1, i32 45) #7
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %17, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 109
  %20 = load i32, i32* %PDFA, align 4, !tbaa !70
  %cmp6 = icmp ne i32 %20, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %arrayidx = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !55
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [40 x i8], [40 x i8]* %cre_date_time, i32 0, i32 0
  %call10 = call i32 @pdf_get_docinfo_item(%struct.gx_device_pdf_s* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay9, i32 40) #7
  store i32 %call10, i32* %cre_date_time_len, align 4, !tbaa !5
  %22 = load i32, i32* %cre_date_time_len, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %arraydecay12 = getelementptr inbounds [40 x i8], [40 x i8]* %cre_date_time, i32 0, i32 0
  %call13 = call i32 @pdf_xmp_time(i8* %arraydecay12, i32 40) #7
  store i32 %call13, i32* %cre_date_time_len, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %if.end.8
  %arraydecay14 = getelementptr inbounds [40 x i8], [40 x i8]* %cre_date_time, i32 0, i32 0
  %23 = load i32, i32* %cre_date_time_len, align 4, !tbaa !5
  %arraydecay15 = getelementptr inbounds [40 x i8], [40 x i8]* %date_time_buf, i32 0, i32 0
  %call16 = call i32 @pdf_xmp_convert_time(i8* %arraydecay14, i32 %23, i8* %arraydecay15, i32 40) #7
  store i32 %call16, i32* %cre_date_time_len, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [40 x i8], [40 x i8]* %mod_date_time, i32 0, i32 0
  %call19 = call i32 @pdf_get_docinfo_item(%struct.gx_device_pdf_s* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay18, i32 40) #7
  store i32 %call19, i32* %mod_date_time_len, align 4, !tbaa !5
  %25 = load i32, i32* %mod_date_time_len, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.else.24, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  %arraydecay22 = getelementptr inbounds [40 x i8], [40 x i8]* %mod_date_time, i32 0, i32 0
  %call23 = call i32 @pdf_xmp_time(i8* %arraydecay22, i32 40) #7
  store i32 %call23, i32* %mod_date_time_len, align 4, !tbaa !5
  br label %if.end.28

if.else.24:                                       ; preds = %if.end.17
  %arraydecay25 = getelementptr inbounds [40 x i8], [40 x i8]* %mod_date_time, i32 0, i32 0
  %26 = load i32, i32* %mod_date_time_len, align 4, !tbaa !5
  %arraydecay26 = getelementptr inbounds [40 x i8], [40 x i8]* %date_time_buf, i32 0, i32 0
  %call27 = call i32 @pdf_xmp_convert_time(i8* %arraydecay25, i32 %26, i8* %arraydecay26, i32 40) #7
  store i32 %call27, i32* %mod_date_time_len, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.24, %if.then.21
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_ins_beg(%struct.stream_s* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #7
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dd, i32 0, i32 0)) #7
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #7
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_ins_end(%struct.stream_s* %32) #7
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %33) #7
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #7
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %35, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i32 0, i32 0)) #7
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %36, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.13, i32 0, i32 0)) #7
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay29 = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %39, i8* %arraydecay29) #7
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #7
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0)) #7
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 150
  %43 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info, align 8, !tbaa !7
  %call30 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 9) #7
  %tobool31 = icmp ne %struct.cos_value_s* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.else.41

if.then.32:                                       ; preds = %if.end.28
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %44) #7
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #7
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %46) #7
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call33 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %47, %struct.stream_s* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %49, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.32
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #7
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %52) #7
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)) #7
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %54) #7
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call37 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %55, %struct.stream_s* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %57, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %58 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.36
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)) #7
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %60) #7
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %62) #7
  br label %if.end.46

if.else.41:                                       ; preds = %if.end.28
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #7
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call42 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %64, %struct.stream_s* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_attribute_value_data) #7
  store i32 %call42, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %66, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.41
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.else.41
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end_empty(%struct.stream_s* %68) #7
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %69) #7
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.40
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay47 = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %72, i8* %arraydecay47) #7
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #7
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0)) #7
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %75) #7
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #7
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %77) #7
  %78 = load i32, i32* %mod_date_time_len, align 4, !tbaa !5
  %idxprom = sext i32 %78 to i64
  %arrayidx48 = getelementptr inbounds [40 x i8], [40 x i8]* %mod_date_time, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx48, align 1, !tbaa !55
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay49 = getelementptr inbounds [40 x i8], [40 x i8]* %mod_date_time, i32 0, i32 0
  call void @pdf_xml_copy(%struct.stream_s* %79, i8* %arraydecay49) #7
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #7
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %81) #7
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0)) #7
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %83) #7
  %84 = load i32, i32* %cre_date_time_len, align 4, !tbaa !5
  %idxprom50 = sext i32 %84 to i64
  %arrayidx51 = getelementptr inbounds [40 x i8], [40 x i8]* %cre_date_time, i32 0, i64 %idxprom50
  store i8 0, i8* %arrayidx51, align 1, !tbaa !55
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay52 = getelementptr inbounds [40 x i8], [40 x i8]* %cre_date_time, i32 0, i32 0
  call void @pdf_xml_copy(%struct.stream_s* %85, i8* %arraydecay52) #7
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0)) #7
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %87) #7
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #7
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %89) #7
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %91 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call53 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %90, %struct.stream_s* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %92, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.46
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.46
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #7
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %96 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %96) #7
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %98 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %99 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %99, i8* %arraydecay57) #7
  %100 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #7
  %101 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0)) #7
  %102 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0)) #7
  %103 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [45 x i8], [45 x i8]* %document_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %103, i8* %arraydecay58) #7
  %104 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end_empty(%struct.stream_s* %104) #7
  %105 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %105) #7
  %106 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %107 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %108 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %108, i8* %arraydecay59) #7
  %109 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #7
  %110 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0)) #7
  %111 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #7
  %112 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0)) #7
  %113 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %113) #7
  %114 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #7
  %115 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #7
  %116 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %117 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #7
  %118 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #7
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %119) #7
  %120 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %121 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %120, %struct.stream_s* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %122 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %122, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  %123 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.56
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #7
  %126 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #7
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %127, i32 0, i32 150
  %128 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info64, align 8, !tbaa !7
  %call65 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 7) #7
  %tobool66 = icmp ne %struct.cos_value_s* %call65, null
  br i1 %tobool66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.63
  %129 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #7
  %130 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #7
  %131 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %133 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call68 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %132, %struct.stream_s* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call68, i32* %code, align 4, !tbaa !5
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %134, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %135 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.then.67
  %136 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %137 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #7
  %138 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.63
  %139 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info73 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %139, i32 0, i32 150
  %140 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info73, align 8, !tbaa !7
  %call74 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 8) #7
  %tobool75 = icmp ne %struct.cos_value_s* %call74, null
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.72
  %141 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #7
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open(%struct.stream_s* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #7
  %143 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %144 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #7
  %145 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #7
  %146 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end(%struct.stream_s* %146) #7
  %147 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %148 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call77 = call i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %147, %struct.stream_s* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), void (%struct.stream_s*, i8*, i32)* @pdf_xml_data_write) #7
  store i32 %call77, i32* %code, align 4, !tbaa !5
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %149, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.76
  %150 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.then.76
  %151 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7
  %152 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #7
  %153 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.72
  %154 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_close(%struct.stream_s* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %155 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_newline(%struct.stream_s* %155) #7
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA82 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %156, i32 0, i32 109
  %157 = load i32, i32* %PDFA82, align 4, !tbaa !70
  %cmp83 = icmp ne i32 %157, 0
  br i1 %cmp83, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %if.end.81
  %158 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_open_beg(%struct.stream_s* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #7
  %159 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %160 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay85 = getelementptr inbounds [45 x i8], [45 x i8]* %instance_uuid, i32 0, i32 0
  call void @pdf_xml_attribute_value(%struct.stream_s* %160, i8* %arraydecay85) #7
  %161 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0)) #7
  %162 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0)) #7
  %163 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0)) #7
  %164 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA86 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %164, i32 0, i32 109
  %165 = load i32, i32* %PDFA86, align 4, !tbaa !70
  %cmp87 = icmp eq i32 %165, 1
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.then.84
  %166 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)) #7
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.84
  %167 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0)) #7
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.88
  %168 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_name(%struct.stream_s* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0)) #7
  %169 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_attribute_value(%struct.stream_s* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)) #7
  %170 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_tag_end_empty(%struct.stream_s* %170) #7
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.81
  %171 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0)) #7
  %172 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #7
  %173 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %173, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.60, i32 0, i32 0)) #7
  %174 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %174, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.60, i32 0, i32 0)) #7
  %175 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @pdf_xml_copy(%struct.stream_s* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.91, %if.then.79, %if.then.70, %if.then.62, %if.then.55, %if.then.44, %if.then.39, %if.then.35, %if.then.4, %if.then
  %176 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %mod_date_time_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %cre_date_time_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast [40 x i8]* %date_time_buf to i8*
  call void @llvm.lifetime.end(i64 40, i8* %180) #1
  %181 = bitcast [40 x i8]* %mod_date_time to i8*
  call void @llvm.lifetime.end(i64 40, i8* %181) #1
  %182 = bitcast [40 x i8]* %cre_date_time to i8*
  call void @llvm.lifetime.end(i64 40, i8* %182) #1
  %183 = bitcast [45 x i8]* %document_uuid to i8*
  call void @llvm.lifetime.end(i64 45, i8* %183) #1
  %184 = bitcast [45 x i8]* %instance_uuid to i8*
  call void @llvm.lifetime.end(i64 45, i8* %184) #1
  %185 = load i32, i32* %retval
  ret i32 %185
}

declare i32 @pdf_close_aside(%struct.gx_device_pdf_s*) #2

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @pdf_record_usage(%struct.gx_device_pdf_s*, i64, i32) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_instance_uuid(%struct.gx_device_pdf_s* %pdev, i8* %digest, i8* %buf, i32 %buf_length) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %digest.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %URI_prefix = alloca [5 x i8], align 1
  %l = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.lifetime.start(i64 5, i8* %0) #1
  %1 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pdf_make_instance_uuid.URI_prefix, i32 0, i32 0), i64 5, i32 1, i1 false)
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %URI_prefix, i32 0, i32 0
  %call = call i8* @memcpy(i8* %2, i8* %arraydecay, i64 5) #8
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %InstanceUUID = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 97
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %InstanceUUID, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !71
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 6
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %InstanceUUID1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 97
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %InstanceUUID1, i32 0, i32 1
  %8 = load i32, i32* %size2, align 4, !tbaa !71
  %cmp = icmp ult i32 %sub, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 %9, 6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %InstanceUUID4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 97
  %size5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %InstanceUUID4, i32 0, i32 1
  %11 = load i32, i32* %size5, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub3, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %l, align 4, !tbaa !5
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 5
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %InstanceUUID6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 97
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %InstanceUUID6, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !72
  %15 = load i32, i32* %l, align 4, !tbaa !5
  %conv = sext i32 %15 to i64
  %call7 = call i8* @memcpy(i8* %add.ptr, i8* %14, i64 %conv) #8
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !55
  %18 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i64 @pdf_uuid_time(%struct.gx_device_pdf_s* %20) #7
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentTimeSeq = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 98
  %22 = load i32, i32* %DocumentTimeSeq, align 4, !tbaa !73
  %conv9 = sext i32 %22 to i64
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %23, i64 5
  %24 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %24, 5
  call void @pdf_make_uuid(i8* %19, i64 %call8, i64 %conv9, i8* %add.ptr10, i32 %sub11) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %25 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.lifetime.end(i64 5, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_document_uuid(%struct.gx_device_pdf_s* %pdev, i8* %digest, i8* %buf, i32 %buf_length) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %digest.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %URI_prefix = alloca [5 x i8], align 1
  %l = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.lifetime.start(i64 5, i8* %0) #1
  %1 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pdf_make_document_uuid.URI_prefix, i32 0, i32 0), i64 5, i32 1, i1 false)
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %URI_prefix, i32 0, i32 0
  %call = call i8* @memcpy(i8* %2, i8* %arraydecay, i64 5) #8
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentUUID = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 96
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %DocumentUUID, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !74
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 6
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentUUID1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 96
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %DocumentUUID1, i32 0, i32 1
  %8 = load i32, i32* %size2, align 4, !tbaa !74
  %cmp = icmp ult i32 %sub, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 %9, 6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentUUID4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 96
  %size5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %DocumentUUID4, i32 0, i32 1
  %11 = load i32, i32* %size5, align 4, !tbaa !74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub3, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %l, align 4, !tbaa !5
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 5
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentUUID6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 96
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %DocumentUUID6, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !75
  %15 = load i32, i32* %l, align 4, !tbaa !5
  %conv = sext i32 %15 to i64
  %call7 = call i8* @memcpy(i8* %add.ptr, i8* %14, i64 %conv) #8
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !55
  %18 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i64 @pdf_uuid_time(%struct.gx_device_pdf_s* %20) #7
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DocumentTimeSeq = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 98
  %22 = load i32, i32* %DocumentTimeSeq, align 4, !tbaa !73
  %conv9 = sext i32 %22 to i64
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %23, i64 5
  %24 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %24, 5
  call void @pdf_make_uuid(i8* %19, i64 %call8, i64 %conv9, i8* %add.ptr10, i32 %sub11) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %25 = bitcast [5 x i8]* %URI_prefix to i8*
  call void @llvm.lifetime.end(i64 5, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_xmp_time(i8* %buf, i32 %buf_length) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %tms = alloca %struct.tm, align 8
  %t = alloca i64, align 8
  %buf1 = alloca [11 x i8], align 1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.tm* %tms to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [11 x i8]* %buf1 to i8*
  call void @llvm.lifetime.start(i64 11, i8* %2) #1
  %call = call i64 @time(i64* %t) #8
  %call1 = call %struct.tm* @localtime(i64* %t) #8
  %3 = bitcast %struct.tm* %tms to i8*
  %4 = bitcast %struct.tm* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 56, i32 8, i1 false), !tbaa.struct !76
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %buf1, i32 0, i32 0
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 5
  %5 = load i32, i32* %tm_year, align 4, !tbaa !78
  %add = add nsw i32 %5, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 4
  %6 = load i32, i32* %tm_mon, align 4, !tbaa !80
  %add2 = add nsw i32 %6, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 3
  %7 = load i32, i32* %tm_mday, align 4, !tbaa !81
  %call3 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i32 %add, i32 %add2, i32 %7) #7
  %8 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [11 x i8], [11 x i8]* %buf1, i32 0, i32 0
  %9 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %call5 = call i8* @strncpy(i8* %8, i8* %arraydecay4, i64 %conv) #8
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %10) #6
  %conv7 = trunc i64 %call6 to i32
  %11 = bitcast [11 x i8]* %buf1 to i8*
  call void @llvm.lifetime.end(i64 11, i8* %11) #1
  %12 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.tm* %tms to i8*
  call void @llvm.lifetime.end(i64 56, i8* %13) #1
  ret i32 %conv7
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_xmp_convert_time(i8* %dt, i32 %dtl, i8* %buf, i32 %bufl) #0 {
entry:
  %retval = alloca i32, align 4
  %dt.addr = alloca i8*, align 8
  %dtl.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufl.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %dt, i8** %dt.addr, align 8, !tbaa !1
  store i32 %dtl, i32* %dtl.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %bufl, i32* %bufl.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dtl.addr, align 4, !tbaa !5
  store i32 %1, i32* %l, align 4, !tbaa !5
  %2 = load i32, i32* %l, align 4, !tbaa !5
  %3 = load i32, i32* %bufl.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %bufl.addr, align 4, !tbaa !5
  store i32 %4, i32* %l, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !55
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 68
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !55
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 58
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %l, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 2
  store i32 %sub, i32* %l, align 4, !tbaa !5
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i32, i32* %l, align 4, !tbaa !5
  %conv8 = sext i32 %12 to i64
  %call = call i8* @memcpy(i8* %10, i8* %add.ptr, i64 %conv8) #8
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %15 = load i32, i32* %l, align 4, !tbaa !5
  %conv9 = sext i32 %15 to i64
  %call10 = call i8* @memcpy(i8* %13, i8* %14, i64 %conv9) #8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.7
  %16 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call12 = call i8* @memcpy(i8* %16, i8* %17, i64 4) #8
  %18 = load i32, i32* %l, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %18, 4
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %19 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 45, i8* %arrayidx17, align 1, !tbaa !55
  %20 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %20, i64 5
  %21 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %21, i64 4
  %call20 = call i8* @memcpy(i8* %add.ptr18, i8* %add.ptr19, i64 2) #8
  %22 = load i32, i32* %l, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %22, 6
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.16
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.16
  %23 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 7
  store i8 45, i8* %arrayidx25, align 1, !tbaa !55
  %24 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds i8, i8* %24, i64 8
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %25, i64 6
  %call28 = call i8* @memcpy(i8* %add.ptr26, i8* %add.ptr27, i64 2) #8
  %26 = load i32, i32* %l, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %26, 8
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  store i32 10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.24
  %27 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %27, i64 10
  store i8 84, i8* %arrayidx33, align 1, !tbaa !55
  %28 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %28, i64 11
  %29 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds i8, i8* %29, i64 8
  %call36 = call i8* @memcpy(i8* %add.ptr34, i8* %add.ptr35, i64 2) #8
  %30 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %30, i64 13
  store i8 58, i8* %arrayidx37, align 1, !tbaa !55
  %31 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i8, i8* %31, i64 14
  %32 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %32, i64 10
  %call40 = call i8* @memcpy(i8* %add.ptr38, i8* %add.ptr39, i64 2) #8
  %33 = load i32, i32* %l, align 4, !tbaa !5
  %cmp41 = icmp sle i32 %33, 12
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.32
  %34 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 16
  store i8 90, i8* %arrayidx44, align 1, !tbaa !55
  store i32 17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.32
  %35 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %35, i64 16
  store i8 58, i8* %arrayidx46, align 1, !tbaa !55
  %36 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i8, i8* %36, i64 17
  %37 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %37, i64 12
  %call49 = call i8* @memcpy(i8* %add.ptr47, i8* %add.ptr48, i64 2) #8
  %38 = load i32, i32* %l, align 4, !tbaa !5
  %cmp50 = icmp sle i32 %38, 14
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.45
  %39 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %39, i64 18
  store i8 90, i8* %arrayidx53, align 1, !tbaa !55
  store i32 19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.45
  %40 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %40, i64 14
  %41 = load i8, i8* %arrayidx55, align 1, !tbaa !55
  %42 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 19
  store i8 %41, i8* %arrayidx56, align 1, !tbaa !55
  %43 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %43, i64 19
  %44 = load i8, i8* %arrayidx57, align 1, !tbaa !55
  %conv58 = sext i8 %44 to i32
  %cmp59 = icmp eq i32 %conv58, 90
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.54
  store i32 20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.54
  %45 = load i32, i32* %l, align 4, !tbaa !5
  %cmp63 = icmp sle i32 %45, 15
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store i32 20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.62
  %46 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i8, i8* %46, i64 20
  %47 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds i8, i8* %47, i64 15
  %call69 = call i8* @memcpy(i8* %add.ptr67, i8* %add.ptr68, i64 2) #8
  %48 = load i32, i32* %l, align 4, !tbaa !5
  %cmp70 = icmp sle i32 %48, 17
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.66
  store i32 22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.66
  %49 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %49, i64 22
  store i8 58, i8* %arrayidx74, align 1, !tbaa !55
  %50 = load i8*, i8** %dt.addr, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds i8, i8* %50, i64 23
  %51 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %51, i64 18
  %call77 = call i8* @memcpy(i8* %add.ptr75, i8* %add.ptr76, i64 2) #8
  store i32 25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72, %if.then.65, %if.then.61, %if.then.52, %if.then.43, %if.then.31, %if.then.23, %if.then.15
  %52 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_ins_beg(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0)) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* %2) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_attribute_name(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 32) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %3, i8 zeroext 61) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_copy(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* %1) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_attribute_value(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 39) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  call void @pdf_xml_string_write(%struct.stream_s* %1, i8* %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %3, i8 zeroext 39) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_ins_end(%struct.stream_s* %s) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_newline(%struct.stream_s* %s) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0)) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_tag_open_beg(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 60) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* %2) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_tag_end(%struct.stream_s* %s) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 62) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_xmp_write_docinfo_item(%struct.gx_device_pdf_s* %pdev, %struct.stream_s* %s, i8* %key, i8* %default_value, void (%struct.stream_s*, i8*, i32)* %write) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %key.addr = alloca i8*, align 8
  %default_value.addr = alloca i8*, align 8
  %write.addr = alloca void (%struct.stream_s*, i8*, i32)*, align 8
  %v = alloca %struct.cos_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %default_value, i8** %default_value.addr, align 8, !tbaa !1
  store void (%struct.stream_s*, i8*, i32)* %write, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 150
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info, align 8, !tbaa !7
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %call1 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %2, i8* %3, i32 %conv) #7
  store %struct.cos_value_s* %call1, %struct.cos_value_s** %v, align 8, !tbaa !1
  %5 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_value_s* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %6, i32 0, i32 0
  %7 = load i32, i32* %value_type, align 4, !tbaa !50
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type5 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %8, i32 0, i32 0
  %9 = load i32, i32* %value_type5, align 4, !tbaa !50
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then, label %if.else.31

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %10, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !52
  %cmp8 = icmp uge i32 %11, 2
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %if.then
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents11 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %12, i32 0, i32 1
  %chars12 = bitcast %union.vc_* %contents11 to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !54
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !55
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 40
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.10
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents17 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %chars18 = bitcast %union.vc_* %contents17 to %struct.gs_string_s*
  %data19 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars18, i32 0, i32 0
  %18 = load i8*, i8** %data19, align 8, !tbaa !54
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents20 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %19, i32 0, i32 1
  %chars21 = bitcast %union.vc_* %contents20 to %struct.gs_string_s*
  %size22 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars21, i32 0, i32 1
  %20 = load i32, i32* %size22, align 4, !tbaa !52
  %sub = sub i32 %20, 2
  %21 = load void (%struct.stream_s*, i8*, i32)*, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf_xmp_write_translated(%struct.gx_device_pdf_s* %15, %struct.stream_s* %16, i8* %add.ptr, i32 %sub, void (%struct.stream_s*, i8*, i32)* %21) #7
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.10, %if.then
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %24 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents24 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %24, i32 0, i32 1
  %chars25 = bitcast %union.vc_* %contents24 to %struct.gs_string_s*
  %data26 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars25, i32 0, i32 0
  %25 = load i8*, i8** %data26, align 8, !tbaa !54
  %26 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents27 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %26, i32 0, i32 1
  %chars28 = bitcast %union.vc_* %contents27 to %struct.gs_string_s*
  %size29 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars28, i32 0, i32 1
  %27 = load i32, i32* %size29, align 4, !tbaa !52
  %28 = load void (%struct.stream_s*, i8*, i32)*, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %call30 = call i32 @pdf_xmp_write_translated(%struct.gx_device_pdf_s* %22, %struct.stream_s* %23, i8* %25, i32 %27, void (%struct.stream_s*, i8*, i32)* %28) #7
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.31:                                       ; preds = %lor.lhs.false, %entry
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %default_value.addr, align 8, !tbaa !1
  %call32 = call i32 @stream_puts(%struct.stream_s* %29, i8* %30) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.31, %if.else, %if.then.16
  %31 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @pdf_xml_data_write(%struct.stream_s* %s, i8* %data, i32 %data_length) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  store i32 %1, i32* %l, align 4, !tbaa !5
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %3, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i32, i32* %l, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !55
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.1
    i32 38, label %sw.bb.5
    i32 39, label %sw.bb.9
    i32 34, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0)) #7
  %8 = load i32, i32* %l, align 4, !tbaa !5
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %l, align 4, !tbaa !5
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0)) #7
  %11 = load i32, i32* %l, align 4, !tbaa !5
  %dec3 = add nsw i32 %11, -1
  store i32 %dec3, i32* %l, align 4, !tbaa !5
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #7
  %14 = load i32, i32* %l, align 4, !tbaa !5
  %dec7 = add nsw i32 %14, -1
  store i32 %dec7, i32* %l, align 4, !tbaa !5
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i32 @stream_puts(%struct.stream_s* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)) #7
  %17 = load i32, i32* %l, align 4, !tbaa !5
  %dec11 = add nsw i32 %17, -1
  store i32 %dec11, i32* %l, align 4, !tbaa !5
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call14 = call i32 @stream_puts(%struct.stream_s* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0)) #7
  %20 = load i32, i32* %l, align 4, !tbaa !5
  %dec15 = add nsw i32 %20, -1
  store i32 %dec15, i32* %l, align 4, !tbaa !5
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !55
  %conv17 = zext i8 %23 to i32
  %cmp18 = icmp slt i32 %conv17, 32
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !55
  %conv20 = zext i8 %26 to i32
  %call21 = call i8* @pprintd1(%struct.stream_s* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 %conv20) #7
  %27 = load i32, i32* %l, align 4, !tbaa !5
  %dec22 = add nsw i32 %27, -1
  store i32 %dec22, i32* %l, align 4, !tbaa !5
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8, !tbaa !1
  br label %if.end.59

if.else:                                          ; preds = %sw.default
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !55
  %conv24 = zext i8 %30 to i32
  %cmp25 = icmp sge i32 %conv24, 127
  br i1 %cmp25, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.else
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !55
  %conv27 = zext i8 %32 to i32
  %cmp28 = icmp sle i32 %conv27, 159
  br i1 %cmp28, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %land.lhs.true
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !55
  %conv31 = zext i8 %35 to i32
  %call32 = call i8* @pprintd1(%struct.stream_s* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 %conv31) #7
  %36 = load i32, i32* %l, align 4, !tbaa !5
  %dec33 = add nsw i32 %36, -1
  store i32 %dec33, i32* %l, align 4, !tbaa !5
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8, !tbaa !1
  br label %if.end.58

if.else.35:                                       ; preds = %land.lhs.true, %if.else
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !55
  %conv36 = zext i8 %39 to i32
  %and = and i32 %conv36, 224
  %cmp37 = icmp eq i32 %and, 192
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.35
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @copy_bytes(%struct.stream_s* %40, i8** %p, i32* %l, i32 2) #7
  br label %if.end.57

if.else.40:                                       ; preds = %if.else.35
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !55
  %conv41 = zext i8 %42 to i32
  %and42 = and i32 %conv41, 240
  %cmp43 = icmp eq i32 %and42, 224
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.40
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @copy_bytes(%struct.stream_s* %43, i8** %p, i32* %l, i32 3) #7
  br label %if.end.56

if.else.46:                                       ; preds = %if.else.40
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !55
  %conv47 = zext i8 %45 to i32
  %and48 = and i32 %conv47, 240
  %cmp49 = icmp eq i32 %and48, 240
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.46
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @copy_bytes(%struct.stream_s* %46, i8** %p, i32* %l, i32 4) #7
  br label %if.end

if.else.52:                                       ; preds = %if.else.46
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !55
  %call53 = call i32 @spputc(%struct.stream_s* %47, i8 zeroext %49) #7
  %50 = load i32, i32* %l, align 4, !tbaa !5
  %dec54 = add nsw i32 %50, -1
  store i32 %dec54, i32* %l, align 4, !tbaa !5
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.52, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end, %if.then.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.39
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.30
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.59, %sw.bb.13, %sw.bb.9, %sw.bb.5, %sw.bb.1, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_tag_close(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0)) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %3, i8 zeroext 62) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_attribute_value_data(%struct.stream_s* %s, i8* %data, i32 %data_length) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 39) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  call void @pdf_xml_data_write(%struct.stream_s* %1, i8* %2, i32 %3) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %4, i8 zeroext 39) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_tag_end_empty(%struct.stream_s* %s) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0)) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_tag_open(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext 60) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %3, i8 zeroext 62) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @pdf_make_uuid(i8* %node, i64 %uuid_time, i64 %time_seq, i8* %buf, i32 %buf_length) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %uuid_time.addr = alloca i64, align 8
  %time_seq.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %b = alloca [45 x i8], align 16
  %p = alloca i8*, align 8
  %uuid_time_lo = alloca i64, align 8
  %uuid_time_md = alloca i16, align 2
  %uuid_time_hi = alloca i16, align 2
  store i8* %node, i8** %node.addr, align 8, !tbaa !1
  store i64 %uuid_time, i64* %uuid_time.addr, align 8, !tbaa !77
  store i64 %time_seq, i64* %time_seq.addr, align 8, !tbaa !77
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast [45 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 45, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %arraydecay = getelementptr inbounds [45 x i8], [45 x i8]* %b, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %2 = bitcast i64* %uuid_time_lo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64, i64* %uuid_time.addr, align 8, !tbaa !77
  %and = and i64 %3, 4294967295
  store i64 %and, i64* %uuid_time_lo, align 8, !tbaa !77
  %4 = bitcast i16* %uuid_time_md to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load i64, i64* %uuid_time.addr, align 8, !tbaa !77
  %shr = lshr i64 %5, 32
  %and1 = and i64 %shr, 65535
  %conv = trunc i64 %and1 to i16
  store i16 %conv, i16* %uuid_time_md, align 2, !tbaa !82
  %6 = bitcast i16* %uuid_time_hi to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i64, i64* %uuid_time.addr, align 8, !tbaa !77
  %shr2 = lshr i64 %7, 48
  %and3 = and i64 %shr2, 4095
  %conv4 = trunc i64 %and3 to i16
  store i16 %conv4, i16* %uuid_time_hi, align 2, !tbaa !82
  %8 = load i64, i64* %uuid_time_lo, align 8, !tbaa !77
  call void @writehex(i8** %p, i64 %8, i32 4) #7
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 45, i8* %9, align 1, !tbaa !55
  %10 = load i16, i16* %uuid_time_md, align 2, !tbaa !82
  %conv5 = zext i16 %10 to i64
  call void @writehex(i8** %p, i64 %conv5, i32 2) #7
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8, !tbaa !1
  store i8 45, i8* %11, align 1, !tbaa !55
  %12 = load i16, i16* %uuid_time_hi, align 2, !tbaa !82
  %conv7 = zext i16 %12 to i32
  %or = or i32 %conv7, 4096
  %conv8 = sext i32 %or to i64
  call void @writehex(i8** %p, i64 %conv8, i32 2) #7
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8, !tbaa !1
  store i8 45, i8* %13, align 1, !tbaa !55
  %14 = load i64, i64* %time_seq.addr, align 8, !tbaa !77
  %and10 = and i64 %14, 16128
  %shr11 = lshr i64 %and10, 8
  call void @writehex(i8** %p, i64 %shr11, i32 1) #7
  %15 = load i64, i64* %time_seq.addr, align 8, !tbaa !77
  %and12 = and i64 %15, 255
  call void @writehex(i8** %p, i64 %and12, i32 1) #7
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8, !tbaa !1
  store i8 45, i8* %16, align 1, !tbaa !55
  %17 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !55
  %conv14 = zext i8 %18 to i64
  call void @writehex(i8** %p, i64 %conv14, i32 1) #7
  %19 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx15, align 1, !tbaa !55
  %conv16 = zext i8 %20 to i64
  call void @writehex(i8** %p, i64 %conv16, i32 1) #7
  %21 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx17, align 1, !tbaa !55
  %conv18 = zext i8 %22 to i64
  call void @writehex(i8** %p, i64 %conv18, i32 1) #7
  %23 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %23, i64 3
  %24 = load i8, i8* %arrayidx19, align 1, !tbaa !55
  %conv20 = zext i8 %24 to i64
  call void @writehex(i8** %p, i64 %conv20, i32 1) #7
  %25 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 4
  %26 = load i8, i8* %arrayidx21, align 1, !tbaa !55
  %conv22 = zext i8 %26 to i64
  call void @writehex(i8** %p, i64 %conv22, i32 1) #7
  %27 = load i8*, i8** %node.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 5
  %28 = load i8, i8* %arrayidx23, align 1, !tbaa !55
  %conv24 = zext i8 %28 to i64
  call void @writehex(i8** %p, i64 %conv24, i32 1) #7
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %29, align 1, !tbaa !55
  %30 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [45 x i8], [45 x i8]* %b, i32 0, i32 0
  %31 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %conv26 = sext i32 %31 to i64
  %call = call i8* @strncpy(i8* %30, i8* %arraydecay25, i64 %conv26) #8
  %32 = bitcast i16* %uuid_time_hi to i8*
  call void @llvm.lifetime.end(i64 2, i8* %32) #1
  %33 = bitcast i16* %uuid_time_md to i8*
  call void @llvm.lifetime.end(i64 2, i8* %33) #1
  %34 = bitcast i64* %uuid_time_lo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast [45 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 45, i8* %36) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @pdf_uuid_time(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %dt = alloca i64*, align 8
  %t = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i64** %dt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %uuid_time = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 180
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %uuid_time, i32 0, i32 0
  store i64* %arraydecay, i64** %dt, align 8, !tbaa !1
  %2 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64*, i64** %dt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !77
  %mul = mul i64 10000000, %4
  %5 = load i64*, i64** %dt, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !77
  %div = sdiv i64 %6, 100
  %add = add i64 %mul, %div
  store i64 %add, i64* %t, align 8, !tbaa !77
  %7 = load i64, i64* %t, align 8, !tbaa !77
  %add2 = add i64 %7, 125350848000000000
  store i64 %add2, i64* %t, align 8, !tbaa !77
  %8 = load i64, i64* %t, align 8, !tbaa !77
  %9 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast i64** %dt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal void @writehex(i8** %p, i64 %v, i32 %l) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %v.addr = alloca i64, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store i64 %v, i64* %v.addr, align 8, !tbaa !77
  store i32 %l, i32* %l.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %l.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, 2
  store i32 %mul, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %v.addr, align 8, !tbaa !77
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %mul1 = mul nsw i32 %4, 4
  %sh_prom = zext i32 %mul1 to i64
  %shr = lshr i64 %3, %sh_prom
  %and = and i64 %shr, 15
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @writehex.digit, i32 0, i64 %and
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !55
  %6 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8, !tbaa !1
  store i8 %5, i8* %7, align 1, !tbaa !55
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @pdf_xml_string_write(%struct.stream_s* %s, i8* %data) #5 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  call void @pdf_xml_data_write(%struct.stream_s* %0, i8* %1, i32 %conv) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_xmp_write_translated(%struct.gx_device_pdf_s* %pdev, %struct.stream_s* %s, i8* %data, i32 %data_length, void (%struct.stream_s*, i8*, i32)* %write) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %write.addr = alloca void (%struct.stream_s*, i8*, i32)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf0 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  %buf1 = alloca i8*, align 8
  %buf0b = alloca i16*, align 8
  %U16 = alloca i16, align 2
  %buf1144 = alloca i8*, align 8
  %buf1b = alloca i8*, align 8
  %buf0213 = alloca i16*, align 8
  %buf0b214 = alloca i16*, align 8
  %buf1215 = alloca i8*, align 8
  %buf1b216 = alloca i8*, align 8
  %i217 = alloca i32, align 4
  %j218 = alloca i32, align 4
  %c249 = alloca i8, align 1
  %v = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  store void (%struct.stream_s*, i8*, i32)* %write, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DSCEncodingToUnicode = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 114
  %data1 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %DSCEncodingToUnicode, i32 0, i32 0
  %1 = load i32*, i32** %data1, align 8, !tbaa !83
  %cmp = icmp eq i32* %1, null
  br i1 %cmp, label %if.then, label %if.else.212

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  %4 = bitcast i8** %buf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !84
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !85
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !84
  %10 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 1
  %conv3 = trunc i64 %mul to i32
  %call = call i8* %7(%struct.gs_memory_s* %9, i32 %conv3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i8* %call, i8** %buf0, align 8, !tbaa !1
  %11 = load i8*, i8** %buf0, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %11, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !55
  store i8 %16, i8* %c, align 1, !tbaa !55
  %17 = load i8, i8* %c, align 1, !tbaa !55
  %conv9 = zext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %call13 = call zeroext i8 @decode_escape(i8* %18, i32 %19, i32* %i) #7
  store i8 %call13, i8* %c, align 1, !tbaa !55
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.body
  %20 = load i8, i8* %c, align 1, !tbaa !55
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %21 to i64
  %22 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 %idxprom15
  store i8 %20, i8* %arrayidx16, align 1, !tbaa !55
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx18, align 1, !tbaa !55
  %conv19 = zext i8 %26 to i32
  %cmp20 = icmp ne i32 %conv19, 254
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %27 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx22, align 1, !tbaa !55
  %conv23 = zext i8 %28 to i32
  %cmp24 = icmp ne i32 %conv23, 255
  br i1 %cmp24, label %if.then.26, label %if.end.143

if.then.26:                                       ; preds = %lor.lhs.false, %for.end
  %29 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !84
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_bytes29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 7
  %32 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes29, align 8, !tbaa !85
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !84
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %conv31 = sext i32 %35 to i64
  %mul32 = mul i64 %conv31, 2
  %add = add i64 %mul32, 2
  %conv33 = trunc i64 %add to i32
  %call34 = call i8* %32(%struct.gs_memory_s* %34, i32 %conv33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i8* %call34, i8** %buf1, align 8, !tbaa !1
  %36 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %36, null
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.then.26
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !84
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !88
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !84
  %42 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %39(%struct.gs_memory_s* %41, i8* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.26
  %43 = load i8*, i8** %buf1, align 8, !tbaa !1
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %conv42 = sext i32 %44 to i64
  %mul43 = mul i64 %conv42, 2
  %add44 = add i64 %mul43, 2
  %call45 = call i8* @memset(i8* %43, i32 0, i64 %add44) #8
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.134, %if.end.41
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %45, %46
  br i1 %cmp47, label %for.body.49, label %for.end.136

for.body.49:                                      ; preds = %for.cond.46
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %47 to i64
  %48 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %48, i64 %idxprom50
  %49 = load i8, i8* %arrayidx51, align 1, !tbaa !55
  %conv52 = zext i8 %49 to i32
  %cmp53 = icmp sle i32 %conv52, 127
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %for.body.49
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %50 to i64
  %51 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %51, i64 %idxprom56
  %52 = load i8, i8* %arrayidx57, align 1, !tbaa !55
  %conv58 = zext i8 %52 to i32
  %cmp59 = icmp sge i32 %conv58, 174
  br i1 %cmp59, label %if.then.61, label %if.else.83

if.then.61:                                       ; preds = %lor.lhs.false.55, %for.body.49
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %53 to i64
  %54 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %54, i64 %idxprom62
  %55 = load i8, i8* %arrayidx63, align 1, !tbaa !55
  %conv64 = zext i8 %55 to i32
  %cmp65 = icmp eq i32 %conv64, 127
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.then.61
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !84
  %call69 = call i8* @gs_program_name() #7
  %call70 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %57, i8* %call69, i64 %call70) #7
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory71, align 8, !tbaa !84
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %60 to i64
  %61 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %61, i64 %idxprom72
  %62 = load i8, i8* %arrayidx73, align 1, !tbaa !55
  %conv74 = zext i8 %62 to i32
  %call75 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %59, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.67, i32 0, i32 0), i32 %conv74) #7
  br label %if.end.82

if.else:                                          ; preds = %if.then.61
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %63 to i64
  %64 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %64, i64 %idxprom76
  %65 = load i8, i8* %arrayidx77, align 1, !tbaa !55
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %mul78 = mul nsw i32 %66, 2
  %add79 = add nsw i32 %mul78, 3
  %idxprom80 = sext i32 %add79 to i64
  %67 = load i8*, i8** %buf1, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %67, i64 %idxprom80
  store i8 %65, i8* %arrayidx81, align 1, !tbaa !55
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.67
  br label %if.end.133

if.else.83:                                       ; preds = %lor.lhs.false.55
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %68 to i64
  %69 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %69, i64 %idxprom84
  %70 = load i8, i8* %arrayidx85, align 1, !tbaa !55
  %conv86 = zext i8 %70 to i32
  %sub = sub nsw i32 %conv86, 128
  %mul87 = mul nsw i32 %sub, 2
  %idxprom88 = sext i32 %mul87 to i64
  %arrayidx89 = getelementptr inbounds [92 x i8], [92 x i8]* @PDFDocEncodingLookup, i32 0, i64 %idxprom88
  %71 = load i8, i8* %arrayidx89, align 1, !tbaa !55
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %mul90 = mul nsw i32 %72, 2
  %add91 = add nsw i32 %mul90, 2
  %idxprom92 = sext i32 %add91 to i64
  %73 = load i8*, i8** %buf1, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %73, i64 %idxprom92
  store i8 %71, i8* %arrayidx93, align 1, !tbaa !55
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %74 to i64
  %75 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %75, i64 %idxprom94
  %76 = load i8, i8* %arrayidx95, align 1, !tbaa !55
  %conv96 = zext i8 %76 to i32
  %sub97 = sub nsw i32 %conv96, 128
  %mul98 = mul nsw i32 %sub97, 2
  %add99 = add nsw i32 %mul98, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [92 x i8], [92 x i8]* @PDFDocEncodingLookup, i32 0, i64 %idxprom100
  %77 = load i8, i8* %arrayidx101, align 1, !tbaa !55
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %mul102 = mul nsw i32 %78, 2
  %add103 = add nsw i32 %mul102, 3
  %idxprom104 = sext i32 %add103 to i64
  %79 = load i8*, i8** %buf1, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %79, i64 %idxprom104
  store i8 %77, i8* %arrayidx105, align 1, !tbaa !55
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %80 to i64
  %81 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %81, i64 %idxprom106
  %82 = load i8, i8* %arrayidx107, align 1, !tbaa !55
  %conv108 = zext i8 %82 to i32
  %sub109 = sub nsw i32 %conv108, 128
  %mul110 = mul nsw i32 %sub109, 2
  %add111 = add nsw i32 %mul110, 1
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [92 x i8], [92 x i8]* @PDFDocEncodingLookup, i32 0, i64 %idxprom112
  %83 = load i8, i8* %arrayidx113, align 1, !tbaa !55
  %conv114 = sext i8 %83 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.132

if.then.117:                                      ; preds = %if.else.83
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !84
  %call119 = call i8* @gs_program_name() #7
  %call120 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %85, i8* %call119, i64 %call120) #7
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !84
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom122 = sext i32 %88 to i64
  %89 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %89, i64 %idxprom122
  %90 = load i8, i8* %arrayidx123, align 1, !tbaa !55
  %conv124 = zext i8 %90 to i32
  %sub125 = sub nsw i32 %conv124, 128
  %mul126 = mul nsw i32 %sub125, 2
  %add127 = add nsw i32 %mul126, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds [92 x i8], [92 x i8]* @PDFDocEncodingLookup, i32 0, i64 %idxprom128
  %91 = load i8, i8* %arrayidx129, align 1, !tbaa !55
  %conv130 = sext i8 %91 to i32
  %call131 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %87, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.67, i32 0, i32 0), i32 %conv130) #7
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.117, %if.else.83
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.82
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %inc135 = add nsw i32 %92, 1
  store i32 %inc135, i32* %i, align 4, !tbaa !5
  br label %for.cond.46

for.end.136:                                      ; preds = %for.cond.46
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory137, align 8, !tbaa !84
  %procs138 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 1
  %free_object139 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs138, i32 0, i32 2
  %95 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object139, align 8, !tbaa !88
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory140 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8, !tbaa !84
  %98 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %95(%struct.gs_memory_s* %97, i8* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %99 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %99, i8** %buf0, align 8, !tbaa !1
  %100 = load i32, i32* %j, align 4, !tbaa !5
  %mul141 = mul nsw i32 %100, 2
  %add142 = add nsw i32 %mul141, 2
  store i32 %add142, i32* %j, align 4, !tbaa !5
  store i32 %add142, i32* %data_length.addr, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.136, %if.then.37
  %101 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.209 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.143

if.end.143:                                       ; preds = %cleanup.cont, %lor.lhs.false
  %102 = bitcast i16** %buf0b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = bitcast i16* %U16 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %103) #1
  %104 = bitcast i8** %buf1144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = bitcast i8** %buf1b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory145 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory145, align 8, !tbaa !84
  %procs146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 1
  %alloc_bytes147 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs146, i32 0, i32 7
  %108 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes147, align 8, !tbaa !85
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !84
  %111 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %mul149 = mul nsw i32 %111, 2
  %conv150 = sext i32 %mul149 to i64
  %mul151 = mul i64 %conv150, 1
  %conv152 = trunc i64 %mul151 to i32
  %call153 = call i8* %108(%struct.gs_memory_s* %110, i32 %conv152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i8* %call153, i8** %buf1144, align 8, !tbaa !1
  %112 = load i8*, i8** %buf1144, align 8, !tbaa !1
  %cmp154 = icmp eq i8* %112, null
  br i1 %cmp154, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %if.end.143
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 3
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory157, align 8, !tbaa !84
  %procs158 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %free_object159 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs158, i32 0, i32 2
  %115 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object159, align 8, !tbaa !88
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory160 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory160, align 8, !tbaa !84
  %118 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %115(%struct.gs_memory_s* %117, i8* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

if.end.161:                                       ; preds = %if.end.143
  %119 = load i8*, i8** %buf1144, align 8, !tbaa !1
  store i8* %119, i8** %buf1b, align 8, !tbaa !1
  %120 = load i8*, i8** %buf0, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %120, i64 2
  %121 = bitcast i8* %add.ptr to i16*
  store i16* %121, i16** %buf0b, align 8, !tbaa !1
  store i32 2, i32* %i, align 4, !tbaa !5
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.175, %if.end.161
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %123 = load i32, i32* %j, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %122, %123
  br i1 %cmp163, label %for.body.165, label %for.end.177

for.body.165:                                     ; preds = %for.cond.162
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom166 = sext i32 %124 to i64
  %125 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %125, i64 %idxprom166
  %126 = load i8, i8* %arrayidx167, align 1, !tbaa !55
  %conv168 = zext i8 %126 to i32
  %shl = shl i32 %conv168, 8
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %add169 = add nsw i32 %127, 1
  %idxprom170 = sext i32 %add169 to i64
  %128 = load i8*, i8** %buf0, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %128, i64 %idxprom170
  %129 = load i8, i8* %arrayidx171, align 1, !tbaa !55
  %conv172 = zext i8 %129 to i32
  %add173 = add nsw i32 %shl, %conv172
  %conv174 = trunc i32 %add173 to i16
  store i16 %conv174, i16* %U16, align 2, !tbaa !82
  %130 = load i16, i16* %U16, align 2, !tbaa !82
  %131 = load i16*, i16** %buf0b, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %131, i32 1
  store i16* %incdec.ptr, i16** %buf0b, align 8, !tbaa !1
  store i16 %130, i16* %131, align 2, !tbaa !82
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.165
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %add176 = add nsw i32 %132, 2
  store i32 %add176, i32* %i, align 4, !tbaa !5
  br label %for.cond.162

for.end.177:                                      ; preds = %for.cond.162
  %133 = load i8*, i8** %buf0, align 8, !tbaa !1
  %add.ptr178 = getelementptr inbounds i8, i8* %133, i64 2
  %134 = bitcast i8* %add.ptr178 to i16*
  store i16* %134, i16** %buf0b, align 8, !tbaa !1
  %135 = load i8*, i8** %buf0, align 8, !tbaa !1
  %136 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext = sext i32 %136 to i64
  %add.ptr179 = getelementptr inbounds i8, i8* %135, i64 %idx.ext
  %137 = bitcast i8* %add.ptr179 to i16*
  %138 = load i8*, i8** %buf1144, align 8, !tbaa !1
  %139 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %mul180 = mul nsw i32 %139, 2
  %conv181 = sext i32 %mul180 to i64
  %mul182 = mul i64 %conv181, 1
  %add.ptr183 = getelementptr inbounds i8, i8* %138, i64 %mul182
  %call184 = call i32 @ConvertUTF16toUTF8(i16** %buf0b, i16* %137, i8** %buf1b, i8* %add.ptr183, i32 0) #7
  switch i32 %call184, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.190
    i32 2, label %sw.bb.190
    i32 3, label %sw.bb.190
  ]

sw.bb:                                            ; preds = %for.end.177
  %140 = load void (%struct.stream_s*, i8*, i32)*, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %142 = load i8*, i8** %buf1144, align 8, !tbaa !1
  %143 = load i8*, i8** %buf1b, align 8, !tbaa !1
  %144 = load i8*, i8** %buf1144, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %143 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %144 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv185 = trunc i64 %sub.ptr.sub to i32
  call void %140(%struct.stream_s* %141, i8* %142, i32 %conv185) #7
  %145 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory186 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory186, align 8, !tbaa !84
  %procs187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 1
  %free_object188 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs187, i32 0, i32 2
  %147 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object188, align 8, !tbaa !88
  %148 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory189 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory189, align 8, !tbaa !84
  %150 = load i8*, i8** %buf1144, align 8, !tbaa !1
  call void %147(%struct.gs_memory_s* %149, i8* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  br label %sw.epilog

sw.bb.190:                                        ; preds = %for.end.177, %for.end.177, %for.end.177
  br label %sw.default

sw.default:                                       ; preds = %for.end.177, %sw.bb.190
  %151 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory191 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %151, i32 0, i32 3
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory191, align 8, !tbaa !84
  %procs192 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 1
  %free_object193 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs192, i32 0, i32 2
  %153 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object193, align 8, !tbaa !88
  %154 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory194 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory194, align 8, !tbaa !84
  %156 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %153(%struct.gs_memory_s* %155, i8* %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory195 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %157, i32 0, i32 3
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory195, align 8, !tbaa !84
  %procs196 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 1
  %free_object197 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs196, i32 0, i32 2
  %159 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object197, align 8, !tbaa !88
  %160 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory198 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory198, align 8, !tbaa !84
  %162 = load i8*, i8** %buf1144, align 8, !tbaa !1
  call void %159(%struct.gs_memory_s* %161, i8* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.199

cleanup.199:                                      ; preds = %sw.epilog, %sw.default, %if.then.156
  %163 = bitcast i8** %buf1b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i8** %buf1144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i16* %U16 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %165) #1
  %166 = bitcast i16** %buf0b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.209 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.199
  %167 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory205 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %167, i32 0, i32 3
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory205, align 8, !tbaa !84
  %procs206 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 1
  %free_object207 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs206, i32 0, i32 2
  %169 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object207, align 8, !tbaa !88
  %170 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory208 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %170, i32 0, i32 3
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory208, align 8, !tbaa !84
  %172 = load i8*, i8** %buf0, align 8, !tbaa !1
  call void %169(%struct.gs_memory_s* %171, i8* %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

cleanup.209:                                      ; preds = %cleanup.cont.204, %cleanup.199, %cleanup, %if.then.6
  %173 = bitcast i8** %buf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  br label %return

if.else.212:                                      ; preds = %entry
  %176 = bitcast i16** %buf0213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  %177 = bitcast i16** %buf0b214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  %178 = bitcast i8** %buf1215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  %179 = bitcast i8** %buf1b216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %180 = bitcast i32* %i217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = bitcast i32* %j218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  store i32 0, i32* %j218, align 4, !tbaa !5
  %182 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory219 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %182, i32 0, i32 3
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory219, align 8, !tbaa !84
  %procs220 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %183, i32 0, i32 1
  %alloc_bytes221 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs220, i32 0, i32 7
  %184 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes221, align 8, !tbaa !85
  %185 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %185, i32 0, i32 3
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory222, align 8, !tbaa !84
  %187 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %conv223 = sext i32 %187 to i64
  %mul224 = mul i64 %conv223, 2
  %conv225 = trunc i64 %mul224 to i32
  %call226 = call i8* %184(%struct.gs_memory_s* %186, i32 %conv225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %188 = bitcast i8* %call226 to i16*
  store i16* %188, i16** %buf0213, align 8, !tbaa !1
  %189 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %cmp227 = icmp eq i16* %189, null
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.else.212
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.230:                                       ; preds = %if.else.212
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory231 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %190, i32 0, i32 3
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory231, align 8, !tbaa !84
  %procs232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %191, i32 0, i32 1
  %alloc_bytes233 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs232, i32 0, i32 7
  %192 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes233, align 8, !tbaa !85
  %193 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory234 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %193, i32 0, i32 3
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory234, align 8, !tbaa !84
  %195 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %mul235 = mul nsw i32 %195, 2
  %call236 = call i8* %192(%struct.gs_memory_s* %194, i32 %mul235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i8* %call236, i8** %buf1215, align 8, !tbaa !1
  %196 = load i8*, i8** %buf1215, align 8, !tbaa !1
  %cmp237 = icmp eq i8* %196, null
  br i1 %cmp237, label %if.then.239, label %if.end.244

if.then.239:                                      ; preds = %if.end.230
  %197 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory240 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory240, align 8, !tbaa !84
  %procs241 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 1
  %free_object242 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs241, i32 0, i32 2
  %199 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object242, align 8, !tbaa !88
  %200 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory243 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %200, i32 0, i32 3
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory243, align 8, !tbaa !84
  %202 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %203 = bitcast i16* %202 to i8*
  call void %199(%struct.gs_memory_s* %201, i8* %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.244:                                       ; preds = %if.end.230
  %204 = load i16*, i16** %buf0213, align 8, !tbaa !1
  store i16* %204, i16** %buf0b214, align 8, !tbaa !1
  %205 = load i8*, i8** %buf1215, align 8, !tbaa !1
  store i8* %205, i8** %buf1b216, align 8, !tbaa !1
  store i32 0, i32* %i217, align 4, !tbaa !5
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.288, %if.end.244
  %206 = load i32, i32* %i217, align 4, !tbaa !5
  %207 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %206, %207
  br i1 %cmp246, label %for.body.248, label %for.end.290

for.body.248:                                     ; preds = %for.cond.245
  call void @llvm.lifetime.start(i64 1, i8* %c249) #1
  %208 = load i32, i32* %i217, align 4, !tbaa !5
  %idxprom250 = sext i32 %208 to i64
  %209 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %209, i64 %idxprom250
  %210 = load i8, i8* %arrayidx251, align 1, !tbaa !55
  store i8 %210, i8* %c249, align 1, !tbaa !55
  %211 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load i8, i8* %c249, align 1, !tbaa !55
  %conv252 = zext i8 %212 to i32
  %cmp253 = icmp eq i32 %conv252, 92
  br i1 %cmp253, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %for.body.248
  %213 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %214 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %call256 = call zeroext i8 @decode_escape(i8* %213, i32 %214, i32* %i217) #7
  store i8 %call256, i8* %c249, align 1, !tbaa !55
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %for.body.248
  %215 = load i8, i8* %c249, align 1, !tbaa !55
  %conv258 = zext i8 %215 to i32
  %216 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DSCEncodingToUnicode259 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %216, i32 0, i32 114
  %size = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %DSCEncodingToUnicode259, i32 0, i32 1
  %217 = load i32, i32* %size, align 4, !tbaa !89
  %cmp260 = icmp ugt i32 %conv258, %217
  br i1 %cmp260, label %if.then.262, label %if.end.271

if.then.262:                                      ; preds = %if.end.257
  %218 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory263 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %218, i32 0, i32 3
  %219 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory263, align 8, !tbaa !84
  %procs264 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %219, i32 0, i32 1
  %free_object265 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs264, i32 0, i32 2
  %220 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object265, align 8, !tbaa !88
  %221 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory266 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %221, i32 0, i32 3
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory266, align 8, !tbaa !84
  %223 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %224 = bitcast i16* %223 to i8*
  call void %220(%struct.gs_memory_s* %222, i8* %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %225 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory267 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %225, i32 0, i32 3
  %226 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory267, align 8, !tbaa !84
  %procs268 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %226, i32 0, i32 1
  %free_object269 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs268, i32 0, i32 2
  %227 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object269, align 8, !tbaa !88
  %228 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory270 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %228, i32 0, i32 3
  %229 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory270, align 8, !tbaa !84
  %230 = load i8*, i8** %buf1215, align 8, !tbaa !1
  call void %227(%struct.gs_memory_s* %229, i8* %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.284

if.end.271:                                       ; preds = %if.end.257
  %231 = load i8, i8* %c249, align 1, !tbaa !55
  %idxprom272 = zext i8 %231 to i64
  %232 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DSCEncodingToUnicode273 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %232, i32 0, i32 114
  %data274 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %DSCEncodingToUnicode273, i32 0, i32 0
  %233 = load i32*, i32** %data274, align 8, !tbaa !83
  %arrayidx275 = getelementptr inbounds i32, i32* %233, i64 %idxprom272
  %234 = load i32, i32* %arrayidx275, align 4, !tbaa !5
  store i32 %234, i32* %v, align 4, !tbaa !5
  %235 = load i32, i32* %v, align 4, !tbaa !5
  %cmp276 = icmp eq i32 %235, -1
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.271
  store i32 63, i32* %v, align 4, !tbaa !5
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %if.end.271
  %236 = load i32, i32* %v, align 4, !tbaa !5
  %conv280 = trunc i32 %236 to i16
  %237 = load i32, i32* %j218, align 4, !tbaa !5
  %idxprom281 = sext i32 %237 to i64
  %238 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i16, i16* %238, i64 %idxprom281
  store i16 %conv280, i16* %arrayidx282, align 2, !tbaa !82
  %239 = load i32, i32* %j218, align 4, !tbaa !5
  %inc283 = add nsw i32 %239, 1
  store i32 %inc283, i32* %j218, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.284

cleanup.284:                                      ; preds = %if.end.279, %if.then.262
  %240 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  call void @llvm.lifetime.end(i64 1, i8* %c249) #1
  %cleanup.dest.286 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.286, label %cleanup.321 [
    i32 0, label %cleanup.cont.287
  ]

cleanup.cont.287:                                 ; preds = %cleanup.284
  br label %for.inc.288

for.inc.288:                                      ; preds = %cleanup.cont.287
  %241 = load i32, i32* %i217, align 4, !tbaa !5
  %inc289 = add nsw i32 %241, 1
  store i32 %inc289, i32* %i217, align 4, !tbaa !5
  br label %for.cond.245

for.end.290:                                      ; preds = %for.cond.245
  %242 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %243 = load i32, i32* %j218, align 4, !tbaa !5
  %idx.ext291 = sext i32 %243 to i64
  %add.ptr292 = getelementptr inbounds i16, i16* %242, i64 %idx.ext291
  %244 = load i8*, i8** %buf1215, align 8, !tbaa !1
  %245 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %mul293 = mul nsw i32 %245, 2
  %idx.ext294 = sext i32 %mul293 to i64
  %add.ptr295 = getelementptr inbounds i8, i8* %244, i64 %idx.ext294
  %call296 = call i32 @ConvertUTF16toUTF8(i16** %buf0b214, i16* %add.ptr292, i8** %buf1b216, i8* %add.ptr295, i32 0) #7
  switch i32 %call296, label %sw.default.303 [
    i32 0, label %sw.bb.297
    i32 1, label %sw.bb.302
    i32 2, label %sw.bb.302
    i32 3, label %sw.bb.302
  ]

sw.bb.297:                                        ; preds = %for.end.290
  %246 = load void (%struct.stream_s*, i8*, i32)*, void (%struct.stream_s*, i8*, i32)** %write.addr, align 8, !tbaa !1
  %247 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %248 = load i8*, i8** %buf1215, align 8, !tbaa !1
  %249 = load i8*, i8** %buf1b216, align 8, !tbaa !1
  %250 = load i8*, i8** %buf1215, align 8, !tbaa !1
  %sub.ptr.lhs.cast298 = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast299 = ptrtoint i8* %250 to i64
  %sub.ptr.sub300 = sub i64 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %conv301 = trunc i64 %sub.ptr.sub300 to i32
  call void %246(%struct.stream_s* %247, i8* %248, i32 %conv301) #7
  br label %sw.epilog.312

sw.bb.302:                                        ; preds = %for.end.290, %for.end.290, %for.end.290
  br label %sw.default.303

sw.default.303:                                   ; preds = %for.end.290, %sw.bb.302
  %251 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory304 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %251, i32 0, i32 3
  %252 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory304, align 8, !tbaa !84
  %procs305 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %252, i32 0, i32 1
  %free_object306 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs305, i32 0, i32 2
  %253 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object306, align 8, !tbaa !88
  %254 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory307 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory307, align 8, !tbaa !84
  %256 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %257 = bitcast i16* %256 to i8*
  call void %253(%struct.gs_memory_s* %255, i8* %257, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %258 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory308 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %258, i32 0, i32 3
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory308, align 8, !tbaa !84
  %procs309 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %259, i32 0, i32 1
  %free_object310 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs309, i32 0, i32 2
  %260 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object310, align 8, !tbaa !88
  %261 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory311 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %261, i32 0, i32 3
  %262 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory311, align 8, !tbaa !84
  %263 = load i8*, i8** %buf1215, align 8, !tbaa !1
  call void %260(%struct.gs_memory_s* %262, i8* %263, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

sw.epilog.312:                                    ; preds = %sw.bb.297
  %264 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory313 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %264, i32 0, i32 3
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory313, align 8, !tbaa !84
  %procs314 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %265, i32 0, i32 1
  %free_object315 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs314, i32 0, i32 2
  %266 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object315, align 8, !tbaa !88
  %267 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory316 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %267, i32 0, i32 3
  %268 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory316, align 8, !tbaa !84
  %269 = load i16*, i16** %buf0213, align 8, !tbaa !1
  %270 = bitcast i16* %269 to i8*
  call void %266(%struct.gs_memory_s* %268, i8* %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  %271 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory317 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %271, i32 0, i32 3
  %272 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory317, align 8, !tbaa !84
  %procs318 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %272, i32 0, i32 1
  %free_object319 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs318, i32 0, i32 2
  %273 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object319, align 8, !tbaa !88
  %274 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory320 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %274, i32 0, i32 3
  %275 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory320, align 8, !tbaa !84
  %276 = load i8*, i8** %buf1215, align 8, !tbaa !1
  call void %273(%struct.gs_memory_s* %275, i8* %276, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %sw.epilog.312, %sw.default.303, %cleanup.284, %if.then.239, %if.then.229
  %277 = bitcast i32* %j218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %i217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i8** %buf1b216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i8** %buf1215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i16** %buf0b214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i16** %buf0213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  br label %return

return:                                           ; preds = %cleanup.321, %cleanup.209
  %283 = load i32, i32* %retval
  ret i32 %283
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @decode_escape(i8* %data, i32 %data_length, i32* %index) #5 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %index.addr = alloca i32*, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %oct_loop = alloca i32, align 4
  %v = alloca i8, align 1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  store i32* %index, i32** %index.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %0 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %1 = load i32, i32* %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4, !tbaa !5
  %2 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %4 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !55
  store i8 %8, i8* %c, align 1, !tbaa !55
  %9 = load i8, i8* %c, align 1, !tbaa !55
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.1
    i32 92, label %sw.bb.2
    i32 110, label %sw.bb.3
    i32 114, label %sw.bb.4
    i32 116, label %sw.bb.5
    i32 98, label %sw.bb.6
    i32 102, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  store i8 40, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.1:                                          ; preds = %if.end
  store i8 41, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.2:                                          ; preds = %if.end
  store i8 92, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.3:                                          ; preds = %if.end
  store i8 10, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.4:                                          ; preds = %if.end
  store i8 13, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.5:                                          ; preds = %if.end
  store i8 9, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.6:                                          ; preds = %if.end
  store i8 8, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.bb.7:                                          ; preds = %if.end
  store i8 12, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %10 = load i8, i8* %c, align 1, !tbaa !55
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp sge i32 %conv8, 48
  br i1 %cmp9, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %sw.epilog
  %11 = load i8, i8* %c, align 1, !tbaa !55
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp sle i32 %conv11, 55
  br i1 %cmp12, label %if.then.14, label %if.end.40

if.then.14:                                       ; preds = %land.lhs.true
  %12 = bitcast i32* %oct_loop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  call void @llvm.lifetime.start(i64 1, i8* %v) #1
  %13 = load i8, i8* %c, align 1, !tbaa !55
  %conv15 = zext i8 %13 to i32
  %sub = sub nsw i32 %conv15, 48
  %conv16 = trunc i32 %sub to i8
  store i8 %conv16, i8* %v, align 1, !tbaa !55
  store i32 0, i32* %oct_loop, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %14 = load i32, i32* %oct_loop, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %14, 2
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %15, align 4, !tbaa !5
  %17 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %18, %19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  %20 = load i8, i8* %v, align 1, !tbaa !55
  store i8 %20, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %for.body
  %21 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %idxprom24 = sext i32 %22 to i64
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  %24 = load i8, i8* %arrayidx25, align 1, !tbaa !55
  store i8 %24, i8* %c, align 1, !tbaa !55
  %25 = load i8, i8* %c, align 1, !tbaa !55
  %conv26 = zext i8 %25 to i32
  %cmp27 = icmp slt i32 %conv26, 48
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %26 = load i8, i8* %c, align 1, !tbaa !55
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp sgt i32 %conv29, 55
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.23
  %27 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %27, align 4, !tbaa !5
  br label %for.end

if.end.33:                                        ; preds = %lor.lhs.false
  %29 = load i8, i8* %v, align 1, !tbaa !55
  %conv34 = zext i8 %29 to i32
  %mul = mul nsw i32 %conv34, 8
  %30 = load i8, i8* %c, align 1, !tbaa !55
  %conv35 = zext i8 %30 to i32
  %sub36 = sub nsw i32 %conv35, 48
  %add = add nsw i32 %mul, %sub36
  %conv37 = trunc i32 %add to i8
  store i8 %conv37, i8* %v, align 1, !tbaa !55
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %31 = load i32, i32* %oct_loop, align 4, !tbaa !5
  %inc38 = add nsw i32 %31, 1
  store i32 %inc38, i32* %oct_loop, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %32 = load i8, i8* %v, align 1, !tbaa !55
  store i8 %32, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.22
  call void @llvm.lifetime.end(i64 1, i8* %v) #1
  %33 = bitcast i32* %oct_loop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %cleanup.41

if.end.40:                                        ; preds = %land.lhs.true, %sw.epilog
  %34 = load i8, i8* %c, align 1, !tbaa !55
  store i8 %34, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %if.end.40, %cleanup, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %35 = load i8, i8* %retval
  ret i8 %35
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @ConvertUTF16toUTF8(i16**, i16*, i8**, i8*, i32) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @copy_bytes(%struct.stream_s* %s, i8** %data, i32* %data_length, i32 %n) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8**, align 8
  %data_length.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  store i32* %data_length, i32** %data_length.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32*, i32** %data_length.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %dec1 = add nsw i32 %2, -1
  store i32 %dec1, i32* %1, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %5, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !55
  %call = call i32 @spputc(%struct.stream_s* %4, i8 zeroext %7) #7
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 26520}
!8 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !20, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !33, i64 7512, !33, i64 8144, !10, i64 8776, !10, i64 8784, !3, i64 8792, !3, i64 8796, !26, i64 8800, !6, i64 8816, !2, i64 8824, !10, i64 8832, !10, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !27, i64 8872, !38, i64 8880, !6, i64 9360, !27, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !43, i64 9424, !43, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !10, i64 9472, !6, i64 9480, !6, i64 9484, !42, i64 9488, !42, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !10, i64 9576, !10, i64 9584, !10, i64 9592, !44, i64 9600, !42, i64 9616, !42, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !42, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !45, i64 9784, !46, i64 9816, !46, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !10, i64 9920, !3, i64 9928, !6, i64 9960, !10, i64 9968, !10, i64 9976, !3, i64 9984, !3, i64 9988, !47, i64 9992, !47, i64 14120, !47, i64 18248, !47, i64 22376, !10, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !10, i64 26536, !6, i64 26544, !6, i64 26548, !10, i64 26552, !3, i64 26560, !10, i64 26568, !10, i64 26576, !3, i64 26584, !2, i64 26592, !48, i64 26600, !2, i64 26648, !6, i64 26656, !10, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !10, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !26, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !49, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !23, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !25, i64 30488, !6, i64 30524, !45, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !10, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !23, i64 30612, !27, i64 30640, !2, i64 30648, !39, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !6, i64 128, !25, i64 132, !6, i64 168, !26, i64 176, !26, i64 192, !6, i64 208, !6, i64 212, !12, i64 216, !3, i64 220, !28, i64 224, !28, i64 228, !29, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !22, i64 296, !30, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !22, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !31, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !32, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !32, i64 1336}
!21 = !{!"gx_line_params_s", !22, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !6, i64 36, !23, i64 40, !24, i64 64}
!22 = !{!"float", !3, i64 0}
!23 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!24 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !22, i64 12, !6, i64 16, !22, i64 20, !6, i64 24, !6, i64 28, !22, i64 32}
!25 = !{!"gs_matrix_fixed_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!26 = !{!"gs_point_s", !27, i64 0, !27, i64 8}
!27 = !{!"double", !3, i64 0}
!28 = !{!"gs_transparency_source_s", !22, i64 0}
!29 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!30 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!31 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!32 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!33 = !{!"gx_hl_saved_color_s", !10, i64 0, !10, i64 8, !6, i64 16, !34, i64 24, !36, i64 288}
!34 = !{!"gs_client_color_s", !2, i64 0, !35, i64 8}
!35 = !{!"gs_paint_color_s", !3, i64 0}
!36 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !37, i64 336}
!37 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!38 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !39, i64 64, !39, i64 80, !39, i64 96, !39, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !40, i64 152, !6, i64 232, !6, i64 236, !40, i64 240, !40, i64 320, !41, i64 400, !41, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !42, i64 448, !41, i64 464}
!39 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!40 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !22, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!41 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!43 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"gs_rect_s", !26, i64 0, !26, i64 16}
!46 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !45, i64 8}
!47 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!48 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!49 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !22, i64 40, !22, i64 44, !3, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !22, i64 84, !22, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !33, i64 120, !33, i64 752, !21, i64 1384, !2, i64 1488, !6, i64 1496, !10, i64 1504}
!50 = !{!51, !3, i64 0}
!51 = !{!"cos_value_s", !3, i64 0, !3, i64 8}
!52 = !{!53, !6, i64 8}
!53 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!54 = !{!53, !2, i64 0}
!55 = !{!3, !3, i64 0}
!56 = !{!8, !27, i64 9368}
!57 = !{!8, !6, i64 9388}
!58 = !{!8, !6, i64 9404}
!59 = !{!8, !2, i64 5848}
!60 = !{!61, !2, i64 208}
!61 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !53, i64 160, !10, i64 176, !62, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !39, i64 312, !6, i64 328, !10, i64 336, !10, i64 344}
!62 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!63 = !{!8, !6, i64 9680}
!64 = !{!65, !2, i64 64}
!65 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !10, i64 56, !2, i64 64}
!66 = !{!67, !10, i64 8}
!67 = !{!"cos_object_s", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !10, i64 56, !2, i64 64, !68, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!68 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!69 = !{!8, !2, i64 26512}
!70 = !{!8, !6, i64 9564}
!71 = !{!8, !6, i64 9512}
!72 = !{!8, !2, i64 9504}
!73 = !{!8, !6, i64 9520}
!74 = !{!8, !6, i64 9496}
!75 = !{!8, !2, i64 9488}
!76 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 40, i64 8, !77, i64 48, i64 8, !1}
!77 = !{!10, !10, i64 0}
!78 = !{!79, !6, i64 20}
!79 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !2, i64 48}
!80 = !{!79, !6, i64 16}
!81 = !{!79, !6, i64 12}
!82 = !{!12, !12, i64 0}
!83 = !{!8, !2, i64 9600}
!84 = !{!8, !2, i64 24}
!85 = !{!86, !2, i64 64}
!86 = !{!"gs_memory_s", !2, i64 0, !87, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!87 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!88 = !{!86, !2, i64 24}
!89 = !{!8, !6, i64 9608}
